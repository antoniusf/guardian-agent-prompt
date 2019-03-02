import QtQuick 2.4

Item {
    width: 400
    height: 400

    Rectangle {
        id: rectangle1
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#dde9f4"
            }

            GradientStop {
                position: 1
                color: "#8dbdee"
            }
        }
        anchors.fill: parent
    }
}

