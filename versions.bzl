
VERSIONS = {
    # This should match the version in `.ruby-version`
    # It must also be availble, and preferably the default here:
    #  https://github.com/netlify/build-image/blob/focal/included_software.md
    "python": "3.10",
    "aspect_bazel_lib": {
        "type": "github_archive",
        "repo": "aspect-build/bazel-lib",
        "version": "8d3c941c6499626376d2a1e3e01e05f3e1ec6856",
        "sha256": "1b1da9d7d58b83ae47e7f15f1dd6c5033f84bc2b5ad65226fa745861b2204d91",
        "url": "https://github.com/{repo}/archive/{version}.tar.gz",
        "strip_prefix": "bazel-lib-{version}",
    },
    "com_github_twbs_bootstrap": {
        "type": "github_archive",
        "repo": "twbs/bootstrap",
        "version": "5.1.3",
        "sha256": "55b951db46e1d69b4236494122fe559716a76c4b8a418c11f3fed6abc2d4de3f",
        "url": "https://github.com/{repo}/archive/refs/tags/v{version}.tar.gz",
        "strip_prefix": "bootstrap-{version}",
        "build_file": "@envoy-website//bazel:bootstrap.BUILD",
    },
    "envoy": {
        "type": "github_archive",
        "repo": "envoyproxy/envoy",
        "version": "113182c6df0b42d2450312ce379e2a3d878f2cd1",
        "sha256": "f27f56007ca19293d983c5a5a3a9ae45fa1aada0f12af65ae994ef82a1b46812",
        "url": "https://github.com/{repo}/archive/{version}.tar.gz",
        "strip_prefix": "envoy-{version}",
    },
    "envoy_toolshed": {
        "type": "github_archive",
        "repo": "envoyproxy/toolshed",
        "version": "bazel-v0.0.6",
        "sha256": "7047db983e49290ac14b2733459d439a8a521ff49e95fbd0b185a692bd6a6d86",
        "url": "https://github.com/{repo}/archive/{version}.tar.gz",
        "strip_prefix": "toolshed-{version}/bazel",
    },
}
