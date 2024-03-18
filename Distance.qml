import QtQuick 2.15

Item {
    Image{
        x:271
        y:55
        width: 68
        height: 60
        source: "Images/ArrowImage.png"
    }

    Text{
        id: inText
        text:"in"
        x:237
        y:140
        font.family: urbanist_medium.name
        font.pixelSize: 20
        color: "#555555"
    }
    Text{
        id: meters
        text:"600"
        x:263
        y:130
        font.family: urbanist_semiblod.name
        font.pixelSize: 36
        color: "#FFFFFF"
    }

    Text{
        id: metersText
        text:"mts"
        x:336
        y:137
        font.family: urbanist_regular.name
        font.pixelSize: 24
        color: s_FF00D3FF
    }
}
