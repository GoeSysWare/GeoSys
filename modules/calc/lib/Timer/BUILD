load("@rules_cc//cc:defs.bzl", "cc_library", "cc_test")
load("//tools:cpplint.bzl", "cpplint")

package(default_visibility = ["//visibility:public"])


cc_library(
    name = "Timer",
    includes = [
    ],
    hdrs = [
        # "DELAY",
        # "SPO",
        # "TOFF",
        "TON",
        "TP",
        "TIMER",
    ],
    srcs = [
        "Timer.cpp",
    ],
    deps = [
        "//modules/calc/include:calc_include",
        "//modules/calc/include/lib:lib_include",
        "//modules/calc/proto:bus_cc_proto",
    ],
)
