import SwiftUI

struct PhotoView: View {
    let downloadURL: URL

    var body: some View {
        AsyncImage(url: downloadURL) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            Rectangle()
                .fill(.placeholder)
                .frame(width: 600, height: 300)
        }
    }
}

#Preview {
    let url: URL = .init(string: "https://")!

    return PhotoView(downloadURL: url)
}
