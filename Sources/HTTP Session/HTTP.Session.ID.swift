extension HTTP.Session {
    public struct ID: Sendable, Equatable, Hashable {
        public let string: String

        public init(string: String) {
            self.string = string
        }
    }
}
