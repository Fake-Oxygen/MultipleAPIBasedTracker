import QtQuick 2.15
import QtQuick.Controls 2.15

Item {

    width: 80
    height: 50
    anchors.right: parent.right
    anchors.rightMargin: 230
    Row {
        id: row1
        spacing: 10
        Image {
            y: 7.5
            width: 40
            height: 40
            source: iconSource
        }

        Button {
            width: 200
            text: name
        }
        Image {
            y: 7.5
            width: 40
            height: 40
            source: "../assets/images/disconnect-plug-icon.png"
        }
    }
}
