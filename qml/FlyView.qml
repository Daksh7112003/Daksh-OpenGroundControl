import QtQuick
import QtQuick.Controls

Rectangle {
    id: flyView
    color: "#1a1a1a"
    
    Column {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 10
        
        Text {
            color: "#ffffff"
            font.pixelSize: 28
            font.bold: true
            text: "Fly View"
        }
        
        Text {
            color: "#aaaaaa"
            font.pixelSize: 14
            text: "Flight telemetry and control interface"
        }
    }
}
