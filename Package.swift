// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MLUtilities",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "MLUtilities",
            targets: ["MLUtilities"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MLUtilities",
            dependencies: []),
        .testTarget(
            name: "MLUtilitiesTests",
            dependencies: ["MLUtilities"]),
    ]
)
