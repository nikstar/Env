// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Env",
    products: [
        .library(
            name: "Env",
            targets: ["Env"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Env",
            dependencies: []),
        .testTarget(
            name: "EnvTests",
            dependencies: ["Env"]),
    ]
)
