import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick3D 2.15
import Qt3D.Core 2.15
import Qt3D.Render 2.15
import QtQuick.Scene3D 2.5
import Qt3D.Input 2.0
import Qt3D.Extras 2.15
import QtQuick3D
import Qt3D.Animation 2.15

Item {

    id: root
    visible: true
    width: 452
    height: 208
    y:196

    Image{
    id:car_back
    source:"Images/car_background.png"

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene

//            PerspectiveCamera {
//                id: sceneCamera
//                x: 430.815
//                y: 65.91
//                eulerRotation.z: 0
//                eulerRotation.y: 96
//                eulerRotation.x: 5
//                scale.x: 1
//                z: -230.04243
//            }
            PointLight {
                id: light_light
                x: 300
                y: 300
                z: -200
                rotation: Qt.quaternion(0.523275, -0.284166, 0.726942, 0.342034)
                scale.x: 100
                scale.y: 100
                scale.z: 100
                brightness:2
                quadraticFade: 0.0022222246043384075
            }
            PerspectiveCamera {
                id: camera_camera
                x: 700
                y: 50
                z: -350
                rotation: Qt.quaternion(0.485487, 1.06106e-08, 0.874244, -1.91072e-08)
                scale.x: 200
                scale.y: 100
                scale.z: 100
                fieldOfView: 39.597755432128906
                fieldOfViewOrientation: PerspectiveCamera.Horizontal
            }

            Car_3D {
                id: car_3D
                x: 14.772
                y: -15.438
                z: -15.65629
                //                    x: -3.524
                //                    y: -67.521
                //                    z:- 148.26619
            }
        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }
}
}
//                Free_car_001{
//                    id: free_car_001
//                    x: -3.524
//                    y: -67.521
//                    z:- 148.26619
//                }
