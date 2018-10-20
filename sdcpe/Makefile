include $(TOPDIR)/rules.mk

PKG_NAME:=sdcpe
PKG_VERSION:=0.01
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

MY_DEPENDS := libsdcpe \
    luci-mod-sdcpe luci-theme-sdcpe \
    conntrack conntrackd kmod-nf-nathelper-extra \
    dnsmasq \
    shadowsocks-libev \
    TARGET_x86:kmod-cherrytrail-gpio-powerbutton

define Package/$(PKG_NAME)
SECTION:=sdCPE
CATEGORY:=sdCPE
DEPENDS:=$(foreach p,$(MY_DEPENDS),+$(p))
TITLE:=$(PKG_NAME)
PKGARCH:=all
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc
	echo "$(PKG_VERSION)-$(PKG_RELEASE)" > $(1)/etc/sdcpe-version
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
