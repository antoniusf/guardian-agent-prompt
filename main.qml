import QtQuick 2.3
import QtQuick.Window 2.2

import "componentCreation.js" as ComponentCreation

Window {
    visible: true
    width: 587
    height: 480
    title: qsTr("test")

    Background {
        id: background1
        anchors.fill: parent
        target: sender1


        Sender {
            id: sender1
            y: 140
            displayText: "sender"
            buttonColor: "#0000ff"
            anchors.left: parent.left
            anchors.leftMargin: 70
        }

        OptionList {
            id: optionList

            property real margin: 20
            property real max_width: 640
            property real y_cursor: 0

            width: parent.width > (max_width + 2*margin) ? (max_width) : parent.width - 2*margin
            height: parent.height
            anchors.leftMargin: parent.width > max_width ? (parent.width - (max_width + 2*margin))/2 + margin : margin
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 20
        }
    }

    Component.onCompleted: ComponentCreation.initiateCreateOptionList(optionList)
}

