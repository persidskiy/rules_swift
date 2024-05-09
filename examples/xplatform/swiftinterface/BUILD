load(
    "//swift:swift.bzl",
    "swift_binary",
    "swift_library",
)

swift_library(
    name = "lib1",
    srcs = ["lib1.swift"],
    features = [
        "swift.emit_swiftinterface",
        "swift.enable_library_evolution",
    ],
    module_name = "Lib1",
    deps = [":lib2"],
)

swift_library(
    name = "lib2",
    srcs = ["lib2.swift"],
    features = [
        "swift.emit_swiftinterface",
        "swift.enable_library_evolution",
    ],
    module_name = "Lib2",
)

swift_binary(
    name = "main",
    srcs = ["main.swift"],
    deps = [":lib1"],
)
