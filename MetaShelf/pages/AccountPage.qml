import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: item1
    Switch{
        anchors.right: parent.right
        id: modulesConnectionsSwitch
        anchors.rightMargin: 10
        width: 300
        indicator.width: this.width
        display: AbstractButton.TextOnly
        onToggled:
        {
            if(checked)
            {
                modulesConnectionsSwitchText.text=qsTr("MODULES")
                modulesConnectionsSwitchText.anchors.leftMargin=-modulesConnectionsSwitch.width/7
            }else
            {
                modulesConnectionsSwitchText.text=qsTr("API CONNECTIONS")
                modulesConnectionsSwitchText.anchors.leftMargin=-modulesConnectionsSwitch.width/3.5
            }
        }

        contentItem: Text{
            id: modulesConnectionsSwitchText
            font.bold: true
            text: "API CONNECTIONS"
            anchors.left: parent.horizontalCenter
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: -parent.width/3.5
            anchors.topMargin: 7
            font.pointSize: 15
            z: 1
        }
    }

    ListView {
        id: listView
        x: rectangle.width
        width: rectangle.width / 4
        anchors.right: parent.right
        anchors.top: modulesConnectionsSwitch.top
        anchors.bottom: parent.bottom
        anchors.topMargin: modulesConnectionsSwitch.height
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
