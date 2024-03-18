import QtQuick 2.15
import QtQuick.Controls 2.15
import com.pets.uart 1.0

Item{
    width: 500
    height: 500
    y: 30
    x: 496


    Image{
        id: fuelimg
        width: 464
        height: 471
        source: "Images/Gauge_1-3.png"
    }
    Rectangle{
        id: innerRect
        width: 500
        height:500
        color: "transparent"
        Rectangle
            {
                id: maskRectangle
            width: parent.width/2
            height: parent.height
//            y:80
//            anchors.centerIn: parent
            anchors {
                top: parent.top
                topMargin: 0
                left: parent.left
                leftMargin: 0
            }

            rotation: 30
            clip: true
            color: "transparent"
//            Image{
//                id: source
//                anchors {
//                    top: parent.top
//                    topMargin: 0
//                    left: parent.left
//                    leftMargin: 0
//                }
//                source: "Images/Group 237.png"
//                rotation:45- maskRectangle.rotation
//            }
        }
    }
}

//    Image{
//        width: 40
//        height: 40
//        x:74
//        y:527
//        source: "Images/Fuel Icon.png"
//    }
//    Row {
//        spacing: -10
//        x:135
//        y:527

//        Repeater {
//            model: 10
//            Image {
//                id: fuelImage
//                width: 28.39
//                height: 40
//                source: (index < fuelValue) ? "Images/Fuel_fill_green.png" : "Images/Fuel_fill_gray.png"
//                Behavior on source {
//                    NumberAnimation {
//                        duration: animationDuration
//                    }
//                }
//            }
//        }
//    }


