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
<library name="pololu-stepper-driver">
<description>&lt;b&gt;Pololu stepper motor driver&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by Suzaku Lab. Ltd. support@suzakugiken.jp&lt;/author&gt;
&lt;p&gt;This is an unofficial library. If you notice a mistake, please contact the author.&lt;/p&gt;</description>
<packages>
<package name="DRV8825">
<description>DRV8825 Stepper Motor Driver</description>
<pad name="1" x="-6.35" y="8.89" drill="1.016"/>
<pad name="2" x="-6.35" y="6.35" drill="1.016"/>
<pad name="3" x="-6.35" y="3.81" drill="1.016"/>
<pad name="4" x="-6.35" y="1.27" drill="1.016"/>
<pad name="5" x="-6.35" y="-1.27" drill="1.016"/>
<pad name="6" x="-6.35" y="-3.81" drill="1.016"/>
<pad name="7" x="-6.35" y="-6.35" drill="1.016"/>
<pad name="8" x="-6.35" y="-8.89" drill="1.016"/>
<pad name="9" x="6.35" y="-8.89" drill="1.016"/>
<pad name="10" x="6.35" y="-6.35" drill="1.016"/>
<pad name="11" x="6.35" y="-3.81" drill="1.016"/>
<pad name="12" x="6.35" y="-1.27" drill="1.016"/>
<pad name="13" x="6.35" y="1.27" drill="1.016"/>
<pad name="14" x="6.35" y="3.81" drill="1.016"/>
<pad name="15" x="6.35" y="6.35" drill="1.016"/>
<pad name="16" x="6.35" y="8.89" drill="1.016"/>
<wire x1="-7.6" y1="10.15" x2="7.6" y2="10.15" width="0.127" layer="21"/>
<wire x1="7.6" y1="10.15" x2="7.6" y2="-10.15" width="0.127" layer="21"/>
<wire x1="7.6" y1="-10.15" x2="-7.6" y2="-10.15" width="0.127" layer="21"/>
<wire x1="-7.6" y1="-10.15" x2="-7.6" y2="10.15" width="0.127" layer="21"/>
<text x="-5.08" y="8.89" size="1.27" layer="21" align="center-left">!EN</text>
<text x="-5.08" y="6.35" size="1.27" layer="21" align="center-left">M0</text>
<text x="-5.08" y="3.81" size="1.27" layer="21" align="center-left">M1</text>
<text x="-5.08" y="1.27" size="1.27" layer="21" align="center-left">M2</text>
<text x="-5.08" y="-1.27" size="1.27" layer="21" align="center-left">!RST</text>
<text x="-5.08" y="-3.81" size="1.27" layer="21" align="center-left">!SLP</text>
<text x="-5.08" y="-6.35" size="1.27" layer="21" align="center-left">STEP</text>
<text x="-5.08" y="-8.89" size="1.27" layer="21" align="center-left">DIR</text>
<text x="5.08" y="8.89" size="1.27" layer="21" align="center-right">VMOT</text>
<text x="5.08" y="6.35" size="1.27" layer="21" align="center-right">GND</text>
<text x="5.08" y="3.81" size="1.27" layer="21" align="center-right">B2</text>
<text x="5.08" y="1.27" size="1.27" layer="21" align="center-right">B1</text>
<text x="5.08" y="-1.27" size="1.27" layer="21" align="center-right">A1</text>
<text x="5.08" y="-3.81" size="1.27" layer="21" align="center-right">A2</text>
<text x="5.08" y="-6.35" size="1.27" layer="21" align="center-right">!FLT</text>
<text x="5.08" y="-8.89" size="1.27" layer="21" align="center-right">GND</text>
<text x="-5.08" y="-12.7" size="1.778" layer="25">&gt;NAME</text>
<text x="-5.715" y="10.795" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="DRV8825">
<description>DRV8825 stepper motor driver</description>
<pin name="!EN" x="-12.7" y="7.62" length="short" direction="pas"/>
<pin name="M0" x="-12.7" y="5.08" length="short" direction="pas"/>
<pin name="M1" x="-12.7" y="2.54" length="short" direction="pas"/>
<pin name="M2" x="-12.7" y="0" length="short" direction="pas"/>
<pin name="!RST" x="-12.7" y="-2.54" length="short" direction="in"/>
<pin name="!SLP" x="-12.7" y="-5.08" length="short" direction="in"/>
<pin name="STEP" x="-12.7" y="-7.62" length="short" direction="in"/>
<pin name="DIR" x="-12.7" y="-10.16" length="short" direction="in"/>
<pin name="GND1" x="12.7" y="-10.16" length="short" direction="pwr" rot="R180"/>
<pin name="!FLT" x="12.7" y="-7.62" length="short" direction="oc" rot="R180"/>
<pin name="A2" x="12.7" y="-5.08" length="short" direction="out" rot="R180"/>
<pin name="A1" x="12.7" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="B1" x="12.7" y="0" length="short" direction="out" rot="R180"/>
<pin name="B2" x="12.7" y="2.54" length="short" direction="out" rot="R180"/>
<pin name="GND2" x="12.7" y="5.08" length="short" direction="pwr" rot="R180"/>
<pin name="VMOT" x="12.7" y="7.62" length="short" direction="pwr" rot="R180"/>
<wire x1="-10.16" y1="10.16" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<text x="-5.08" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="2982-DRV8825" prefix="IC">
<description>&lt;b&gt;DRV8825 Stepper Motor Driver Carrier; High Current (Header Pins Soldered)&lt;/b&gt;

&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.pololu.com/product/2982"&gt;#2982 DRV8825 Stepper Motor Driver Carrier; High Current (Header Pins Soldered)&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;in Japan, &lt;a href="https://suzakugiken.jp/"&gt;Suzaku Lab. Ltd.&lt;/a&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://szc.jp/po2982"&gt;#2982 DRV8825 大電流用ステッピングモータドライバ (ピンヘッダ実装済み)&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="DRV8825" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DRV8825">
<connects>
<connect gate="G$1" pin="!EN" pad="1"/>
<connect gate="G$1" pin="!FLT" pad="10"/>
<connect gate="G$1" pin="!RST" pad="5"/>
<connect gate="G$1" pin="!SLP" pad="6"/>
<connect gate="G$1" pin="A1" pad="12"/>
<connect gate="G$1" pin="A2" pad="11"/>
<connect gate="G$1" pin="B1" pad="13"/>
<connect gate="G$1" pin="B2" pad="14"/>
<connect gate="G$1" pin="DIR" pad="8"/>
<connect gate="G$1" pin="GND1" pad="9"/>
<connect gate="G$1" pin="GND2" pad="15"/>
<connect gate="G$1" pin="M0" pad="2"/>
<connect gate="G$1" pin="M1" pad="3"/>
<connect gate="G$1" pin="M2" pad="4"/>
<connect gate="G$1" pin="STEP" pad="7"/>
<connect gate="G$1" pin="VMOT" pad="16"/>
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
<package3d name="S02P" urn="urn:adsk.eagle:package:5789/1" type="box" library_version="2">
<description>AMP MT CONNECTOR</description>
<packageinstances>
<packageinstance name="S02P"/>
</packageinstances>
</package3d>
<package3d name="S03P" urn="urn:adsk.eagle:package:5793/1" type="box" library_version="2">
<description>AMP MT CONNECTOR</description>
<packageinstances>
<packageinstance name="S03P"/>
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
<part name="IC1" library="pololu-stepper-driver" deviceset="2982-DRV8825" device=""/>
<part name="CON_1" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S02P" device="" package3d_urn="urn:adsk.eagle:package:5789/1"/>
<part name="MOT1" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S03P" device="" package3d_urn="urn:adsk.eagle:package:5793/1"/>
<part name="PAS_1" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S05P" device="" package3d_urn="urn:adsk.eagle:package:5790/1"/>
<part name="CON_2" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S02P" device="" package3d_urn="urn:adsk.eagle:package:5789/1"/>
<part name="IC2" library="pololu-stepper-driver" deviceset="2982-DRV8825" device=""/>
<part name="CON_3" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S02P" device="" package3d_urn="urn:adsk.eagle:package:5789/1"/>
<part name="MOT2" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S03P" device="" package3d_urn="urn:adsk.eagle:package:5793/1"/>
<part name="PAS_2" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S05P" device="" package3d_urn="urn:adsk.eagle:package:5790/1"/>
<part name="IC3" library="pololu-stepper-driver" deviceset="2982-DRV8825" device=""/>
<part name="CON_5" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S02P" device="" package3d_urn="urn:adsk.eagle:package:5789/1"/>
<part name="MOT3" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S03P" device="" package3d_urn="urn:adsk.eagle:package:5793/1"/>
<part name="PAS_3" library="con-amp-mt" library_urn="urn:adsk.eagle:library:123" deviceset="S05P" device="" package3d_urn="urn:adsk.eagle:package:5790/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="26.67" y="31.75" smashed="yes">
<attribute name="NAME" x="21.59" y="42.545" size="1.778" layer="95"/>
<attribute name="VALUE" x="21.59" y="16.51" size="1.778" layer="96"/>
</instance>
<instance part="CON_1" gate="-1" x="36.83" y="48.26" smashed="yes" rot="MR180">
<attribute name="NAME" x="36.322" y="47.244" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="37.084" y="50.673" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="CON_1" gate="-2" x="36.83" y="45.72" smashed="yes" rot="MR180">
<attribute name="NAME" x="36.322" y="44.704" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="37.084" y="48.133" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="MOT1" gate="-1" x="19.05" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="20.066" y="61.468" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="16.637" y="60.706" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="MOT1" gate="-2" x="24.13" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="25.146" y="61.468" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="21.717" y="60.706" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="MOT1" gate="-3" x="29.21" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="30.226" y="61.468" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="26.797" y="60.706" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="PAS_1" gate="-1" x="39.37" y="2.54" smashed="yes" rot="MR90">
<attribute name="NAME" x="40.386" y="2.032" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="36.957" y="2.794" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="PAS_1" gate="-2" x="43.18" y="2.54" smashed="yes" rot="MR90">
<attribute name="NAME" x="44.196" y="2.032" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="40.767" y="2.794" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="PAS_1" gate="-3" x="46.99" y="2.54" smashed="yes" rot="MR90">
<attribute name="NAME" x="48.006" y="2.032" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="44.577" y="2.794" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="PAS_1" gate="-4" x="50.8" y="2.54" smashed="yes" rot="MR90">
<attribute name="NAME" x="51.816" y="2.032" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="48.387" y="2.794" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="CON_2" gate="-1" x="1.27" y="10.16" smashed="yes" rot="MR180">
<attribute name="NAME" x="0.762" y="9.144" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="1.524" y="12.573" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="CON_2" gate="-2" x="1.27" y="7.62" smashed="yes" rot="MR180">
<attribute name="NAME" x="0.762" y="6.604" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="1.524" y="10.033" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="IC2" gate="G$1" x="74.93" y="31.75" smashed="yes">
<attribute name="NAME" x="69.85" y="42.545" size="1.778" layer="95"/>
<attribute name="VALUE" x="69.85" y="16.51" size="1.778" layer="96"/>
</instance>
<instance part="CON_3" gate="-1" x="85.09" y="48.26" smashed="yes" rot="MR180">
<attribute name="NAME" x="84.582" y="47.244" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="85.344" y="50.673" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="CON_3" gate="-2" x="85.09" y="45.72" smashed="yes" rot="MR180">
<attribute name="NAME" x="84.582" y="44.704" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="85.344" y="48.133" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="MOT2" gate="-1" x="67.31" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="68.326" y="61.468" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="64.897" y="60.706" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="MOT2" gate="-2" x="72.39" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="73.406" y="61.468" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="69.977" y="60.706" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="MOT2" gate="-3" x="77.47" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="78.486" y="61.468" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="75.057" y="60.706" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="PAS_2" gate="-1" x="87.63" y="2.54" smashed="yes" rot="MR90">
<attribute name="NAME" x="88.646" y="2.032" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="85.217" y="2.794" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="PAS_2" gate="-2" x="91.44" y="2.54" smashed="yes" rot="MR90">
<attribute name="NAME" x="92.456" y="2.032" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="89.027" y="2.794" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="PAS_2" gate="-3" x="95.25" y="2.54" smashed="yes" rot="MR90">
<attribute name="NAME" x="96.266" y="2.032" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="92.837" y="2.794" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="PAS_2" gate="-4" x="99.06" y="2.54" smashed="yes" rot="MR90">
<attribute name="NAME" x="100.076" y="2.032" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="96.647" y="2.794" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="IC3" gate="G$1" x="123.19" y="30.48" smashed="yes">
<attribute name="NAME" x="118.11" y="41.275" size="1.778" layer="95"/>
<attribute name="VALUE" x="118.11" y="15.24" size="1.778" layer="96"/>
</instance>
<instance part="CON_5" gate="-1" x="133.35" y="46.99" smashed="yes" rot="MR180">
<attribute name="NAME" x="132.842" y="45.974" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="133.604" y="49.403" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="CON_5" gate="-2" x="133.35" y="44.45" smashed="yes" rot="MR180">
<attribute name="NAME" x="132.842" y="43.434" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="133.604" y="46.863" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="MOT3" gate="-1" x="115.57" y="59.69" smashed="yes" rot="R270">
<attribute name="NAME" x="116.586" y="60.198" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="113.157" y="59.436" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="MOT3" gate="-2" x="120.65" y="59.69" smashed="yes" rot="R270">
<attribute name="NAME" x="121.666" y="60.198" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="118.237" y="59.436" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="MOT3" gate="-3" x="125.73" y="59.69" smashed="yes" rot="R270">
<attribute name="NAME" x="126.746" y="60.198" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="123.317" y="59.436" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="PAS_3" gate="-1" x="135.89" y="1.27" smashed="yes" rot="MR90">
<attribute name="NAME" x="136.906" y="0.762" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="133.477" y="1.524" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="PAS_3" gate="-2" x="139.7" y="1.27" smashed="yes" rot="MR90">
<attribute name="NAME" x="140.716" y="0.762" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="137.287" y="1.524" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="PAS_3" gate="-3" x="143.51" y="1.27" smashed="yes" rot="MR90">
<attribute name="NAME" x="144.526" y="0.762" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="141.097" y="1.524" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="PAS_3" gate="-4" x="147.32" y="1.27" smashed="yes" rot="MR90">
<attribute name="NAME" x="148.336" y="0.762" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="144.907" y="1.524" size="1.778" layer="96" rot="MR90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VMOT"/>
<wire x1="39.37" y1="39.37" x2="49.53" y2="39.37" width="0.1524" layer="91"/>
<wire x1="49.53" y1="39.37" x2="49.53" y2="45.72" width="0.1524" layer="91"/>
<pinref part="CON_1" gate="-2" pin="S"/>
<wire x1="41.91" y1="45.72" x2="49.53" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="!RST"/>
<pinref part="IC1" gate="G$1" pin="!SLP"/>
<wire x1="13.97" y1="29.21" x2="13.97" y2="26.67" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="B2"/>
<wire x1="39.37" y1="34.29" x2="50.8" y2="34.29" width="0.1524" layer="91"/>
<pinref part="PAS_1" gate="-4" pin="S"/>
<wire x1="50.8" y1="34.29" x2="50.8" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="49.53" y1="8.89" x2="49.53" y2="31.75" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="B1"/>
<wire x1="49.53" y1="31.75" x2="39.37" y2="31.75" width="0.1524" layer="91"/>
<pinref part="PAS_1" gate="-3" pin="S"/>
<wire x1="46.99" y1="7.62" x2="46.99" y2="8.89" width="0.1524" layer="91"/>
<wire x1="46.99" y1="8.89" x2="49.53" y2="8.89" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="A1"/>
<wire x1="39.37" y1="29.21" x2="48.26" y2="29.21" width="0.1524" layer="91"/>
<wire x1="48.26" y1="29.21" x2="48.26" y2="10.16" width="0.1524" layer="91"/>
<wire x1="48.26" y1="10.16" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
<pinref part="PAS_1" gate="-2" pin="S"/>
<wire x1="43.18" y1="10.16" x2="43.18" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="A2"/>
<wire x1="39.37" y1="26.67" x2="46.99" y2="26.67" width="0.1524" layer="91"/>
<wire x1="46.99" y1="26.67" x2="46.99" y2="11.43" width="0.1524" layer="91"/>
<wire x1="46.99" y1="11.43" x2="39.37" y2="11.43" width="0.1524" layer="91"/>
<pinref part="PAS_1" gate="-1" pin="S"/>
<wire x1="39.37" y1="11.43" x2="39.37" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND2"/>
<wire x1="39.37" y1="36.83" x2="50.8" y2="36.83" width="0.1524" layer="91"/>
<wire x1="50.8" y1="48.26" x2="50.8" y2="36.83" width="0.1524" layer="91"/>
<pinref part="CON_1" gate="-1" pin="S"/>
<wire x1="50.8" y1="48.26" x2="41.91" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="MOT1" gate="-3" pin="S"/>
<wire x1="29.21" y1="55.88" x2="29.21" y2="50.8" width="0.1524" layer="91"/>
<wire x1="29.21" y1="50.8" x2="8.89" y2="50.8" width="0.1524" layer="91"/>
<wire x1="8.89" y1="50.8" x2="8.89" y2="21.59" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="DIR"/>
<wire x1="8.89" y1="21.59" x2="13.97" y2="21.59" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="MOT1" gate="-2" pin="S"/>
<wire x1="24.13" y1="55.88" x2="24.13" y2="52.07" width="0.1524" layer="91"/>
<wire x1="24.13" y1="52.07" x2="10.16" y2="52.07" width="0.1524" layer="91"/>
<wire x1="10.16" y1="52.07" x2="10.16" y2="24.13" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="STEP"/>
<wire x1="10.16" y1="24.13" x2="13.97" y2="24.13" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="MOT1" gate="-1" pin="S"/>
<wire x1="19.05" y1="55.88" x2="19.05" y2="49.53" width="0.1524" layer="91"/>
<wire x1="19.05" y1="49.53" x2="11.43" y2="49.53" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="!EN"/>
<wire x1="11.43" y1="49.53" x2="11.43" y2="39.37" width="0.1524" layer="91"/>
<wire x1="11.43" y1="39.37" x2="13.97" y2="39.37" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="VMOT"/>
<wire x1="87.63" y1="39.37" x2="97.79" y2="39.37" width="0.1524" layer="91"/>
<wire x1="97.79" y1="39.37" x2="97.79" y2="45.72" width="0.1524" layer="91"/>
<pinref part="CON_3" gate="-2" pin="S"/>
<wire x1="90.17" y1="45.72" x2="97.79" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="!RST"/>
<pinref part="IC2" gate="G$1" pin="!SLP"/>
<wire x1="62.23" y1="29.21" x2="62.23" y2="26.67" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="B2"/>
<wire x1="87.63" y1="34.29" x2="99.06" y2="34.29" width="0.1524" layer="91"/>
<pinref part="PAS_2" gate="-4" pin="S"/>
<wire x1="99.06" y1="34.29" x2="99.06" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<wire x1="97.79" y1="8.89" x2="97.79" y2="31.75" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="B1"/>
<wire x1="97.79" y1="31.75" x2="87.63" y2="31.75" width="0.1524" layer="91"/>
<pinref part="PAS_2" gate="-3" pin="S"/>
<wire x1="95.25" y1="7.62" x2="95.25" y2="8.89" width="0.1524" layer="91"/>
<wire x1="95.25" y1="8.89" x2="97.79" y2="8.89" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="A1"/>
<wire x1="87.63" y1="29.21" x2="96.52" y2="29.21" width="0.1524" layer="91"/>
<wire x1="96.52" y1="29.21" x2="96.52" y2="10.16" width="0.1524" layer="91"/>
<wire x1="96.52" y1="10.16" x2="91.44" y2="10.16" width="0.1524" layer="91"/>
<pinref part="PAS_2" gate="-2" pin="S"/>
<wire x1="91.44" y1="10.16" x2="91.44" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="A2"/>
<wire x1="87.63" y1="26.67" x2="95.25" y2="26.67" width="0.1524" layer="91"/>
<wire x1="95.25" y1="26.67" x2="95.25" y2="11.43" width="0.1524" layer="91"/>
<wire x1="95.25" y1="11.43" x2="87.63" y2="11.43" width="0.1524" layer="91"/>
<pinref part="PAS_2" gate="-1" pin="S"/>
<wire x1="87.63" y1="11.43" x2="87.63" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="GND2"/>
<wire x1="87.63" y1="36.83" x2="99.06" y2="36.83" width="0.1524" layer="91"/>
<wire x1="99.06" y1="48.26" x2="99.06" y2="36.83" width="0.1524" layer="91"/>
<pinref part="CON_3" gate="-1" pin="S"/>
<wire x1="99.06" y1="48.26" x2="90.17" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="MOT2" gate="-3" pin="S"/>
<wire x1="77.47" y1="55.88" x2="77.47" y2="50.8" width="0.1524" layer="91"/>
<wire x1="77.47" y1="50.8" x2="57.15" y2="50.8" width="0.1524" layer="91"/>
<wire x1="57.15" y1="50.8" x2="57.15" y2="21.59" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="DIR"/>
<wire x1="57.15" y1="21.59" x2="62.23" y2="21.59" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="MOT2" gate="-2" pin="S"/>
<wire x1="72.39" y1="55.88" x2="72.39" y2="52.07" width="0.1524" layer="91"/>
<wire x1="72.39" y1="52.07" x2="58.42" y2="52.07" width="0.1524" layer="91"/>
<wire x1="58.42" y1="52.07" x2="58.42" y2="24.13" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="STEP"/>
<wire x1="58.42" y1="24.13" x2="62.23" y2="24.13" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="MOT2" gate="-1" pin="S"/>
<wire x1="67.31" y1="55.88" x2="67.31" y2="49.53" width="0.1524" layer="91"/>
<wire x1="67.31" y1="49.53" x2="59.69" y2="49.53" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="!EN"/>
<wire x1="59.69" y1="49.53" x2="59.69" y2="39.37" width="0.1524" layer="91"/>
<wire x1="59.69" y1="39.37" x2="62.23" y2="39.37" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="VMOT"/>
<wire x1="135.89" y1="38.1" x2="146.05" y2="38.1" width="0.1524" layer="91"/>
<wire x1="146.05" y1="38.1" x2="146.05" y2="44.45" width="0.1524" layer="91"/>
<pinref part="CON_5" gate="-2" pin="S"/>
<wire x1="138.43" y1="44.45" x2="146.05" y2="44.45" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="!RST"/>
<pinref part="IC3" gate="G$1" pin="!SLP"/>
<wire x1="110.49" y1="27.94" x2="110.49" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="B2"/>
<wire x1="135.89" y1="33.02" x2="147.32" y2="33.02" width="0.1524" layer="91"/>
<pinref part="PAS_3" gate="-4" pin="S"/>
<wire x1="147.32" y1="33.02" x2="147.32" y2="6.35" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<wire x1="146.05" y1="7.62" x2="146.05" y2="30.48" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="B1"/>
<wire x1="146.05" y1="30.48" x2="135.89" y2="30.48" width="0.1524" layer="91"/>
<pinref part="PAS_3" gate="-3" pin="S"/>
<wire x1="143.51" y1="6.35" x2="143.51" y2="7.62" width="0.1524" layer="91"/>
<wire x1="143.51" y1="7.62" x2="146.05" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="A1"/>
<wire x1="135.89" y1="27.94" x2="144.78" y2="27.94" width="0.1524" layer="91"/>
<wire x1="144.78" y1="27.94" x2="144.78" y2="8.89" width="0.1524" layer="91"/>
<wire x1="144.78" y1="8.89" x2="139.7" y2="8.89" width="0.1524" layer="91"/>
<pinref part="PAS_3" gate="-2" pin="S"/>
<wire x1="139.7" y1="8.89" x2="139.7" y2="6.35" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="A2"/>
<wire x1="135.89" y1="25.4" x2="143.51" y2="25.4" width="0.1524" layer="91"/>
<wire x1="143.51" y1="25.4" x2="143.51" y2="10.16" width="0.1524" layer="91"/>
<wire x1="143.51" y1="10.16" x2="135.89" y2="10.16" width="0.1524" layer="91"/>
<pinref part="PAS_3" gate="-1" pin="S"/>
<wire x1="135.89" y1="10.16" x2="135.89" y2="6.35" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="GND2"/>
<wire x1="135.89" y1="35.56" x2="147.32" y2="35.56" width="0.1524" layer="91"/>
<wire x1="147.32" y1="46.99" x2="147.32" y2="35.56" width="0.1524" layer="91"/>
<pinref part="CON_5" gate="-1" pin="S"/>
<wire x1="147.32" y1="46.99" x2="138.43" y2="46.99" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<wire x1="134.62" y1="11.43" x2="142.24" y2="11.43" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="!FLT"/>
<wire x1="142.24" y1="11.43" x2="142.24" y2="22.86" width="0.1524" layer="91"/>
<wire x1="142.24" y1="22.86" x2="135.89" y2="22.86" width="0.1524" layer="91"/>
<wire x1="134.62" y1="11.43" x2="134.62" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="134.62" y1="-12.7" x2="104.14" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-12.7" x2="24.13" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="86.36" y1="12.7" x2="93.98" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="!FLT"/>
<wire x1="93.98" y1="12.7" x2="93.98" y2="24.13" width="0.1524" layer="91"/>
<wire x1="93.98" y1="24.13" x2="87.63" y2="24.13" width="0.1524" layer="91"/>
<wire x1="86.36" y1="12.7" x2="86.36" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-10.16" x2="55.88" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="CON_2" gate="-2" pin="S"/>
<wire x1="55.88" y1="-10.16" x2="29.21" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="6.35" y1="7.62" x2="24.13" y2="7.62" width="0.1524" layer="91"/>
<wire x1="24.13" y1="7.62" x2="29.21" y2="7.62" width="0.1524" layer="91"/>
<wire x1="29.21" y1="7.62" x2="38.1" y2="7.62" width="0.1524" layer="91"/>
<wire x1="38.1" y1="7.62" x2="38.1" y2="12.7" width="0.1524" layer="91"/>
<wire x1="38.1" y1="12.7" x2="45.72" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="!FLT"/>
<wire x1="45.72" y1="12.7" x2="45.72" y2="24.13" width="0.1524" layer="91"/>
<wire x1="45.72" y1="24.13" x2="39.37" y2="24.13" width="0.1524" layer="91"/>
<wire x1="29.21" y1="-10.16" x2="29.21" y2="7.62" width="0.1524" layer="91"/>
<junction x="29.21" y="7.62"/>
<wire x1="24.13" y1="-12.7" x2="24.13" y2="7.62" width="0.1524" layer="91"/>
<junction x="24.13" y="7.62"/>
<wire x1="55.88" y1="-10.16" x2="55.88" y2="33.02" width="0.1524" layer="91"/>
<wire x1="55.88" y1="33.02" x2="62.23" y2="33.02" width="0.1524" layer="91"/>
<junction x="55.88" y="-10.16"/>
<pinref part="IC2" gate="G$1" pin="M1"/>
<wire x1="62.23" y1="33.02" x2="62.23" y2="34.29" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="M2"/>
<wire x1="62.23" y1="31.75" x2="62.23" y2="33.02" width="0.1524" layer="91"/>
<junction x="62.23" y="33.02"/>
<wire x1="104.14" y1="-12.7" x2="104.14" y2="31.75" width="0.1524" layer="91"/>
<wire x1="104.14" y1="31.75" x2="110.49" y2="31.75" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="M1"/>
<wire x1="110.49" y1="31.75" x2="110.49" y2="33.02" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="M2"/>
<wire x1="110.49" y1="30.48" x2="110.49" y2="31.75" width="0.1524" layer="91"/>
<junction x="110.49" y="31.75"/>
<junction x="104.14" y="-12.7"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="GND1"/>
<wire x1="135.89" y1="20.32" x2="140.97" y2="20.32" width="0.1524" layer="91"/>
<wire x1="140.97" y1="20.32" x2="140.97" y2="12.7" width="0.1524" layer="91"/>
<wire x1="140.97" y1="12.7" x2="133.35" y2="12.7" width="0.1524" layer="91"/>
<wire x1="133.35" y1="12.7" x2="133.35" y2="-11.43" width="0.1524" layer="91"/>
<wire x1="133.35" y1="-11.43" x2="101.6" y2="-11.43" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="GND1"/>
<wire x1="101.6" y1="-11.43" x2="26.67" y2="-11.43" width="0.1524" layer="91"/>
<wire x1="87.63" y1="21.59" x2="92.71" y2="21.59" width="0.1524" layer="91"/>
<wire x1="92.71" y1="21.59" x2="92.71" y2="13.97" width="0.1524" layer="91"/>
<wire x1="92.71" y1="13.97" x2="85.09" y2="13.97" width="0.1524" layer="91"/>
<wire x1="85.09" y1="13.97" x2="85.09" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="85.09" y1="-8.89" x2="54.61" y2="-8.89" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="M0"/>
<pinref part="IC1" gate="G$1" pin="M1"/>
<wire x1="54.61" y1="-8.89" x2="31.75" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="13.97" y1="36.83" x2="13.97" y2="34.29" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="M2"/>
<wire x1="13.97" y1="34.29" x2="13.97" y2="31.75" width="0.1524" layer="91"/>
<junction x="13.97" y="34.29"/>
<wire x1="13.97" y1="34.29" x2="7.62" y2="34.29" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND1"/>
<wire x1="39.37" y1="21.59" x2="44.45" y2="21.59" width="0.1524" layer="91"/>
<wire x1="44.45" y1="21.59" x2="44.45" y2="13.97" width="0.1524" layer="91"/>
<wire x1="44.45" y1="13.97" x2="36.83" y2="13.97" width="0.1524" layer="91"/>
<wire x1="36.83" y1="13.97" x2="36.83" y2="10.16" width="0.1524" layer="91"/>
<pinref part="CON_2" gate="-1" pin="S"/>
<wire x1="36.83" y1="10.16" x2="31.75" y2="10.16" width="0.1524" layer="91"/>
<wire x1="31.75" y1="10.16" x2="26.67" y2="10.16" width="0.1524" layer="91"/>
<wire x1="26.67" y1="10.16" x2="7.62" y2="10.16" width="0.1524" layer="91"/>
<wire x1="7.62" y1="10.16" x2="6.35" y2="10.16" width="0.1524" layer="91"/>
<wire x1="7.62" y1="34.29" x2="7.62" y2="10.16" width="0.1524" layer="91"/>
<junction x="7.62" y="10.16"/>
<wire x1="31.75" y1="-8.89" x2="31.75" y2="10.16" width="0.1524" layer="91"/>
<junction x="31.75" y="10.16"/>
<wire x1="26.67" y1="-11.43" x2="26.67" y2="10.16" width="0.1524" layer="91"/>
<junction x="26.67" y="10.16"/>
<pinref part="IC2" gate="G$1" pin="M0"/>
<wire x1="62.23" y1="36.83" x2="54.61" y2="36.83" width="0.1524" layer="91"/>
<wire x1="54.61" y1="36.83" x2="54.61" y2="-8.89" width="0.1524" layer="91"/>
<junction x="54.61" y="-8.89"/>
<pinref part="IC3" gate="G$1" pin="M0"/>
<wire x1="110.49" y1="35.56" x2="101.6" y2="35.56" width="0.1524" layer="91"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="-11.43" width="0.1524" layer="91"/>
<junction x="101.6" y="-11.43"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="MOT3" gate="-3" pin="S"/>
<wire x1="125.73" y1="54.61" x2="125.73" y2="49.53" width="0.1524" layer="91"/>
<wire x1="125.73" y1="49.53" x2="105.41" y2="49.53" width="0.1524" layer="91"/>
<wire x1="105.41" y1="49.53" x2="105.41" y2="20.32" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="DIR"/>
<wire x1="105.41" y1="20.32" x2="110.49" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="MOT3" gate="-2" pin="S"/>
<wire x1="120.65" y1="54.61" x2="120.65" y2="50.8" width="0.1524" layer="91"/>
<wire x1="120.65" y1="50.8" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
<wire x1="106.68" y1="50.8" x2="106.68" y2="22.86" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="STEP"/>
<wire x1="106.68" y1="22.86" x2="110.49" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="MOT3" gate="-1" pin="S"/>
<wire x1="115.57" y1="54.61" x2="115.57" y2="48.26" width="0.1524" layer="91"/>
<wire x1="115.57" y1="48.26" x2="107.95" y2="48.26" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="!EN"/>
<wire x1="107.95" y1="48.26" x2="107.95" y2="38.1" width="0.1524" layer="91"/>
<wire x1="107.95" y1="38.1" x2="110.49" y2="38.1" width="0.1524" layer="91"/>
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
</compatibility>
</eagle>
