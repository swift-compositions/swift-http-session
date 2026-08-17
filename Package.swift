// swift-tools-version: 6.3.3

import PackageDescription

let package = Package(
    name: "swift-http-session",
    platforms: [
        .macOS("27"),
        .iOS("27"),
        .tvOS("27"),
        .watchOS("27"),
        .visionOS("27"),
    ],
    products: [
        .library(
            name: "HTTP Session",
            targets: ["HTTP Session"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/swift-foundations/swift-http-cookies.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "HTTP Session",
            dependencies: [
                .product(name: "HTTP Cookies", package: "swift-http-cookies"),
            ]
        ),
        .testTarget(
            name: "HTTP Session Tests",
            dependencies: ["HTTP Session"]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableExperimentalFeature("LifetimeDependence"),
            .enableExperimentalFeature("Lifetimes"),
            .enableExperimentalFeature("SuppressedAssociatedTypes"),
            .enableUpcomingFeature("InferIsolatedConformances"),
        ]
}
