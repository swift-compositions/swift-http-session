extension HTTP.Session.Policy {
    public enum Expiry: Sendable, Equatable, Hashable {
        case active
        case expired
    }
}
