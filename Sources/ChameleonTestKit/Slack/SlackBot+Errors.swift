public class Errors: Equatable, CustomStringConvertible {
    private var errors: [Error] = []

    public var count: Int { errors.count }
    public func append(_ error: Error) { errors.append(error) }

    public var first: Error? { errors.first }
    public subscript(index: Int) -> Error { errors[index] }
    public var last: Error? { errors.last }

    public static func ==(lhs: Errors, rhs: Errors) -> Bool {
        return lhs.errors.map(errorString) == rhs.errors.map(errorString)
    }
    public static func ==(lhs: Errors, rhs: [Error]) -> Bool {
        return lhs.errors.map(errorString) == rhs.map(errorString)
    }

    public var description: String {
        return errors.map({ "\($0)" }).joined(separator: "\n")
    }
}

private func errorString(_ error: Error) -> String {
    return "\(String(describing: error)):\(String(reflecting: error))"
}
