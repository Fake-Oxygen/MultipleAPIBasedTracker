import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: item1
    ListView {
        id: listView
        x: rectangle.width
        width: rectangle.width / 4
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        model: ConnectionsModel {}
        delegate: ConnectionsDelegate {}
    }

    StackView {
        id: stackView
        anchors.left: parent.left
        anchors.right: listView.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        initialItem: "LoginPage.ui.qml"
    }
}
