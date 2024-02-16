import OSLog

extension Logger {
    private static var subsystem = Bundle.main.bundleIdentifier!

    static let dataFetching = Logger(subsystem: subsystem, category: "dataFetching")
}
