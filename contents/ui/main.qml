import QtQuick.Layouts 1.1
import org.kde.kirigami 2.20 as Kirigami
import org.kde.plasma.plasmoid 2.0

PlasmoidItem {
    id: root

    compactRepresentation: CompactRepresentation {}

    fullRepresentation: ColumnLayout {
        Layout.minimumWidth: Kirigami.Units.gridUnit * 28
        Layout.minimumHeight: Kirigami.Units.gridUnit * 39

        Header {
            id: headerRoot
            onGoBackToHomePage: webviewRoot.goBackToHomePage()
            visible: plasmoid.configuration.hideHeader ? headerRoot.getModelsLength() > 1 : true
        }

        WebView {
            id: webviewRoot
        }
    }
}
