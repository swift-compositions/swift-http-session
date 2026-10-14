extension HTTP.Session {
    public struct Policy: Sendable, Equatable {
        public let configuration: Configuration

        public init(configuration: Configuration = .init()) {
            self.configuration = configuration
        }
    }
}
