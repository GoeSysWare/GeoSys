load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")
load("//tools:cpplint.bzl", "cpplint")

package(default_visibility = ["//visibility:public"])




cc_library(
    name = "driver",
    includes = [
    ],
    hdrs = [
        "ddk.h",
        "ioss.h",      
    ],
    srcs = [
        "driver.cpp",
        "device.cpp",
        "ioss.cpp",
    ],
    deps = [
        "//modules/calc/proto:ioss_cc_proto",
        "//modules/calc/include:calc_include",
        "//modules/calc/proto:bus_cc_proto",
        "//modules/calc/ioss:ioss",
        "//cyber"

    ],
)


cpplint()
