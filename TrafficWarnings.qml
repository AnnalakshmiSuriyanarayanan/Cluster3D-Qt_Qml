import QtQuick.Window 2.12
import Qt3D.Core 2.9
import QtQml 2.3
import QtQuick 2.9
import QtQuick.Controls 2.5
import com.pets.uart 1.0

Item {

//    Image   {
//        x: 287
//        y: 185
//        width: 75
//        height: 50
//        source: "Images/Jetson_"+jetsonSigns+".png"
//    }

    Image{
        width: 50
        height:50
        x:24
        y:518
        source:"Images/Jetson_curve_to_right_sign.png"
    }
    Image{
        width: 50
        height:50
        x:114
        y:518
        source:"Images/Jetson_restaurent.png"
    }
    Image{
        width: 50
        height:50
        x:204
        y:518
        source:"Images/Jetson_first_aid_station.png"
    }
    Image{
        width: 50
        height:50
        x:294
        y:518
        source:"Images/Jetson_hotel_or_motel.png"
    }
    Image{
        width: 50
        height:50
        x:384
        y:518
        source:"Images/Jetson_toilet_sign.png"
    }
}
