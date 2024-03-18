import QtQuick.Window 2.12
import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5
import com.pets.uart 1.0

Item{

    Uart{
        id: uart
    }

    Text {
        id:text1
        x:28
        y:28
        width:73
        height:30
        text: (uart.hour < 10 ? "0" + uart.hour : uart.hour)  + ":" + (uart.minute < 10 ? "0" + uart.minute : uart.minute)/*+":"+(uart.second < 10 ? "0" + uart.second : uart.second)*/
        font.family: urbanist_semiblod.name
        horizontalAlignment: Text.AlignLeft
        color: s_FFFFFFFF
        font.pixelSize: 24
    }

    Text {
        id: amPmText
        x:101
        y:28
        width: 39
        height: 30
        text:uart.amPm
        font.family: urbanist_regular.name
        horizontalAlignment: Text.AlignLeft
        color: s_FF00D3FF
        font.pixelSize: 20
    }
}


