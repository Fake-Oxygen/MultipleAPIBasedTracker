import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 1280
    height: 720

    ToolBar {
        id: toolBar
        x: 0
        y: 0
        width: parent.width
    }

    GridView {
        id: gridView
        x: 0
        y: toolBar.height
        width: parent.width
        height: parent.height - toolBar.height
        model: BooksModel {}

        delegate: BooksDelegate {}

        cellWidth: 160
        cellHeight: 256
    }
}
