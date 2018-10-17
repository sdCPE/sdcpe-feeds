#
# Copyright (C) 2008-2014 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=sdCPE Network Administration
LUCI_DEPENDS:=  +uhttpd +luci-base +px5g-mbedtls +libustream-mbedtls +rpcd-mod-rrdns \
		+luci-proto-ipv6 +luci-proto-ppp +luci-proto-3g \
		+libiwinfo +libiwinfo-lua \
		+luci-theme-sdcpe

PKG_BUILD_DEPENDS:=iwinfo

PKG_LICENSE:=Apache-2.0

include ../../luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature

