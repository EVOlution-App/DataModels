// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataModels",
    products: [
        .library(
            name: "Main",
            targets: ["Executor"]),
        ],
    dependencies: [
        .package(url: "../requester", .branch("master")),
        .package(url: "https://github.com/OpenKitten/Meow.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "DataModels",
            dependencies: [
                "Meow"
            ]
        ),
        .target(
            name: "Executor",
            dependencies: [
                "Requester",
                "DataModels"
            ]
        ),
        .testTarget(
            name: "datamodelsTests",
            dependencies: ["DataModels"]),
        ]
)
