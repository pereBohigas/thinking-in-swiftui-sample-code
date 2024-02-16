import Foundation

extension Data {
    func decoded<T: Decodable>() -> T {
        guard
            let decodedData: T = try? JSONDecoder().decode(T.self, from: self)
        else {
            preconditionFailure(
                "Error occurred while decoding following data into \(type(of: T.self))\n"
                    + String(describing: String(data: self, encoding: .utf8))
            )
        }

        return decodedData
    }
}
