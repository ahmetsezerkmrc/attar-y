import QtQuick
import QtQuick3D

Node {
    // Materials
    DefaultMaterial {
        id: brake_pad_material_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: bolts_material_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: brake_disc_material_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: tyre_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: rims_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: plate_mat_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: car_paint_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: mirrors_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: fLOOR_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: sceneLight_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: glass_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: car_paint_2_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: occluding_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: steel_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: windows_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: lights_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: lighted_steel_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: lights1_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: lights2_material
        diffuseColor: "#ffcccccc"
    }
    DefaultMaterial {
        id: mrizka_material
        diffuseColor: "#ffcccccc"
    }
    // end of Materials

    Node {
        id: rootNode
        Model {
            id: front_brake_pad_R
            x: 121.712
            y: 52.3726
            z: 173.123
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            scale.x: 2.44019
            scale.y: 2.44019
            scale.z: 2.44019
            source: "meshes/front_brake_pad_R.mesh"
            materials: [
                brake_pad_material_material
            ]
        }
        Model {
            id: back_brake_pad_R
            x: 121.712
            y: 52.3726
            z: -221.031
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            scale.x: 2.44019
            scale.y: 2.44019
            scale.z: 2.44019
            source: "meshes/back_brake_pad_R.mesh"
            materials: [
                brake_pad_material_material
            ]
        }
        Model {
            id: back_rim_bolts_L
            x: -137.313
            y: 52.4504
            z: -197.098
            rotation: Qt.quaternion(-0.0389918, 0.99924, 0, 0)
            scale.x: 144.92
            scale.y: 144.92
            scale.z: 144.92
            source: "meshes/back_rim_bolts_L.mesh"
            materials: [
                bolts_material_material
            ]
        }
        Model {
            id: front_rim_bolts_L
            x: -137.312
            y: 52.4504
            z: 197.074
            rotation: Qt.quaternion(-0.0389918, 0.99924, 0, 0)
            scale.x: 144.92
            scale.y: 144.92
            scale.z: 144.92
            source: "meshes/front_rim_bolts_L.mesh"
            materials: [
                bolts_material_material
            ]
        }
        Model {
            id: back_brake_disc_L
            x: -137.313
            y: 52.4504
            z: -197.098
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/back_brake_disc_L.mesh"
            materials: [
                brake_disc_material_material
            ]
        }
        Model {
            id: front_brake_disc_L
            x: -137.313
            y: 52.4504
            z: 197.074
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/front_brake_disc_L.mesh"
            materials: [
                brake_disc_material_material
            ]
        }
        Model {
            id: back_tyre_L
            x: -137.312
            y: 52.4504
            z: -197.099
            rotation: Qt.quaternion(0.859473, -0.511181, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/back_tyre_L.mesh"
            materials: [
                tyre_material
            ]
        }
        Model {
            id: front_tyre_L
            x: -137.313
            y: 52.4504
            z: 197.074
            rotation: Qt.quaternion(0.859473, -0.511181, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/front_tyre_L.mesh"
            materials: [
                tyre_material
            ]
        }
        Model {
            id: back_rim_L
            x: -137.313
            y: 52.4504
            z: -197.099
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/back_rim_L.mesh"
            materials: [
                rims_material
            ]
        }
        Model {
            id: front_rim_L
            x: -137.313
            y: 52.4504
            z: 197.074
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/front_rim_L.mesh"
            materials: [
                rims_material
            ]
        }
        Model {
            id: fron_number_plate_001
            y: 88.866
            z: -327.15
            rotation: Qt.quaternion(0.780692, -0.624916, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/fron_number_plate_001.mesh"
            materials: [
                plate_mat_material
            ]
        }
        Model {
            id: fron_number_plate
            y: 68.3738
            z: 338.252
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/fron_number_plate.mesh"
            materials: [
                plate_mat_material
            ]
        }
        Model {
            id: mirrors
            x: -2.07503e-05
            y: 144.537
            z: 51.4178
            scale.x: 9.74987
            scale.y: 9.74987
            scale.z: 9.74987
            source: "meshes/mirrors.mesh"
            materials: [
                car_paint_material,
                mirrors_material
            ]
        }
        Model {
            id: scene_floor
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 641.068
            scale.y: 641.068
            scale.z: 641.068
            source: "meshes/scene_floor.mesh"
            materials: [
                fLOOR_material
            ]
        }
        Model {
            id: scene_light
            y: 600.271
            z: 7.66201
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 89.8171
            scale.y: 120.311
            scale.z: 89.8171
            source: "meshes/scene_light.mesh"
            materials: [
                sceneLight_material
            ]
        }
        Model {
            id: headlights_cover
            x: -9.53674e-06
            y: 107.891
            z: 261.985
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/headlights_cover.mesh"
            materials: [
                glass_material
            ]
        }
        Model {
            id: body
            y: 110.341
            z: -36.1083
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/body.mesh"
            materials: [
                car_paint_material,
                car_paint_2_material,
                occluding_material,
                steel_material,
                windows_material,
                lights_material,
                lighted_steel_material,
                lights1_material,
                glass_material,
                lights2_material
            ]
        }
        Model {
            id: back_brake_pad_L
            x: -121.712
            y: 52.3726
            z: -221.031
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            scale.x: 2.44019
            scale.y: 2.44019
            scale.z: 2.44019
            source: "meshes/back_brake_pad_L.mesh"
            materials: [
                brake_pad_material_material
            ]
        }
        Model {
            id: front_brake_pad_L
            x: -121.712
            y: 52.3726
            z: 173.123
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            scale.x: 2.44019
            scale.y: 2.44019
            scale.z: 2.44019
            source: "meshes/front_brake_pad_L.mesh"
            materials: [
                brake_pad_material_material
            ]
        }
        Model {
            id: back_brake_disc_R
            x: 137.313
            y: 52.4504
            z: -197.099
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/back_brake_disc_R.mesh"
            materials: [
                brake_disc_material_material
            ]
        }
        Model {
            id: back_rim_bolts_R
            x: 137.313
            y: 52.4504
            z: -197.099
            rotation: Qt.quaternion(-0.0389918, 0.99924, 0, 0)
            scale.x: 144.92
            scale.y: 144.92
            scale.z: 144.92
            source: "meshes/back_rim_bolts_R.mesh"
            materials: [
                bolts_material_material
            ]
        }
        Model {
            id: front_rim_bolts_R
            x: 137.313
            y: 52.4504
            z: 197.074
            rotation: Qt.quaternion(-0.0389918, 0.99924, 0, 0)
            scale.x: 144.92
            scale.y: 144.92
            scale.z: 144.92
            source: "meshes/front_rim_bolts_R.mesh"
            materials: [
                bolts_material_material
            ]
        }
        Model {
            id: back_tyre_R
            x: 137.312
            y: 52.4504
            z: -197.099
            rotation: Qt.quaternion(0.859473, -0.511181, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/back_tyre_R.mesh"
            materials: [
                tyre_material
            ]
        }
        Model {
            id: back_rim_R
            x: 137.313
            y: 52.4504
            z: -197.099
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/back_rim_R.mesh"
            materials: [
                rims_material
            ]
        }
        Model {
            id: front_brake_disc_R
            x: 137.313
            y: 52.4504
            z: 197.074
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/front_brake_disc_R.mesh"
            materials: [
                brake_disc_material_material
            ]
        }
        PerspectiveCamera {
            id: camera
            x: 283.236
            y: 49.7957
            z: 127.056
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 0)
            fieldOfView: 49.1343
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        Model {
            id: front_upper_grid
            x: 0.0464641
            y: 90.5882
            z: 304.101
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/front_upper_grid.mesh"
            materials: [
                mrizka_material
            ]
        }
        Model {
            id: front_bottom_grid
            x: -0.132379
            y: 51.5607
            z: 323.877
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/front_bottom_grid.mesh"
            materials: [
                mrizka_material
            ]
        }
        Model {
            id: back_grid
            x: -1.08231
            y: 54.3525
            z: -322.539
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/back_grid.mesh"
            materials: [
                mrizka_material
            ]
        }
        Model {
            id: front_rim_R
            x: 137.313
            y: 52.4504
            z: 197.074
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/front_rim_R.mesh"
            materials: [
                rims_material
            ]
        }
        Model {
            id: front_tyre_R
            x: 137.312
            y: 52.4504
            z: 197.074
            rotation: Qt.quaternion(0.859473, -0.511181, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/front_tyre_R.mesh"
            materials: [
                tyre_material
            ]
        }
    }
}
