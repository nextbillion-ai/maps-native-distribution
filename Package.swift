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
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.1.2/Nbmap.xcframework.zip",
            checksum: "0f48b5cd6af5157296ecea043eb08515f42d524f701e80e02a1fe29ec2089636"
        )
    ]
)

