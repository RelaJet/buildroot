################################################################################
#
# python-nose2
#
################################################################################

PYTHON_NOSE2_VERSION = 0.7.4
PYTHON_NOSE2_SOURCE = nose2-$(PYTHON_NOSE2_VERSION).tar.gz
PYTHON_NOSE2_SITE = https://files.pythonhosted.org/packages/93/46/a389a65237d0520bb4a98fc174fdf6568ad9dcc79b9c1d1f30afc6776031
PYTHON_NOSE2_SETUP_TYPE = setuptools
PYTHON_NOSE2_LICENSE = BSD-3-Clause
PYTHON_NOSE2_LICENSE_FILES = LICENSE

$(eval $(python-package))
