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
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.0.2/Nbmap.xcframework.zip",
            checksum: "7ef1deb44afc16649bc53429bc1394ca35e52d6112d3d8e314cbbe789ef4369a"
        )
    ]
)

