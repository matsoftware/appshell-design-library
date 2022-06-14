// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ASDesignLibrary",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "ASDesignLibrary",
            targets: ["ASDesignLibrary"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            from: "1.9.0"
        ),
    ],
    targets: [
        .target(
            name: "ASDesignLibrary",
            dependencies: []
        ),
        .testTarget(
            name: "ASDesignLibraryTests",
            dependencies: ["ASDesignLibrary",
                           .product(name: "SnapshotTesting", package: "swift-snapshot-testing")],
            resources: [
                .process("__Snapshots__"),
            ]
        ),
    ]
)
