//import QtQuick 2.15
//import QtQuick.Controls 2.15
//import com.pets.uart 1.0

//Item {
//    id: rpmGraph
//    property int animationDuration: 1000 // Duration of the animation in milliseconds
//    property bool shouldAnimate: true // Allow animation
//    property int tempMessage: 0


//    Uart {
//        id: uart
//    }


//    Image{
//        width: 50
//        height: 50
//        x:385
//        y:527
//        opacity: 1
//        source: "Images/Temperature_Icon.png"
//    }

//    Row {
//        spacing: -10
//        x:440
//        y:527
//        Repeater {
//            model: 10
//            Image {
//                id: tempImage
//                width: 28.39
//                height: 40
//                source: (index < temperatureValue) ? "Images/temperature_fill_blue.png" : "Images/rpm_fill_gray.png"
//                Behavior on source {
//                    NumberAnimation {
//                        duration: animationDuration
//                    }
//                }
//            }
//        }
//    }
//}

import QtQuick 2.12
Item{
    width: 500
    height: 500
    y: 30
    x: 496


    Image{
        id: fuelimg
        width: 464
        height: 471
        source: "Images/Gauge_1-2.png"
    }


    Rectangle{
        id: rect1
        width: 500
        height:500
        color: "transparent"

        Rectangle{
            width: parent.width/2
            height: parent.height
            color: "transparent"
            anchors {
                top: parent.top
                topMargin: 0
                left: parent.left
                leftMargin: 0
            }

            rotation: -30
            clip: true

            Image{
                id: source
                source: "Images/Temp_fill.png"
                anchors {
                    top: parent.top
                    topMargin: 0
                    left: parent.left
                    leftMargin: 0
                }
                rotation:45- maskRectangle.rotation

            }
        }
    }
}
