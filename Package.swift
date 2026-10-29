// swift-tools-version:5.3
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
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.3.2/Nbmap.xcframework.zip",
            checksum: "6cc1bad73ae38be21a1050a8eb22c11cc23ac2e3f9a0ab91ed740498beac9919"
        )
    ]
)

