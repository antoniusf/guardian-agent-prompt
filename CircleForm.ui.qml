import QtQuick 2.4

Item {
    width: 200
    height: 200
    property alias displayText: display.text
    property alias buttonColor: button.color

    Rectangle {
        id: button
        color: "#590a0a"
        radius: width*0.5
        anchors.fill: parent

        Text {
            id: display
            x: 87
            y: 93
            color: "#ffffff"
            text: "test"
            font.bold: true
            font.family: "Tahoma"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 50
        }
    }
}

