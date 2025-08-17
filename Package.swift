// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "LeafMarkdown",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "LeafMarkdown", targets: ["LeafMarkdown"]),
    ],
    dependencies: [
        .package(name: "SwiftMarkdown", url: "https://github.com/handya/markdown.git", branch: "fix/tables"),
        .package(url: "https://github.com/vapor/leaf-kit.git", from: "1.3.1"),
    ],
    targets: [
        .target(name: "LeafMarkdown", dependencies: [
            .product(name: "LeafKit", package: "leaf-kit"),
            .product(name: "SwiftMarkdown", package: "SwiftMarkdown"),
        ]),
        .testTarget(name: "LeafMarkdownTests", dependencies: [
            .target(name: "LeafMarkdown"),
            .product(name: "LeafKit", package: "leaf-kit"),
        ]),
    ]
)
