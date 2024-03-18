import QtQuick 2.12
import QtQuick.Window 2.12

Item{

Rectangle   {
    width:50
    height:50 //window.height/17.14285714285714
    color: "#000000"
    Image
    {
//        scale: ( window.width * window.height ) / ( 1024 * 600 )
        visible: true
        anchors.centerIn: parent
        source: "qrc:/Images/Inbox_notify.svg"
    }
}
}
