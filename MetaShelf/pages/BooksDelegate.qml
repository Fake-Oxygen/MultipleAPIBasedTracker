import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 160
    height: 256

    Text {
        id: titleBox
        text: title
        width: parent.width
        y: cover.height + 10
        anchors.margins: 2
        horizontalAlignment: Text.AlignHCenter
        elide: Text.ElideRight
        wrapMode: Text.NoWrap
        clip: true

        ToolTip {
            visible: parent.hovered
            contentWidth: parent.width
            contentItem: Text {
                text: titleBox.text
                wrapMode: Text.Wrap
                horizontalAlignment: Text.AlignHCenter
            }
        }

        MouseArea {
            id: titleHoverArea
            anchors.fill: parent
            hoverEnabled: true
            onEntered: parent.hovered = true
            onExited: parent.hovered = false
        }
        property bool hovered: false
    }

    Text {
        id: authorsBox
        text: authors
        width: parent.width
        y: parent.height + 13
        anchors.margins: 2
        horizontalAlignment: Text.AlignHCenter
        elide: Text.ElideRight
        wrapMode: Text.NoWrap
        clip: true

        ToolTip {
            visible: parent.hovered
            contentWidth: parent.width
            contentItem: Text {
                text: authorsBox.text
                wrapMode: Text.Wrap
                horizontalAlignment: Text.AlignHCenter
            }
        }

        MouseArea {
            id: authorsHoverArea
            anchors.fill: parent
            hoverEnabled: true
            onEntered: parent.hovered = true
            onExited: parent.hovered = false
        }
        property bool hovered: false
    }

    Image {
        id: cover
        source: thumbnail
        clip: true
        anchors.fill: parent
        anchors.margins: 5
        HoverHandler{
             onHoveredChanged: {
                 if(hovered)
                 {
                  cover.scale = 1.05
                 }else{
                     cover.scale = 1
                 }
             }
         }
    }
}
