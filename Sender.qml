import QtQuick 2.0
import "componentCreation.js" as ComponentCreation

Circle {
    id: sendButton

    property int counter: 0
    property Receiver target: null

    MouseArea {
        anchors.fill: parent

        onClicked: {
            counter++
            ComponentCreation.initiateCreateOptionList(optionList)
            writer.test("hi")
        }

        onPressed: parent.buttonColor = "green"
        onReleased: parent.buttonColor = "blue"
    }
}

