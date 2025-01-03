################################################################################
#
# findutils
#
################################################################################

FINDUTILS_VERSION = 4.10.0
FINDUTILS_SOURCE = findutils-$(FINDUTILS_VERSION).tar.xz
FINDUTILS_SITE = $(BR2_GNU_MIRROR)/findutils
FINDUTILS_LICENSE = GPL-3.0+
FINDUTILS_LICENSE_FILES = COPYING
FINDUTILS_CPE_ID_VENDOR = gnu
FINDUTILS_CONF_ENV = \
	gl_cv_func_stdin=yes \
	ac_cv_func_working_mktime=yes \
	gl_cv_func_wcwidth_works=yes
FINDUTILS_CONF_OPTS = --disable-year2038

ifeq ($(BR2_PACKAGE_LIBSELINUX),y)
FINDUTILS_DEPENDENCIES += libselinux
FINDUTILS_CONF_OPTS += --with-selinux
else
FINDUTILS_CONF_OPTS += --without-selinux
endif

$(eval $(autotools-package))
