import Darwin

@dynamicMemberLookup
public final class Env {
    public subscript(dynamicMember name: String) -> String? {
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
    
    fileprivate init() {}
}

public let env = Env()
