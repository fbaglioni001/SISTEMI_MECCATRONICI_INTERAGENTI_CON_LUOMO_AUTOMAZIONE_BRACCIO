#include <Wire.h>
#define MICRO_MANO_I2C 42
#define MICRO_POLSO_I2C 43
#define ESP32_ROBOT 44

int micro = MICRO_MANO_I2C;  //Seleziona 42, 43 o 44 in baso al micro su cui carichi il programma

int i2c_address = 0;
int _DATA_BYTES = 0; 
int totalTime = 5000;
int offsetTime = 0;
int is_setup = 0;
int isMoving = 0;
int isRelative = 0;
int caso = 0;
int passi_sp1 = 0;
int passi_sp2 = 0;
int passi_gomito = 0;
int percentAngles[5];
void setup()
{
  // put your setup code here, to run once:
  if (micro == MICRO_MANO_I2C)
  {
    _DATA_BYTES = 11;
    i2c_address = MICRO_MANO_I2C;
  }
  else if (micro == MICRO_POLSO_I2C)
  {
    _DATA_BYTES = 7;
    i2c_address = MICRO_POLSO_I2C;
  }
  else if (micro == ESP32_ROBOT)
  {
    _DATA_BYTES = 10;
    i2c_address = ESP32_ROBOT;
  }

  Serial.begin(9600);
  while (!Serial);

  Serial.println("inizializzazione ...");
  for (int i = 0; i < 15; i++)
  {
    Serial.print("... ");
    delay(100);
  }

  Serial.println("Indirizzo scelto: " + micro);
  Wire.begin(micro);
  Wire.onReceive(receiveData);
}

void loop()
{
  // put your main code here, to run repeatedly:
  if (is_setup == 1)
  {
    Serial.println("=============================");
    Serial.print("IS_RELATIVE: ");
    Serial.println(isRelative);
    Serial.print("TotalTime: ");
    Serial.println(totalTime);
    Serial.print("offsetTime: ");
    Serial.println(offsetTime);

    if (micro == MICRO_MANO_I2C)
    {
      Serial.print("Dita: ");
      for (int i = 0; i < 5; i++)
      {
        Serial.print(percentAngles[i]);
        Serial.print(",");
      }

      Serial.println("");
    }
    else if (micro == MICRO_POLSO_I2C)
    {
      Serial.print("Polso: ");
      for (int i = 0; i < 2; i++)
      {
        Serial.print(percentAngles[i]);
        Serial.print(",");
      }

      Serial.println("");
    }
    else if (micro == ESP32_ROBOT)
    {
      Serial.print("Passi asse 1: ");
      Serial.println(passi_sp1);
      Serial.print("Passi asse 2: ");
      Serial.println(passi_sp2);
      Serial.print("Passi asse 3: ");
      Serial.println(passi_gomito);
    }

    is_setup = 0;
  }
}

void receiveData(int bytecount)
{
  byte data[_DATA_BYTES];
  for (int i = 0; i < bytecount; i++)
  {
    data[i] = Wire.read();
  }

  if (micro == MICRO_MANO_I2C)
  {
    isRelative = data[0];
    totalTime = (((int16_t) data[1]) << 8 | data[2]) *2;
    offsetTime = (((int16_t) data[3]) << 8 | data[4]);
    for (int i = 5; i < _DATA_BYTES; i++)
    {
      percentAngles[i - 5] = data[i];
    }
  }
  else if (micro == MICRO_POLSO_I2C)
  {
    isRelative = data[0];
    totalTime = (((int16_t) data[1]) << 8 | data[2]);
    offsetTime = (((int16_t) data[3]) << 8 | data[4]);
    for (int i = 5; i < _DATA_BYTES; i++)
    {
      percentAngles[i - 5] = data[i];
    }
  }
  else if (micro == ESP32_ROBOT)
  {
    isRelative = data[0];
    totalTime = (((int16_t) data[1]) << 8 | data[2]);
    offsetTime = (((int16_t) data[3]) << 8 | data[4]);
    passi_sp1 = (((int16_t) data[5]) << 8 | data[6]);
    passi_sp2 = (((int16_t) data[7]) << 8 | data[8]);
    passi_gomito = (((int16_t) data[9]) << 8 | data[10]);
  }

  is_setup = 1;
}
