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
import QtQuick.Templates 2.0 as T

/*!
   \qmltype DialogLabel
   \inqmlmodule Fluid.Controls
   \ingroup fluidcontrols

   \brief Text label with standard font and styling suitable to message box text.

   \code
   import QtQuick 2.0
   import Fluid.Controls 1.0 as FluidControls

   FluidControls.DialogLabel {
       text: "Text to display"
   }
   \endcode
*/
T.Label {
   font.pixelSize: 18
   color: "#909090"
   linkColor: "#45a7d7"
}
