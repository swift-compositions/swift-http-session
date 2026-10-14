extension HTTP.Session.Policy {
    public enum Commit: Sendable, Equatable {
        case create(HTTP.Session.Data)
        case update(HTTP.Session.ID, HTTP.Session.Data)
        case rotate(HTTP.Session.ID, HTTP.Session.Data)
        case destroy(HTTP.Session.ID)
        case none
    }
}
