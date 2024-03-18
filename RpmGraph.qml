import QtQuick 2.15
import QtQuick.Controls 2.15
import com.pets.uart 1.0

Item {
    Text{
        id: rpmText
        x:730
        y:356
        color: "#FFFFFF"
        font.pixelSize: 65
        text: rpmValue
        font.family: urbanist_regular.name
    }

    Text{
        id: rpmunitText
        x:713
        y:425
        color: "#FFFFFF"
        font.pixelSize: 16
        text: "x1000 RPM"
        font.family: urbanist_medium.name
    }

}



