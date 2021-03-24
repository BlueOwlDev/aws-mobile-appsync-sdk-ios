// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AWSAppSync",
    products: [
        .library(
            name: "AWSAppSync",
            targets: ["AWSAppSync"]),
    ],
    dependencies: [
        // TODO: Add AWS iOS SDK and Realtime client
        .package(name: "AppSyncRealTimeClient", path: "../aws-appsync-realtime-client-ios"),
        .package(name: "AWSiOSSDKV2", path: "../aws-sdk-ios-spm"),
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", from: "0.12.0"),
        .package(name: "Reachability", url: "https://github.com/ashleymills/Reachability.swift.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "AWSAppSync",
            dependencies: [
                
                .product(name: "SQLite", package: "SQLite.swift"),
                .product(name: "AppSyncRealTimeClient", package: "AppSyncRealTimeClient"),
                .product(name: "Reachability", package: "Reachability"),
                .product(name: "AWSCore", package: "AWSiOSSDKV2")
            ],
            path: "AWSAppSyncClient"
        )
    ]
)
