import QtQuick 2.12
import QtQuick.Window 2.12



Rectangle   {
    visible: true
    width: 50
    height:50
    color:"#000000"
    Image
    {
//        scale: ( window.width * window.height ) / ( 1024 * 600 )
        visible: true
        anchors.centerIn: parent
        source: "qrc:/Images/Gopro_notify.svg"
    }
}
