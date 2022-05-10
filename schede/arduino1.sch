<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="arduino-micro">
<packages>
<package name="ARDUINO-MICRO">
<pad name="D12" x="1.27" y="1.27" drill="0.9"/>
<pad name="D11" x="1.27" y="3.81" drill="0.9"/>
<pad name="D10" x="1.27" y="6.35" drill="0.9"/>
<pad name="D9" x="1.27" y="8.89" drill="0.9"/>
<pad name="D8" x="1.27" y="11.43" drill="0.9"/>
<pad name="D7" x="1.27" y="13.97" drill="0.9"/>
<pad name="D6" x="1.27" y="16.51" drill="0.9"/>
<pad name="D5" x="1.27" y="19.05" drill="0.9"/>
<pad name="D4" x="1.27" y="21.59" drill="0.9"/>
<pad name="D3" x="1.27" y="24.13" drill="0.9"/>
<pad name="D2" x="1.27" y="26.67" drill="0.9"/>
<pad name="GND" x="1.27" y="29.21" drill="0.9"/>
<pad name="RST" x="1.27" y="31.75" drill="0.9"/>
<pad name="RX" x="1.27" y="34.29" drill="0.9"/>
<pad name="TX" x="1.27" y="36.83" drill="0.9"/>
<pad name="SS" x="1.27" y="39.37" drill="0.9"/>
<pad name="MOSI" x="1.27" y="41.91" drill="0.9"/>
<pad name="D13" x="16.51" y="1.27" drill="0.9"/>
<pad name="3V3" x="16.51" y="3.81" drill="0.9"/>
<pad name="REF" x="16.51" y="6.35" drill="0.9"/>
<pad name="A0" x="16.51" y="8.89" drill="0.9"/>
<pad name="A1" x="16.51" y="11.43" drill="0.9"/>
<pad name="A2" x="16.51" y="13.97" drill="0.9"/>
<pad name="A3" x="16.51" y="16.51" drill="0.9"/>
<pad name="A4" x="16.51" y="19.05" drill="0.9"/>
<pad name="A5" x="16.51" y="21.59" drill="0.9"/>
<pad name="NC8" x="16.51" y="24.13" drill="0.9"/>
<pad name="NC7" x="16.51" y="26.67" drill="0.9"/>
<pad name="5V" x="16.51" y="29.21" drill="0.9"/>
<pad name="RST1" x="16.51" y="31.75" drill="0.9"/>
<pad name="GND1" x="16.51" y="34.29" drill="0.9"/>
<pad name="VIN" x="16.51" y="36.83" drill="0.9"/>
<pad name="MISO" x="16.51" y="39.37" drill="0.9"/>
<pad name="SCK" x="16.51" y="41.91" drill="0.9"/>
<wire x1="0" y1="-2.54" x2="17.78" y2="-2.54" width="0.4064" layer="20"/>
<wire x1="17.78" y1="-2.54" x2="17.78" y2="45.72" width="0.4064" layer="20"/>
<wire x1="17.78" y1="45.72" x2="0" y2="45.72" width="0.4064" layer="20"/>
<wire x1="0" y1="45.72" x2="0" y2="-2.54" width="0.4064" layer="20"/>
<hole x="1.27" y="-1.27" drill="1.2"/>
<hole x="16.51" y="-1.27" drill="1.2"/>
<hole x="1.27" y="44.45" drill="1.2"/>
<hole x="16.51" y="44.45" drill="1.2"/>
<wire x1="5.5245" y1="-2.032" x2="5.5245" y2="-3.302" width="0.4064" layer="51"/>
<wire x1="5.5245" y1="-3.302" x2="12.6365" y2="-3.302" width="0.4064" layer="51"/>
<wire x1="12.6365" y1="-3.302" x2="12.6365" y2="-2.032" width="0.4064" layer="51"/>
<wire x1="12.6365" y1="-2.032" x2="13.3985" y2="-2.032" width="0.4064" layer="51"/>
<wire x1="13.3985" y1="-2.032" x2="13.3985" y2="0" width="0.4064" layer="51"/>
<wire x1="13.3985" y1="0" x2="12.6365" y2="0" width="0.4064" layer="51"/>
<wire x1="12.6365" y1="0" x2="12.6365" y2="2.032" width="0.4064" layer="51"/>
<wire x1="12.6365" y1="2.032" x2="5.5245" y2="2.032" width="0.4064" layer="51"/>
<wire x1="5.5245" y1="2.032" x2="5.5245" y2="0" width="0.4064" layer="51"/>
<wire x1="5.5245" y1="0" x2="4.7625" y2="0" width="0.4064" layer="51"/>
<wire x1="4.7625" y1="0" x2="4.7625" y2="-2.032" width="0.4064" layer="51"/>
<wire x1="4.7625" y1="-2.032" x2="5.5245" y2="-2.032" width="0.4064" layer="51"/>
<text x="0.9525" y="46.4185" size="1.27" layer="25">&gt;NAME</text>
<text x="0.1905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ARDUINO-MICRO">
<text x="-12.065" y="25.273" size="1.27" layer="95">&gt;NAME</text>
<text x="-12.5095" y="-25.0825" size="1.27" layer="95">&gt;VALUE</text>
<pin name="IO12*" x="-17.78" y="-20.32" length="middle"/>
<pin name="IO11*" x="-17.78" y="-17.78" length="middle"/>
<pin name="IO10*" x="-17.78" y="-15.24" length="middle"/>
<pin name="IO9*" x="-17.78" y="-12.7" length="middle"/>
<pin name="IO8" x="-17.78" y="-10.16" length="middle"/>
<pin name="D7" x="-17.78" y="-7.62" length="middle"/>
<pin name="D6*" x="-17.78" y="-5.08" length="middle"/>
<pin name="D5*" x="-17.78" y="-2.54" length="middle"/>
<pin name="D4*" x="-17.78" y="0" length="middle"/>
<pin name="D3/SCL" x="-17.78" y="2.54" length="middle"/>
<pin name="D2/SDA" x="-17.78" y="5.08" length="middle"/>
<pin name="GND" x="-17.78" y="7.62" length="middle"/>
<pin name="RESET" x="-17.78" y="10.16" length="middle"/>
<pin name="D0/RX" x="-17.78" y="12.7" length="middle"/>
<pin name="D1/TX" x="-17.78" y="15.24" length="middle"/>
<pin name="RXLED/SS" x="-17.78" y="17.78" length="middle"/>
<pin name="MOSI" x="-17.78" y="20.32" length="middle"/>
<wire x1="12.7" y1="-22.86" x2="12.7" y2="22.86" width="0.254" layer="94"/>
<wire x1="12.7" y1="-22.86" x2="-12.7" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-22.86" x2="-12.7" y2="22.86" width="0.254" layer="94"/>
<wire x1="-12.7" y1="22.86" x2="12.7" y2="22.86" width="0.254" layer="94"/>
<pin name="IO13*" x="17.78" y="-20.32" length="middle" rot="R180"/>
<pin name="3V" x="17.78" y="-17.78" length="middle" rot="R180"/>
<pin name="AREF" x="17.78" y="-15.24" length="middle" rot="R180"/>
<pin name="A0" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="A1" x="17.78" y="-10.16" length="middle" rot="R180"/>
<pin name="A2" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="A3" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="A4" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="A5" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="NC8" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="NC7" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="5V" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="RESET1" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="GND1" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="VIN" x="17.78" y="15.24" length="middle" rot="R180"/>
<pin name="MISO" x="17.78" y="17.78" length="middle" rot="R180"/>
<pin name="SCK" x="17.78" y="20.32" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MICRO">
<gates>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ARDUINO_MICRO">
<gates>
<gate name="G$1" symbol="ARDUINO-MICRO" x="0" y="0"/>
</gates>
<devices>
<device name="FOOTPRINT" package="ARDUINO-MICRO">
<connects>
<connect gate="G$1" pin="3V" pad="3V3"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="AREF" pad="REF"/>
<connect gate="G$1" pin="D0/RX" pad="RX"/>
<connect gate="G$1" pin="D1/TX" pad="TX"/>
<connect gate="G$1" pin="D2/SDA" pad="D2"/>
<connect gate="G$1" pin="D3/SCL" pad="D3"/>
<connect gate="G$1" pin="D4*" pad="D4"/>
<connect gate="G$1" pin="D5*" pad="D5"/>
<connect gate="G$1" pin="D6*" pad="D6"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="IO10*" pad="D10"/>
<connect gate="G$1" pin="IO11*" pad="D11"/>
<connect gate="G$1" pin="IO12*" pad="D12"/>
<connect gate="G$1" pin="IO13*" pad="D13"/>
<connect gate="G$1" pin="IO8" pad="D8"/>
<connect gate="G$1" pin="IO9*" pad="D9"/>
<connect gate="G$1" pin="MISO" pad="MISO"/>
<connect gate="G$1" pin="MOSI" pad="MOSI"/>
<connect gate="G$1" pin="NC7" pad="NC7"/>
<connect gate="G$1" pin="NC8" pad="NC8"/>
<connect gate="G$1" pin="RESET" pad="RST"/>
<connect gate="G$1" pin="RESET1" pad="RST1"/>
<connect gate="G$1" pin="RXLED/SS" pad="SS"/>
<connect gate="G$1" pin="SCK" pad="SCK"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-amp-mt" urn="urn:adsk.eagle:library:123">
<description>&lt;b&gt;AMP Connectors, Type MT&lt;/b&gt;&lt;p&gt;
include  Type MT6; con-amp-mt6.lbr&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="S03P" urn="urn:adsk.eagle:footprint:5737/1" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<wire x1="-2.859" y1="-0.381" x2="-2.097" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.097" y1="-0.381" x2="-2.097" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.097" y1="0.381" x2="-2.859" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.859" y1="0.381" x2="-2.859" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.859" y1="0.381" x2="-2.097" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.097" y1="0.381" x2="-2.859" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.119" y1="0.381" x2="2.119" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.881" y1="0.381" x2="2.119" y2="0.381" width="0.1524" layer="51"/>
<wire x1="2.881" y1="-0.381" x2="2.881" y2="0.381" width="0.1524" layer="51"/>
<wire x1="2.119" y1="0.381" x2="2.881" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.881" y1="0.381" x2="2.119" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.119" y1="-0.381" x2="2.881" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.37" y1="0.381" x2="-0.37" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.392" y1="0.381" x2="-0.37" y2="0.381" width="0.1524" layer="51"/>
<wire x1="0.392" y1="-0.381" x2="0.392" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-0.37" y1="0.381" x2="0.392" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.392" y1="0.381" x2="-0.37" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.37" y1="-0.381" x2="0.392" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.888" y1="-2.667" x2="5.142" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="4.888" y1="2.667" x2="5.142" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.044" y1="2.413" x2="-4.79" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.044" y1="-2.413" x2="-4.79" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.552" y1="3.683" x2="5.65" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-4.79" y1="2.667" x2="4.888" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-4.79" y1="-2.667" x2="-3.901" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-5.044" y1="-2.413" x2="-5.044" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.06" y1="3.175" x2="-6.06" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.65" y1="3.683" x2="6.158" y2="3.175" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.06" y1="-3.175" x2="-5.552" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.06" y1="3.175" x2="-5.552" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="5.65" y1="-3.683" x2="6.158" y2="-3.175" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.52" y1="-2.667" x2="-3.52" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-3.52" y1="-3.683" x2="-3.901" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-3.901" y1="-2.667" x2="-3.901" y2="-3.683" width="0.0508" layer="21"/>
<wire x1="-3.901" y1="-2.667" x2="-3.52" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-3.901" y1="-3.683" x2="-5.552" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-5.044" y1="-1.27" x2="5.142" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.044" y1="1.27" x2="5.142" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.044" y1="-1.27" x2="-5.044" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.044" y1="1.27" x2="-5.044" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-3.52" y1="-2.667" x2="-3.52" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-3.52" y1="-2.159" x2="3.618" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="5.142" y1="-1.27" x2="5.142" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.142" y1="1.27" x2="5.142" y2="2.413" width="0.1524" layer="21"/>
<wire x1="5.142" y1="-2.413" x2="5.142" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.158" y1="3.175" x2="6.158" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="3.999" y1="-2.667" x2="4.888" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="3.999" y1="-2.667" x2="3.999" y2="-3.683" width="0.0508" layer="21"/>
<wire x1="5.65" y1="-3.683" x2="3.999" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.999" y1="-3.683" x2="3.618" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.618" y1="-2.667" x2="3.999" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="3.618" y1="-3.683" x2="3.618" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="3.618" y1="-2.667" x2="3.618" y2="-2.159" width="0.1524" layer="21"/>
<pad name="3" x="-2.5" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="2.5" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-6.0344" y="4.191" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.04" y="4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="3.8208" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="-4.7136" y="-0.635" size="1.27" layer="21" ratio="10">3</text>
</package>
<package name="S02P" urn="urn:adsk.eagle:footprint:5736/1" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<wire x1="0.869" y1="0.381" x2="0.869" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.631" y1="0.381" x2="0.869" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.631" y1="-0.381" x2="1.631" y2="0.381" width="0.1524" layer="51"/>
<wire x1="0.869" y1="0.381" x2="1.631" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.631" y1="0.381" x2="0.869" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.869" y1="-0.381" x2="1.631" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.62" y1="0.381" x2="-1.62" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.858" y1="0.381" x2="-1.62" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-0.858" y1="-0.381" x2="-0.858" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.62" y1="0.381" x2="-0.858" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.858" y1="0.381" x2="-1.62" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.62" y1="-0.381" x2="-0.858" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.638" y1="-2.667" x2="3.892" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="3.638" y1="2.667" x2="3.892" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.805" y1="2.413" x2="-3.551" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.805" y1="-2.413" x2="-3.551" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.313" y1="3.683" x2="4.4" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-3.551" y1="2.667" x2="3.638" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-3.551" y1="-2.667" x2="-2.662" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-3.805" y1="-2.413" x2="-3.805" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.821" y1="3.175" x2="-4.821" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="4.4" y1="3.683" x2="4.908" y2="3.175" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.821" y1="-3.175" x2="-4.313" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.821" y1="3.175" x2="-4.313" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.4" y1="-3.683" x2="4.908" y2="-3.175" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.281" y1="-2.667" x2="-2.281" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-2.281" y1="-3.683" x2="-2.662" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-2.662" y1="-2.667" x2="-2.662" y2="-3.683" width="0.0508" layer="21"/>
<wire x1="-2.662" y1="-2.667" x2="-2.281" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.662" y1="-3.683" x2="-4.313" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-3.805" y1="-1.27" x2="3.892" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.805" y1="1.27" x2="3.892" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.805" y1="-1.27" x2="-3.805" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.805" y1="1.27" x2="-3.805" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-2.281" y1="-2.667" x2="-2.281" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-2.281" y1="-2.159" x2="2.368" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="3.892" y1="-1.27" x2="3.892" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.892" y1="1.27" x2="3.892" y2="2.413" width="0.1524" layer="21"/>
<wire x1="3.892" y1="-2.413" x2="3.892" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.908" y1="3.175" x2="4.908" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="2.749" y1="-2.667" x2="3.638" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="2.749" y1="-2.667" x2="2.749" y2="-3.683" width="0.0508" layer="21"/>
<wire x1="4.4" y1="-3.683" x2="2.749" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="2.749" y1="-3.683" x2="2.368" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="2.368" y1="-2.667" x2="2.749" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="2.368" y1="-3.683" x2="2.368" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="2.368" y1="-2.667" x2="2.368" y2="-2.159" width="0.1524" layer="21"/>
<pad name="2" x="-1.25" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="1.25" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-4.7952" y="4.191" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.465" y="-5.461" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="2.5708" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.3982" y="-0.635" size="1.27" layer="21" ratio="10">2</text>
</package>
<package name="S05P" urn="urn:adsk.eagle:footprint:5739/1" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<wire x1="-0.359" y1="-0.381" x2="0.403" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.403" y1="-0.381" x2="0.403" y2="0.381" width="0.1524" layer="51"/>
<wire x1="0.403" y1="0.381" x2="-0.359" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-0.359" y1="0.381" x2="-0.359" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.359" y1="0.381" x2="0.403" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.403" y1="0.381" x2="-0.359" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.601" y1="-0.381" x2="-4.601" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.363" y1="0.381" x2="-4.601" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.601" y1="0.381" x2="-5.363" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.363" y1="-0.381" x2="-4.601" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.601" y1="0.381" x2="-5.363" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.363" y1="0.381" x2="-5.363" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.112" y1="-0.381" x2="-2.112" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.112" y1="0.381" x2="-2.874" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.874" y1="0.381" x2="-2.874" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.874" y1="-0.381" x2="-2.112" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.112" y1="0.381" x2="-2.874" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.874" y1="0.381" x2="-2.112" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.619" y1="0.381" x2="4.619" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.381" y1="0.381" x2="4.619" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.381" y1="-0.381" x2="5.381" y2="0.381" width="0.1524" layer="51"/>
<wire x1="4.619" y1="0.381" x2="5.381" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.381" y1="0.381" x2="4.619" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.619" y1="-0.381" x2="5.381" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.13" y1="0.381" x2="2.13" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.892" y1="0.381" x2="2.13" y2="0.381" width="0.1524" layer="51"/>
<wire x1="2.892" y1="-0.381" x2="2.892" y2="0.381" width="0.1524" layer="51"/>
<wire x1="2.13" y1="0.381" x2="2.892" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.892" y1="0.381" x2="2.13" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.13" y1="-0.381" x2="2.892" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="7.388" y1="-2.667" x2="7.642" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="7.388" y1="2.667" x2="7.642" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="-7.548" y1="2.413" x2="-7.294" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-7.548" y1="-2.413" x2="-7.294" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-8.056" y1="3.683" x2="8.15" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-7.294" y1="2.667" x2="7.388" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-7.294" y1="-2.667" x2="-6.405" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-7.548" y1="-2.413" x2="-7.548" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.564" y1="3.175" x2="-8.564" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="8.15" y1="3.683" x2="8.658" y2="3.175" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.564" y1="-3.175" x2="-8.056" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-8.564" y1="3.175" x2="-8.056" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.15" y1="-3.683" x2="8.658" y2="-3.175" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.024" y1="-2.667" x2="-6.024" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-6.024" y1="-3.683" x2="-6.405" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="-2.667" x2="-6.405" y2="-3.683" width="0.0508" layer="21"/>
<wire x1="-6.405" y1="-2.667" x2="-6.024" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="-3.683" x2="-8.056" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-7.548" y1="-1.27" x2="7.642" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.548" y1="1.27" x2="7.642" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.548" y1="-1.27" x2="-7.548" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.548" y1="1.27" x2="-7.548" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-6.024" y1="-2.667" x2="-6.024" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-6.024" y1="-2.159" x2="6.118" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="7.642" y1="-1.27" x2="7.642" y2="1.27" width="0.1524" layer="21"/>
<wire x1="7.642" y1="1.27" x2="7.642" y2="2.413" width="0.1524" layer="21"/>
<wire x1="7.642" y1="-2.413" x2="7.642" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.658" y1="3.175" x2="8.658" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="6.499" y1="-2.667" x2="7.388" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="6.499" y1="-2.667" x2="6.499" y2="-3.683" width="0.0508" layer="21"/>
<wire x1="8.15" y1="-3.683" x2="6.499" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="6.499" y1="-3.683" x2="6.118" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="6.118" y1="-2.667" x2="6.499" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="6.118" y1="-3.683" x2="6.118" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="6.118" y1="-2.667" x2="6.118" y2="-2.159" width="0.1524" layer="21"/>
<pad name="3" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-5" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-2.5" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.5" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="5" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-8.5382" y="4.191" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.5692" y="4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="6.3208" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="-7.2174" y="-0.635" size="1.27" layer="21" ratio="10">5</text>
</package>
</packages>
<packages3d>
<package3d name="S03P" urn="urn:adsk.eagle:package:5793/1" type="box" library_version="2">
<description>AMP MT CONNECTOR</description>
<packageinstances>
<packageinstance name="S03P"/>
</packageinstances>
</package3d>
<package3d name="S02P" urn="urn:adsk.eagle:package:5789/1" type="box" library_version="2">
<description>AMP MT CONNECTOR</description>
<packageinstances>
<packageinstance name="S02P"/>
</packageinstances>
</package3d>
<package3d name="S05P" urn="urn:adsk.eagle:package:5790/1" type="box" library_version="2">
<description>AMP MT CONNECTOR</description>
<packageinstances>
<packageinstance name="S05P"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="M" urn="urn:adsk.eagle:symbol:5716/1" library_version="2">
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<text x="-0.508" y="1.016" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="0.254" y="-2.413" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="S03P" urn="urn:adsk.eagle:component:5843/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="M" x="0" y="7.62" addlevel="always"/>
<gate name="-2" symbol="M" x="0" y="2.54" addlevel="always"/>
<gate name="-3" symbol="M" x="0" y="-2.54" addlevel="always"/>
</gates>
<devices>
<device name="" package="S03P">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5793/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="S02P" urn="urn:adsk.eagle:component:5838/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="M" x="0" y="2.54" addlevel="always"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always"/>
</gates>
<devices>
<device name="" package="S02P">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5789/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="S05P" urn="urn:adsk.eagle:component:5840/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;AMP MT CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="M" x="0" y="12.7" addlevel="always"/>
<gate name="-2" symbol="M" x="0" y="7.62" addlevel="always"/>
<gate name="-3" symbol="M" x="0" y="2.54" addlevel="always"/>
<gate name="-4" symbol="M" x="0" y="-2.54" addlevel="always"/>
<gate name="-5" symbol="M" x="0" y="-7.62" addlevel="always"/>
</gates>
<devices>
<device name="" package="S05P">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5790/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:527439">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="R" urn="urn:adsk.eagle:symbol:527454/4" library_version="18">
<description>RESISTOR</description>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-6.35" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="-8.89" size="1.778" layer="97">&gt;SPICEEXTRA</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" urn="urn:adsk.eagle:component:527474/6" prefix="R" uservalue="yes" library_version="18">
<description>RESISTOR</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="SCARA">
<packages>
</packages>
<symbols>
<symbol name="SHIFTER">
<wire x1="-12.7" y1="12.7" x2="-12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-12.7" x2="12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="12.7" y2="12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="12.7" x2="-12.7" y2="12.7" width="0.254" layer="94"/>
<pin name="LV1" x="-17.78" y="10.16" length="middle"/>
<pin name="LV2" x="-17.78" y="5.08" length="middle"/>
<pin name="LV" x="-17.78" y="0" length="middle" direction="sup"/>
<pin name="LV3" x="-17.78" y="-5.08" length="middle"/>
<pin name="LV4" x="-17.78" y="-10.16" length="middle"/>
<pin name="HV1" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="HV2" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="HV" x="17.78" y="0" length="middle" direction="sup" rot="R180"/>
<pin name="HV3" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="HV4" x="17.78" y="-10.16" length="middle" rot="R180"/>
<pin name="GND" x="0" y="-17.78" length="middle" direction="sup" rot="R90"/>
<text x="-5.08" y="15.24" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SHIFTER">
<gates>
<gate name="A" symbol="SHIFTER" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$3" library="arduino-micro" deviceset="ARDUINO_MICRO" device="FOOTPRINT"/>
<part name="MOT2" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S03P" device="" package3d_urn="urn:adsk.eagle:package:5793/1"/>
<part name="CON_1" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S02P" device="" package3d_urn="urn:adsk.eagle:package:5789/1"/>
<part name="CON_2" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S05P" device="" package3d_urn="urn:adsk.eagle:package:5790/1"/>
<part name="CON_3" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S02P" device="" package3d_urn="urn:adsk.eagle:package:5789/1"/>
<part name="MOT1" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S03P" device="" package3d_urn="urn:adsk.eagle:package:5793/1"/>
<part name="R1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="R" device=""/>
<part name="R2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="R" device=""/>
<part name="R3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="R" device=""/>
<part name="R4" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="R" device=""/>
<part name="U$1" library="SCARA" deviceset="SHIFTER" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$3" gate="G$1" x="48.26" y="30.48" smashed="yes" rot="R270">
<attribute name="NAME" x="73.533" y="42.545" size="1.27" layer="95" rot="R270"/>
<attribute name="VALUE" x="23.1775" y="42.9895" size="1.27" layer="95" rot="R270"/>
</instance>
<instance part="MOT2" gate="-1" x="-2.54" y="40.64" smashed="yes" rot="R90">
<attribute name="NAME" x="-3.556" y="40.132" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="-0.127" y="40.894" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="MOT2" gate="-2" x="2.54" y="40.64" smashed="yes" rot="R90">
<attribute name="NAME" x="1.524" y="40.132" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="4.953" y="40.894" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="MOT2" gate="-3" x="7.62" y="40.64" smashed="yes" rot="R90">
<attribute name="NAME" x="6.604" y="40.132" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="10.033" y="40.894" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="CON_1" gate="-1" x="-10.16" y="7.62" smashed="yes" rot="MR180">
<attribute name="NAME" x="-10.668" y="6.604" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-9.906" y="10.033" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="CON_1" gate="-2" x="-10.16" y="2.54" smashed="yes" rot="MR180">
<attribute name="NAME" x="-10.668" y="1.524" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-9.906" y="4.953" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="CON_2" gate="-1" x="101.6" y="2.54" smashed="yes" rot="MR0">
<attribute name="NAME" x="102.108" y="3.556" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="101.346" y="0.127" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CON_2" gate="-2" x="101.6" y="-2.54" smashed="yes" rot="MR0">
<attribute name="NAME" x="102.108" y="-1.524" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="101.346" y="-4.953" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CON_2" gate="-3" x="101.6" y="-7.62" smashed="yes" rot="MR0">
<attribute name="NAME" x="102.108" y="-6.604" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="101.346" y="-10.033" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CON_2" gate="-4" x="101.6" y="-12.7" smashed="yes" rot="MR0">
<attribute name="NAME" x="102.108" y="-11.684" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="101.346" y="-15.113" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CON_2" gate="-5" x="101.6" y="-17.78" smashed="yes" rot="MR0">
<attribute name="NAME" x="102.108" y="-16.764" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="101.346" y="-20.193" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CON_3" gate="-1" x="101.6" y="12.7" smashed="yes" rot="MR0">
<attribute name="NAME" x="102.108" y="13.716" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="101.346" y="10.287" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CON_3" gate="-2" x="101.6" y="7.62" smashed="yes" rot="MR0">
<attribute name="NAME" x="102.108" y="8.636" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="101.346" y="5.207" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="MOT1" gate="-1" x="-2.54" y="22.86" smashed="yes" rot="R90">
<attribute name="NAME" x="-3.556" y="22.352" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="-0.127" y="23.114" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="MOT1" gate="-2" x="2.54" y="22.86" smashed="yes" rot="R90">
<attribute name="NAME" x="1.524" y="22.352" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="4.953" y="23.114" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="MOT1" gate="-3" x="7.62" y="22.86" smashed="yes" rot="R90">
<attribute name="NAME" x="6.604" y="22.352" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="10.033" y="23.114" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R1" gate="G$1" x="22.86" y="-12.7" smashed="yes">
<attribute name="NAME" x="20.32" y="-10.16" size="1.778" layer="95"/>
<attribute name="VALUE" x="20.32" y="-16.51" size="1.778" layer="96"/>
</instance>
<instance part="R2" gate="G$1" x="22.86" y="-20.32" smashed="yes">
<attribute name="NAME" x="20.32" y="-17.78" size="1.778" layer="95"/>
<attribute name="VALUE" x="20.32" y="-24.13" size="1.778" layer="96"/>
</instance>
<instance part="R3" gate="G$1" x="78.74" y="-12.7" smashed="yes">
<attribute name="NAME" x="76.2" y="-10.16" size="1.778" layer="95"/>
<attribute name="VALUE" x="76.2" y="-16.51" size="1.778" layer="96"/>
</instance>
<instance part="R4" gate="G$1" x="78.74" y="-20.32" smashed="yes">
<attribute name="NAME" x="76.2" y="-17.78" size="1.778" layer="95"/>
<attribute name="VALUE" x="76.2" y="-24.13" size="1.778" layer="96"/>
</instance>
<instance part="U$1" gate="A" x="50.8" y="-22.86" smashed="yes">
<attribute name="NAME" x="45.72" y="-7.62" size="2.0828" layer="94" ratio="6"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$3" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="D3/SCL"/>
<wire x1="50.8" y1="48.26" x2="50.8" y2="50.8" width="0.1524" layer="91"/>
<wire x1="50.8" y1="50.8" x2="15.24" y2="50.8" width="0.1524" layer="91"/>
<wire x1="15.24" y1="50.8" x2="15.24" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="CON_2" gate="-1" pin="S"/>
<wire x1="96.52" y1="2.54" x2="33.02" y2="2.54" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="U$1" gate="A" pin="LV1"/>
<wire x1="27.94" y1="-12.7" x2="33.02" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="33.02" y1="2.54" x2="33.02" y2="-12.7" width="0.1524" layer="91"/>
<junction x="33.02" y="-12.7"/>
<wire x1="15.24" y1="-25.4" x2="27.94" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-25.4" x2="27.94" y2="-12.7" width="0.1524" layer="91"/>
<junction x="27.94" y="-12.7"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="D2/SDA"/>
<wire x1="53.34" y1="48.26" x2="53.34" y2="53.34" width="0.1524" layer="91"/>
<wire x1="53.34" y1="53.34" x2="12.7" y2="53.34" width="0.1524" layer="91"/>
<wire x1="12.7" y1="53.34" x2="12.7" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-27.94" x2="30.48" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="U$1" gate="A" pin="LV2"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="33.02" y1="-17.78" x2="33.02" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-20.32" x2="30.48" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="CON_2" gate="-2" pin="S"/>
<wire x1="30.48" y1="-20.32" x2="27.94" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-20.32" x2="30.48" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-2.54" x2="96.52" y2="-2.54" width="0.1524" layer="91"/>
<junction x="30.48" y="-20.32"/>
<wire x1="30.48" y1="-27.94" x2="30.48" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="MOT2" gate="-3" pin="S"/>
<wire x1="7.62" y1="45.72" x2="7.62" y2="48.26" width="0.1524" layer="91"/>
<wire x1="7.62" y1="48.26" x2="5.08" y2="48.26" width="0.1524" layer="91"/>
<wire x1="5.08" y1="48.26" x2="5.08" y2="27.94" width="0.1524" layer="91"/>
<pinref part="CON_1" gate="-1" pin="S"/>
<wire x1="5.08" y1="27.94" x2="5.08" y2="7.62" width="0.1524" layer="91"/>
<wire x1="5.08" y1="7.62" x2="-5.08" y2="7.62" width="0.1524" layer="91"/>
<pinref part="MOT1" gate="-3" pin="S"/>
<wire x1="7.62" y1="27.94" x2="5.08" y2="27.94" width="0.1524" layer="91"/>
<junction x="5.08" y="27.94"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="MOT1" gate="-2" pin="S"/>
<wire x1="2.54" y1="27.94" x2="0" y2="27.94" width="0.1524" layer="91"/>
<pinref part="MOT2" gate="-2" pin="S"/>
<wire x1="2.54" y1="45.72" x2="2.54" y2="48.26" width="0.1524" layer="91"/>
<wire x1="2.54" y1="48.26" x2="0" y2="48.26" width="0.1524" layer="91"/>
<wire x1="0" y1="48.26" x2="0" y2="27.94" width="0.1524" layer="91"/>
<wire x1="0" y1="2.54" x2="0" y2="27.94" width="0.1524" layer="91"/>
<junction x="0" y="27.94"/>
<pinref part="CON_1" gate="-2" pin="S"/>
<wire x1="-5.08" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="D7"/>
<wire x1="40.64" y1="48.26" x2="40.64" y2="58.42" width="0.1524" layer="91"/>
<wire x1="40.64" y1="58.42" x2="78.74" y2="58.42" width="0.1524" layer="91"/>
<wire x1="78.74" y1="58.42" x2="78.74" y2="15.24" width="0.1524" layer="91"/>
<wire x1="78.74" y1="15.24" x2="116.84" y2="15.24" width="0.1524" layer="91"/>
<pinref part="CON_2" gate="-5" pin="S"/>
<wire x1="96.52" y1="-17.78" x2="96.52" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="116.84" y1="15.24" x2="116.84" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-20.32" x2="96.52" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="MOT2" gate="-1" pin="S"/>
<wire x1="-2.54" y1="45.72" x2="-2.54" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="IO11*"/>
<wire x1="-2.54" y1="55.88" x2="30.48" y2="55.88" width="0.1524" layer="91"/>
<wire x1="30.48" y1="55.88" x2="30.48" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="MOT1" gate="-1" pin="S"/>
<wire x1="-2.54" y1="27.94" x2="-7.62" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="27.94" x2="-7.62" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="58.42" x2="27.94" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="IO12*"/>
<wire x1="27.94" y1="58.42" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="CON_2" gate="-4" pin="S"/>
<wire x1="96.52" y1="-12.7" x2="86.36" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-12.7" x2="86.36" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U$1" gate="A" pin="HV2"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="68.58" y1="-17.78" x2="68.58" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-20.32" x2="71.12" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-20.32" x2="73.66" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-25.4" x2="71.12" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-25.4" x2="71.12" y2="-20.32" width="0.1524" layer="91"/>
<junction x="71.12" y="-20.32"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="U$1" gate="A" pin="HV1"/>
<wire x1="73.66" y1="-12.7" x2="71.12" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="CON_2" gate="-3" pin="S"/>
<wire x1="71.12" y1="-12.7" x2="68.58" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-7.62" x2="71.12" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-7.62" x2="71.12" y2="-12.7" width="0.1524" layer="91"/>
<junction x="71.12" y="-12.7"/>
</segment>
</net>
<net name="HV" class="0">
<segment>
<pinref part="U$1" gate="A" pin="HV"/>
<wire x1="68.58" y1="-22.86" x2="83.82" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-22.86" x2="83.82" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="83.82" y1="-20.32" x2="83.82" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="VIN"/>
<wire x1="63.5" y1="12.7" x2="63.5" y2="10.16" width="0.1524" layer="91"/>
<wire x1="63.5" y1="10.16" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<pinref part="CON_3" gate="-1" pin="S"/>
<wire x1="96.52" y1="12.7" x2="83.82" y2="12.7" width="0.1524" layer="91"/>
<wire x1="83.82" y1="12.7" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-12.7" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<junction x="83.82" y="-12.7"/>
<junction x="83.82" y="10.16"/>
</segment>
</net>
<net name="LV" class="0">
<segment>
<pinref part="U$1" gate="A" pin="LV"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="33.02" y1="-22.86" x2="17.78" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-22.86" x2="17.78" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="17.78" y1="-12.7" x2="17.78" y2="-20.32" width="0.1524" layer="91"/>
<junction x="17.78" y="-20.32"/>
<wire x1="17.78" y1="-12.7" x2="17.78" y2="7.62" width="0.1524" layer="91"/>
<junction x="17.78" y="-12.7"/>
<wire x1="17.78" y1="7.62" x2="30.48" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="3V"/>
<wire x1="30.48" y1="7.62" x2="30.48" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$1" gate="A" pin="GND"/>
<wire x1="50.8" y1="-40.64" x2="119.38" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-40.64" x2="119.38" y2="10.16" width="0.1524" layer="91"/>
<wire x1="119.38" y1="10.16" x2="93.98" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="GND1"/>
<wire x1="60.96" y1="7.62" x2="60.96" y2="12.7" width="0.1524" layer="91"/>
<pinref part="CON_3" gate="-2" pin="S"/>
<wire x1="60.96" y1="7.62" x2="93.98" y2="7.62" width="0.1524" layer="91"/>
<wire x1="93.98" y1="7.62" x2="96.52" y2="7.62" width="0.1524" layer="91"/>
<wire x1="93.98" y1="10.16" x2="93.98" y2="7.62" width="0.1524" layer="91"/>
<junction x="93.98" y="7.62"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
