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
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.1.6/Nbmap.xcframework.zip",
            checksum: "fd487d81e8f7790ea1c9cd5c69920c14ad3cb41ef4a2fa060872f75c5bc99a25"
        )
    ]
)

