# Copyright (c) 2018-2019 LG Electronics, Inc.

require gstreamer1.0-webos-common.inc

EXTENDPRAUTO_append_rpi = "webosrpi1"

# gles2 make build error , so override below and remove gles2.
# original: PACKAGECONFIG_GL ?= "${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'gles2 egl', '', d)}"
PACKAGECONFIG_GL_rpi = "${@bb.utils.contains('DISTRO_FEATURES', 'opengl', ' egl', '', d)}"

WEBOS_REPO_NAME_rpi = "gst-plugins-base"

WEBOS_VERSION_rpi = "1.14.4-3_dba68182527f24b313951383ddbb701ddde340d1"
