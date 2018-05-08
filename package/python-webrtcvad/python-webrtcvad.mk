################################################################################
#
# python-webrtcvad
#
################################################################################

PYTHON_WEBRTCVAD_VERSION = 2.0.10
PYTHON_WEBRTCVAD_SOURCE = webrtcvad-$(PYTHON_WEBRTCVAD_VERSION).tar.gz
PYTHON_WEBRTCVAD_SITE = https://files.pythonhosted.org/packages/89/34/e2de2d97f3288512b9ea56f92e7452f8207eb5a0096500badf9dfd48f5e6
PYTHON_WEBRTCVAD_SETUP_TYPE = setuptools
PYTHON_WEBRTCVAD_LICENSE = BSD-3-Clause
PYTHON_WEBRTCVAD_LICENSE_FILES = LICENSE

$(eval $(python-package))
