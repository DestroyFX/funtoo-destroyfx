# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-kernel/gentoo-sources/gentoo-sources-2.6.32.ebuild,v 1.1 2009/12/03 14:28:48 mpagano Exp $

ETYPE="sources"
K_WANT_GENPATCHES="base extras"
K_GENPATCHES_VER="1"
inherit kernel-2
detect_version
detect_arch

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~sh ~sparc ~x86"
IUSE=""
HOMEPAGE="http://dev.gentoo.org/~dsd/genpatches"

MATHIEUPATCHES_VER="0.0.1"
MATHIEUPATCHES="mathieu-experimental-${MATHIEUPATCHES_VER}.tar.bz2"
MATHIEUPATCHES_URI="http://cosmicencounter.net/mirror/mathieu-experimental/${MATHIEUPATCHES}"

SRC_URI="${KERNEL_URI} ${GENPATCHES_URI} ${MATHIEUPATCHES_URI}"


UNIPATCH_LIST="${DISTDIR}/${MATHIEUPATCHES}"

pkg_setup(){
        ewarn
        ewarn "${PN} is *not* supported by the Gentoo Kernel Project in any way."
        ewarn "If you need support, please contact the Mathieu directly"
	ewarn "at mathieu@tbonline.ca. Or contact the patch author."
        ewarn
	ewarn "Patches:"
	ewarn "1>BFS CPU scheduler"
	ewarn "2>r600c KMS with color tiles support"
        ebeep 8
}

pkg_postinst() {
	kernel-2_pkg_postinst
}
