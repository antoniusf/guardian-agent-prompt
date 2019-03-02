import QtQuick 2.0
import "componentCreation.js" as ComponentCreation

Circle {
    id: receiveButton

    function receive (value) {
        displayText = value
        clicknotify.running = true
        ComponentCreation.createOptionListEntry(optionList, 1, "hello world")
    }

    SequentialAnimation on buttonColor {
        id: clicknotify
        running: false


        ColorAnimation {
            from: "red"
            to: "blue"
            duration: 250
        }
        ColorAnimation {
            from: "blue"
            to: "red"
            duration: 250
        }
    }

}

