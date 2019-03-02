import QtQuick 2.3
import QtQuick.Window 2.2

import "componentCreation.js" as ComponentCreation
import stdoutwriter 1.0

Window {
    visible: true
    width: 580
    height: 400
    title: qsTr("Guardian Agent Prompt")

    Background {
        id: background1
        anchors.fill: parent

        OptionList {
            id: optionList

            property real margin: 20
            property real max_width: 640
            property real y_cursor: 0

            width: parent.width > (max_width + 2*margin) ? (max_width) : parent.width - 2*margin
            anchors.leftMargin: parent.width > max_width ? (parent.width - (max_width + 2*margin))/2 + margin : margin

            height: parent.height
            anchors.left: parent.left
            anchors.rightMargin: 0
            anchors.top: questiontext.bottom
            anchors.topMargin: 40
        }

        Text {
            id: questiontext
            anchors.left: optionList.left
            anchors.leftMargin: 0
            width: optionList.width
            color: colorScheme.foreground
            y: 20
            text: qsTr("Text")
            font.bold: false
            textFormat: Text.PlainText
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            font.pixelSize: 20
        }
    }

    Writer {
        id: writer
    }

    ColorScheme {
        id: colorScheme
    }

    Component.onCompleted: ComponentCreation.initiateCreateOptionList(optionList)
}

