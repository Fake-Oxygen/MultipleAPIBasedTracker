import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Item {
    width: baseRoot.width
    height: baseRoot.height

    ToolBar {
        id: toolBar
        anchors.top: parent
        anchors.left: parent
        anchors.right: parent
        width: parent.width
        height: 40
        z: 1

        RowLayout {
            anchors.fill: parent
            spacing: 10

            TextField {
                id: searchField
                Layout.preferredWidth: 300
                placeholderText: "Search..."
            }

            Button{
                id: searchButton
                text: "Search"
                x: searchField.width
            }

            Item {
                Layout.fillWidth: true
            }
        }
    }



    Connections{
        target: searchButton
        function onClicked() {
            googleBooksAPI.searchBooks(searchField.text);
        }
    }

    GridView {
        id: gridView
        model: bookModel
        width: mainWindow.width - cellWidth / 2
        height: mainWindow.height
        anchors.top: toolBar.bottom
        anchors.bottom: parent
        anchors.right: parent
        anchors.left: parent


        delegate: BooksDelegate {}

        cellWidth: 160
        cellHeight: 285
    }
}
