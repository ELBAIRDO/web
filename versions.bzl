VERSIONS = {
    # This should match the version in `.ruby-version`
    # It must also be availble, and preferably the default here:
    #  https://github.com/netlify/build-image/blob/focal/included_software.md
    "python": "3.10",
    "com_github_twbs_bootstrap": {
        "type": "github_archive",
        "repo": "twbs/bootstrap",
        "version": "5.1.3",
        "sha256": "55b951db46e1d69b4236494122fe559716a76c4b8a418c11f3fed6abc2d4de3f",
        "urls": ["https://github.com/{repo}/archive/refs/tags/v{version}.tar.gz"],
        "strip_prefix": "bootstrap-{version}",
        "build_file": "@envoy-website//bazel:bootstrap.BUILD",
    },
    "envoy": {
        "type": "github_archive",
        "repo": "envoyproxy/envoy",
        "version": "99bbfe841b4696367c33de682e272ba33db252f1",
        "sha256": "aaeb13e9127e26840a407c9af62e033648d2c689dcd55cfaa4b7bc8c239bc983",
        "urls": ["https://github.com/{repo}/archive/{version}.tar.gz"],
        "strip_prefix": "envoy-{version}",
    },
    "envoy_archive": {
        "type": "github_archive",
        "repo": "envoyproxy/archive",
        "version": "8977401fdb023ebdaa02bd8a9358a3892429bbb7",
        "sha256": "21a1beacaae4ea61e7e039e3497016707c4f149d4b7ba0532b3fb9fe2ff17b82",
        "urls": ["https://github.com/{repo}/archive/{version}.tar.gz"],
        "patch_args": ["-p1"],
        "strip_prefix": "archive-{version}",
    },
    "envoy_toolshed": {
        "type": "github_archive",
        "repo": "envoyproxy/toolshed",
        "version": "0.2.2",
        "sha256": "443fe177aba0cef8c17b7a48905c925c67b09005b10dd70ff12cd9f729a72d51",
        "urls": ["https://github.com/{repo}/archive/bazel-v{version}.tar.gz"],
        "patch_args": ["-p1"],
        "strip_prefix": "toolshed-bazel-v{version}/bazel",
    },
}
