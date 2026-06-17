// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "zendesk_messaging",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "zendesk-messaging", targets: ["zendesk_messaging"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(name: "ZendeskSDKMessaging", url: "https://github.com/zendesk/sdk_messaging_ios.git", from: "2.31.0"),
        .package(name: "ZendeskSDK", url: "https://github.com/zendesk/sdk_zendesk_ios.git", from: "3.17.0")
    ],
    targets: [
        .target(
            name: "zendesk_messaging",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "ZendeskSDKMessaging", package: "ZendeskSDKMessaging"),
                .product(name: "ZendeskSDK", package: "ZendeskSDK")
            ],
            path: "../Classes",
            publicHeadersPath: "."
        )
    ]
)
