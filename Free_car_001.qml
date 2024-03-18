import QtQuick 2.0
import QtQuick3D 2.15
import QtQuick.Timeline 1.0
import QtQuick3D
import QtQuick.Scene3D 2.5


Node {
    id: node


    Texture {
        id: color_Texture_FREE_CAR_2021_png_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/maps/Color_Texture_FREE CAR 2021.png"
    }

    Node {
        id: rootNode
        Model {
            id: car_body
            x: -0.195
            y: 0.54
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "qrc:/meshes/circle_073.mesh"
            z: -9.88784
            materials: main_material
            Model {
                id: door_r
                x: -0.9139900207519531
                y: -0.637519121170044
                z: 0.6834518909454346
                source: "qrc:/meshes/circle_071.mesh"
                materials: main_material
                Model {
                    id: win_door_r_001
                    x: 0.15476185083389282
                    y: 0.7349134683609009
                    z: 0.6963286399841309
                    source: "qrc:/meshes/circle_075.mesh"
                    materials: window_material
                }
            }
            Model {
                id: interior
                x: 0.941368043422699
                y: 0.07444725185632706
                z: 0.6001321077346802
                rotation: Qt.quaternion(0.707107, 0, 0.707107, 0)
                scale.x: 0.444777
                scale.y: 0.39817
                scale.z: 0.39817
                source: "qrc:/meshes/circle_070.mesh"
                materials: main_material
            }
            Model {
                id: wheel_bl
                x: 0.7817087173461914
                y: 1.2408537864685059
                z: 0.3252466320991516
                rotation: Qt.quaternion(0.707107, 0, 0, 0.707107)
                scale.x: 0.324878
                scale.y: 0.324878
                scale.z: 0.324878
                source: "qrc:/meshes/circle_069.mesh"
                materials: main_material
            }
            Model {
                id: wheel_br
                x: -0.781708836555481
                y: 1.2408536672592163
                z: 0.3252466320991516
                rotation: Qt.quaternion(0.707107, 0, 0, 0.707107)
                scale.x: 0.324878
                scale.y: 0.324878
                scale.z: 0.324878
                source: "qrc:/meshes/circle_068.mesh"
                materials: main_material
            }
            Model {
                id: wheel_fl
                x: 0.7817087173461914
                y: -1.0714701414108276
                z: 0.3252466320991516
                rotation: Qt.quaternion(0.707107, 0, 0, 0.707107)
                scale.x: 0.324878
                scale.y: 0.324878
                scale.z: 0.324878
                source: "qrc:/meshes/circle_067.mesh"
                materials: main_material
            }
            Model {
                id: wheel_fr
                x: -0.781708836555481
                y: -1.0714701414108276
                z: 0.3252466320991516
                rotation: Qt.quaternion(0.707107, 0, 0, 0.707107)
                scale.x: 0.324878
                scale.y: 0.324878
                scale.z: 0.324878
                source: "qrc:/meshes/circle_050.mesh"
                materials: main_material
            }
            Model {
                id: windows
                source: "qrc:/meshes/circle_074.mesh"
                materials: window_material
            }
            Model {
                id: free_number
                y: 1.7683265209197998
                z: 0.7933153510093689
                source: "qrc:/meshes/circle_001.mesh"
                materials: main_material
            }

            Model {
                id: door_l
                x: 0.9139900207519531
                y: -0.6375190019607544
                source: "qrc:/meshes/circle_072.mesh"
                eulerRotation.z: 0
                morphTargets: door_l.morphTargets
                z: 0.6834518909454346


                materials: main_material
                Model {
                    id: win_door_l_001
                    x: -0.15476185083389282
                    y: 0.7349133491516113
                    z: 0.6963286399841309
                    source: "qrc:/meshes/circle_076.mesh"
                    materials: window_material
                }
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: main_material
            objectName: "main_material"
            baseColor: "#ffcccccc"
            baseColorMap: color_Texture_FREE_CAR_2021_png_texture
        }

        PrincipledMaterial {
            id: window_material
            objectName: "window_material"
            baseColor: "#ffcccccc"
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                onFinished: node.state = ""
                running: true
                loops: 1
                duration: 6000
                to: 2500
                from: 0
            }
        ]
        endFrame: 5000
        startFrame: 0
        enabled: true
    }
    Image{
        id:left
        source:"qrc:/Images/IMX_Warnings_DoorOpenPassenger.png"
        visible:false
        width:100
        rotation:180
        x:-100
        y:-350
        height:100

    }
    Image{
        id:right
        source:"qrc:/Images/IMX_Warnings_DoorOpenDriver.png"
        visible:false
        width:100
        rotation:180
        x:-200
        y:-350
        height:100

    }


    SequentialAnimation{
        running:true


        NumberAnimation {
            target: car_body
            property: "z"
            duration: 1500
            from:0
            to:100
            easing.type: Easing.InOutQuad
        }
        PauseAnimation{
            duration: 800
        }
        RotationAnimation{
            target: car_body
            from: 0
            property: "eulerRotation.y"
            to: 270
            duration: 2000
        }

        PauseAnimation {
            duration: 800
        }

        NumberAnimation {
            target: door_l
            property: "eulerRotation.z"
            duration: 710
            from:0
            loops:1
            to:-60
            easing.type: Easing.InOutQuad
        }

        PauseAnimation {
            duration: 800
        }
        PropertyAction{
            target: left
            property: "visible"
            value: true
        }
        PauseAnimation {
            duration: 800
        }
        NumberAnimation {
            target: door_l
            property: "eulerRotation.z"
            duration: 710
            from:-60
            loops:1
            to:0
            easing.type: Easing.InOutQuad
        }

        PauseAnimation {
            duration: 800
        }

        PropertyAction{
            target: left
            property: "visible"
            value: false
        }
        PauseAnimation {
            duration: 800
        }

        RotationAnimation{
            target: car_body
            from: 0
            property: "eulerRotation.z"
            to: 180
            duration: 2000
        }

        PauseAnimation {
            duration: 800
        }

        NumberAnimation {
            target: door_r
            property: "eulerRotation.z"
            duration: 700
            from:0
            loops:1
            to:60
            easing.type: Easing.InOutQuad
        }


        PauseAnimation {
            duration: 800
        }
        PropertyAction{
            target: right
            property: "visible"
            value: true
        }
        PauseAnimation {
            duration: 800
        }

        NumberAnimation {
            target: door_r
            property: "eulerRotation.z"
            duration: 700
            from:60
            loops:1
            to:0
            easing.type: Easing.InOutQuad
        }

        PauseAnimation {
            duration: 800
        }

        PropertyAction {
            target: right; property: "visible"
            value: false
        }

        RotationAnimation{
            target: car_body
            from: 180
            property: "eulerRotation.z"
            to: 90
            duration: 2000
        }
    }

}




// Animations:
