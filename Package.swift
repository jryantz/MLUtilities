// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MLUtilities",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "MLUtilities",
            targets: ["MLUtilities"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "MLUtilities",
            dependencies: []),
        .testTarget(
            name: "MLUtilitiesTests",
            dependencies: ["MLUtilities"]),
    ]
)
