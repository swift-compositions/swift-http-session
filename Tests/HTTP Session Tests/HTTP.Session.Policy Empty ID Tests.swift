import HTTP_Cookies
import Testing

@testable import HTTP_Session

@Suite
struct `Session policy empty identifier` {
    @Test
    func `an empty session cookie starts a new session`() {
        let policy = HTTP.Session.Policy(configuration: .init(cookie: .init(name: "session")))

        #expect(policy.lookup(cookie: .init(name: "session", value: .init(string: ""))) == .new)
    }

    @Test
    func `a non-empty session cookie still requests restoration`() {
        let policy = HTTP.Session.Policy(configuration: .init(cookie: .init(name: "session")))

        #expect(policy.lookup(cookie: .init(name: "session", value: .init(string: "abc"))) == .existing(.init(string: "abc")))
    }
}
