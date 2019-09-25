DESCRIPTION = "A simple daemon program"
PRIORITY = "optional"
SECTION = "examples"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

SRC_URI = "file://simpleserver.c \
           file://Makefile \
           file://simpleserver.sh \
          "

inherit update-rc.d
INITSCRIPT_NAME = "simpleserver.sh"
INITSCRIPT_PARAMS = "start 99 5 . stop 80 0 1 2 3 4 6 ."

S = "${WORKDIR}"

do_compile() {
        bbwarn "***** Building simpleserver ****"
	oe_runmake
}

do_install() {
        bbwarn "**** Installing simpleserver ****"
	oe_runmake install TARGET_DIR=${D}

	install -d ${D}${sysconfdir} ${D}${sysconfdir}/init.d
	install -m 0755 ${WORKDIR}/simpleserver.sh ${D}${sysconfdir}/init.d
}

