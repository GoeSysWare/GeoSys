# This BUILD file shows how to use protobuf with bazel. Before you can use
# proto_library/<lang>_proto_library rules in a BUILD file, you need to
# include protobuf repo as remote repositories in your WORKSPACE file. See
# the WORKSPACE file in the same directory with this BUILD file for an
# example.

load("@rules_cc//cc:defs.bzl", "cc_proto_library")
load("@rules_proto//proto:defs.bzl", "proto_library")

package(default_visibility = ["//visibility:public"])

cc_proto_library(
    name = "bus_cc_proto",
    deps = [
        "bus_proto",
    ],
)



proto_library(
    name = "bus_proto",
    deps = [
        ":return_proto",    
        ":cmd_proto",
        ":snapshot_proto",
        ":task_def_proto",
        ":value_proto", 
        ":edit_proto", 

    ],
)

cc_proto_library(
    name = "ioss_cc_proto",
    deps = [
        "ioss_proto",

    ],
)

proto_library(
    name = "ioss_proto",
    deps = [
        ":device_proto",

    ],
)


cc_proto_library(
    name = "navigation_cc_proto",
    deps = [
        "navigation_proto",
    ],
)



proto_library(
    name = "navigation_proto",
    deps = [
        ":nav_proto",    
        ":geo_proto",
    ],
)

cc_proto_library(
    name = "task_def_cc_proto",
    deps = [":task_def_proto"],
)

proto_library(
    name = "task_def_proto",
    srcs = ["task_def.proto"],
    deps = [
        ":value_proto",
        ":return_proto",

    ],
)

cc_proto_library(
    name = "snapshot_cc_proto",
    deps = [":snapshot_proto"],
)

proto_library(
    name = "snapshot_proto",
    srcs = ["snapshot.proto"],
    deps = [
        ":value_proto",
        ":return_proto",
    ],
)

cc_proto_library(
    name = "cmd_cc_proto",
    deps = [":cmd_proto"],
)

proto_library(
    name = "cmd_proto",
    srcs = ["cmd.proto"],
    deps = [
        ":value_proto",
        ":return_proto",
         ":edit_proto",
     
    ],
)
cc_proto_library(
    name = "edit_cc_proto",
    deps = [":edit_proto"],
)

proto_library(
    name = "edit_proto",
    srcs = ["edit.proto"],
    deps = [
        ":value_proto",
        ":return_proto",
      
    ],
)
cc_proto_library(
    name = "value_cc_proto",
    deps = [
        ":value_proto",
        ],
)

proto_library(
    name = "value_proto",
    srcs = ["value.proto"],
    deps = [
        ":image_proto",
        "@com_google_protobuf//:any_proto",

    ],
)

cc_proto_library(
    name = "return_cc_proto",
    deps = [":return_proto"],
)

proto_library(
    name = "return_proto",
    srcs = ["return.proto"],
    deps = [
    ],
)

cc_proto_library(
    name = "image_cc_proto",
    deps = [":image_proto"],
)

proto_library(
    name = "image_proto",
    srcs = ["image.proto"],
    deps = [
    ],
)


cc_proto_library(
    name = "nav_cc_proto",
    deps = [":nav_proto"],
)

proto_library(
    name = "nav_proto",
    srcs = ["nav.proto"],
    deps = [
        ":geo_proto"
    ],
)

cc_proto_library(
    name = "geo_cc_proto",
    deps = [":geo_proto"],
)

proto_library(
    name = "geo_proto",
    srcs = ["geo.proto"],
    deps = [
    ],
)


cc_proto_library(
    name = "device_cc_proto",
    deps = [":device_proto"],
)

proto_library(
    name = "device_proto",
    srcs = ["device.proto"],
    deps = [

    ],
)