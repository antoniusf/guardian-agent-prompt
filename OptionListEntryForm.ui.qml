import QtQuick 2.4

Item {
    height: 200

    property alias number: optionNumber.text
    property alias text: optionText.text
    width: 400

    Rectangle {
        id: rectangle1
        color: "#cfcfcf"
        anchors.fill: parent

        Rectangle {
            id: rectangle2
            width: height
            color: "#000000"
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            Text {
                id: optionNumber
                color: "#ffffff"
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
            font.pixelSize: height*0.4
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: height*1.3
            anchors.fill: parent
        }
    }
}

