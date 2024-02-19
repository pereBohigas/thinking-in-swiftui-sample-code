import SwiftUI

struct PhotoView: View {
    let downloadURL: URL
    let size: CGSize

    var body: some View {
        AsyncImage(url: downloadURL) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            Rectangle()
                .fill(.placeholder)
                .aspectRatio(size, contentMode: .fit)
        }
    }
}

#Preview {
    let size: CGSize = .init(width: 600, height: 300)
    let url: URL = .init(string: "https://")!

    return PhotoView(downloadURL: url, size: size)
}
