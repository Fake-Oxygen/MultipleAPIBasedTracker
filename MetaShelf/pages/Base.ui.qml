
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.8
import QtQuick.Controls 6.8
import QtQuick.Window
import QtQuick.Timeline
import QtQuick.Layouts
import QtMultimedia

Rectangle {
    id: baseRoot
    width: 1280
    height: 720
    color: "#f0f0f0"

    Rectangle {
        id: sidebar
        width: 100
        color: "#ffffff"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        Column {
            spacing: 4
            anchors.fill: parent
            anchors.margins: 8
            TabButton {
                text: "Books"
                icon.source: "../assets/images/book-icon.png"
                onClicked: stackLayout.currentIndex = 1
            }
            TabButton {
                text: "Languages"
                icon.source: "../assets/images/language-icon.png"
                onClicked: stackLayout.currentIndex = 2
            }
            Item { Layout.fillHeight: true } // Spacer
            TabButton {
                text: "Account"
                icon.source: "../assets/images/user-profile-icon.png"
                onClicked: stackLayout.currentIndex = 0
            }
        }
    }

    StackLayout {
        id: stackLayout
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: sidebar.right
            right: parent.right
        }
        currentIndex: 0

        AccountPage {}
        BooksPageForm {}
        Rectangle { color: "lightgray" } // Placeholder for Languages
    }
}
