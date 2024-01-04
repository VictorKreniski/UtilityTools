// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UtilityTools",
    platforms: [
        .iOS(.v15),
        .macCatalyst(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .driverKit(.v21),
        .visionOS(.v1),
        .watchOS(.v8)
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
