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

    TextField {
        id: searchField
        placeholderText: "Search..."
    }

    Button{
        id: searchButton
        text: "Search"
        x: searchField.width
    }

    Connections{
        target: searchButton
        function onClicked() {
            googleBooksAPI.searchBooks(searchField.text);
        }
    }

    GridView {
        id: gridView
        x: 0
        y: searchField.height
        width: parent.width
        height: parent.height - toolBar.height
        model: bookModel

        delegate: Rectangle {
            width: 200; height: 100;
            Text { text: title }
        }

        cellWidth: 160
        cellHeight: 256
    }
}
