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
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.2.0/Nbmap.xcframework.zip",
            checksum: "a4b27996e3bb686a1b35324b5c2f9d50e319735e22d0ceebbbbba0cf56a2da87"
        )
    ]
)

