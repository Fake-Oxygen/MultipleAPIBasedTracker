

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
    width: Constants.width
    height: Constants.height

    GridLayout {
        id: gridLayout
        x: 0
        y: 0
        width: 1920
        height: 1080
        layer.sourceRect.x: 0
        layoutDirection: Qt.LeftToRight
        columns: 2
        rows: 3
    }
}
