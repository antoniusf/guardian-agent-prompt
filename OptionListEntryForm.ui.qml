import QtQuick 2.4

Item {
    height: 200

    property alias number: optionNumber.text
    property alias text: optionText.text
    property alias hoverCircle: hoverCircle
    property alias backgroundRect: rectangle1
    width: 500

    Rectangle {
        id: rectangle1
        color: colorScheme.listItemBackground
        clip: true
        anchors.fill: parent

        Rectangle {
            id: hoverCircle
            property real centerx: 300
            property real centery: 50
            x: centerx - width/2
            y: centery - width/2
            width: 100
            height: width
            color: colorScheme.listItemHoverBackground
            radius: width
            opacity: 0.0
        }

        Rectangle {
            id: rectangle2
            width: height
            color: colorScheme.box
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            Text {
                id: optionNumber
                color: colorScheme.background
                text: "1"
                font.bold: true
                font.pixelSize: width*0.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
            }
        }

        Text {
            id: optionText
            text: qsTr("Text")
            textFormat: Text.PlainText
            wrapMode: Text.WordWrap
            font.pixelSize: height*0.4
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: height*1.3
            anchors.fill: parent
            color: colorScheme.foreground
        }

    }
}

