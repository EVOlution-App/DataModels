// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataModels",
    products: [
        .library(
            name: "DataCore",
            targets: ["DataCore"]),
        ],
    targets: [
        .target(
            name: "DataCore"),
        .testTarget(
            name: "datamodelsTests",
            dependencies: ["DataCore"]),
        ]
)
