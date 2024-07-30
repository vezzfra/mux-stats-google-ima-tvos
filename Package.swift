// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MuxStatsGoogleIMAPluginTVOS",
    platforms: [
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "MuxStatsGoogleIMAPluginTVOS",
            targets: [
                "MuxStatsGoogleIMAPluginTVOS",
                "GoogleInteractiveMediaAds",
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/muxinc/mux-stats-sdk-avplayer.git",
            from: "4.0.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MuxStatsGoogleIMAPluginTVOS",
            url: "https://github.com/muxinc/mux-stats-google-ima/releases/download/v0.13.0/MuxStatsGoogleIMAPluginTVOS.xcframework.zip",
            checksum: "bb71f2120ebff9160f8aeae82d7a7c19ddde3e396c42852d01a04ae2f5fda6e8"
        )
    ]
)
