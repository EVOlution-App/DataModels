// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "DataModelsKit",
    platforms: [
        .macOS(.v10_14),
        
    ],
    products: [
        .library(
            name: "DataModelsKit",
            targets: ["DataModelsKit"]),
        ],
    dependencies: [
        .package(url: "https://github.com/OpenKitten/MongoKitten.git", .branch("master/6.0")),
    ],
    targets: [
        .target(
            name: "DataModelsKit",
            dependencies: [
                .product(name: "Meow", package: "MongoKitten")
            ]
        ),
        .testTarget(
            name: "datamodelsTests",
            dependencies: ["DataModelsKit"]),
        ]
)
