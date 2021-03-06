/*
 * This file is part of Fluid.
 *
 * Copyright (C) 2017 Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>
 *
 * $BEGIN_LICENSE:MPL2$
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * $END_LICENSE$
 */

import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls.Universal 2.0
import "controls"
import "Pages/Compound"

Tab {
    title: qsTr("Compound")

    Pane {
        id: listPane
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }
        width: 200
        padding: 0
        z: 2

        Material.background: "white"
        Material.elevation: 1

        Universal.background: Universal.accent

        ListView {
            id: listView
            anchors.fill: parent
            currentIndex: 0
            model: ListModel {
                ListElement { title: qsTr("ListItem"); source: "qrc:/qml/Pages/Compound/ListItemPage.qml" }
                ListElement { title: qsTr("Card"); source: "qrc:/qml/Pages/Compound/CardPage.qml" }
                ListElement { title: qsTr("InfoBar"); source: "qrc:/qml/Pages/Compound/InfoBarPage.qml" }
                ListElement { title: qsTr("Dialogs"); source: "qrc:/qml/Pages/Compound/DialogsPage.qml" }
                ListElement { title: qsTr("Overlay"); source: "qrc:/qml/Pages/Compound/OverlayPage.qml" }
            }
            header: Subheader {
                text: qsTr("Demos")
            }
            delegate: ListItem {
                text: model.title
                highlighted: ListView.isCurrentItem
                onClicked: {
                    listView.currentIndex = index
                    stackView.push(model.source)
                }
            }

            ScrollBar.vertical: ScrollBar {}
        }
    }

    StackView {
        id: stackView
        anchors {
            left: listPane.right
            top: parent.top
            right: parent.right
            bottom: parent.bottom
        }
        initialItem: ListItemPage {}
    }
}
