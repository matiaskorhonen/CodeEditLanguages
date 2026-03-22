// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CodeEditLanguages",
    platforms: [.macOS(.v13)],
    products: [
        .library(
            name: "CodeEditLanguages",
            targets: ["CodeEditLanguages"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter.git", from: "0.9.0"),

        // Tree-sitter grammars (pinned to known-good revisions)
        .package(url: "https://github.com/tree-sitter/tree-sitter-agda.git", revision: "b9b32fa042c2952a7bfca86847ea325e44ccc897"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-bash.git", revision: "49c31006d8307dcb12bc5770f35b6d5b9e2be68e"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-c.git", revision: "212a80f86452bb1316324fa0db730cf52f29e05a"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-c-sharp.git", revision: "dd5e59721a5f8dae34604060833902b882023aaf"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-cpp.git", revision: "a71474021410973b29bfe99440d57bcd750246b1"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-css.git", revision: "98c7b3dceb24f1ee17f1322f3947e55638251c37"),
        .package(url: "https://github.com/UserNobody14/tree-sitter-dart.git", revision: "e81af6ab94a728ed99c30083be72d88e6d56cf9e"),
        .package(url: "https://github.com/camdencheek/tree-sitter-dockerfile.git", revision: "33e22c33bcdbfc33d42806ee84cfd0b1248cc392"),
        .package(url: "https://github.com/elixir-lang/tree-sitter-elixir.git", revision: "11426c5fd20eef360d5ecaf10729191f6bc5d715"),
        .package(url: "https://github.com/matiaskorhonen/tree-sitter-generic.git", revision: "4a967c7ca3ce6116827ddf090eaa4ef7d10c03df"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-go.git", revision: "ff86c7f1734873c8c4874ca4dd95603695686d7a"),
        .package(url: "https://github.com/camdencheek/tree-sitter-go-mod.git", revision: "bbe2fe3be4b87e06a613e685250f473d2267f430"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-haskell.git", revision: "dd924b8df1eb76261f009e149fc6f3291c5081c2"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-html.git", revision: "d742025fa2d8e6100f134a6ea990443aa1f074b3"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-java.git", revision: "2b57cd9541f9fd3a89207d054ce8fbe72657c444"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-javascript.git", revision: "f1e5a09b8d02f8209a68249c93f0ad647b228e6e"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-jsdoc.git", revision: "d01984de49927c979b46ea5c01b78c8ddd79baf9"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-json.git", revision: "3fef30de8aee74600f25ec2e319b62a1a870d51e"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-julia.git", revision: "0c088d1ad270f02c4e84189247ac7001e86fe342"),
        .package(url: "https://github.com/fwcd/tree-sitter-kotlin", revision: "76f53c48d29e8588934fb55b0240d7bdfe00bfe5"),
        .package(url: "https://github.com/tree-sitter-grammars/tree-sitter-lua", revision: "34e60e7f45fc313463c68090d88d742a55d1bd7a"),
        .package(url: "https://github.com/tree-sitter-grammars/tree-sitter-markdown", revision: "5cdc549ab8f461aff876c5be9741027189299cec"),
        .package(url: "https://github.com/tree-sitter-grammars/tree-sitter-objc", revision: "62e61b6f5c0289c376d61a8c91faf6435cde9012"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-ocaml.git", revision: "4abfdc1c7af2c6c77a370aee974627be1c285b3b"),
        .package(url: "https://github.com/ganezdragon/tree-sitter-perl.git", revision: "15a6914b9b891974c888ba7bf6c432665b920a3f"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-php.git", revision: "b569a5f2c0d592e67430520d1a0e1f765d83ceb0"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-python.git", revision: "4bfdd9033a2225cc95032ce77066b7aeca9e2efc"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-regex.git", revision: "4470c59041416e8a2a9fa343595ca28ed91f38b8"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-ruby.git", revision: "4d9ad3f010fdc47a8433adcf9ae30c8eb8475ae7"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-rust.git", revision: "79456e6080f50fc1ca7c21845794308fa5d35a51"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-scala.git", revision: "45b5ba0e749a8477a8fd2666f082f352859bdc3c"),
        .package(url: "https://github.com/DerekStride/tree-sitter-sql.git", revision: "fd70fb358d164cd93fbe2674a9cca276dc5203f7"),
        .package(url: "https://github.com/alex-pinkus/tree-sitter-swift.git", revision: "eda05af7ac41adb4eb19c346883c0fa32fe3bdd8"),
        .package(url: "https://github.com/cengelbart39/tree-sitter-toml.git", revision: "28db724e8e30920638b46d408c0fbac007ac6a62"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-typescript.git", revision: "d847898fec3fe596798c9fda55cb8c05a799001a"),
        .package(url: "https://github.com/tree-sitter/tree-sitter-verilog.git", revision: "902031343056bc0b11f3e47b33f036a9cf59f58d"),
        .package(url: "https://github.com/tree-sitter-grammars/tree-sitter-yaml.git", revision: "7b03feefd36b5f155465ca736c6304aca983b267"),
        .package(url: "https://github.com/tree-sitter-grammars/tree-sitter-zig.git", revision: "eb7d58c2dc4fbeea4745019dee8df013034ae66b"),
    ],
    targets: [
        .target(
            name: "CodeEditLanguages",
            dependencies: [
                "SwiftTreeSitter",
                .product(name: "TreeSitterAgda", package: "tree-sitter-agda"),
                .product(name: "TreeSitterBash", package: "tree-sitter-bash"),
                .product(name: "TreeSitterC", package: "tree-sitter-c"),
                .product(name: "TreeSitterCSharp", package: "tree-sitter-c-sharp"),
                .product(name: "TreeSitterCPP", package: "tree-sitter-cpp"),
                .product(name: "TreeSitterCSS", package: "tree-sitter-css"),
                .product(name: "TreeSitterDart", package: "tree-sitter-dart"),
                .product(name: "TreeSitterDockerfile", package: "tree-sitter-dockerfile"),
                .product(name: "TreeSitterElixir", package: "tree-sitter-elixir"),
                .product(name: "TreeSitterGeneric", package: "tree-sitter-generic"),
                .product(name: "TreeSitterGo", package: "tree-sitter-go"),
                .product(name: "TreeSitterGoMod", package: "tree-sitter-go-mod"),
                .product(name: "TreeSitterHaskell", package: "tree-sitter-haskell"),
                .product(name: "TreeSitterHTML", package: "tree-sitter-html"),
                .product(name: "TreeSitterJava", package: "tree-sitter-java"),
                .product(name: "TreeSitterJS", package: "tree-sitter-javascript"),
                .product(name: "TreeSitterJSDoc", package: "tree-sitter-jsdoc"),
                .product(name: "TreeSitterJSON", package: "tree-sitter-json"),
                .product(name: "TreeSitterJulia", package: "tree-sitter-julia"),
                .product(name: "TreeSitterKotlin", package: "tree-sitter-kotlin"),
                .product(name: "TreeSitterLua", package: "tree-sitter-lua"),
                .product(name: "TreeSitterMarkdown", package: "tree-sitter-markdown"),
                .product(name: "TreeSitterObjc", package: "tree-sitter-objc"),
                .product(name: "TreeSitterOCaml", package: "tree-sitter-ocaml"),
                .product(name: "TreeSitterPerl", package: "tree-sitter-perl"),
                .product(name: "TreeSitterPHP", package: "tree-sitter-php"),
                .product(name: "TreeSitterPython", package: "tree-sitter-python"),
                .product(name: "TreeSitterRegex", package: "tree-sitter-regex"),
                .product(name: "TreeSitterRuby", package: "tree-sitter-ruby"),
                .product(name: "TreeSitterRust", package: "tree-sitter-rust"),
                .product(name: "TreeSitterScala", package: "tree-sitter-scala"),
                .product(name: "TreeSitterSQL", package: "tree-sitter-sql"),
                .product(name: "TreeSitterSwift", package: "tree-sitter-swift"),
                .product(name: "TreeSitterTOML", package: "tree-sitter-toml"),
                .product(name: "TreeSitterTypeScript", package: "tree-sitter-typescript"),
                .product(name: "TreeSitterVerilog", package: "tree-sitter-verilog"),
                .product(name: "TreeSitterYAML", package: "tree-sitter-yaml"),
                .product(name: "TreeSitterZig", package: "tree-sitter-zig"),
            ],
            resources: [
                .copy("Resources")
            ],
            linkerSettings: [.linkedLibrary("c++")]
        ),

        .testTarget(
            name: "CodeEditLanguagesTests",
            dependencies: ["CodeEditLanguages"]
        ),
    ]
)
