import Foundation

struct Photo {
    let id: String
    let author: String
    let width: Int
    let height: Int
    let url: URL
    let downloadURL: URL
}

extension Photo: Decodable {
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case author = "author"
        case width = "width"
        case height = "height"
        case url = "url"
        case downloadURL = "download_url"
    }
}

extension Photo: Identifiable {}
