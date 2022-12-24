import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.3
import QtQuick.Layouts 1.14
import QtQuick.Shapes 1.14
import "../controls"

import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.0
import QtGraphicalEffects 1.0

Item {


        Rectangle {
            id: rectangle
            color: "#202020"
            anchors.fill: parent

            Rectangle {
                id: rectangle1
                height: 50
                color: "#f8070816"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                Rectangle {
                    id: rectangle6
                    x: 120
                    y: 8
                    width: 124
                    color: "#10133a"
                    radius: 15
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 10
                    anchors.bottomMargin: 3
                    anchors.topMargin: 3

                    Text {
                        id: text2
                        width: 64
                        height: 28
                        color: "#ffffff"
                        text: qsTr("Battary")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.leftMargin: 0
                    }

                    Text {
                        id: text3
                        width: 24
                        height: 19
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: text2.right
                        font.pixelSize: 14
                        anchors.leftMargin: 5


                    }                    Text {
                        id: text4
                        color: "#ffffff"
                        text: qsTr("%")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: text3.right
                        font.pixelSize: 14
                        anchors.leftMargin: 5
                    }
                }

                Rectangle {
                    id: rectangle7
                    x: 254
                    width: 124
                    color: "#10133a"
                    radius: 15
                    anchors.left: rectangle6.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 13
                    anchors.bottomMargin: 3
                    anchors.topMargin: 3

                    Text {
                        id: text5
                        color: "#ffffff"
                        text: qsTr("Uydu : ")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.leftMargin: 5
                    }

                    Text {
                        id: text6
                        width: 52
                        height: 28
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: text5.right
                        font.pixelSize: 13
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.leftMargin: 10
                    }
                }



                CustomButton {
                    id: startbtn
                    width: 75
                    text: qsTr("Start")
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 5
                    anchors.bottomMargin: 5
                    anchors.topMargin: 5
                    onClicked : {
                        backend.startdronkit(true)
                    }
                }


            }

            Rectangle {
                id: rectangle2
                y: 329
                height:70
                color: "#202020"
                border.color: "#202020"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                Rectangle {
                    id: rectangle3
                    y: 32
                    width: 75
                    color: "#151515"
                    radius: 15
                    border.color: "#202020"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    Text {
                        id: text1
                        color: "#002dff"
                        text: qsTr("arm")
                        anchors.fill: parent
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }

                Rectangle {
                    id: rectangle4
                    color: "#202020"
                    radius: 15
                    border.color: "#202020"
                    anchors.left: rectangle3.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    RowLayout {
                        id: rowLayout
                        anchors.fill: parent
                        spacing: 5
                        Rectangle {
                            id: rectangle5
                            x: 41
                            y: 27
                            width: 200
                            height: 70
                            color: "#151515"
                            radius: 15
                            Layout.fillHeight: true
                            Layout.fillWidth: true


                            Text {
                                id: text7
                                color: "#002dff"
                                text: qsTr("Uçuş Modu : ")
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                font.pixelSize: 16
                                anchors.leftMargin: 5
                            }
                            Text {
                                id: text8
                                height: 34
                                color: "#002dff"
                                text: qsTr("-----")
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: text7.right
                                anchors.right: parent.right
                                font.pixelSize: 14
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                anchors.rightMargin: 2
                                anchors.leftMargin: 3
                            }
                        }
                        Rectangle {
                            id: rectangle8
                            x: 41
                            y: 27
                            width: 200
                            height: 70
                            color: "#151515"
                            radius: 15
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Text {
                                id: text9
                                color: "#002dff"
                                text: qsTr("Enlem : ")
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                font.pixelSize: 16
                                anchors.leftMargin: 5
                            }
                            Text {
                                id: text10
                                height: 34
                                color: "#002dff"
                                text: qsTr("-----")
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: text9.right
                                anchors.right: parent.right
                                font.pixelSize: 14
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                anchors.rightMargin: 2
                                anchors.leftMargin: 3
                            }
                        }
                        Rectangle {
                            id: rectangle9
                            x: 41
                            y: 27
                            width: 200
                            height: 70
                            color: "#151515"
                            radius: 15
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Text {
                                id: text11
                                color: "#002dff"
                                text: qsTr("Boylam : ")
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                font.pixelSize: 16
                                anchors.leftMargin: 5
                            }
                            Text {
                                id: text12
                                height: 34
                                color: "#002dff"
                                text: qsTr("-----")
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: text11.right
                                anchors.right: parent.right
                                font.pixelSize: 14
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                anchors.rightMargin: 3
                                anchors.leftMargin: 3
                            }
                        }

                    }




                }






            }

            Rectangle {
                id: rectangle10
                color: "#202020"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: rectangle1.bottom
                anchors.bottom: rectangle2.top
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                ColumnLayout {
                    id: columnLayout
                    anchors.fill: parent
                    spacing: 0


                    Rectangle {
                        id: rectangle12
                        width: 200
                        height: 200
                        color: "#225e62"
                        radius: 25
                        Layout.preferredHeight: 2
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }

                    Rectangle {
                        id: rectangle13
                        width: 200
                        height: 200
                        color: "#202020"
                        Layout.preferredHeight: 1
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        RowLayout {
                            id: rowLayout1
                            anchors.fill: parent
                            spacing: 0

                            Rectangle {
                                id: rectangle14
                                width: 200
                                height: 200
                                color: "#151515"
                                radius: 25
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Rectangle {
                                    id : customSliderrect1
                                    anchors.fill: parent
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    visible: true
                                    color: "#00000000"
                                    CircularSlider {
                                        id: customSlider1
                                        hideProgress: true
                                        hideTrack: true
                                        width: (customSliderrect1.width >= customSliderrect1.height) ?customSliderrect1.height : customSliderrect1.width
                                        height:  (customSliderrect1.width >= customSliderrect1.height) ?customSliderrect1.height : customSliderrect1.width
                                        handleColor: "#6272A4"
                                        handleWidth: 32
                                        handleHeight: 32
                                        minValue: 0
                                        maxValue: 360
                                        interactive: false

                                        Behavior on value {
                                            NumberAnimation {
                                                duration: 360
                                            }
                                        }

                                        // Custom progress Indicator
                                        Item {
                                            anchors.fill: parent
                                            anchors.margins: 5
                                            Rectangle{
                                                id: mask1
                                                anchors.fill: parent
                                                radius: width / 2
                                                color: "#282A36"
                                                border.width: 5
                                                border.color: "#44475A"
                                            }

                                            Item {
                                                anchors.fill: mask1
                                                anchors.margins: 5
                                                layer.enabled: true
                                                rotation: customSlider1.value
                                                layer.effect: OpacityMask {
                                                maskSource: mask1
                                                }
                                                Rectangle {
                                                    height: parent.height  //customSlider.value / customSlider.maxValue
                                                    width: parent.width
                                                    color:"#5B99A6"
                                                }
                                                Image {
                                                    id: icon1
                                                    anchors.fill: parent
                                                    source: "../../images/svg_images/avion.png"
                                                    }
                                            }

                                            Label {
                                                //anchors.centerIn: parent
                                                anchors.horizontalCenter: parent.horizontalCenter
                                                y: 0.1*parent.width
                                                font.pointSize: 20
                                                color: "#404040"
                                                //text: Number(customSlider.value).toFixed()
                                                text: Number(Math.abs(customSlider1.value)).toFixed()
                                            }
                                            Rectangle {
                                                anchors.horizontalCenter: parent.horizontalCenter
                                                anchors.verticalCenter: parent.verticalCenter
                                                //y: 220
                                                width: 0.26*parent.width
                                                height: 0.13*parent.width
                                                color: "#00000000"
                                                Text {
                                                    anchors.horizontalCenter: parent.horizontalCenter
                                                    y: parent.width
                                                    text: "Degrees"
                                                    font.family: "Helvetica"
                                                    font.pointSize: Math.max(6, parent.width * 0.2)
                                                    color: "#404040"
                                                }
                                            }
                                        }

                                    }
                                }

                            }

                            Rectangle {
                                id: rectangle15
                                width: 200
                                height: 200
                                color: "#151515"
                                radius: 25
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Rectangle {
                                    id : customSliderrect2
                                    anchors.fill: parent
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    visible: true
                                    color: "#00000000"
                                    CircularSlider {
                                        id: customSlider2
                                        hideProgress: true
                                        hideTrack: true
                                        width: (customSliderrect2.width >= customSliderrect2.height) ?customSliderrect2.height : customSliderrect2.width
                                        height:  (customSliderrect2.width >= customSliderrect2.height) ?customSliderrect2.height : customSliderrect2.width
                                        handleColor: "#6272A4"
                                        handleWidth: 32
                                        handleHeight: 32
                                        maxValue: 360
                                        interactive: false

                                        Behavior on value {
                                            NumberAnimation {
                                                duration: 900
                                            }
                                        }

                                        // Custom progress Indicator
                                        Item {
                                            anchors.fill: parent
                                            anchors.margins: 5
                                            Rectangle{
                                                id: mask2
                                                anchors.fill: parent
                                                radius: width / 2
                                                color: "#282A36"
                                                border.width: 5
                                                border.color: "#44475A"
                                            }

                                            Item {
                                                anchors.fill: mask2
                                                anchors.margins: 5
                                                layer.enabled: true
                                                rotation: customSlider2.value
                                                layer.effect: OpacityMask {
                                                maskSource: mask2
                                                }
                                                Rectangle {
                                                    height: parent.height  //customSlider.value / customSlider.maxValue
                                                    width: parent.width
                                                    color:"#5B99A6"
                                                }
                                                Image {
                                                    id: icon2
                                                    anchors.fill: parent
                                                    source: "../../images/svg_images/avion.png"
                                                    }
                                            }

                                            Label {
                                                //anchors.centerIn: parent
                                                anchors.horizontalCenter: parent.horizontalCenter
                                                y: 0.1*parent.width
                                                font.pointSize: 20
                                                color: "#404040"
                                                //text: Number(customSlider.value).toFixed()
                                                text: Number(Math.abs(customSlider2.value)).toFixed()
                                            }
                                            Rectangle {
                                                anchors.horizontalCenter: parent.horizontalCenter
                                                anchors.verticalCenter: parent.verticalCenter
                                                //y: 220
                                                width: 0.26*parent.width
                                                height: 0.13*parent.width
                                                color: "#00000000"
                                                Text {
                                                    anchors.horizontalCenter: parent.horizontalCenter
                                                    y: parent.width
                                                    text: "Degrees"
                                                    font.family: "Helvetica"
                                                    font.pointSize: Math.max(6, parent.width * 0.2)
                                                    color: "#404040"
                                                }
                                            }
                                        }

                                    }
                                }

                            }

                            Rectangle {
                                id: rectangle16
                                width: 200
                                height: 200
                                color: "#151515"
                                radius: 25
                                Layout.fillHeight: true
                                Layout.fillWidth: true


                                Rectangle {
                                    id : customSliderrect3
                                    anchors.fill: parent
                                    visible: true
                                    color: "#00000000"
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    CircularSlider {
                                        id: customSlider3
                                        hideProgress: true
                                        hideTrack: true
                                        width: (customSliderrect3.width >= customSliderrect3.height) ?customSliderrect3.height : customSliderrect3.width
                                        height:  (customSliderrect3.width >= customSliderrect3.height) ?customSliderrect3.height : customSliderrect3.width
                                        handleColor: "#6272A4"
                                        handleWidth: 32
                                        handleHeight: 32
                                        minValue: 0
                                        maxValue: 360
                                        interactive: false

                                        Behavior on value {
                                            NumberAnimation {
                                                duration: 900
                                            }
                                        }

                                        // Custom progress Indicator
                                        Item {
                                            anchors.fill: parent
                                            anchors.margins: 5
                                            Rectangle{
                                                id: mask3
                                                anchors.fill: parent
                                                radius: width / 2
                                                color: "#282A36"
                                                border.width: 5
                                                border.color: "#44475A"
                                            }

                                            Item {
                                                anchors.fill: mask3
                                                anchors.margins: 5
                                                layer.enabled: true
                                                rotation: customSlider3.value
                                                layer.effect: OpacityMask {
                                                maskSource: mask3
                                                }
                                                Rectangle {
                                                    height: parent.height  //customSlider.value / customSlider.maxValue
                                                    width: parent.width
                                                    color:"#5B99A6"
                                                }
                                                Image {
                                                    id: icon3
                                                    anchors.fill: parent
                                                    source: "../../images/svg_images/avion.png"
                                                    }
                                            }

                                            Label {
                                                //anchors.centerIn: parent
                                                anchors.horizontalCenter: parent.horizontalCenter
                                                y: 0.1*parent.width
                                                font.pointSize: 20
                                                color: "#404040"
                                                //text: Number(customSlider.value).toFixed()
                                                text: Number(Math.abs(customSlider3.value)).toFixed()
                                            }
                                            Rectangle {
                                                anchors.horizontalCenter: parent.horizontalCenter
                                                anchors.verticalCenter: parent.verticalCenter
                                                //y: 220
                                                width: 0.26*parent.width
                                                height: 0.13*parent.width
                                                color: "#00000000"
                                                Text {
                                                    anchors.horizontalCenter: parent.horizontalCenter
                                                    y: parent.width
                                                    text: "Degrees"
                                                    font.family: "Helvetica"
                                                    font.pointSize: Math.max(6, parent.width * 0.2)
                                                    color: "#404040"
                                                }
                                            }
                                        }

                                    }
                                }

                            }

                            Rectangle {
                                id: rectangle17
                                width: 200
                                height: 200
                                color: "#151515"
                                radius: 15
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Rectangle {
                                    id : customSliderrect4
                                    anchors.fill: parent
                                    visible: true
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    color: "#00000000"
                                    CircularSlider {
                                        id: customSlider4
                                        hideProgress: true
                                        hideTrack: true
                                        width: (customSliderrect4.width >= customSliderrect4.height) ?customSliderrect4.height : customSliderrect4.width
                                        height:  (customSliderrect4.width >= customSliderrect4.height) ?customSliderrect4.height : customSliderrect4.width
                                        handleColor: "#6272A4"
                                        handleWidth: 32
                                        handleHeight: 32
                                        value: 0
                                        minValue: 0
                                        maxValue: -90
                                        interactive: false

                                        Behavior on value {
                                            NumberAnimation {
                                                duration: 900
                                            }
                                        }

                                        // Custom progress Indicator
                                        Item {
                                            anchors.fill: parent
                                            anchors.margins: 5
                                            Rectangle{
                                                id: mask4
                                                anchors.fill: parent
                                                radius: width / 2
                                                color: "#282A36"
                                                border.width: 5
                                                border.color: "#44475A"
                                            }

                                            Item {
                                                anchors.fill: mask4
                                                anchors.margins: 5
                                                layer.enabled: true
                                                rotation: customSlider4.value
                                                layer.effect: OpacityMask {
                                                maskSource: mask4
                                                }
                                                Rectangle {
                                                    height: parent.height  //customSlider.value / customSlider.maxValue
                                                    width: parent.width
                                                    color:"#5B99A6"
                                                }
                                                Image {
                                                    id: icon4
                                                    anchors.fill: parent
                                                    source: "../../images/svg_images/avion.png"
                                                    }
                                            }

                                            Label {
                                                //anchors.centerIn: parent
                                                anchors.horizontalCenter: parent.horizontalCenter
                                                y: 0.1*parent.width
                                                font.pointSize: 20
                                                color: "#404040"
                                                //text: Number(customSlider.value).toFixed()
                                                text: Number(Math.abs(customSlider4.value)).toFixed()
                                            }
                                            Rectangle {
                                                anchors.horizontalCenter: parent.horizontalCenter
                                                anchors.verticalCenter: parent.verticalCenter
                                                //y: 220
                                                width: 0.26*parent.width
                                                height: 0.13*parent.width
                                                color: "#00000000"
                                                Text {
                                                    anchors.horizontalCenter: parent.horizontalCenter
                                                    y: parent.width
                                                    text: "Degrees"
                                                    font.family: "Helvetica"
                                                    font.pointSize: Math.max(6, parent.width * 0.2)
                                                    color: "#404040"
                                                }
                                            }
                                        }

                                    }
                                }
                            }
                        }
                    }
             }
            }


        }

        Connections{
            target: backend

            function onPrintarm(tarm){
                text1.text = tarm
            }
            function onPrintflightmode(mode){
                text8.text = mode
            }
            function onPrintalt(talt){
                customSlider4.value = talt
            }
            function onPrintbattary(tary){
                text3.text = tary
            }
            function onPrintpitch(pitch){
                customSlider1.value = pitch
            }
            function onPrintrow(trow){
                customSlider2.value = trow
            }
            function onPrintyaw(tyaw){
                customSlider3.value = tyaw
            }
            function onPrintlat(tlat){
                text10.text = tlat
            }
            function onPrintlon(tlon){
                text12.text = tlon
            }
            function onPrintchannel(channel){
                text6.text= channel

            }


            }
}








    /*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:4}D{i:5}D{i:6}D{i:3}
D{i:8}D{i:9}D{i:7}D{i:10}D{i:2}D{i:13}D{i:12}D{i:17}D{i:18}D{i:16}D{i:20}D{i:21}D{i:19}
D{i:23}D{i:24}D{i:22}D{i:15}D{i:14}D{i:11}D{i:27}D{i:26}D{i:25}D{i:1}D{i:28}
}
##^##*/


