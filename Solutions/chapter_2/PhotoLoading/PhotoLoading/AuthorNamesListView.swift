import SwiftUI

struct AuthorNamesListView: View {
    @State var photos: [Photo]?

    var body: some View {
        if let photos {
            ScrollView {
                ForEach(photos) { photo in
                    Label(photo.author, systemImage: "person.crop.circle")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding()
        } else {
            ProgressView("Loading")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    AuthorNamesListView()
}
