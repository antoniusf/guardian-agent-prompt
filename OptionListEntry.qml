import QtQuick 2.4

OptionListEntryForm {
        clip: true
        MouseArea {
            id: mouseArea
            width: 506
            anchors.fill: parent
            onPressed: {
                hoverCircle.centerx = mouseX
                hoverCircle.centery = mouseY
                releaseFadeout.stop()
                expand.start()
                pressFadeout.start()
            }

            onReleased: {
                pressFadeout.stop()
                releaseFadeout.start()
            }

            onClicked: {
                writer.write(number)
                Qt.quit()
            }
        }
        NumberAnimation {
            id: expand
            target: hoverCircle
            property: "width"
            from: 0
            to: Math.abs((hoverCircle.centerx - width/2)) * 2 + width
            duration: 250
        }
        NumberAnimation {
            id: pressFadeout
            target: hoverCircle
            property: "opacity"
            from: 1.0
            to: 0.5
            duration: 250
        }

        NumberAnimation {
            id: releaseFadeout
            target: hoverCircle
            property: "opacity"
            to: 0.0
            duration: 250
        }
}

