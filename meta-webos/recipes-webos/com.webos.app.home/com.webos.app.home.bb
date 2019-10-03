# Copyright (c) 2019 LG Electronics, Inc.

SUMMARY = "General System Launcher application"
AUTHOR = "Kiho Choi<kiho.choi@lge.com>"
SECTION = "webos/apps"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"

WEBOS_VERSION = "0.1.0-1_a06763aecc3427f156dd0a25c81dc77d36c81420"
SRC_URI = "${WEBOSOSE_GIT_REPO_COMPLETE}"
S = "${WORKDIR}/git"
PR = "r0"

inherit webos_enhanced_submissions
inherit webos_enactjs_app
inherit webos_public_repo

WEBOS_ENACTJS_PACK_OPTS = "--production"
WEBOS_ENACTJS_SHRINKWRAP_OVERRIDE = "false"

WEBOS_ENACTJS_APP_ID = "com.webos.app.home"