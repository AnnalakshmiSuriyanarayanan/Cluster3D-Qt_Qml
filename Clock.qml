import QtQuick 2.15
import QtQml 2.15
Item{

    id: id_root
    property int hours: currentDate.getHours()
    property int minutes: currentDate.getMinutes()
    property int seconds: currentDate.getSeconds()
    property var currentDate: new Date()


//    Rectangle{
//        id: id_plate
//        anchors.centerIn: parent
//        height: Math.min(id_root.width , id_root.height)
//        width: height
//        radius: width/2
//        color: "royalblue"
//        border.color: "black"
//    }
    Image{
        id: id_plate
        source:"qrc:/Images/Clock_Background.png"
        anchors.centerIn: parent
        height: Math.min(id_root.width , id_root.height)
        width: height



    Minute{
        anchors{
            top: id_plate.top
            bottom: id_plate.bottom
            horizontalCenter: parent.horizontalCenter
        }

        value: id_root.minutes
    }

    Hour{
        anchors{
            top: id_plate.top
            bottom: id_plate.bottom
            horizontalCenter: parent.horizontalCenter
        }

        value: id_root.hours
        valueminute: id_root.minutes
    }
//    Repeater {
//        model:12
//        Item {
//            id:hourContainer
//            property int hour:index
//            height:id_plate.height/2
//            transformOrigin: Item.Bottom
//            rotation:index*30
//            x:id_plate.width/2
//            y:0



//            Rectangle {
//                height:8
//                width:1
//                color:"#FFFFFF"
//                anchors.horizontalCenter: parent.horizontalCenter
//                anchors.top:parent.top
//                anchors.margins: 4
//            }

//        }
//    }
    }

    Timer{
        id: timer
        repeat: true
        interval: 1000
        running: true
        onTriggered: id_root.currentDate = new Date()
    }


}
