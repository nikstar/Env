# Env

`@dynamicMemberLookup` interface for environment variables.

[![Swift 5](https://img.shields.io/badge/swift-5-important)](#)
[![Platforms: macOS, Linux](https://img.shields.io/badge/platforms-macOS%20%7C%20Linux-lightgrey)](#)
[![Swift Package Manager compatible](https://img.shields.io/badge/spm-compatible-brightgreen)](#)
[![releases](https://img.shields.io/github/release/nikstar/Env)](https://github.com/nikstar/Env/releases)
[![MIT license](https://img.shields.io/github/license/nikstar/Env)](LICENSE.md)

Add to your project via Swift package manager:

```
        .package("https://github.com/nikstar/Env.git", from: "2.0.0")
```


## Example

```swift
guard let home = Env.HOME else { return }
Env.PATH! += ":\(home)/bin"
```

Unsetting varibles:

```swift
Env.LC_LOCALE = nil
```

Throwing access:

```swift
do {
    let v = try Env.get("NOTAVAR")
} catch {
    print(error) // "environment variable missing: NOTAVAR"
}
```
