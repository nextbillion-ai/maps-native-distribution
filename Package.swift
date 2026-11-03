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
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.3.3/Nbmap.xcframework.zip",
            checksum: "15f448dbfef6a611a78f9a7707d44ada109c25d4e4dd2fac5b9a862113a66ac3"
        )
    ]
)

