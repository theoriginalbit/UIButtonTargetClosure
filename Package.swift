// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "UIButtonTargetClosure",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "UIButtonTargetClosure", targets: ["UIButtonTargetClosure"]),
    ],
    targets: [
        .target(name: "UIButtonTargetClosure"),
    ]
)
