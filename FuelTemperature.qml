import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    id: gauge_filling
    width: 500
    height: 500
    x:496
    y:30
    property int rpm:9


    //    property int fuelValue: 10
    //    property int tempValue: 100

    Rectangle   {
        id: background
        width: 500
        height: 500
        color: "#121212"
        visible: true
        Image {
            id: fuelBackground
            source: "Images/fuel.png"
        }
        Image {
            id: temperatureBackground
            source: "Images/temp.png"
        }
        Image   {
            source: "Images/icon_enginetemperature_icon.png"
            anchors.right: parent.right
            anchors.rightMargin: 110
            anchors.top: parent.top
            anchors.topMargin: 400
        }
    }
    Rectangle   {
        id: fuel
        width: 447
        height: 447
        radius: 447
        visible: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "#00000000"
        Rectangle   {
            id: fuel_arc
            width: 447
            height: 447
            visible: true
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "#00000000"
            opacity: 1.0
            rotation: 45
            Rectangle   {
                width: 447/2
                height: 447
                visible: true
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                color: "#00000000"
                opacity: 1.0
                clip: true
                Rectangle   {
                    width: 447
                    height: 447
                    visible: true
                    anchors.left: parent.left
                    color: "#00000000"
                    // data code ****************

                    rotation: -135 +(1.325*fuelValue)
                    // data code ****************

                    Image {
                        id: fuelFillImg
                        anchors.left: parent.left
                        anchors.top: parent.top
                        source: "Images/fuel_fill.png"
                    }
                }
            }
        }
    }
    Rectangle   {
        id: temperature
        width: 447
        height: 447
        radius: 447
        visible: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "#00000000"
        Rectangle   {
            id: temp_arc
            width: 447
            height: 447
            visible: true
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "#00000000"
            opacity: 1.0
            rotation: -45
            Rectangle   {
                width: 447/2
                height: 447
                visible: true
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                color: "#00000000"
                opacity: 1.0
                clip: true
                Rectangle   {
                    width: 447
                    height: 447
                    visible: true
                    anchors.right: parent.right
                    color: "#00000000"
                    // data code ****************

                    rotation: -temperatureValue*1.325
                    // data code ****************

                    Image {
                        id: temperatureFillImg
                        anchors.right: parent.right
                        anchors.top: parent.top
                        source: "Images/fuel_fill.png"
                    }
                }
            }

        }
    }

//    TrafficWarnings{}


}
