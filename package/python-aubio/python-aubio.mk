################################################################################
#
# aubio
#
################################################################################

PYTHON_AUBIO_VERSION = 0.4.5
PYTHON_AUBIO_SITE = https://aubio.org/pub
PYTHON_AUBIO_SOURCE = aubio-$(PYTHON_AUBIO_VERSION).tar.bz2
PYTHON_AUBIO_LICENSE = GPL-3.0+
PYTHON_AUBIO_LICENSE_FILES = COPYING
PYTHON_AUBIO_INSTALL_STAGING = YES

PYTHON_AUBIO_SETUP_TYPE = setuptools
PYTHON_AUBIO_DEPENDENCIES = host-python-numpy python-numpy clapack

$(eval $(python-package))
