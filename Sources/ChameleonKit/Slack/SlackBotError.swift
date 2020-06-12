public struct SlackEventError: Error {
    public var event: [String: Any]
    public var error: Error
}

public struct SlashCommandError: Error {
    public var command: SlashCommand
    public var error: Error
}

public struct SlackActionError<T>: Error {
    public var action: SlackAction<T>
    public var error: Error
}

public struct CompositeError: Error {
    public var errors: [Error]

    public init(errors: [Error]) {
        self.errors = errors
    }
}