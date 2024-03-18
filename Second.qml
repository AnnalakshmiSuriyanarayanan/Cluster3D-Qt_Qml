import QtQuick 2.15

Item {
    id: id_root
    property int value: 0
    property int granularity: 60
    Rectangle{
        width: 1
        height: id_root.height*0.4
        color: "red"
        anchors{
            horizontalCenter: id_root.horizontalCenter
        }
        antialiasing: true
        y: id_root.height*0.09

    }
    rotation: 360/granularity*(value%granularity)
    antialiasing: true
}