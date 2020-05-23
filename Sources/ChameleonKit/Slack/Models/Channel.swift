public struct Channel: Codable, Equatable {
    public var id: Identifier<Channel>
}

extension Channel {
    public struct Kind: Codable, Equatable, RawRepresentable {
        public static var im: Kind { return .init(rawValue: #function) }

        public var rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}