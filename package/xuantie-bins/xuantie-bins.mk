################################################################################
#
# xuantie-bins
#
################################################################################

XUANTIE_BINS_VERSION = 1.2.1
XUANTIE_BINS_SITE = $(call github,beagleboard,xuantie-ubuntu,beaglev-$(XUANTIE_BINS_VERSION))
XUANTIE_BINS_LICENSE = PROPRIETARY

XUANTIE_BINS_INSTALL_IMAGES = YES
XUANTIE_BINS_INSTALL_TARGET = NO

define XUANTIE_BINS_INSTALL_IMAGES_CMDS
	$(INSTALL) -D -m 0644 -t $(BINARIES_DIR) $(@D)/bins/light_aon_fpga.bin
	$(INSTALL) -D -m 0644 -t $(BINARIES_DIR) $(@D)/bins/light_c906_audio.bin
endef

$(eval $(generic-package))
