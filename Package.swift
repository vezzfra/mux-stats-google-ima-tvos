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
                "GoogleInteractiveMediaAdsTVOS"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/muxinc/mux-stats-sdk-avplayer.git",
            from: "4.1.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MuxStatsGoogleIMAPluginTVOS",
            url: "https://github.com/muxinc/mux-stats-google-ima/releases/download/v0.13.0/MuxStatsGoogleIMAPluginTVOS.xcframework.zip",
            checksum: "bb71f2120ebff9160f8aeae82d7a7c19ddde3e396c42852d01a04ae2f5fda6e8"
        ),
        .binaryTarget(
              name: "GoogleInteractiveMediaAdsTVOS",
              url: "https://imasdk.googleapis.com/downloads/ima/tvos/GoogleInteractiveMediaAds-tvos-v4.12.0.zip",
              checksum: "f4554c87f505e5f59e1b60dac3a1f0d91fb6a02207995cbda574598e3cbb72e2"
        )
    ]
)
