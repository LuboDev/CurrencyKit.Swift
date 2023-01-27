// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "CurrencyKit",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "CurrencyKit",
                    targets: ["CurrencyKit"]),
        ],
        dependencies: [
            .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
            .package(url: "https://github.com/LuboDev/StorageKit.Swift.git", .upToNextMajor(from: "1.0.0")),
        ],
        targets: [
            .target(
                    name: "CurrencyKit",
                    dependencies: [
                        "RxSwift",
                        .product(name: "StorageKit", package: "StorageKit.Swift"),
                    ]
            )
        ]
)
