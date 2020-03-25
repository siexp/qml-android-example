import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    title: qsTr("Hello World")

    Rectangle {
        anchors.fill: parent
        color: "#baeb34"
    }
}
