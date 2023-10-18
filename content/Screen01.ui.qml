

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

            TabButton {
                id: tabButton1
                text: qsTr("Tab Button")
                width: 75
                height: 75
                onClicked: stackLayout.currentIndex = 1
            }
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
                model: ListModel {
                    ListElement {
                        name: "Google Books"
                        iconSource: "images/google-books-icon.png"
                        connected: false
                    }
                    ListElement {
                        name: "Spotify"
                        iconSource: "images/spotify-icon.png"
                        connected: false
                    }
                }
                delegate: Item {

                    width: 80
                    height: 50
                    anchors.right: parent.right
                    anchors.rightMargin: 230
                    Row {
                        id: row1
                        spacing: 10
                        Image {
                            y: 7.5
                            width: 40
                            height: 40
                            source: iconSource
                        }

                        Button {
                            width: 200
                            text: name
                        }
                        Image {
                            y: 7.5
                            width: 40
                            height: 40
                            source: "images/disconnect-plug-icon.png"
                        }
                    }
                }
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
                initialItem: no_account
                Component {
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
            }
        }

        Rectangle {
            id: rectangle3
            width: 200
            height: 200
            color: "#8e1d1d"
        }
    }
}
