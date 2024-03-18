import QtQuick 2.15

Item {
    Text{
        width: 53
        height: 28
        x:69
        y:118
        text:"180"
        font.family: urbanist_semiblod.name
        font.pixelSize: 36
        color: "#FFFFFF"
    }

    Text{
        width: 41
        height: 22
        x:132
        y:121
        text:"km"
        font.family: urbanist_regular.name
        font.pixelSize: 24
        color: s_FF00D3FF
    }

    Text{
        id:etatext
        text:"ETA"
        x:69
        y:157
        color:"#555555"
        font.pixelSize: 16
        font.family: urbanist_medium.name
    }

    Text{
        id: etatime
        text:"00:00:00"
        x:106
        y:157
        color:"#FFFFFF"
        font.pixelSize: 20
        font.family: urbanist_medium.name
    }
}
