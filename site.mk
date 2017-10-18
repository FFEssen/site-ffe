GLUON_SITE_PACKAGES := \
        gluon-mesh-batman-adv-15 \
        gluon-alfred \
        gluon-autoupdater \
        gluon-config-mode-core \
        gluon-config-mode-autoupdater \
        gluon-config-mode-hostname \
        gluon-config-mode-mesh-vpn \
        gluon-config-mode-geo-location \
        gluon-config-mode-contact-info \
        gluon-ebtables-filter-multicast \
        gluon-ebtables-filter-ra-dhcp \
        gluon-luci-admin \
        gluon-luci-autoupdater \
        gluon-luci-mesh-vpn-fastd \
        gluon-luci-portconfig \
        gluon-luci-private-wifi \
        gluon-luci-wifi-config \
        gluon-next-node \
        gluon-mesh-vpn-fastd \
        gluon-radvd \
        gluon-respondd \
	ffe-ath9k-blackout-workaround \
	ffe-wifi-blackout-workaround \
	ffe-autoupdater-wifi-fallback \
	ffe-respondd-workaround \
        gluon-setup-mode \
        gluon-status-page \
        iwinfo \
        iptables \
        haveged
	
	

ifeq ($(GLUON_TARGET),x86-64)
# support the usb stack on x86 devices
# and add a few common USB NICs
GLUON_SITE_PACKAGES += \
	kmod-usb-core \
	kmod-usb2 \
	kmod-usb-hid \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-dm9601-ether \
	kmod-r8169
endif

DEFAULT_GLUON_RELEASE := 2.2.1-1

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
GLUON_BRANCH ?= stable
export GLUON_BRANCH

GLUON_TARGET ?= ar71xx-generic
export GLUON_TARGET

GLUON_LANGS ?= en de
