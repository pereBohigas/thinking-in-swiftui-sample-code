import SwiftUI

struct RemoteURLKey: EnvironmentKey {
    static var defaultValue: URL?
}

extension EnvironmentValues {
    var remoteURL: URL? {
        get { self[RemoteURLKey.self] }

        set { self[RemoteURLKey.self] = newValue }
    }
}
