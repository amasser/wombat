import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

import "../."
import "../controls"

SplitView {
    id: root

    readonly property var oc: mc.workspaceCtrl.outputCtrl

    Layout.fillHeight: true

    orientation: Qt.Vertical

    handle: Rectangle {
        implicitHeight: 4
        color: Style.borderColor
    }

    Pane {
        SplitView.preferredHeight: root.height / 2

        MetadataList {
            titleText: qsTr("Header")
            metadata: oc.header
        }

    }

    Pane {
        SplitView.preferredHeight: root.height / 2

        MetadataList {
            titleText: qsTr("Trailer")
            metadata: oc.trailer
        }
    }
}

