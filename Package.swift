// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Adder",
    platforms: [
        .macOS(.v14)
    ],
    products: [],
    dependencies: [
        .package(url: "git@github.com:gfusee/space.git", exact: "0.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Adder",
            dependencies: [
                .product(name: "Space", package: "Space")
            ],
            path: "Contracts/Adder/Sources"
        ),
        .testTarget(
            name: "AdderTests",
            dependencies: [
                "Adder"
            ],
            path: "Contracts/Adder/Tests"
        )
    ]
)
