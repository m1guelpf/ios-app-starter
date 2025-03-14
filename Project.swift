import ProjectDescription

let project = Project(
    name: "{{NAME}}",
    options: .options(
        disableBundleAccessors: true,
        disableSynthesizedResourceAccessors: true
    ),
    packages: [],
    settings: .settings(
        base: SettingsDictionary()
            .marketingVersion("1.0")
            .currentProjectVersion("1")
            .automaticCodeSigning(devTeam: "{{TEAM_ID}}")
    ),
    targets: [
        .target(
            name: "{{NAME}}",
            destinations: .iOS,
            product: .app,
            bundleId: "{{BUNDLE_PREFIX}}.{{NAME}}",
            infoPlist: "src/Info.plist",
            sources: ["src/**"],
            resources: ["src/Assets.xcassets", "src/Preview Content/**"],
            entitlements: .file(path: "src/{{NAME}}.entitlements"),
            dependencies: []
        ),
    ]
)
