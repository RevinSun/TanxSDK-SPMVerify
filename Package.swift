// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TanxSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // 对外只暴露 Wrapper（它依赖二进制 TanxSDK + 携带资源）
        .library(name: "TanxSDK", targets: ["TanxSDK"]),
        .library(name: "TNXASDK", targets: ["TNXASDK"]),
        .library(name: "TanxMonitor", targets: ["TanxMonitor"])
    ],
    targets: [
        .binaryTarget(
            name: "TanxSDK",
            url: "https://github.com/RevinSun/TanxSDK-GitHub-SPM/releases/download/3.7.29/TanxSDK.xcframework.zip",
            checksum: "e60fd66762e633da145c146e41ad96f51753324dd5438e642cbda2091f0a8a97"
        ),
        .binaryTarget(
            name: "TNXASDK",
            url: "https://github.com/RevinSun/TanxSDK-GitHub-SPM/releases/download/3.7.29/TNXASDK.xcframework.zip",
            checksum: "3e6bdef0ba7f4b5cd8cdfae9fbfa2954c030138803a850b8ed0a364700c4f372"
        ),
        .binaryTarget(
            name: "TanxMonitor",
            url: "https://github.com/RevinSun/TanxSDK-GitHub-SPM/releases/download/3.7.29/TanxMonitor.xcframework.zip",
            checksum: "66d709b0a5da9d33f19ffeacbe2f521e4388260a2bbe26ceb7ec3ce7525d77b8"
        )
    ]
)
