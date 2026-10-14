extension HTTP.Session.Policy {
    public enum Lookup: Sendable, Equatable {
        case new
        case existing(HTTP.Session.ID)
    }
}
