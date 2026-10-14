extension HTTP.Session {
    public enum Lifecycle: Sendable, Equatable, Hashable {
        case active
        case destroyed
    }
}
