// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataModelsKit",
    products: [
        .library(
            name: "DataModelsKit",
            targets: ["DataModelsKit"]),
        ],
    dependencies: [
        .package(url: "https://github.com/unnamedd/Meow.git", .branch("master/2.0")),
    ],
    targets: [
        .target(
            name: "DataModelsKit",
            dependencies: ["Meow"]
        ),
        .testTarget(
            name: "datamodelsTests",
            dependencies: ["DataModelsKit"]),
        ]
)
