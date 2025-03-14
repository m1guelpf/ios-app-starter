import OSLog

extension Logger {
    static var subsystem: String {
        Bundle.main.bundleIdentifier!
    }

    static let app = Logger(subsystem: subsystem, category: "App")
}
