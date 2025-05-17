import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 160
    height: 256

    Text {
        text: title
    }

    Image {
        id: cover
        source: bookCover
        clip: true
        anchors.fill: parent
        HoverHandler{
            onHoveredChanged: {
                if(hovered)
                {
                 cover.scale = 1.2
                }else{
                    cover.scale = 1
                }
            }
        }
    }
}
