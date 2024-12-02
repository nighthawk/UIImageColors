// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "UIImageColors",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v9),
        .tvOS(.v9),
        .watchOS(.v2),
    ],
    products: [
        .library(name: "UIImageColors", targets: ["UIImageColors"]),
        .library(name: "UIImageColorsObjc", targets: ["UIImageColorsObjc"]),
    ],
    targets: [
        .target(
            name: "UIImageColors",
            resources: [.process("Resources")]
        ),
        .target(
            name: "UIImageColorsObjc",
            dependencies: [.target(name: "UIImageColors")],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "UIImageColorsTests",
            dependencies: [
                .target(name: "UIImageColors"),
                .target(name: "UIImageColorsObjc")
            ]
        ),
    ]
)
