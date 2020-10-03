// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BannerKit",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BannerKit",
            type: .dynamic,
            targets: ["BannerKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "git@github.com:andyfinnell/ViewKit.git", from: "0.0.1"),
        .package(url: "git@github.com:andyfinnell/NativeComponentKit.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "BannerKit",
            dependencies: [
                "ViewKit",
                "NativeComponentKit"
            ]),
        .testTarget(
            name: "BannerKitTests",
            dependencies: ["BannerKit"]),
    ]
)
