
public struct EnvironmentVariableMissing: Error, CustomStringConvertible, Equatable {
    public var name: String
    public var description: String { "environment variable missing: \(name)" }
}
