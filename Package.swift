// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SVGInverter",
    products: [
        .executable(name: "SVGInverter", targets: ["SVGInverter"]),
        .library(name: "SVGInverterLibrary", targets: ["SVGInverterLibrary"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SVGInverter",
            dependencies: ["SVGInverterLibrary"]),
        .target(
            name: "SVGInverterLibrary",
            dependencies: []),
        .testTarget(
            name: "SVGInverterTests",
            dependencies: ["SVGInverterLibrary"]),
    ]
)
