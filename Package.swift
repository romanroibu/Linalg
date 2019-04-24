// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Linalg",
    products: [
        .library(
            name: "Linalg",
            targets: ["Linalg"]),
        ],
    dependencies: [
    ],
    targets: [
        .systemLibrary(
            name: "CBLAS",
            pkgConfig: "openblas",
            providers: [
                .brew(["openblas"]),
            ]),
        .systemLibrary(
            name: "CLAPACK",
            pkgConfig: "lapacke",
            providers: [
                .brew(["lapack"]),
            ]),
        .target(
            name: "Linalg",
            dependencies: ["CBLAS", "CLAPACK"]),
        .testTarget(
            name: "LinalgTests",
            dependencies: ["Linalg"]),
    ],
    cxxLanguageStandard: .cxx14
)
