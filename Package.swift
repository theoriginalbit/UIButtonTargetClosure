// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ProjectName",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "ProjectName", targets: ["ProjectName"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "ProjectName", dependencies: []),
    ]
)
