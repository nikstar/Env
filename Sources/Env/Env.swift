import Darwin

@dynamicMemberLookup
public enum Env {
    public static subscript(dynamicMember name: String) -> String? {
        get {
            guard let value = getenv(name) else { return nil }
            return String(validatingUTF8: value)
        }
        set {
            if let value = newValue {
                setenv(name, value, /*overwrite:*/ 1)
            } else {
                unsetenv(name)
            }
        }
    }
    
    public static func get(_ name: String) throws -> String {
        if let value = Self[dynamicMember: name] { return value }
        throw EnvironmentVariableMissing(name: name)
    }
}
