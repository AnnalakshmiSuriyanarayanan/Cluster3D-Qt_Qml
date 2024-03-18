import QtQuick 2.9
import QtQml 2.3
import QtQuick.Window 2.15
import QtQuick.Layouts 1.0
import com.pets.uart 1.0
import QtQuick.Controls 2.5
import QtQuick3D 2.15
import Qt3D.Core 2.15
import Qt3D.Render 2.15
import QtQuick.Scene3D 2.5
import Qt3D.Input 2.0
import Qt3D.Extras 2.15


Window {
    id: window
    width: 1024
    height: 600
    visible: true
    title: qsTr("Cluster - 3D")
    color: "#121212"

//        Image{
//            source:"Images/Background_app.png"
//            //        clip:true
//        }


    property bool isChanged: false
    property string s_4E9E0000: "#4E9E0000"
    property string s_FF9E0000: "#FF9E0000"
    property string s_4E00839E: "#4E00839E"
    property string s_FF00839E: "#FF00839E"
    property string s_FF00FF00: "#FF00FF00"
    property string s_FFFFA8A8: "#FFFFA8A8"
    property string s_FFFF0000: "#FFFF0000"
    property string s_FF970000: "#FF970000"
    property string s_7FFF0000: "#7FFF0000"
    property string s_A633DCFF: "#A633DCFF"
    property string s_FF33DCFF: "#FF33DCFF"
    property string s_7F00CBFF: "#7F00CBFF"
    property string s_FFFFFFFF: "#FFFFFFFF"
    property string s_FF000000: "#FF000000"
    property string s_FF121212: "#FF121212"
    property string s_FF00D3FF: "#00B2FF"
    property string s_FF004654: "#FF004654"
    property string s_0000CBFF: "#0000CBFF"
    property string s_FFA2A2A2: "#FFA2A2A2"
    property string s_00FFFFFF: "#00FFFFFF"
    property string s_00000000: "#00000000"
    property string s_FFBCF3FC: "#FFBCF3FC"
    property string s_B7000000: "#B7000000"
    property string s_7F00819B: "#7F00819B"
    property string s_FF272727: "#FF272727"
    property string s_FFE2FFE2: "#FFE2FFE2"
    property string s_FFFFE2E2: "#FFFFE2E2"
    property string km: "km"

    //    property string bonnet:"qrc:/Images/Bonnet_Open.png"
    //    Rectangle{
    //        id:bonnet_open
    //        width:50
    //        height:50
    //        color:"#696969"
    //        x:37
    //        visible:false
    //        y:26
    //        Image{
    //            source:bonnet
    //            width:50
    //            height:50
    //        }
    //    }
    //    property string boot:"qrc:/Images/Boot_Open.png"
    //    Rectangle{
    //        id:boot_open
    //        width:50
    //        height:50
    //        color:"#696969"
    //        x:97
    //        visible:false
    //        y:26
    //        Image{
    //            source:boot
    //            width:50
    //            height:50
    //        }
    //    }

    property int unitMessage: uart.connections()
    property int speedValue: uart.connections()
    property int odometerValue: uart.connections()
    property int rpmValue:uart.connections()
    property int fuelValue:uart.connections()
    property int temperatureValue:uart.connections()
    property int jetsonTrafficMessage: uart.connections()
    property int tripAValue: uart.connections()

    property var warningList: [qsTr(""),qsTr("Fog Light Front ON"), qsTr("Power Steering Failure"), qsTr("Brake Failure"),
        qsTr("Cruise Control ON"), qsTr("Key Missing"), qsTr("High Beam ON"), qsTr("TPMS Low Front Left"),
        qsTr("TPMS Low Front Right"),qsTr("TPMS Low Rear Left"),qsTr("TPMS Low Rear Right"),
        qsTr("Exterior Light Fault"),qsTr("Seat Belt Driver"),qsTr("Seat Belt Passenger"),qsTr("Service Due"),
        qsTr("Airbag Failure"),qsTr("Door Open Driver"),qsTr("Door Open Passenger"),qsTr("Door Open Rear Left"),
        qsTr("Door Open Rear Right"),qsTr("Bonnet Open"),qsTr("Boot Open")]


    property var jetsonTrafficSign: [(""),("bump_sign"),("curve_to_left_sign"),("curve_to_right_sign"),
        ("danger_warning"),("dip_sign"),("first_aid_station"),("free_parking"),("horn_prohibited"),
        ("hotel_or_motel"),("left_hairpin_bend"),("left_turn_prohibitted"),("loose_gravel"),("no_parking_sign"),
        ("petrol_station"),("restaurent"),("right_hair_pin_bend"),("right_hairpin_bend"),("right_turn_prohibited"),
        ("road_widens"),("road_works"),("rumble_strip"),("school_ahead"),("staggered_intersection"),("steep_ascent"),
        ("stop_sign"),("straight_ahead_prohibited"),("t_junction_major_road_ahead"),("toilet_sign"),("traffic_light_sign"),
        ("trucks_prohibitted"),("two_way_traffic"),("u_turn_prohibitted")]

    property string jetsonSigns: jetsonTrafficSign[jetsonTrafficMessage]


    property string unitValue: switch(unitMessage){
                               case Uart.Kmph:
                                   return "kmph"
                               case Uart.Mph:
                                   return "MPH"
                               default :
                                   return ""
                               }


    readonly property string urbanistBlack: "Fonts/Urbanist-Black.ttf"
    FontLoader  {   id: urbanist_black;    source: urbanistBlack    }

    readonly property string urbanistRegular: "Fonts/Urbanist-Regular.ttf"
    FontLoader  {   id: urbanist_regular;    source: urbanistRegular    }

    readonly property string urbanistSemibold: "Fonts/Urbanist-SemiBold.ttf"
    FontLoader  {   id: urbanist_semiblod;    source: urbanistSemibold    }

    readonly property string urbanistBoldItalic: "Fonts/Urbanist-BoldItalic.ttf"
    FontLoader  {   id: urbanist_bolditalic;    source: urbanistBoldItalic    }

    readonly property string urbanistMedium: "Fonts/Urbanist-Medium.ttf"
    FontLoader  {   id: urbanist_medium;    source: urbanistMedium;   }

    readonly property string urbanistBlackItalic: "Fonts/Urbanist-BlackItalic.ttf"
    FontLoader  {   id: urbanist_blackitalic;    source: urbanistBlackItalic    }

    readonly property string urbanistThin: "Fonts/Urbanist-Thin.ttf"
    FontLoader  {   id: urbanist_thin;    source: urbanistThin    }

    Uart{
        id: uart

        onImx_unitOfSpeed:{
            unitMessage = imx_unitData;
        }

        onImx_speed:    {
            speedValue = imx_speedData;
        }

        onImx_odo: {
            odometerValue = imx_odoData;
        }

        onImx_rpm:{
            rpmValue=imx_rpmData;
        }

        onImx_fuel:{
            fuelValue=imx_fuelData;
        }

        onImx_temperature:{
            temperatureValue=imx_temperatureData;
        }
        onImx_trafficSignsJetson:{
            jetsonTrafficMessage=imx_jetsonTrafficData
            //console.log("imx_jetsonTrafficData");
        }
        onImx_tripA: {
            tripAValue = imx_tripAdata
        }

    }

//    MiddleWidgets{id: leftscreen}

    LeftScreen{}

    FuelTemperature{}

    DigitalClock{}

    Odometer{}

    TopWidget{}

    Speedometer{}

    RpmGraph{}

    TripA{}

    TrafficWarnings{}

    Indicators{}

}




