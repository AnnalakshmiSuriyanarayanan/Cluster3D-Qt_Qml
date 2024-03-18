import QtQuick 2.15

Item {

    Text {
        id: odometer_value
        text: odometerValue > 9999999 ?"------":odometerValue
        width:151
        height:43
        y: 510
        x: 534
        font.family: urbanist_semiblod.name
        color: "#FFFFFF"
        font.pixelSize: 36
    }
    Text {
        id: odometer_unit
        text: km
        width:41
        height:44
        x:688
        y:510
        font.family: urbanist_regular.name
        color: s_FF00D3FF
        font.pixelSize:24
    }

}
