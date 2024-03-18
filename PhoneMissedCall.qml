import QtQuick 2.12
import QtQuick.Window 2.12


Item{
Rectangle   {
    width: 50
    height: 50
    color: "#000000"
    Image
    {

        visible: true
        anchors.centerIn: parent
        source: "qrc:/Images/MissedCall_notify.svg"
    }
}
}
