import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World哈哈")

    MainForm {
        btn_popMessage1.onPressed: {
            console.info("button pressed");
        }
        btn_popMessage1.onReleased: {
            console.log("button released");
        }
        btn_popMessage1.onClicked: {
            console.log("button clicked, show messagebox");
        }
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }
    }
}
