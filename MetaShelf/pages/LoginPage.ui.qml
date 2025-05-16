

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtMultimedia
import QtQuick.Window
import QtWebEngine
import QtQuick.Layouts

Item {
    id: loginPage

    Rectangle {
        anchors.centerIn: parent
        width: 400
        color: "transparent"

        Column {
            spacing: 16
            anchors.centerIn: parent

            Image {
                source: "../assets/images/enter-icon.png"
                width: 270
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
            }

            TextField {
                placeholderText: "Login"
                width: parent.width
            }
            TextField {
                placeholderText: "Password"
                echoMode: TextInput.Password
                width: parent.width
            }

            Button {
                text: "Login"
                width: parent.width
            }
            Button {
                text: "Sign up"
                width: parent.width
            }

            Label {
                text: "You can also login via:"
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Flow {
                spacing: 10
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter

                Repeater {
                    model: [
                        "../assets/images/google-color-icon.png",
                        "../assets/images/facebook-round-color-icon.png",
                        "../assets/images/github-icon.png",
                        "../assets/images/apple-icon.png",
                        "../assets/images/microsoft-icon.png",
                        "../assets/images/linkedin-app-icon.png"
                    ]
                    delegate: Image {
                        source: modelData
                        width: 36
                        height: 36
                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                        }
                    }
                }
            }
        }
    }
}

