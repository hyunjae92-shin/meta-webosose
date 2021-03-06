# Copyright (c) 2018-2019 LG Electronics, Inc.

FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

EXTENDPRAUTO_append = "webos14"

RRECOMMENDS_${PN} += " \
    glibc-gconv-utf-16 \
    glibc-gconv-utf-32 \
"

SRC_URI += " \
    file://0001-Fix-advertise-time-out-when-default-is-set-to-zero.patch \
    file://0002-Send-disconnect-signal-on-remote-device-disconnect.patch \
    file://0003-Fetching-device-type-like-BLE-BREDR-from-bluez.patch \
    file://0005-Fix-Gatt-connect-when-device-address-type-is-BDADDR_.patch \
    file://0006-Fix-obexd-segmentation-fault.patch \
    file://0007-Use-system-bus-instead-of-session-for-obexd.patch \
    file://0008-Implementation-to-get-connected-profiles-uuids.patch \
    file://0009-recievePassThrough-commad-support-required-for-webos.patch \
    file://0010-Added-dbus-signal-for-MediaPlayRequest.patch \
    file://0011-avrcp-getting-remote-device-features-list.patch \
    file://0012-Fix-add-service-failure.patch \
    file://0013-Fix-device-discovery-for-broadcast-role.patch \
    file://main.conf \
    file://brcm43438.service \
    file://obex.service \
"

SRC_URI_append_raspberrypi4 = " ${BCM_BT_SOURCES}"

RDEPENDS_${PN}_append_raspberrypi4 = " ${BCM_BT_RDEPENDS}"

do_install_append () {
    install -d ${D}${sysconfdir}/systemd/system
    install -v -m 0644  ${WORKDIR}/main.conf ${D}${sysconfdir}/bluetooth/
    install -v -m 0644  ${WORKDIR}/obex.service ${D}${sysconfdir}/systemd/system/
}
