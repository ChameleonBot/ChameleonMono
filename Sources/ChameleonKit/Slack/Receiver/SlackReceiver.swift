/// Acts as a single source of incoming data from Slack
public protocol SlackReceiver {
    func listen<T>(for event: SlackEvent<T>, _ closure: @escaping (T) throws -> Void)

    func start() throws
}
