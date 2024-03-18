import QtQuick 2.15

Item {
    Row{
        spacing:120
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    Text{
        id:rpm
        text: rpmvalue+"rpm"
        font.family: urbanist_black.name
        font.bold: true
        horizontalAlignment: Text.AlignRight
        font.pointSize: 30
        color: "white"


    }
    Text{
        id:fuel
        text: fuelvalue
        font.family: urbanist_black.name
        font.bold: true
        color: "white"

        font.pointSize:  30

    }
    Text{
        id:temperature
        text: temperaturevalue
        font.family: urbanist_black.name
        font.bold: true
        color: "white"
        font.pointSize:  30

    }
    }

}
