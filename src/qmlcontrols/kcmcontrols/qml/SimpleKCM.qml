/*
   Copyright (c) 2017 Marco Martin <mart@kde.org>

   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Library General Public
   License version 2 as published by the Free Software Foundation.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Library General Public License for more details.

   You should have received a copy of the GNU Library General Public License
   along with this library; see the file COPYING.LIB.  If not, write to
   the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.
*/

import QtQuick 2.7
import org.kde.kirigami 2.2 as Kirigami
import org.kde.kcm 1.1 as KCM

/**
 * This component is intended to be used as root item for
 * KControl modules with arbitrary content, as per the User interface guidelines,
 * usually a Kirigami.FormLayout as its main component.
 * header and footer properties can be used.
 * @code
 * import org.kde.kcm 1.1 as KCM
 * import org.kde.kirigami 2.3 as Kirigami
 * KCM.SimpleKCM {
 *     Kirigami.FormLayout {
 *        TextField {
 *           Kirigami.FormData.label: "Label:"
 *        }
 *        TextField {
 *           Kirigami.FormData.label: "Label:"
 *        }
 *     }
 *     footer: Item {...}
 * }
 * @endcode
 * @inherits org.kde.kirigami.ScrollablePage
 */
Kirigami.ScrollablePage {
    id: root

    title: kcm.name
    implicitWidth: Kirigami.Units.gridUnit * 20
    implicitHeight: Math.min(flickable.contentHeight, Kirigami.Units.gridUnit * 20)

    children: [
        Kirigami.Separator {
            z: 999
            anchors {
                left: parent.left
                right: parent.right
                top: parent.top
                topMargin: root.header ? root.header.height : 0
            }
            visible: !root.flickable.atYBeginning
        },
        Kirigami.Separator {
            z: 999
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
                bottomMargin: root.footer ? root.footer.height : 0
            }
            visible: !root.flickable.atYEnd
        }
    ]
}
