include $(TOPDIR)/rules.mk

PKG_NAME:=libsdcpe
PKG_VERSION:=0.01
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

MY_DEPENDS := kmod-macvlan \
    ca-bundle ca-certificates jq curl @LIBCURL_THREADED_RESOLVER

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
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
