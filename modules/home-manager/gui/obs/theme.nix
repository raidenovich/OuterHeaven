{
  xdg.configFile."obs-studio/themes/catppuccin-frappe.qss".text = ''
    /******************************************************************************/
    /*   Copyright (C) 2014-2015 by Philippe Groarke <philippe.groarke@gmail.com> */
    /*                                                                            */
    /*                                                                            */
    /*   This program is free software: you can redistribute it and/or modify     */
    /*   it under the terms of the GNU General Public License as published by     */
    /*   the Free Software Foundation, either version 2 of the License, or        */
    /*   (at your option) any later version.                                      */
    /*                                                                            */
    /*   This program is distributed in the hope that it will be useful,          */
    /*   but WITHOUT ANY WARRANTY; without even the implied warranty of           */
    /*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            */
    /*   GNU General Public License for more details.                             */
    /*                                                                            */
    /*                                                                            */
    /*   You should have received a copy of the GNU General Public License        */
    /*   along with this program.  If not, see <http://www.gnu.org/licenses/>.    */
    /******************************************************************************/

    /* Colors */

    OBSThemeMeta {
        dark: 'true';
        author: 'Xurdejl';
    }

    /* Custom theme information.  This will set the application's QPalette, as
     * well as pass to QML via the OBSTheme object.
     * Can also use OBSTheme::disabled, OBSTheme::active, and OBSTheme::inactive.
     * Using it without will set all three (making 'active' a bit redundant) */
    OBSTheme {
        window: rgb(48, 52, 70);
        windowText: rgb(165, 173, 206);

        base: rgb(41, 44, 60);
        alternateBase: rgb(35, 38, 52);

        text: rgb(198, 208, 245);

        button: rgb(65, 69, 89);
        buttonText: rgb(165, 173, 206);

        brightText: rgb(165, 173, 206);

        light: rgb(65, 69, 89);
        mid: rgb(48, 52, 70);
        dark: rgb(41, 44, 60);
        shadow: rgb(35, 38, 52);

        primary: rgb(81, 87, 109);
        primaryLight: rgb(140, 170, 238);
        primaryDark: rgb(35, 38, 52);

        highlight: rgb(140, 170, 238);
        highlightText: rgb(165, 173, 206);

        link: rgb(242, 213, 207);
        linkVisited: rgb(238, 190, 190);
    }

    OBSTheme::disabled {
        windowText: rgb(131, 139, 167);
        text: rgb(131, 139, 167);
        button: rgb(48, 52, 70);

        buttonText: rgb(41, 44, 60);
        brightText: rgb(41, 44, 60);
    }

    OBSTheme::inactive {
        text: rgb(165, 173, 206);

        highlight: rgb(35, 38, 52);
        highlightText: rgb(198, 208, 245);
    }

    /* Default widget style, we override only what is needed. */

    QWidget {
        alternate-background-color: palette(base);
        color: palette(text);
        selection-background-color: rgb(35, 38, 52);
        selection-color: palette(text);
        font-size: 10pt;
        font-family: 'Open Sans', '.AppleSystemUIFont', Helvetica, Arial, 'MS Shell Dlg', sans-serif;
    }

    QWidget:disabled {
        color: rgb(131, 139, 167);
    }

    /* Container windows */

    QDialog,
    QMainWindow,
    QStatusBar,
    QMenuBar,
    QMenu {
        background-color: palette(window);
    }

    /* macOS Separator Fix */

    QMainWindow::separator {
        background: transparent;
        width: 4px;
        height: 4px;
    }

    /* General Widgets */

    QLabel,
    QGroupBox,
    QCheckBox {
        background: transparent;
    }

    QComboBox,
    QCheckBox,
    QPushButton,
    QSpinBox,
    QDoubleSpinBox {
        margin-top: 3px;
        margin-bottom: 3px;
    }

    QListWidget QWidget,
    SceneTree QWidget,
    SourceTree QWidget {
        margin-top: 0;
        margin-bottom: 0;
    }

    * [frameShape="1"], * [frameShape="2"], * [frameShape="3"], * [frameShape="4"], * [frameShape="5"], * [frameShape="6"] {
        border: 1px solid palette(dark);
    }


    /* Misc */

    QAbstractItemView, QStackedWidget#stackedMixerArea QWidget {
        background-color: palette(base);
    }

    QToolTip {
        background-color: palette(base);
        color: palette(text);
        border: none;
    }

    /* Context Menu */

    QMenu::icon {
        left: 4px;
    }

    QMenu::separator {
        background: rgb(115, 121, 148);
        height: 1px;
        margin: 3px 6px;
    }

    QMenu::item:disabled {
        color: rgb(131, 139, 167);
        background: transparent;
    }

    QMenu::right-arrow {
        image: url(./Catppuccin/Dark/expand.svg);
    }

    /* Top Menu Bar Items */
    QMenuBar::item {
    	background-color: transparent;
    }

    QMenuBar::item:selected {
    	background: rgb(81, 87, 109);
    }

    /* Item Lists */
    QListWidget {
        border-radius: 4px;
    }

    QListWidget::item {
        color: palette(text);
    }

    QListWidget,
    QMenu,
    SceneTree,
    SourceTree {
        padding: 3px;
    }

    QListWidget::item,
    SourceTreeItem,
    QMenu::item,
    SceneTree::item {
        padding: 6px;
    }

    QListWidget::item,
    SourceTreeItem,
    QMenu::item,
    SceneTree::item,
    SourceTree::item {
        border-radius: 4px;
        color: palette(text);
    	border: 0px solid transparent;
    }

    QMenu::item:selected,
    QListWidget::item:selected,
    SceneTree::item:selected,
    SourceTree::item:selected {
        background-color: rgb(81, 87, 109);
    }

    QMenu::item:hover,
    QListWidget::item:hover,
    SceneTree::item:hover,
    SourceTree::item:hover,
    QMenu::item:selected:hover,
    QListWidget::item:selected:hover,
    SceneTree::item:selected:hover,
    SourceTree::item:selected:hover {
        background-color: rgb(65, 69, 89);
        color: palette(text);
    }

    QListWidget::item:disabled,
    QListWidget::item:disabled:hover {
        background: transparent;
        color: rgb(131, 139, 167);
    }

    QListWidget QLineEdit,
    SceneTree QLineEdit,
    SourceTree QLineEdit {
        padding:  0px;
        padding-bottom: 2px;
        margin: 0px;
        border: 1px solid #cdd6f4;
        border-radius: 4px;
    }

    QListWidget QLineEdit:focus,
    SceneTree QLineEdit:focus,
    SourceTree QLineEdit:focus {
        border: 1px solid #cdd6f4;
    }

    /* Settings QList */

    OBSBasicSettings QListWidget {
        border-radius: 4px;
        padding: 3px;
    }

    OBSBasicSettings QListWidget::item {
        border-radius: 4px;
        padding: 6px;
    }

    /* Settings properties view */
    OBSBasicSettings #PropertiesContainer {
        background-color: palette(dark);
    }

    /* Dock Widget */
    OBSDock > QWidget {
        background: palette(dark);
        border-bottom-left-radius: 4px;
        border-bottom-right-radius: 4px;
    }

    OBSDock QFrame {
        background: palette(dark);
        border-bottom-left-radius: 4px;
        border-bottom-right-radius: 4px;
    }

    #transitionsContainer QPushButton {
        margin: 0px 0px;
        padding: 4px 6px;
    }

    OBSDock QLabel {
        background: transparent;
    }

    OBSDock QComboBox,
    OBSDock QPushButton {
        margin: 1px 2px;
    }

    QDockWidget {
        font-size: 10.5pt;
        font-weight: bold;

        titlebar-close-icon: url('./Catppuccin/Dark/close.svg');
        titlebar-normal-icon: url('./Catppuccin/Dark/popout.svg');
    }

    QDockWidget::title {
        text-align: left;
        background-color: palette(base);
        padding: 6px 8px;
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
    }

    QDockWidget::close-button, QDockWidget::float-button {
        border: 0px solid transparent;
        border-radius: 4px;
        background: transparent;
        margin-right: 1px;
        opacity: .5;
    }

    QDockWidget::close-button:hover, QDockWidget::float-button:hover {
        background: rgb(81, 87, 109);
        opacity: 1;
    }

    QDockWidget::close-button:pressed, QDockWidget::float-button:pressed {
        padding: 1px -1px -1px 1px;
    }

    QScrollArea {
        border-radius: 4px;
    }

    OBSBasicStatusBar {
        margin-top: 8px;
    }

    /* Group Box */

    QGroupBox {
        background: palette(dark);
        border-radius: 4px;
        padding-top: 32px;
        padding-bottom: 8px;
        font-weight: bold;
        margin-bottom: 6px;
    }

    QGroupBox::title {
        subcontrol-origin: margin;
        left: 8px;
        top: 8px;
    }


    /* ScrollBars */

    ::corner {
        background-color: palette(window);
        border: none;
    }

    QScrollBar:vertical {
        background-color: transparent;
        width: 14px;
        margin: 0px;
    }

    QScrollBar::add-line:vertical, QScrollBar::sub-line:vertical {
        border: none;
        background: none;
        height: 0px;
    }

    QScrollBar::up-arrow:vertical, QScrollBar::down-arrow:vertical, QScrollBar::add-page:vertical, QScrollBar::sub-page:vertical {
        border: none;
        background: none;
        color: none;
    }

    QScrollBar:horizontal {
        background-color: transparent;
        height: 14px;
        margin: 0px;
    }

    QScrollBar::add-line:horizontal, QScrollBar::sub-line:horizontal {
        border: none;
        background: none;
        width: 0px;
    }

    QScrollBar::left-arrow:horizontal, QScrollBar::right-arrow:horizontal, QScrollBar::add-page:horizontal, QScrollBar::sub-page:horizontal {
        border: none;
        background: none;
        color: none;
    }

    QScrollBar::handle {
        background-color: rgb(65, 69, 89);
        margin: 2px;
        border-radius: 2px;
        border: 1px solid rgb(65, 69, 89);
    }

    QScrollBar::handle:hover {
        background-color: rgb(81, 87, 109);
        border-color: rgb(81, 87, 109);
    }

    QScrollBar::handle:pressed {
        background-color: rgb(65, 69, 89);
        border-color: rgb(65, 69, 89);
    }

    QScrollBar::handle:vertical {
        min-height: 20px;
    }

    QScrollBar::handle:horizontal {
        min-width: 20px;
    }

    /* Source Context Bar */

    #contextContainer {
      background-color: palette(dark);
      margin-top: 4px;
      border-radius: 4px;
    }

    #contextContainer QPushButton {
        padding-left: 12px;
        padding-right: 12px;
    }

    QPushButton#sourcePropertiesButton {
        qproperty-icon: url(./Catppuccin/Dark/settings/general.svg);
    }

    QPushButton#sourceFiltersButton {
        qproperty-icon: url(./Catppuccin/Dark/filter.svg);
    }

    /* Scenes and Sources toolbar */

    QToolBar {
        background-color: palette(dark);
        border: none;
        padding: 0px;
        margin: 4px 0px;
    }

    QPushButton[toolButton="true"],
    QToolButton,
    QPushButton[toolButton="true"]:disabled,
    QToolButton:disabled {
        background-color: palette(base);
        padding: 4px 6px;
        margin: 0px 2px;
        border-radius: 4px;
    }

    QPushButton[toolButton="true"]:last-child,
    QToolButton:last-child {
        margin-right: 0px;
    }

    QToolButton:hover {
        background-color: rgb(81, 87, 109);
    }

    QToolButton:pressed {
        background-color: rgb(35, 38, 52);
    }

    * [themeID="addIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/plus.svg);
    }

    * [themeID="removeIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/trash.svg);
    }

    * [themeID="clearIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/entry-clear.svg);
    }

    * [themeID="propertiesIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/settings/general.svg);
    }

    * [themeID="configIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/settings/general.svg);
    }

    * [themeID="menuIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/dots-vert.svg);
    }

    * [themeID="refreshIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/refresh.svg);
    }

    * [themeID="cogsIcon"] {
        qproperty-icon: url(./Catppuccin/Dark/cogs.svg);
    }

    #sourceInteractButton {
        qproperty-icon: url(./Catppuccin/Dark/interact.svg);
    }

    * [themeID="upArrowIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/up.svg);
    }

    * [themeID="downArrowIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/down.svg);
    }

    * [themeID="pauseIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/media-pause.svg);
    }

    * [themeID="filtersIcon"] {
        qproperty-icon: url(./Catppuccin/Dark/filter.svg);
    }

    QToolBarExtension {
        background: palette(button);
        min-width: 12px;
        max-width: 12px;
        padding: 4px 0px;
        margin-left: 0px;

        qproperty-icon: url(./Catppuccin/Dark/dots-vert.svg);
    }


    /* Tab Widget */

    QTabWidget::pane { /* The tab widget frame */
        border-top: 4px solid palette(base);
    }

    QTabWidget::tab-bar {
        alignment: left;
    }

    QTabBar QToolButton {
        background: rgb(65, 69, 89);
        border: none;
    }

    QTabBar::tab:top {
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
    }

    QTabBar::tab:bottom {
        border-bottom-left-radius: 4px;
        border-bottom-right-radius: 4px;
    }

    QTabBar::tab {
        background: palette(dark);
        color: palette(text);
        border: none;
        padding: 8px 12px;
        min-width: 50px;
        margin: 1px 2px;
    }

    QTabBar::tab:pressed {
        background: rgb(35, 38, 52);
    }

    QTabBar::tab:hover {
        background: rgb(81, 87, 109);
        color: palette(text);
    }

    QTabBar::tab:selected {
        background: rgb(65, 69, 89);
        color: palette(text);
    }

    QTabBar::tab:top:selected {
        border-bottom: 2px solid rgb(198, 208, 245);
    }

    QTabBar::tab:bottom:selected {
        border-top: 2px solid rgb(198, 208, 245);
    }

    QTabBar QToolButton {
        background: palette(base);
        min-width: 16px;
        padding: 0px;
    }

    /* ComboBox */

    QComboBox,
    QDateTimeEdit {
        background-color: rgb(65, 69, 89);
        border-style: solid;
        border: 1px;
        border-radius: 4px;
        border-color: rgb(65, 69, 89);
        padding: 4px;
        padding-left: 10px;
    }

    QComboBox:hover,
    QComboBox:selected,
    QDateTimeEdit:hover,
    QDateTimeEdit:selected {
        background-color: rgb(81, 87, 109);
    }

    QComboBox::drop-down,
    QDateTimeEdit::drop-down {
        border:none;
        border-left: 1px solid rgb(115, 121, 148);
        width: 20px;
    }

    QComboBox::down-arrow,
    QDateTimeEdit::down-arrow {
        qproperty-alignment: AlignTop;
        image: url(./Catppuccin/Dark/updown.svg);
        width: 100%;
    }

    QComboBox:on,
    QDateTimeEdit:on {
        background-color: rgb(81, 87, 109);
    }

    QComboBox:editable:hover {

    }

    QComboBox::drop-down:editable,
    QDateTimeEdit::drop-down:editable {
        border-top-right-radius: 4px;
        border-bottom-right-radius: 4px;
    }

    QComboBox::down-arrow:editable,
    QDateTimeEdit::down-arrow:editable {
        qproperty-alignment: AlignTop;
        image: url(./Catppuccin/Dark/down.svg);
        width: 8%;
    }

    /* Textedits etc */

    QLineEdit, QTextEdit, QPlainTextEdit {
        background-color: rgb(65, 69, 89);
        border: none;
        border-radius: 4px;
        padding: 5px 2px 5px 7px;
        border: 2px solid transparent;
    }

    QLineEdit:hover,
    QTextEdit:hover,
    QPlainTextEdit:hover {
        border: 2px solid rgb(99,102,111);
    }

    QLineEdit:focus,
    QTextEdit:focus,
    QPlainTextEdit:focus {
        background-color: palette(mid);
        border: 2px solid rgb(81, 87, 109);
    }

    /* Spinbox and doubleSpinbox */

    QSpinBox,
    QDoubleSpinBox {
        background-color: rgb(65, 69, 89);
        border: 2px solid rgb(65, 69, 89);
        border-radius: 4px;
        margin-right: 3px;
        padding: 3px 0px 4px 5px;
    }

    QSpinBox:hover,
    QDoubleSpinBox:hover {
        border: 2px solid rgb(98, 104, 128);
    }

    QSpinBox:focus,
    QDoubleSpinBox:focus {
        background-color: palette(mid);
        border: 2px solid rgb(81, 87, 109);
    }

    QSpinBox::up-button, QDoubleSpinBox::up-button {
        subcontrol-origin: padding;
        subcontrol-position: top right; /* position at the top right corner */
        right: 2px;
        border-radius: 3px;
        border-width: 0;
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0;
        border-bottom-width: 0;
    }

    QSpinBox::down-button, QDoubleSpinBox::down-button {
        subcontrol-origin: padding;
        subcontrol-position: bottom right; /* position at the top right corner */
        right: 2px;
        border-radius: 3px;
        border-width: 0;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
        border-top-width: 0;
    }

    QSpinBox::up-button:hover, QSpinBox::down-button:hover, QDoubleSpinBox::up-button:hover, QDoubleSpinBox::down-button:hover {
        background-color: rgb(81, 87, 109);
    }

    QSpinBox::up-button:pressed, QSpinBox::down-button:pressed, QDoubleSpinBox::up-button:pressed, QDoubleSpinBox::down-button:pressed {
        background-color: rgb(35, 38, 52);
    }

    QSpinBox::up-button:disabled, QSpinBox::up-button:off, QSpinBox::down-button:disabled, QSpinBox::down-button:off {
        background-color: rgb(35, 38, 52);
    }

    QDoubleSpinBox::up-button:disabled, QDoubleSpinBox::up-button:off, QDoubleSpinBox::down-button:disabled, QDoubleSpinBox::down-button:off {
        background-color: rgb(35, 38, 52);
    }

    QSpinBox::up-arrow, QDoubleSpinBox::up-arrow {
        image: url(./Catppuccin/Dark/up.svg);
        width: 100%;
        margin: 2px;
    }

    QSpinBox::down-arrow, QDoubleSpinBox::down-arrow {
        image: url(./Catppuccin/Dark/down.svg);
        width: 100%;
        padding: 2px;
    }


    /* Controls Dock */
    #controlsDock QPushButton {
        margin: 1px;
    }

    #streamButton,
    #recordButton,
    QPushButton[themeID="replayBufferButton"],
    #broadcastButton {
        padding: 10px;
    }

    /* Primary Control Button Checked Coloring */
    #streamButton:!hover:!pressed:checked,
    #recordButton:!hover:!pressed:checked,
    QPushButton[themeID="replayBufferButton"]:!hover:!pressed:checked,
    QPushButton[themeID="vcamButton"]:!hover:!pressed:checked,
    #modeSwitch:!hover:!pressed:checked,
    #broadcastButton:!hover:!pressed:checked {
        background: rgb(140, 170, 238);
        color: rgb(35, 38, 52);
    }

    /* Primary Control Button Hover Coloring */
    #streamButton:hover:!pressed:checked,
    #recordButton:hover:!pressed:checked,
    QPushButton[themeID="replayBufferButton"]:!pressed:checked,
    QPushButton[themeID="vcamButton"]:!pressed:checked,
    #modeSwitch:hover:!pressed:checked,
    #broadcastButton:hover:!pressed:checked {
        background: rgb(186, 187, 241);
        color: rgb(35, 38, 52);
    }


    /* Buttons */

    QPushButton {
        color: palette(text);
        background-color: palette(button);
        min-height: 18px;
        border: none;
        border-radius: 4px;
        padding: 6px 16px;
    }

    QPushButton::flat {
        background-color: rgb(65, 69, 89);
    }

    QPushButton:checked {
        background-color: rgb(81, 87, 109);
    }

    QPushButton:hover {
        background-color: rgb(81, 87, 109);
    }

    QPushButton:pressed {
        background-color: rgb(35, 38, 52);
    }

    QPushButton:disabled, QToolButton:disabled {
        background-color: rgb(35, 38, 52);
    }

    QPushButton::menu-indicator {
        image: url(./Catppuccin/Dark/down.svg);
        subcontrol-position: right;
        subcontrol-origin: padding;
        width: 25px;
    }

    /* Sliders */

    QSlider::groove:horizontal {
        background-color: rgb(65, 69, 89);
        height: 4px;
        border: none;
        border-radius: 2px;
    }

    QSlider::handle:horizontal {
        background-color: palette(text);
        border: 1px solid palette(mid);
        border-radius: 3px;
        height: 10px;
        width: 18px;
        margin: -3px 0; /* handle is placed by default on the contents rect of the groove. Expand outside the groove */
    }

    QSlider::handle:horizontal:pressed {
        background-color: palette(text);
    }

    QSlider::sub-page:horizontal {
        background-color: palette(highlight);
        border-radius: 2px;
    }

    QSlider::sub-page:horizontal:disabled {
        background-color: palette(window);
        border-radius: 2px;
    }

    QSlider::groove:vertical {
        background-color: rgb(65, 69, 89);
        width: 4px;
        border: none;
        border-radius: 2px;
    }

    QSlider::handle:vertical {
        background-color: palette(text);
        border: 1px solid palette(mid);
        border-radius: 3px;
        width: 10px;
        height: 18px;
        margin: 0 -3px; /* handle is placed by default on the contents rect of the groove. Expand outside the groove */
    }

    QSlider::handle:vertical:pressed {
        background-color: palette(text);
    }

    QSlider::add-page:vertical {
        background-color: palette(highlight);
        border-radius: 2px;
    }

    QSlider::add-page:vertical:disabled {
        background-color: palette(window);
        border-radius: 2px;
    }

    QSlider::handle:hover {
        background-color: rgb(186,194,222);
    }

    QSlider::handle:disabled {
        background-color: rgb(131, 139, 167);
    }

    /* Volume Control */

    #stackedMixerArea QPushButton {
        min-width: 16px;
        padding: 4px 8px;
    }

    /* This is an incredibly cursed but necessary fix */
    #stackedMixerArea QPushButton:!hover {
        background-color: palette(base);
    }

    #stackedMixerArea QPushButton:hover {
        background-color: rgb(81, 87, 109);
    }

    #stackedMixerArea QPushButton:pressed {
        background-color: rgb(35, 38, 52);
    }

    VolumeMeter {
    	qproperty-backgroundNominalColor: rgb(166, 209, 137);
    	qproperty-backgroundWarningColor: rgb(239, 159, 118);
    	qproperty-backgroundErrorColor: rgb(231, 130, 132);
    	qproperty-foregroundNominalColor: rgb(119, 185, 75);
    	qproperty-foregroundWarningColor: rgb(230, 103, 38);
    	qproperty-foregroundErrorColor: rgb(216, 54, 57);
    	qproperty-magnitudeColor: rgb(49, 50, 8);
    	qproperty-majorTickColor: rgb(198, 208, 245);
    	qproperty-minorTickColor: rgb(115, 121, 148);
    	qproperty-peakDecayRate: 23.4;
    }

    /* Status Bar */

    QStatusBar::item {
        border: none;
    }

    /* Table View */

    QTableView {
        background: palette(base);
        gridline-color: palette(light);
    }

    QTableView::item {
        margin: 0px;
        padding: 0px;
    }

    QTableView QLineEdit {
        background: palette(mid);
        padding: 0;
        margin: 0;
    }

    QTableView QPushButton,
    QTableView QToolButton {
        margin: 1px 1px 2px;
    }

    QHeaderView::section {
        background-color: rgb(65, 69, 89);
        color: palette(text);
        border: none;
        border-left: 1px solid palette(window);
        border-right: 1px solid palette(window);
        padding: 2px 4px;
        margin-bottom: 2px;
    }

    MuteCheckBox::indicator:checked {
        image: url(./Catppuccin/Dark/mute.svg);
    }

    MuteCheckBox::indicator:unchecked {
        image: url(./Catppuccin/Dark/settings/audio.svg);
    }

    OBSHotkeyLabel[hotkeyPairHover=true] {
        color: rgb(140, 170, 238);
    }

    /* Label warning/error */

    QLabel#warningLabel {
        color: rgb(239, 159, 118);
        font-weight: bold;
    }

    QLabel#errorLabel {
        color: rgb(234, 153, 156);
        font-weight: bold;
    }

    * [themeID="warning"] {
        color: rgb(239, 159, 118);
        font-weight: bold;
    }

    * [themeID="error"] {
        color: rgb(234, 153, 156);
        font-weight: bold;
    }

    * [themeID="good"] {
        color: rgb(166, 209, 137);
        font-weight: bold;
    }

    /* About dialog */

    * [themeID="aboutName"] {
        font-size: 26pt;
        font-weight: bold;
    }

    * [themeID="aboutVersion"] {
        font-size: 12pt;
        margin-bottom: 20px;
    }

    * [themeID="aboutInfo"] {
        margin-bottom: 20px;
    }

    * [themeID="aboutHLayout"] {
        background-color: palette(base);
    }

    /* Canvas / Preview background color */

    OBSQTDisplay {
        qproperty-displayBackgroundColor: rgb(35, 38, 52);
        border-radius: 10px;
    }

    /* Filters Window */

    OBSBasicFilters QListWidget {
        border-radius: 4px;
        padding: 3px;
    }

    OBSBasicFilters QListWidget::item {
        border-radius: 4px;
        padding: 6px;
    }

    OBSBasicFilters #widget,
    OBSBasicFilters #widget_2 {
        margin: 0px;
        padding: 0px;
        padding-bottom: 4px;
    }

    OBSBasicFilters #widget QPushButton,
    OBSBasicFilters #widget_2 QPushButton {
        min-width: 16px;
        padding: 4px 8px;
        margin-top: 0px;
    }

    /* Preview/Program labels */

    * [themeID="previewProgramLabels"] {
        font-size: 14pt;
        font-weight: bold;
        color: rgb(165, 173, 206);
        margin-bottom: 4px;
    }

    /* Settings Icons */

    OBSBasicSettings {
        qproperty-generalIcon: url(./Catppuccin/Dark/settings/general.svg);
        qproperty-streamIcon: url(./Catppuccin/Dark/settings/stream.svg);
        qproperty-outputIcon: url(./Catppuccin/Dark/settings/output.svg);
        qproperty-audioIcon: url(./Catppuccin/Dark/settings/audio.svg);
        qproperty-videoIcon: url(./Catppuccin/Dark/settings/video.svg);
        qproperty-hotkeysIcon: url(./Catppuccin/Dark/settings/hotkeys.svg);
        qproperty-accessibilityIcon: url(./Catppuccin/Dark/settings/accessibility.svg);
        qproperty-advancedIcon: url(./Catppuccin/Dark/settings/advanced.svg);
    }

    /* Checkboxes */
    QCheckBox {

    }

    QCheckBox::indicator,
    QGroupBox::indicator {
    	width: 18px;
    	height: 18px;
    }

    QGroupBox::indicator {
    	margin-left: 2px;
    }

    QCheckBox::indicator:unchecked,
    QGroupBox::indicator:unchecked {
    	image: url(./Catppuccin/Dark/checkbox_unchecked.svg);
    }

    QCheckBox::indicator:unchecked:hover,
    QGroupBox::indicator:unchecked:hover {
    	border: none;
    	image: url(./Catppuccin/Dark/checkbox_unchecked_focus.svg);
    }

    QCheckBox::indicator:checked,
    QGroupBox::indicator:checked {
    	image: url(./Catppuccin/Dark/checkbox_checked.svg);
    }

    QCheckBox::indicator:checked:hover,
    QGroupBox::indicator:checked:hover {
    	border: none;
    	image: url(./Catppuccin/Dark/checkbox_checked_focus.svg);
    }

    QCheckBox::indicator:checked:disabled,
    QGroupBox::indicator:checked:disabled {
    	image: url(./Catppuccin/Dark/checkbox_checked_disabled.svg);
    }

    QCheckBox::indicator:unchecked:disabled,
    QGroupBox::indicator:unchecked:disabled {
    	image: url(./Catppuccin/Dark/checkbox_unchecked_disabled.svg);
    }

    /* Locked CheckBox */

    LockedCheckBox {
        outline: none;
        background: transparent;
    }

    LockedCheckBox::indicator {
        width: 16px;
        height: 16px;
    }

    LockedCheckBox::indicator:checked,
    LockedCheckBox::indicator:checked:hover {
        image: url(./Catppuccin/Dark/locked.svg);
    }

    LockedCheckBox::indicator:unchecked,
    LockedCheckBox::indicator:unchecked:hover {
        image: url(:res/images/unlocked.svg);
    }

    /* Visibility CheckBox */

    VisibilityCheckBox {
        outline: none;
        background: transparent;
    }

    VisibilityCheckBox::indicator {
        width: 16px;
        height: 16px;
    }

    VisibilityCheckBox::indicator:checked,
    VisibilityCheckBox::indicator:checked:hover {
        image: url(./Catppuccin/Dark/visible.svg);
    }

    VisibilityCheckBox::indicator:unchecked,
    VisibilityCheckBox::indicator:unchecked:hover {
        image: url(:res/images/invisible.svg);
    }

    * [themeID="revertIcon"] {
        qproperty-icon: url(./Catppuccin/Dark/revert.svg);
    }

    QPushButton#extraPanelDelete {
        background-color: palette(mid);
        margin: 0;
        padding: 0;
    }

    QPushButton#extraPanelDelete:hover {
        background-color: rgb(81, 87, 109);
    }

    QPushButton#extraPanelDelete:pressed {
        background-color: palette(dark);
    }

    /* Mute CheckBox */

    MuteCheckBox {
    	outline: none;
    }

    MuteCheckBox::indicator {
        width: 16px;
        height: 16px;
    }

    MuteCheckBox::indicator:checked {
    	image: url(./Catppuccin/Dark/mute.svg);
    }

    MuteCheckBox::indicator:unchecked {
    	image: url(./Catppuccin/Dark/settings/audio.svg);
    }

    MuteCheckBox::indicator:unchecked:hover {
    	image: url(./Catppuccin/Dark/settings/audio.svg);
    }

    MuteCheckBox::indicator:unchecked:focus {
    	image: url(./Catppuccin/Dark/settings/audio.svg);
    }

    MuteCheckBox::indicator:checked:hover {
    	image: url(./Catppuccin/Dark/mute.svg);
    }

    MuteCheckBox::indicator:checked:focus {
    	image: url(./Catppuccin/Dark/mute.svg);
    }

    MuteCheckBox::indicator:checked:disabled {
    	image: url(./Catppuccin/Dark/mute.svg);
    }

    MuteCheckBox::indicator:unchecked:disabled {
    	image: url(./Catppuccin/Dark/settings/audio.svg);
    }

    #hotkeyFilterReset {
        margin-top: 0px;
    }

    OBSHotkeyWidget {
        padding: 8px 0px;
        margin: 2px 0px;
    }

    OBSHotkeyLabel {
        padding: 4px 0px;
    }

    OBSHotkeyLabel[hotkeyPairHover=true] {
    	color: rgb(140, 170, 238);
    }

    OBSHotkeyWidget QPushButton {
        min-width: 16px;
        padding: 4px 4px;
        margin-top: 0px;
        margin-left: 4px;
    }


    /* Sources List Group Collapse Checkbox */

    SourceTreeSubItemCheckBox {
        background: transparent;
        outline: none;
        padding: 0px;
    }

    SourceTreeSubItemCheckBox::indicator {
        width: 12px;
        height: 12px;
    }

    SourceTreeSubItemCheckBox::indicator:checked,
    SourceTreeSubItemCheckBox::indicator:checked:hover {
        image: url(./Catppuccin/Dark/expand.svg);
    }

    SourceTreeSubItemCheckBox::indicator:unchecked,
    SourceTreeSubItemCheckBox::indicator:unchecked:hover {
        image: url(./Catppuccin/Dark/collapse.svg);
    }

    /* Source Icons */

    OBSBasic {
        qproperty-imageIcon: url(./Catppuccin/Dark/sources/image.svg);
        qproperty-colorIcon: url(./Catppuccin/Dark/sources/brush.svg);
        qproperty-slideshowIcon: url(./Catppuccin/Dark/sources/slideshow.svg);
        qproperty-audioInputIcon: url(./Catppuccin/Dark/sources/microphone.svg);
        qproperty-audioOutputIcon: url(./Catppuccin/Dark/settings/audio.svg);
        qproperty-desktopCapIcon: url(./Catppuccin/Dark/settings/video.svg);
        qproperty-windowCapIcon: url(./Catppuccin/Dark/sources/window.svg);
        qproperty-gameCapIcon: url(./Catppuccin/Dark/sources/gamepad.svg);
        qproperty-cameraIcon: url(./Catppuccin/Dark/sources/camera.svg);
        qproperty-textIcon: url(./Catppuccin/Dark/sources/text.svg);
        qproperty-mediaIcon: url(./Catppuccin/Dark/sources/media.svg);
        qproperty-browserIcon: url(./Catppuccin/Dark/sources/globe.svg);
        qproperty-groupIcon: url(./Catppuccin/Dark/sources/group.svg);
        qproperty-sceneIcon: url(./Catppuccin/Dark/sources/scene.svg);
        qproperty-defaultIcon: url(./Catppuccin/Dark/sources/default.svg);
        qproperty-audioProcessOutputIcon: url(./Catppuccin/Dark/sources/windowaudio.svg);
    }

    /* Scene Tree Grid Mode */

    SceneTree {
        qproperty-gridItemWidth: 154;
        qproperty-gridItemHeight: 31;
    }

    *[gridMode="true"] SceneTree::item {
        color: palette(text);
        background-color: palette(button);
        border-radius: 4px;
        margin: 2px;
    }

    *[gridMode="true"] SceneTree::item:selected {
        background-color: rgb(81, 87, 109);
    }

    *[gridMode="true"] SceneTree::item:checked {
        background-color: rgb(81, 87, 109);
    }

    *[gridMode="true"] SceneTree::item:hover {
        background-color: rgb(81, 87, 109);
    }

    /* Save icon */

    * [themeID="replayIconSmall"] {
        qproperty-icon: url(./Catppuccin/Dark/save.svg);
    }

    /* Studio Mode T-Bar */

    QSlider[themeID="tBarSlider"] {
    	height: 24px;
    }

    QSlider::groove:horizontal[themeID="tBarSlider"] {
    	border: 1px solid #45475a;
    	height: 5px;
    	background: palette(dark);
    }

    QSlider::sub-page:horizontal[themeID="tBarSlider"] {
    	background: palette(dark);
    	border: 1px solid #45475a;
    }

    QSlider::handle:horizontal[themeID="tBarSlider"] {
    	background-color: #bac2de;
    	width: 12px;
    	height: 24px;
    	margin: -24px 0px;
    }

    /* Media icons */

    * [themeID="playIcon"] {
        qproperty-icon: url(./Catppuccin/Dark/media/media_play.svg);
    }

    * [themeID="pauseIcon"] {
        qproperty-icon: url(./Catppuccin/Dark/media/media_pause.svg);
    }

    * [themeID="restartIcon"] {
        qproperty-icon: url(./Catppuccin/Dark/media/media_restart.svg);
    }

    * [themeID="stopIcon"] {
        qproperty-icon: url(./Catppuccin/Dark/media/media_stop.svg);
    }

    * [themeID="nextIcon"] {
        qproperty-icon: url(./Catppuccin/Dark/media/media_next.svg);
    }

    * [themeID="previousIcon"] {
        qproperty-icon: url(./Catppuccin/Dark/media/media_previous.svg);
    }

    /* YouTube Integration */
    OBSYoutubeActions {
        qproperty-thumbPlaceholder: url(./Catppuccin/Dark/sources/image.svg);
    }

    #ytEventList QLabel {
        color: palette(text);
        background-color: rgb(65, 69, 89);
        border: none;
        border-radius: 4px;
        padding: 4px 20px;
    }

    #ytEventList QLabel:hover {
        background-color: rgb(81, 87, 109);
    }

    #ytEventList QLabel[isSelectedEvent=true] {
        background-color: rgb(81, 87, 109);
        border: none;
    }

    #ytEventList QLabel[isSelectedEvent=true]:hover {
        background-color: rgb(140, 170, 238);
        color: palette(text);
    }

    /* Calendar Widget */
    QDateTimeEdit::down-arrow {
        qproperty-alignment: AlignTop;
        image: url(./Catppuccin/Dark/down.svg);
        width: 100%;
    }

    QDateTimeEdit:on {
        background-color: palette(mid);
    }

    /* Calendar Top Bar */
    QCalendarWidget QWidget#qt_calendar_navigationbar {
        background-color: palette(base);
        padding: 4px 8px;
    }

    /* Calendar Top Bar Buttons */
    QCalendarWidget QToolButton {
        background-color: palette(base);
        padding: 2px 16px;
        border-radius: 4px;
        margin: 2px;
    }

    #qt_calendar_monthbutton::menu-indicator {
        image: url(./Catppuccin/Dark/down.svg);
        subcontrol-position: right;
        padding-top: 2px;
        padding-right: 6px;
        height: 10px;
        width: 10px;
    }

    QCalendarWidget #qt_calendar_prevmonth {
        padding: 2px;
        qproperty-icon: url(./Catppuccin/Dark/left.svg);
        icon-size: 16px, 16px;
    }

    QCalendarWidget #qt_calendar_nextmonth {
        padding: 2px;
        qproperty-icon: url(./Catppuccin/Dark/right.svg);
        icon-size: 16px, 16px;
    }

    QCalendarWidget QToolButton:hover {
        background-color: rgb(81, 87, 109);
        border-radius: 4px;
    }

    QCalendarWidget QToolButton:pressed {
        background-color: rgb(35, 38, 52);
    }

    /* Month Dropdown Menu */
    QCalendarWidget QMenu {

    }
    /* Year spinbox */
    QCalendarWidget QSpinBox {
        background-color: rgb(35, 38, 52);
        border: none;
        border-radius: 4px;
        margin: 0px 3px 0px 0px;
        padding: 4px 16px;
    }

    QCalendarWidget QSpinBox::up-button { subcontrol-origin: border; subcontrol-position: top right; width: 16px; }
    QCalendarWidget QSpinBox::down-button {subcontrol-origin: border; subcontrol-position: bottom right; width: 16px;}
    QCalendarWidget QSpinBox::up-arrow { width: 10px; height: 10px; }
    QCalendarWidget QSpinBox::down-arrow { width: 10px; height: 10px; }

    /* Days of the Week Bar */
    QCalendarWidget QWidget { alternate-background-color: palette(mid); }

    QCalendarWidget QAbstractItemView:enabled {
        background-color: palette(base);
        color: palette(text);
    }

    QCalendarWidget QAbstractItemView:disabled {
        color: rgb(122,121,122);
    }

    /* VirtualCam Plugin Fixes */

    #VirtualProperties QWidget {
        margin-top: 0;
        margin-bottom: 0;
    }

    /* Disable icons on QDialogButtonBox */
    QDialogButtonBox {
        dialogbuttonbox-buttons-have-icons: 0;
    }

    /* Stats dialog */
    OBSBasicStats {
        background: palette(dark);
    }

    /* Advanced audio dialog */
    OBSBasicAdvAudio #scrollAreaWidgetContents {
        background: palette(dark);
    }

  '';
}
