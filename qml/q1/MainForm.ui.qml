import QtQuick 2.8
import QtQuick.Controls 2.1
import Qt3D.Input 2.0
import QtQuick.Dialogs.qml 1.0
import QtQuick.Window 2.2

Rectangle {
    property alias mouseArea: mouseArea
    property alias textEdit: textEdit

    width: 600
    height: 800
    property alias btn_popMessage1: btn_popMessage1
    property alias column: column

    MouseArea {
        id: mouseArea
        z: 1
        anchors.rightMargin: 0
        anchors.bottomMargin: 24
        anchors.leftMargin: 0
        anchors.topMargin: -24
        anchors.fill: parent

        Column {
            id: column
            x: 152
            y: 44
            width: 239
            height: 661
            z: -1
        }

        Text {
            id: text1
            x: 77
            y: 238
            text: qsTr("哈哈哈e和")
            font.pixelSize: 12
        }

        Button {
            id: button
            x: 31
            y: 184
            text:qsTr("按钮啊a哈哈是的")
        }

        Image {
            id: image
            x: 65
            y: 58
            source: "img/th.jpg"
        }

        Button {
            id: btn_popMessage1
            x: 207
            y: 184
            text: "弹窗1"
            enabled: true
            visible: true
            padding: 5
            spacing: -6
            transformOrigin: Item.Center
            checked: false
            checkable: false
            highlighted: false
        }
    }

    TextEdit {
        id: textEdit
        width: 134
        height: 213
        color: "#26f43d"
        text: qsTr("Enter some text...")
        anchors.horizontalCenterOffset: 175
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 64
        Rectangle {
            z: -2
            gradient: Gradient {
                GradientStop {
                    position: 0.048
                    color: "#fcbfbf"
                }

                GradientStop {
                    position: 0.895
                    color: "#ffffff"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }
            anchors.fill: parent
            anchors.margins: -10
            anchors.rightMargin: -9
            anchors.bottomMargin: -8
            anchors.leftMargin: -12
            anchors.topMargin: -12
            border.width: 1
        }
    }
}
