// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProjectAutomation",
    platforms: [.macOS(.v11)],
    products: [
        .library(
            name: "ProjectAutomation",
            targets: ["ProjectAutomation"]
        )
    ],
    targets: [
        .target(
            name: "ProjectAutomation",
            dependencies: [],
            path: "ProjectAutomation"
        )
    ]
)
