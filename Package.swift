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
    dependencies: [
        .package(url: "https://github.com/apple/swift-tools-support-core", from: "0.6.1"),
    ],
    targets: [
        .target(
            name: "ProjectAutomation",
            dependencies: [
                .product(name: "SwiftToolsSupport-auto", package: "swift-tools-support-core")
            ],
            path: "ProjectAutomation"
        ),
    ]
)
