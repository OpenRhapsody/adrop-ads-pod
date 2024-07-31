// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "adrop-ads",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],

    products: [
        .library(
            name: "AdropAds",
            targets: ["AdropAds"]),
    ],
    targets: [
        .binaryTarget(
            name: "AdropAds",
            path: "AdropAds.xcframework")
    ]
)
