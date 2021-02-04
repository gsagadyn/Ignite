// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Ignite",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "Ignite", targets: ["Ignite"])
    ],
    targets: [
        .target(name: "Ignite", dependencies: [], path: "Sources")
    ]
)
