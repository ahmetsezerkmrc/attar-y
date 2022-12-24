import "../controls"
import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.3
import QtQuick.Layouts 1.14
import QtQuick.Shapes 1.14


Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Text {
            id: text20
            width: 70
            height: 30
            color: "#ffffff"
            text: qsTr("Date")
            anchors.left: parent.left
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 20
            anchors.leftMargin: 20
        }
        Text {
            id: text21
            width: 70
            height: 30
            color: "#ffffff"
            text: qsTr("Date")
            anchors.left: text20.right
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 20
            anchors.leftMargin: 20
        }



    }
    Connections{
            target: backend
            function onPrintdata0(data0){
            text20.text = data0
        }

        }

}



