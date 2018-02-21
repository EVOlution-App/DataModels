// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataModels",
    products: [
        .library(
            name: "DataModels",
            targets: ["DataModels"]),
        ],
    targets: [
        .target(name: "Config"),
        .target(
            name: "DataModels",
            dependencies: ["Config"]),
        .testTarget(
            name: "datamodelsTests",
            dependencies: ["DataModels"]),
        ]
)
