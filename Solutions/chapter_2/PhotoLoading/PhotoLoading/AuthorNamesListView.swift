import SwiftUI

struct AuthorNamesListView: View {
    @Environment(\.remoteURL) var remoteURL: URL?

    @State var photos: [Photo]?

    var body: some View {
        NavigationView {
            if let photos {
                ScrollView {
                    ForEach(photos) { photo in
                        NavigationLink {
                            PhotoView(
                                downloadURL: photo.downloadURL,
                                size: .init(width: photo.width, height: photo.height)
                            )
                        } label: {
                            Label(photo.author, systemImage: "person.crop.circle")
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                .padding()
            } else {
                ProgressView("Loading")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .task {
                        guard let remoteURL else { return }

                        let remote: Remote<[Photo]> = .init(url: remoteURL)

                        guard let photos: [Photo] = await remote.load() else {
                            self.photos = []
                            return
                        }

                        self.photos = photos
                    }
            }
        }
    }
}

#Preview {
    AuthorNamesListView()
}
