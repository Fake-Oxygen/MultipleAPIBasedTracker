

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import test
import QtQuick.Window
import QtQuick.Timeline
import QtQuick.Layouts
import QtMultimedia
import QtQuick.Studio.Components

Rectangle {
    id: rectangle
    width: 1280
    height: 720
    color: Constants.backgroundColor

    Rectangle {
        id: rectangle1
        width: 75
        color: "#ffffff"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0

        Column {
            id: column
            width: parent.width
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            layer.format: ShaderEffectSource.Alpha

            TabButton {
                id: books
                text: qsTr("Books")
                width: 75
                height: 75
                onClicked: stackLayout.currentIndex = 1
            }

            TabButton {
                id: languages
                text: qsTr("Languages")
                width: 75
                height: 75
                onClicked: stackLayout.currentIndex = 1
            }
        }
        TabButton {
            id: btn_account
            width: 75
            height: 75
            text: qsTr("Account")
            anchors.bottom: parent.bottom
            icon.height: 32
            icon.width: 32
            display: AbstractButton.TextUnderIcon
            anchors.bottomMargin: 0
            icon.source: "images/user-profile-icon.png"
            onClicked: stackLayout.currentIndex = 0
            checked: true
        }
    }

    StackLayout {
        id: stackLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        z: 0
        currentIndex: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 75
        anchors.rightMargin: 0

        AccountPage {}

        BooksPageForm {}
    }
}
