import QtQuick 2.12
import QtQuick.Controls 2.12

Dial {
    width: rectangle16.width / 2
    height: rectangle16.height / 2

    id: roll
    background: Rectangle {
        id: rolli
        color: "transparent"

        Image {
            id: rollimg
            source: "images/1dial.svg"
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: roll.width
            width: roll.height

            fillMode: Image.PreserveAspectFit
        }
    }
    handle: Rectangle {
        id: handleItem
        x: roll.background.x + roll.background.width / 2 - width / 2
        y: roll.background.y + roll.background.height / 2 - height / 2

        Image {
            id: handleimg
            source: "images/hand.svg"
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 50
            width: 50

            fillMode: Image.PreserveAspectFit
        }

        antialiasing: true
        opacity: roll.enabled ? 1 : 0.3
        transform: [
            Translate {
                y: -Math.min(
                       roll.background.width,
                       roll.background.height) * 0.4 + handleItem.height / 2
            },
            Rotation {
                angle: roll.angle
                origin.x: handleItem.width / 2
                origin.y: handleItem.height / 2
            }
        ]
    }
}



