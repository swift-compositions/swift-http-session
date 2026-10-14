extension HTTP.Session {
    public enum Rotation: Sendable, Equatable, Hashable {
        case never
        case onRestore
    }
}
