public import HTTP_Cookies

extension HTTP.Session.Policy {
    public func cookie(for id: HTTP.Session.ID) -> HTTPCookies.SetCookie {
        .init(
            name: configuration.cookie.name,
            value: .init(string: id.string),
            configuration: configuration.cookie.attributes
        )
    }

    public func cookie(expiry: Expiry) -> HTTPCookies.SetCookie {
        precondition(expiry == .expired, "An active session cookie needs a session ID; use cookie(for:)")
        var attributes = configuration.cookie.attributes
        attributes.maxAge = 0
        return .init(
            name: configuration.cookie.name,
            value: .init(string: ""),
            configuration: attributes
        )
    }
}
