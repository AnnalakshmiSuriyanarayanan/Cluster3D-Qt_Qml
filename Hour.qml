import QtQuick 2.15

Item {
    id: id_root
    property int value: 0
    property int valueminute: 0
    property int  granularity: 12

    Image {
        id: hour
        source: "qrc:/Images/Clock_Hour_Needle.png"
        anchors{
            centerIn: id_root
        }
        rotation: 360/granularity*(value%granularity) + 360/granularity*(valueminute/60)
        height:98
        width:40
    }
}
