// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "##PACKAGE_NAME##",
    platforms: [
        .macOS(.v14)
    ],
    products: [],
    dependencies: [
        .package(url: "https://github.com/gfusee/space.git", exact: "0.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "##TARGET_NAME##",
            dependencies: [
                .product(name: "Space", package: "Space")
            ],
            path: "Contracts/##TARGET_NAME##/Sources"
        ),
        .testTarget(
            name: "##TARGET_NAME##Tests",
            dependencies: [
                "##TARGET_NAME##"
            ],
            path: "Contracts/##TARGET_NAME##/Tests/##TARGET_NAME##Tests"
        )
    ]
)
