import QtQuick 2.15

Item {


    Text {
        id: tripA
        width: 136
        height:28
        x:860
        y:501
        text: tripAValue
        font.family: urbanist_semiblod.name
        color: "#FFFFFF"
        font.pixelSize: 36

    }

    Text {
        id: odometer_unit
        text: km
        width:41
        height:22
        x:955
        y:504
        font.family: urbanist_regular.name
        color: s_FF00D3FF
        font.pixelSize:24
    }

    Text{
        id: tripAText
        width:57
        height:16
        x:939
        y:473
        text: "Trip A"
        color: "#555555"
        font.pixelSize: 20
        font.family: urbanist_medium.name
    }

    Text{
        id: tripAsecs
        width:84
        height:16
        x:873
        y:538
        text: "00:00:00"
        color: "#FFFFFF"
        font.pixelSize: 20
        font.family: urbanist_medium.name
    }
    Text{
        id: tripAsecstext
        width:84
        height:16
        x:967
        y:538
        text: "ss"
        color:s_FF00D3FF
        font.pixelSize: 16
        font.family: urbanist_regular.name
    }

}
