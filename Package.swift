// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let package = Package(
    name: "KlipSDK",
    platforms: [.iOS(.v15), .macOS(.v13)],
    products: [
        .library(
            name: "KlipSDK",
            targets: ["KlipSDK"]
        ),
    ],
    targets: [
        .target(
            name: "KlipSDK",
            dependencies: [
                "Klip"
            ]
        ),
        .binaryTarget(
            name: "Klip",
            path: "Frameworks/KlipLib-simulator.xcframework" // arm64, x86-64를 모두 포함하고 있음.
        )
    ]
)
