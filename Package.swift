// swift-tools-version: 5.3
import PackageDescription

let package = Package(
    name: "Nbmap native",
    products: [
        .library(
            name: "Nbmap",
            targets: ["Nbmap"]
        )
    ],
    dependencies: [
    ], 
    targets: [
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.1.5/Nbmap.xcframework.zip",
            checksum: "e19a1e0a3a92344fca69bb319f8eecae79c4e2d94b36f9993d791e06480fd7d2"
        )
    ]
)

