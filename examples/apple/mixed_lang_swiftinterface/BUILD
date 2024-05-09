# This example tests that Swift code can produce a module that depends on an objc module and re-exports the underlying Objc module interface.
# platforms.

load(
    "//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "swift_lib",
    srcs = ["lib.swift"],
    copts = [
        "-import-underlying-module",
    ],
    features = [
        "swift.emit_swiftinterface",
        "swift.enable_library_evolution",
        "swift.use_explicit_swift_module_map",
    ],
    module_name = "MyLibrary",
    deps = [
        ":some_objc",
        ":underlying_objc",
    ],
)

objc_library(
    name = "some_objc",
    srcs = ["ObjcClass.mm"],
    hdrs = ["ObjcClass.h"],
    module_name = "SomeObjcLib",
)

objc_library(
    name = "underlying_objc",
    srcs = ["Underlying.m"],
    hdrs = ["Underlying.h"],
    module_name = "MyLibrary",
)
