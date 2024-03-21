// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UtilityTools",
    platforms: [
        .iOS(.v17),
        .macCatalyst(.v17),
        .macOS(.v14),
        .tvOS(.v17),
        .driverKit(.v23),
        .visionOS(.v1),
        .watchOS(.v10)
    ],
    products: [
        .library(
            name: "UtilityTools",
            targets: ["UtilityTools"]),
    ],
    targets: [
        .target(
            name: "UtilityTools"),
        .testTarget(
            name: "UtilityToolsTests",
            dependencies: ["UtilityTools"]),
    ]
)
