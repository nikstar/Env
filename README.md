# Env

`@dynamicMemberLookup` interface for environment variables.

Add to your project via Swift package manager:

```
        .package("https://github.com/nikstar/Env.git", .branch("master"))
```


## Example

```swift
guard let home = env.HOME else { return }
env.PATH! += ":\(home)/bin"
```

Unsetting varibles:

```swift
env.LC_LOCALE = nil
```
