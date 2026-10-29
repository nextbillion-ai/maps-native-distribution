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
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.3.1/Nbmap.xcframework.zip",
            checksum: "916a867a99b805fa824269378ff4983284cfbec0146f88aa477f66e66c39996e"
        )
    ]
)

