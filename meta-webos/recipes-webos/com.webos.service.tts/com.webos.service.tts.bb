# Copyright (c) 2018-2020 LG Electronics, Inc.

SUMMARY = "webOS text to speech service"
SECTION = "webos/base"
AUTHOR = "Rachana Agarwal <rachana.agarwal@lge.com>"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

DEPENDS = "glib-2.0 luna-service2 libpbnjson pmloglib json-c pulseaudio googleapis grpc"

COMPATIBLE_MACHINE = "^raspberrypi3$|^raspberrypi4$"
COMPATIBLE_MACHINE_raspberrypi3-64 = "^$"
COMPATIBLE_MACHINE_raspberrypi4-64 = "^$"

WEBOS_VERSION = "1.0.0-8_37f76248398c1ba14d961812879a589a9edfdb27"
PR = "r2"

inherit webos_component
inherit webos_public_repo
inherit webos_enhanced_submissions
inherit webos_cmake
inherit webos_system_bus

SRC_URI = "${WEBOSOSE_GIT_REPO_COMPLETE}"
S = "${WORKDIR}/git"

EXTRA_OECMAKE += "-DGOOGLEAPIS_PATH=${STAGING_INCDIR}/google"

FILES_${PN} += "${webos_sysbus_datadir}"
