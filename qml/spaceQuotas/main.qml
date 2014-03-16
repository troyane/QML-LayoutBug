import QtQuick 2.1
import QtQuick.Layouts 1.0
import QtQuick.Window 2.1
import QtQuick.Controls 1.0

ApplicationWindow {
    id: app
    title: qsTr("Layout problem")
    width: 640
    height: 480
    visible: true
    RowLayout {
        id: mainlayout
        anchors.fill: parent
        ColumnLayout {
            Rectangle { color: "red"; Layout.fillHeight: true; Layout.fillWidth: true; }
            Rectangle { color: "red"; Layout.fillHeight: true; Layout.fillWidth: true; }
        }
        ColumnLayout {
            Rectangle {
                id: problemRect
                color: "green"
                Layout.fillWidth: true

                // First try: Doesn't work as expected, gives next error:
                //  <Unknown File>: QML QQuickLayoutAttached: Binding loop detected for property "preferredHeight"
                // Layout.preferredHeight: parent.height * 0.7

                // Second try: Doesn't work as expected, gives error:
                //  QML Rectangle: Binding loop detected for property "implicitHeight"
                // implicitHeight: parent.height * 0.7

                implicitHeight: mainlayout.height * 0.7 //  <====
            }
            Rectangle { color: "red"; Layout.fillHeight: true; Layout.fillWidth: true; }
        }
    }
    //    Component.onCompleted: {
    //        mainRect.height = mainRect.height + 10
    //        mainRect.height = mainRect.height - 10
    //    }
}

