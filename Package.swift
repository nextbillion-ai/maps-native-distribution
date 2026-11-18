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
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.4.0-beta.4/Nbmap.xcframework.zip",
            checksum: "2d0110d9b937d94c484a5b8d02bd752acf9a0a720751d1449ab6f42f6c28f64b"
        )
    ]
)

