// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "DataModelsKit",
    products: [
        .library(
            name: "DataModelsKit",
            targets: ["DataModelsKit"]),
        ],
    dependencies: [
        .package(url: "https://github.com/openkitten/Meow.git", .branch("master/2.0")),
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
