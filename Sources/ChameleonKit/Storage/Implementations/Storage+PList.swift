public class PListStorage: Storage {
    private let keyValue: PListKeyValueStorage

    public init(directory: Directory = .home, name: String) {
        self.keyValue = PListKeyValueStorage(directory: directory, name: name)
    }

    public func get<T: LosslessStringConvertible>(forKey key: String, from namespace: String) throws -> T {
        return try keyValue.get(forKey: namespaced(namespace, key))
    }
    public func set<T: LosslessStringConvertible>(forKey key: String, from namespace: String, value: T) throws {
        try keyValue.set(value: value, forKey: namespaced(namespace, key))
    }
    public func remove(forKey key: String, from namespace: String) throws {
        try keyValue.remove(forKey: namespaced(namespace, key))
    }

    // MARK: - Private Functions
    private func namespaced(_ namespace: String, _ key: String) -> String {
        return "\(namespace):\(key)"
    }
}
