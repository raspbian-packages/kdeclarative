/*
    SPDX-FileCopyrightText: 2015 Kai Uwe Broulik <kde@privat.broulik.de>

    SPDX-License-Identifier: LGPL-2.1-or-later
*/

#ifndef KWINDOWSYSTEMPLUGIN_H
#define KWINDOWSYSTEMPLUGIN_H

#include <QQmlExtensionPlugin>

class KWindowSystemPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri) override;
};

#endif // KWINDOWSYSTEMPLUGIN_H
