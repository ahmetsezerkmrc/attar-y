import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import QtGraphicalEffects 1.15
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.0
import QtGraphicalEffects 1.0


import "controls"
import QtQuick.Dialogs 1.3

Window {
    id: mainWindow
    width: 800
    height: 580
    minimumWidth: 800
    minimumHeight: 580
    visible: true
    color: "#00000000"
    title: qsTr("Course Qt Quick")

    // Remove title bar
    flags: Qt.Window | Qt.FramelessWindowHint

    // Propeties
    property int windowStatus: 0
    property int windowMargin: 10

    // Text Edit Properties
    property alias actualPage: stackView.currentItem

    // Internal functions
    QtObject{
        id: internal

        function resetResizeBorders(){
            // Resize visibility
            resizeLeft.visible = true
            resizeRight.visible = true
            resizeBottom.visible = true
            resizeWindow.visible = true
        }

        function maximizeRestore(){
            if(windowStatus == 0){
                mainWindow.showMaximized()
                windowStatus = 1
                windowMargin = 0
                // Resize visibility
                resizeLeft.visible = false
                resizeRight.visible = false
                resizeBottom.visible = false
                resizeWindow.visible = false
                btnMaximizeRestore.btnIconSource = "../images/svg_images/restore_icon.svg"
            }
            else{
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                // Resize visibility
                internal.resetResizeBorders()
                btnMaximizeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function ifMaximizedWindowRestore(){
            if(windowStatus == 1){
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                // Resize visibility
                internal.resetResizeBorders()
                btnMaximizeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function restoreMargins(){
            windowStatus = 0
            windowMargin = 10
            // Resize visibility
            internal.resetResizeBorders()
            btnMaximizeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
        }
    }



    Rectangle {
        id: bg
        color: "#2c313c"
        border.color: "#383e4c"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: windowMargin
        anchors.leftMargin: windowMargin
        anchors.bottomMargin: windowMargin
        anchors.topMargin: windowMargin
        z: 1

        Rectangle {
            id: appContainer
            color: "#00000000"
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.leftMargin: 1
            anchors.bottomMargin: 1
            anchors.topMargin: 1

            Rectangle {
                id: topBar
                height: 60
                color: "#1c1d20"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                ToggleButton {
                    onClicked: animationMenu.running = true
                }



                Rectangle {
                    id: titleBar
                    height: 35
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 105
                    anchors.leftMargin: 70
                    anchors.topMargin: 0

                    DragHandler {
                        onActiveChanged: if(active){
                                             mainWindow.startSystemMove()
                                             internal.ifMaximizedWindowRestore()
                                         }
                    }

                    Image {
                        id: iconApp
                        width: 22
                        height: 22
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../images/svg_images/icon_app_top.svg"
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 5
                        anchors.topMargin: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Label {
                        id: label
                        color: "#c3cbdd"
                        text: qsTr("ATTAR-Y")
                        anchors.left: iconApp.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 10
                        anchors.leftMargin: 5
                    }
                }

                Row {
                    id: rowBtns
                    x: 872
                    width: 105
                    height: 35
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.rightMargin: 0

                    TopBarButton{
                        id: btnMinimize
                        onClicked: {
                            mainWindow.showMinimized()
                            internal.restoreMargins()
                        }
                    }

                    TopBarButton {
                        id: btnMaximizeRestore
                        btnIconSource: "../images/svg_images/maximize_icon.svg"
                        onClicked: internal.maximizeRestore()
                    }

                    TopBarButton {
                        id: btnClose
                        btnColorClicked: "#ff007f"
                        btnIconSource: "../images/svg_images/close_icon.svg"
                        onClicked: mainWindow.close()
                    }
                }

                Text {
                    id: text1
                    color: "#ffffff"
                    text: qsTr("Text")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: titleBar.bottom
                    anchors.bottom: parent.bottom
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    anchors.leftMargin: 75
                    anchors.rightMargin: 100
                }

                Rectangle {
                    id: rectangle
                    color: "#252525"
                    radius: 5
                    anchors.left: titleBar.right
                    anchors.right: parent.right
                    anchors.top: rowBtns.bottom
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    ToggleButton {
                        id: toggleButton
                        anchors.fill: parent
                        onClicked: animationSetComm.running = true
                    }
                }
            }

            Rectangle {
                id: content
                color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: topBar.bottom
                anchors.bottom: parent.bottom
                anchors.topMargin: 0

                Rectangle {
                    id: leftMenu
                    width: 70
                    color: "#1c1d20"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0

                    PropertyAnimation{
                        id: animationMenu
                        target: leftMenu
                        property: "width"
                        to: if(leftMenu.width == 70) return 250; else return 70
                        duration: 500
                        easing.type: Easing.InOutQuint
                    }

                    Column {
                        id: columnMenus
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        clip: true
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 90
                        anchors.topMargin: 0

                        LeftMenuBtn {
                            id: btnHome
                            width: leftMenu.width
                            text: qsTr("Home")
                            isActiveMenu: true
                            onClicked: {
                                btnHome.isActiveMenu = true
                                btn3d.isActiveMenu= false
                                btnSettings.isActiveMenu = false
                                stackView.push(Qt.resolvedUrl("pages/Homepage.qml"))
                            }
                        }
                        LeftMenuBtn {
                            id: btn3d
                            width: leftMenu.width
                            text: qsTr("3D")
                            btnIconSource: "../images/svg_images/open_icon.svg"
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                btn3d.isActiveMenu= true
                                stackView.push(Qt.resolvedUrl("pages/Treedimention.qml"))
                            }
                        }





                    }

                    LeftMenuBtn {
                        id: btnSettings
                        width: leftMenu.width
                        text: qsTr("Settings")
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 25
                        btnIconSource: "../images/svg_images/settings_icon.svg"
                        onClicked: {
                            btnHome.isActiveMenu = false
                            btn3d.isActiveMenu =false
                            btnSettings.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl("pages/settingsPage.qml"))
                        }
                    }
                }

                Rectangle {
                    id: contentPages
                    color: "#00000000"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    clip: true
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0

                    StackView {
                        id: stackView
                        anchors.fill: parent
                        initialItem: Qt.resolvedUrl("pages/Homepage.qml")
                    }
                    Rectangle {
                        id: setComm
                        x: 851
                        width: 2
                        color: "#282c34"
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 25
                        anchors.topMargin: 0

                        PropertyAnimation {
                            id: animationSetComm
                            target: setComm
                            property: "width"
                            to: if (setComm.width == 2)
                                    return 180
                                else
                                    return 2
                            duration: 500
                            easing.type: Easing.InOutQuint
                        }
                        ///
                        SwitchDelegate{
                            id: connectComm
                            text: qsTr("Connect")
                            anchors.left: parent.left
                            checked: false
                            font.pointSize: 14
                            height: 25
                            anchors.top: parent.top
                            anchors.leftMargin: 10
                            anchors.topMargin: 180
                           // onCheckedChanged:


                           contentItem: Text {
                                rightPadding: connectComm.indicator.width + connectComm.spacing
                                text: connectComm.text
                                font: connectComm.font
                                opacity: enabled ? 1.0 : 0.3
                                color: connectComm.down ? "#e0e0e0" : "#e0e0e0"
                                elide: Text.ElideRight
                                verticalAlignment: Text.AlignVCenter
                            }

                           indicator: Rectangle {
                                implicitWidth: 48
                                implicitHeight: 26
                                x: connectComm.width - width - connectComm.rightPadding
                                y: parent.height / 2 - height / 2
                                radius: 13
                                color: connectComm.checked ? "#00aeff" : "transparent"
                                border.color: connectComm.checked ? "#00aeff" : "#cccccc"

                                Rectangle {
                                    x: connectComm.checked ? parent.width - width : 0
                                    width: 26
                                    height: 26
                                    radius: 13
                                    color: connectComm.down ? "#c0c0c0" : "#f0f0f0"
                                }
                            }
                            background: Rectangle {
                                implicitWidth: 80
                                implicitHeight: 40
                                visible: connectComm.down || connectComm.highlighted
                                color: "#00000000"
                            }
                        }
                        ///
                        ComboBox {
                            id: serial_portX
                            width: 150
                            height: 30
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 10
                            anchors.topMargin: 35
                            font.pointSize: 12
                            font.bold: true
                            states: State {
                                name: "changePort"
                                PropertyChanges {
                                    target: serial_portX
                                    nameserial_port: model[currentIndex]
                                }
                            }
                            onCurrentIndexChanged: {
                                serial_portX.state = "changePort"
                            }

                        }

                        Label {
                            id: label1
                            color: "#d0d0d0"
                            text: qsTr("PORT NAME")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 10
                            anchors.topMargin: 10
                            font.bold: true
                            font.pointSize: 12
                        }
                        ///
                        ComboBox {
                            id: baud_rateX
                            width: 150
                            height: 30
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 10
                            anchors.topMargin: 110
                            model: ['9600', '19200', '38400', '57600', '115200']
                            font.pointSize: 12
                            font.bold: true

                            states: State {
                                name: "changeSpeed"
                            }
                            onCurrentIndexChanged: {
                                baud_rateX.state = "changeSpeed"
                            }

                        }

                        Label {
                            id: label2
                            color: "#d0d0d0"
                            text: qsTr("SPEED ")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 10
                            anchors.topMargin: 80
                            font.bold: true
                            font.pointSize: 12
                        }

                        Label {
                            id: label3
                            color: "#d0d0d0"
                            text: qsTr("Available Ports")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 10
                            anchors.topMargin: 230
                            font.bold: true
                            font.pointSize: 10
                        }

                        ///
                        Rectangle {
                            id: rectangle21
                            height: 200
                            color: "#00000000"
                            border.color: "#00000000"
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 0
                            anchors.leftMargin: 10
                            anchors.topMargin: 260



                }
            }
        }
    }


   /* DropShadow{
        anchors.fill: bg
        horizontalOffset: 0
        verticalOffset: 0
        radius: 10
        samples: 16
        color: "#80000000"
        source: bg
        z: 0
    }*/

    MouseArea {
        id: resizeLeft
        width: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) { mainWindow.startSystemResize(Qt.LeftEdge) }
        }
    }

    MouseArea {
        id: resizeRight
        width: 10
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) { mainWindow.startSystemResize(Qt.RightEdge) }
        }
    }

    MouseArea {
        id: resizeBottom
        height: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 0
        cursorShape: Qt.SizeVerCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) { mainWindow.startSystemResize(Qt.BottomEdge) }
        }
    }

    Connections{
        target: backend
        function onPrintTime(time){
            text1.text = time
        }

        
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:1}D{i:5}D{i:7}D{i:8}D{i:9}D{i:6}D{i:11}D{i:12}D{i:13}
D{i:10}D{i:14}D{i:16}D{i:15}D{i:4}D{i:19;invisible:true}D{i:21}D{i:22}D{i:23}D{i:20}
D{i:24}D{i:18}D{i:26}D{i:28}D{i:29}D{i:34}D{i:37}D{i:38}D{i:41}D{i:42}D{i:43}D{i:27}
D{i:25}D{i:17}D{i:48}D{i:50}D{i:49}D{i:52}D{i:51}D{i:54}D{i:53}D{i:55}D{i:3}D{i:2}
}
##^##*/
}
}
