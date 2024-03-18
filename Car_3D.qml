import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources

    // Nodes:
    Node {
        id: rootNode
        //        PointLight {
        //            id: light_light
        //            x: 407.6245422363281
        //            y: 590.38623046875
        //            z: -100.54539489746094
        //            rotation: Qt.quaternion(0.523275, -0.284166, 0.726942, 0.342034)
        //            scale.x: 100
        //            scale.y: 100
        //            scale.z: 100
        //            brightness: 1
        //            quadraticFade: 0.0022222246043384075
        //        }
        //        PerspectiveCamera {
        //            id: camera_camera
        //            x: 735.88916015625
        //            y: 495.8309326171875
        //            z: 692.5791015625
        //            rotation: Qt.quaternion(0.893796, -0.209973, 0.38578, 0.0906285)
        //            scale.x: 100
        //            scale.y: 100
        //            scale.z: 100
        //            fieldOfView: 39.597755432128906
        //            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        //        }
        //        PointLight {
        //            id: light_001_light
        //            x: 500
        //            y: 300
        //            z: -200
        //            rotation: Qt.quaternion(0.523275, -0.284166, 0.726942, 0.342034)
        //            scale.x: 100
        //            scale.y: 100
        //            scale.z: 100
        //            brightness: 1
        //            quadraticFade: 0.0022222246043384075
        //        }
        //        PerspectiveCamera {
        //            id: camera_001_camera
        //            x:800.024
        //            y: 115.275
        //            z: -359.71533
        //            rotation: Qt.quaternion(0.485487, 6.07121e-08, 0.874244, 8.71522e-09)
        //            scale.x: 200
        //            scale.y: 100
        //            scale.z: 100
        //            fieldOfView: 39.597755432128906
        //            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        //        }
        Model {
            Model {
                id: text_396
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh.mesh"
                materials: chrome_material
            }
            Model {
                id: tire_b_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_001.mesh"
                materials: tire_material
            }
            Model {
                id: radiator
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_002.mesh"
                materials: black_material
            }
            Model {
                id: rim_p1_b_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_003.mesh"
                materials: rim_material
            }
            Model {
                id: rim_p2_b_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_004.mesh"
                materials: rim_material
            }
            Model {
                id: rim_p3_b_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_006.mesh"
                materials: rim_second_material
            }
            Model {
                id: rim_p5_b_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_007.mesh"
                materials: black_material
            }
            Model {
                id: brakedisk_b_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_008.mesh"
                materials: brakedisk_material
            }
            Model {
                id: rim_nipel_b_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_009.mesh"
                materials: black_material
            }
            Model {
                id: rim_bolt_b_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_010.mesh"
                materials: chrome_material
            }
            Model {
                id: rim_p3_f_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_011.mesh"
                materials: rim_second_material
            }
            Model {
                id: rim_nipel_f_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_012.mesh"
                materials: black_material
            }
            Model {
                id: brakedisk_f_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_013.mesh"
                materials: brakedisk_material
            }
            Model {
                id: rim_p5_f_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_014.mesh"
                materials: black_material
            }
            Model {
                id: rim_bolt_f_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_016.mesh"
                materials: chrome_material
            }
            Model {
                id: rim_p1_f_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_017.mesh"
                materials: rim_material
            }
            Model {
                id: tire_f_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_018.mesh"
                materials: tire_material
            }
            Model {
                id: rim_p2_f_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_019.mesh"
                materials: rim_material
            }
            Model {
                id: tire_f_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_023.mesh"
                materials: tire_material
            }
            Model {
                id: tire_b_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_024.mesh"
                materials: tire_material
            }
            Model {
                id: rim_p1_f_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_025.mesh"
                materials: rim_material
            }
            Model {
                id: rim_p3_f_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_026.mesh"
                materials: rim_second_material
            }
            Model {
                id: rim_p2_f_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_027.mesh"
                materials: rim_material
            }
            Model {
                id: brakedisk_f_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_028.mesh"
                materials: brakedisk_material
            }
            Model {
                id: rim_nipel_f_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_029.mesh"
                materials: black_material
            }
            Model {
                id: rim_bolt_f_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_030.mesh"
                materials: chrome_material
            }
            Model {
                id: rim_p5_f_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_032.mesh"
                materials: black_material
            }
            Model {
                id: rim_p1_b_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_033.mesh"
                materials: rim_material
            }
            Model {
                id: rim_p2_b_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_034.mesh"
                materials: rim_material
            }
            Model {
                id: brakedisk_b_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_035.mesh"
                materials: brakedisk_material
            }
            Model {
                id: rim_nipel_b_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_037.mesh"
                materials: black_material
            }
            Model {
                id: rim_p3_b_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_038.mesh"
                materials: rim_second_material
            }
            Model {
                id: rim_p5_b_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_039.mesh"
                materials: black_material
            }
            Model {
                id: rim_bolt_b_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_040.mesh"
                materials: chrome_material
            }
            Model {
                id: pipe
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_041.mesh"
                materials: mattemetal_material
            }
            Model {
                id: grill_chrome
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_043.mesh"
                materials: chrome_material
            }
            Model {
                id: wiper_l_chrome
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_046.mesh"
                materials: chrome_material
            }
            Model {
                id: wiper_r_chrome
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_047.mesh"
                materials: chrome_material
            }
            Model {
                id: wiper_l_gum
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_048.mesh"
                materials: black_material
            }
            Model {
                id: interior_chairs
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_049.mesh"
                materials: interior_material
            }
            Model {
                id: interior_mirror
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_050.mesh"
                materials: black_material
            }
            Model {
                id: interior_mirror_part
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_051.mesh"
                materials: chrome_material
            }
            Model {
                id: interior_mirror_mirror
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_052.mesh"
                materials: mirror_material
            }
            Model {
                id: bottom_
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_053.mesh"
                materials: black_material
            }
            Model {
                id: interior_torpedo
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_054.mesh"
                materials: interior_material
            }
            Model {
                id: signal_f_body
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_055.mesh"
                materials: chrome_material
            }
            Model {
                id: signal_f_glass
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_056.mesh"
                materials: orangeglass_material
            }
            Model {
                id: mirror_glass
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_058.mesh"
                materials: mirror_material
            }
            Model {
                id: ptf_glass
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_059.mesh"
                materials: clearglass_material
            }
            Model {
                id: ptf_reflector
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_060.mesh"
                materials: chrome_material
            }
            Model {
                id: ptf_refractor
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_061.mesh"
                materials: clearglass_material
            }
            Model {
                id: grill_plastic
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_062.mesh"
                materials: black_material
            }
            Model {
                id: grill_metal
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_063.mesh"
                materials: mattemetal_material
            }
            Model {
                id: signal_b_body
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_066.mesh"
                materials: chrome_material
            }
            Model {
                id: signal_b_glass
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_067.mesh"
                materials: redglass_material
            }
            Model {
                id: text_nova_f_l
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_068.mesh"
                materials: chrome_material
            }
            Model {
                id: taillight_chrome
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_069.mesh"
                materials: chrome_material
            }
            Model {
                id: grid_b
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_070.mesh"
                materials: black_material
            }
            Model {
                id: taillight_glass_red
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_071.mesh"
                materials: redglass_material
            }
            Model {
                id: taillight_glass_clear
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_072.mesh"
                materials: clearglass_material
            }
            Model {
                id: taillight_refractor
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_073.mesh"
                materials: clearglass_material
            }
            Model {
                id: bumper_b
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_074.mesh"
                materials: chrome_material
            }
            Model {
                id: bumper_f
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_079.mesh"
                materials: chrome_material
            }
            Model {
                id: hood
                x: 87.97158813476562
                y: 72.64069366455078
                z: 3.185053586959839
                rotation: Qt.quaternion(-0.00227598, 0.707103, -0.00227598, -0.707103)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/hood.mesh"
                materials: [
                    carpaint_material,
                    black_material,
                    chrome_material
                ]
            }
            Model {
                id: fender_f
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_081.mesh"
                materials: carpaint_material
            }
            Model {
                id: fender_b
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_082.mesh"
                materials: carpaint_material
            }
            Model {
                id: tailgate
                x: -116.386474609375
                y: 84.04901885986328
                z: 0.6469875574111938
                rotation: Qt.quaternion(-0.00132026, 0.707106, -0.00132026, -0.707105)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/tailgate.mesh"
                materials: [
                    carpaint_material,
                    mattemetal_material
                ]
            }
            Model {
                id: air_cell
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_085.mesh"
                materials: carpaint_material
            }
            Model {
                id: window_glass
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_086.mesh"
                materials: windowglass_material
            }
            Model {
                id: window_molding_chrome
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_087.mesh"
                materials: chrome_material
            }
            Model {
                id: molding
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_088.mesh"
                materials: chrome_material
            }
            Model {
                id: headlight_f_1_glass01
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_090.mesh"
                materials: clearglass_material
            }
            Model {
                id: nichrome_05
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_091.mesh"
                materials: black_material
            }
            Model {
                id: sphere_lightbulb05
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_092.mesh"
                materials: clearglass_material
            }
            Model {
                id: sphere_body35
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_093.mesh"
                materials: mattemetal_material
            }
            Model {
                id: headlight_f_1_reflector01
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_094.mesh"
                materials: chrome_material
            }
            Model {
                id: wiper_r_gum
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_095.mesh"
                materials: black_material
            }
            Model {
                id: nichrome_06
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_096.mesh"
                materials: black_material
            }
            Model {
                id: sphere_lightbulb06
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_097.mesh"
                materials: orangeglass_material
            }
            Model {
                id: sphere_body36
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_098.mesh"
                materials: mattemetal_material
            }
            Model {
                id: nichrome_07
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_099.mesh"
                materials: black_material
            }
            Model {
                id: sphere_lightbulb07
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_100.mesh"
                materials: clearglass_material
            }
            Model {
                id: sphere_body37
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_101.mesh"
                materials: mattemetal_material
            }
            Model {
                id: nichrome_08
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_102.mesh"
                materials: black_material
            }
            Model {
                id: sphere_lightbulb08
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_103.mesh"
                materials: clearglass_material
            }
            Model {
                id: sphere_body38
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_104.mesh"
                materials: mattemetal_material
            }
            Model {
                id: nichrome_09
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_105.mesh"
                materials: black_material
            }
            Model {
                id: sphere_lightbulb09
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_106.mesh"
                materials: clearglass_material
            }
            Model {
                id: sphere_body39
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_107.mesh"
                materials: mattemetal_material
            }
            Model {
                id: sphere_lightbulb10
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_108.mesh"
                materials: clearglass_material
            }
            Model {
                id: nichrome_10
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_109.mesh"
                materials: black_material
            }
            Model {
                id: sphere_body40
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_110.mesh"
                materials: mattemetal_material
            }
            Model {
                id: text_397
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_111.mesh"
                materials: chrome_material
            }
            Model {
                id: text_nova_f_r
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_112.mesh"
                materials: chrome_material
            }
            Node {
                id: leftdoor
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
            }
            Model {
                id: window_glass_001
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_022.mesh"
                materials: windowglass_material
            }
            Node {
                id: mirror_glass_001
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
            }
            Model {
                id: leftdoor_001
                x: 70.33338165283203
                y: 49.08744812011719
                z: -65.15834045410156
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/leftdoor_001.mesh"
                materials: [
                    mattemetal_material,
                    carpaint_material,
                    chrome_material,
                    windowglass_material
                ]
            }
            Model {
                id: rightdoor
                x: 70.51313018798828
                y: 50.72032165527344
                z: 72.20913696289062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/rightdoor.mesh"
                materials: [
                    chrome_material,
                    mattemetal_material,
                    carpaint_material,
                    windowglass_material
                ]
            }

            Model {
                id: mirror_glass_002
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_076.mesh"
                materials: mirror_material
            }
            Model {
                id: window_molding_chrome_001
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/mesh_005.mesh"
                materials: chrome_material
            }
            Model {
                id: window_molding_chrome_002
                y: -0.13192427158355713
                z: 3.4982681274414062
                rotation: Qt.quaternion(-1.37679e-07, 0.707107, -1.37679e-07, -0.707107)
                scale.x: 0.7429
                scale.y: 0.7429
                scale.z: 0.7429
                source: "meshes/window_molding_chrome_002.mesh"
                materials: [
                    chrome_material,
                    mattemetal_material,
                    carpaint_material,
                    windowglass_material
                ]
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: chrome_material
            objectName: "chrome_material"
            baseColor: "#ff898989"
        }

        PrincipledMaterial {
            id: tire_material
            objectName: "tire_material"
            baseColor: "#ff000000"
        }

        PrincipledMaterial {
            id: black_material
            objectName: "black_material"
            baseColor: "#ff141414"
        }

        PrincipledMaterial {
            id: rim_material
            objectName: "rim_material"
            baseColor: "#ffadadad"
        }

        PrincipledMaterial {
            id: rim_second_material
            objectName: "rim_second_material"
            baseColor: "#ff2a2a2a"
        }

        PrincipledMaterial {
            id: brakedisk_material
            objectName: "brakedisk_material"
            baseColor: "#ff7e7e7e"
        }

        PrincipledMaterial {
            id: mattemetal_material
            objectName: "mattemetal_material"
            baseColor: "#ffd3d3d3"
        }

        PrincipledMaterial {
            id: interior_material
            objectName: "interior_material"
            baseColor: "#ff656565"
        }

        PrincipledMaterial {
            id: mirror_material
            objectName: "mirror_material"
            baseColor: "#ff778986"
        }

        PrincipledMaterial {
            id: orangeglass_material
            objectName: "orangeglass_material"
            baseColor: "#ffbc4b00"
        }

        PrincipledMaterial {
            id: carpaint_material
            objectName: "carpaint_material"
            baseColor: "#ff086cff"
        }

        PrincipledMaterial {
            id: windowglass_material
            objectName: "windowglass_material"
            baseColor: "#ff12221d"
        }

        PrincipledMaterial {
            id: clearglass_material
            objectName: "clearglass_material"
            baseColor: "#ff969696"
        }

        PrincipledMaterial {
            id: redglass_material
            objectName: "redglass_material"
            baseColor: "#ff6e0c0c"
        }
    }


    SequentialAnimation {
        running:true

        NumberAnimation {
            target: rootNode
            property: "x"
            duration: 1000
            from:-300
            to:50
            easing.type: Easing.InOutQuad
        }
        PauseAnimation {
            duration: 1000
        }
//        NumberAnimation {
//            target: hood
//            property: "eulerRotation.x"
//            duration: 1500
//            from:0
//            to:45
//            easing.type: Easing.InOutQuad
//        }
//        PauseAnimation {
//            duration: 800
//        }
//        PropertyAction{
//            target: bonnet_open
//            property: "visible"
//            value: true
//        }
//        PauseAnimation {
//            duration: 800
//        }
//        NumberAnimation {
//            target: hood
//            property: "eulerRotation.x"
//            duration: 1500
//            from:45
//            to:0
//            easing.type: Easing.InOutQuad
//        }
//        PauseAnimation {
//            duration: 800
//        }
//        PropertyAction{
//            target: bonnet_open
//            property: "visible"
//            value: false
//        }
//        PauseAnimation {
//            duration: 800
//        }
//        RotationAnimation{
//            target:rootNode
//            from:0
//            property: "eulerRotation.y"
//            to:180
//            loops: 1
//            duration:2000
//        }
//        PauseAnimation {
//            duration: 800
//        }
//        NumberAnimation {
//            target: tailgate
//            property: "eulerRotation.x"
//            duration: 1500
//            from:0
//            to:-45
//            easing.type: Easing.InOutQuad
//        }
//        PauseAnimation {
//            duration: 800
//        }
//        PropertyAction{
//            target: boot_open
//            property: "visible"
//            value: true
//        }
//        PauseAnimation {
//            duration: 800
//        }
//        NumberAnimation {
//            target: tailgate
//            property: "eulerRotation.x"
//            duration: 1500
//            from:-45
//            to:0
//            easing.type: Easing.InOutQuad
//        }
//        PauseAnimation {
//            duration: 800
//        }
//        PropertyAction{
//            target: boot_open
//            property: "visible"
//            value: false
//        }
//        PauseAnimation {
//            duration: 800
//        }
        RotationAnimation{
            target:rootNode
            from:50
            property: "eulerRotation.y"
            to:90
            loops: 1
            duration:2000
        }
        PauseAnimation {
            duration: 1000
        }
        NumberAnimation {
            target: rightdoor
            property: "eulerRotation.y"
            duration: 1000
            from:-90
            to:-30
        }
        PauseAnimation {
            duration: 800
        }
        NumberAnimation {
            target: rightdoor
            property: "eulerRotation.y"
            duration: 1000
            from:-30
            to:-90
        }
        PauseAnimation {
            duration: 800
        }
        RotationAnimation{
            target:rootNode
            from:90
            property: "eulerRotation.y"
            to:270
            loops: 1
            duration:1000
        }
        PauseAnimation {
            duration: 800
        }
        NumberAnimation {
            target: leftdoor_001
            property: "eulerRotation.y"
            duration: 1000
            from:-90
            to:-130
        }
        PauseAnimation {
            duration: 800
        }
        NumberAnimation {
            target: leftdoor_001
            property: "eulerRotation.y"
            duration: 1000
            from:-130
            to:-90
        }
        PauseAnimation {
            duration: 800
        }
        RotationAnimation{
            target:rootNode
            from:270
            property: "eulerRotation.y"
            to:360
            loops:1
            duration:1000
        }

        // Animations:
    }
}
