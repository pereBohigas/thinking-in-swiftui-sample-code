import Foundation
import Observation
import OSLog

@Observable
final class Remote<T: Decodable> {
    private let url: URL

    init(url: URL) {
        self.url = url
    }

    func load() async -> T? {
        guard
            let (data, _) = try? await URLSession.shared.data(from: url)
        else {
            Logger.dataFetching.error("Error while fetching data")

            return nil
        }

        return data.decoded()
    }
}
