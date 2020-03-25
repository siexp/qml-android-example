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

        Text {
            id: greetings
            text: qsTr("Welcome to QML Android Exmaple")
            font.pixelSize: 32
            wrapMode: Text.WordWrap
        }
    }
}
