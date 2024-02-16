import SwiftUI

@main
struct PhotoLoadingApp: App {
    var remoteURL: URL? = .init(string: "https://picsum.photos/v2/list")

    var body: some Scene {
        WindowGroup {
            AuthorNamesListView()
        }
        .environment(\.remoteURL, remoteURL)
    }
}
