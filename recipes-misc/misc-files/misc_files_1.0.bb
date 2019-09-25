#
#
#

SRC_URI = "\
   file://file1 \
   file://file2 \
   "

PROVIDES = "addfiles-rootfs"

RPROVIDES_${PN} += "${PN}"

do_install() {

    rsync -a --exclude=.svn ${ADDFILES_SRC}/files/* ${D}

}

LICENSE = "GPLv2+"

LIC_FILES_CHKSUM = "file://${THISDIR}/license;md5=8cf8463b34caa8ac871a52d5dd7ad1ef"
