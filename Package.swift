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
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.3.0/Nbmap.xcframework.zip",
            checksum: "7825293f4d76d5d9a79cbc921a7186bff913c64e3bbd08d1fff5a18342559c0b"
        )
    ]
)

