"""Loads the gtest library"""

# load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")



# def clean_dep(dep):
#     return str(Label(dep))

# def repo():
#     native.new_local_repository(
#         name = "gtest",
#         build_file = clean_dep("//third_party/gtest:gtest.BUILD"),
#         path = "/usr/include",
#     )


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
def repo():
    # googletest (GTest and GMock)
    http_archive(
        name = "com_google_googletest",
        # sha256 = "9dc9157a9a1551ec7a7e43daea9a694a0bb5fb8bec81235d8a1e6ef64c716dcb",
        strip_prefix = "googletest-release-1.10.0",
        urls = [
            "https://github.com/google/googletest/archive/release-1.10.0.tar.gz",
        ],
    )
