import QtQuick 2.15

Item {
    id: id_root
    property int value: 0
    property int granularity: 60


    Image {
        id: minute
        source: "qrc:/Images/Clock_Minute_Needle.png"
        anchors{
            centerIn: id_root
        }
        rotation: 360/granularity*(value%granularity)
        height:100
        width:75
    }
}
