import ChameleonKit

public struct FixtureKey: RawRepresentable, Hashable {
    public var rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}

extension FixtureKey {
    public static var text: FixtureKey { .init(rawValue: #function) }
    public static var richTextElements: FixtureKey { .init(rawValue: #function) }
    public static var userId: FixtureKey { .init(rawValue: #function) }
    public static var event: FixtureKey { .init(rawValue: #function) }
    public static var token: FixtureKey { .init(rawValue: #function) }
}
