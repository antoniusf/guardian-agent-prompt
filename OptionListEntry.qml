import QtQuick 2.4

OptionListEntryForm {
        clip: true
        MouseArea {
            id: mouseArea
            width: 506
            anchors.fill: parent
            onPressed: {
                //expandCircle.running = true
                //hoverCircle.visible = true


            }

            onClicked: {
                writer.write(number)
                Qt.quit()
            }
        }
}

