import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Item {
    id: speedometer
    // property int speedValue:120

    Image{
        id:image1
        width:500
        height:500
        x:500
        y:5
        source:"qrc:/Images/Gauge_1-1.png"

    }

    Image{
        id:image43
        x:521
        y:312
        visible:speedValue==20?true:false
        source:"qrc:/Images/fill_20.png"

    }
    Image{
        id:image80
        x:505
        y:235
        visible:speedValue==40?true:false
        source:"qrc:/Images/fill_40.png"

    }
    Image{
        id:image64
        x:505
        y:165
        visible:speedValue==60?true:false
        source:"qrc:/Images/fill_60.png"

    }
    Image{
        id:image8
        x:505
        y:100
        visible:speedValue==80?true:false
        source:"qrc:/Images/fill_80.png"

    }
    Image{
        id:image89
        x:505
        y:60
        visible:speedValue==100?true:false
        source:"qrc:/Images/fill_100.png"

    }
    Image{
        id:image87
        x:505
        y:42
        visible:speedValue==120?true:false
        source:"qrc:/Images/fill_120.png"

    }
    Image{
        id:image86
        x:505
        y:42
        visible:speedValue==140?true:false
        source:"qrc:/Images/fill_140.png"

    }
    Image{
        id:image85
        x:505
        y:42
        visible:speedValue==160?true:false
        source:"qrc:/Images/fill_160.png"

    }
    Image{
        id:image83
        x:505
        y:42
        visible:speedValue==180?true:false
        source:"qrc:/Images/fill_180.png"

    }
    Image{
        id:image91
        x:505
        y:42
        visible:speedValue==200?true:false
        source:"qrc:/Images/fill_200.png"

    }
    Image{
        id:image99
        x:505
        y:42
        visible:speedValue==220?true:false
        source:"qrc:/Images/fill_220.png"
    }
    Image{
        id:image45
        x:505
        y:42
        visible:speedValue==240?true:false
        source:"qrc:/Images/fill_240.png"
    }
    Image{
        id:image98
        width:500
        height:500
        x:500
        y:5
        source:"qrc:/Images/Gauge_1-6.png"

    }
    Image{
        id:image2
        width:500
        height:500
        x:500
        y:5
        source:"qrc:/Images/Gauge_1-7.png"

    }
    Image{
        id:image3
        width:360
        height:370
        x:560
        y:110
        source:"qrc:/Images/Needle Group.png"
        function updateNeedle(speed2) {
            image3.rotation = -120 + (speed2 / 240) * 240

        }
        Component.onCompleted: updateNeedle(speedValue)

    }

    Image{
        id:image0
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==0?true:false
        source:"qrc:/Images/Gauge_1.png"
    }
    Image{
        id:image93
        width:75
        height:50
        x:616
        y:215
        // visible:speedValue==0?true:false
        source:"Images/HighBeamON.png"
    }
    Image{
        id:image96
        width:75
        height:50
        x:783
        y:215
        // visible:speedValue==0?true:false
        source:"Images/CruiseControlON.png"
    }


    Image{
        id:image20
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==20?true:false
        source:"qrc:/Images/Gauge_1-8.png"
    }
    Image{
        id:image40
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==40?true:false
        source:"qrc:/Images/Gauge_1-9.png"
    }
    Image{
        id:image60
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==60?true:false
        source:"qrc:/Images/Gauge_1-10.png"
    }
    Image{
        id:image7
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==80?true:false
        source:"qrc:/Images/Gauge_1-11.png"
    }
    Image{
        id:image100
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==100?true:false
        source:"qrc:/Images/Gauge_1-12.png"
    }
    Image{
        id:image120
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==120?true:false
        source:"qrc:/Images/Gauge_1-13.png"
    }
    Image{
        id:image140
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==140?true:false
        source:"qrc:/Images/Gauge_1-14.png"
    }
    Image{
        id:image160
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==160?true:false
        source:"qrc:/Images/Gauge_1-15.png"
    }
    Image{
        id:image180
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==180?true:false
        source:"qrc:/Images/Gauge_1-16.png"
    }
    Image{
        id:image200
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==200?true:false
        source:"qrc:/Images/Gauge_1-17.png"
    }
    Image{
        id:image220
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==220?true:false
        source:"qrc:/Images/Gauge_1-18.png"
    }
    Image{
        id:image240
        width:500
        height:500
        x:500
        y:5
        visible:speedValue==240?true:false
        source:"qrc:/Images/Gauge_1-19.png"
    }

    Text{
        x:695
        y:257
        width: 136
        height: 77
        text: speedValue
        color: "#FFFFFF"
        font.pixelSize: 65
        font.family: urbanist_black.name
    }

    Text {
        id: speedunitText
        x:718
        y:322
        text: unitValue
        color: "#FFFFFF"
        font.pixelSize: 20
        font.family: urbanist_medium.name
    }
}

