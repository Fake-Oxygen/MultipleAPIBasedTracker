

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import test 1.0
import QtMultimedia
import Qt.SafeRenderer
import QtQuick.Window
import FlowView
import QtWebEngine
import QtQuick.Layouts

Item {
    id: no_account
    Column {
        id: column1
        anchors.fill: parent
        anchors.topMargin: 80
        spacing: 10
        Image {
            source: "images/enter-icon.png"
            width: 180
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Item {
            width: 200
            height: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextField {
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: "Login"
            width: 300
        }
        TextField {
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: "Password"
            width: 300
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 300
            text: "Login"
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 300
            text: "Sign up"
        }

        Label {
            text: "You can also login via:"
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            spacing: 8
            anchors.horizontalCenter: parent.horizontalCenter

            Image {
                width: 40
                height: 40
                source: "images/google-color-icon.png"
                MouseArea {
                    anchors.fill: parent
                }
            }
            Image {
                width: 40
                height: 40
                source: "images/facebook-round-color-icon.png"
                MouseArea {
                    anchors.fill: parent
                }
            }
            Image {
                width: 40
                height: 40
                source: "images/github-icon.png"
                MouseArea {
                    anchors.fill: parent
                }
            }
            Image {
                width: 40
                height: 40
                source: "images/apple-icon.png"
                MouseArea {
                    anchors.fill: parent
                }
            }
            Image {
                width: 40
                height: 40
                source: "images/microsoft-icon.png"
                MouseArea {
                    anchors.fill: parent
                }
            }
            Image {
                width: 40
                height: 40
                source: "images/linkedin-app-icon.png"
                MouseArea {
                    anchors.fill: parent
                }
            }
        }
    }
}
