public struct SlackSlashCommand: RawRepresentable, Equatable, Codable {
    public var rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public var normalized: String { return rawValue.replacingOccurrences(of: "/", with: "") }
}