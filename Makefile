include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-5GSmartCase
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-5GSmartCase
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=5GSmartCase Control Panel
  PKGARCH:=all
endef

define Package/luci-app-5GSmartCase/description
  This package provides LuCI interface for 5GSmartCase.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-5GSmartCase/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DATA) ./luasrc/controller/5gsmart.lua $(1)/usr/lib/lua/luci/controller/
	
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/5gsmart
	$(INSTALL_DATA) ./luasrc/view/5gsmart/index.htm $(1)/usr/lib/lua/luci/view/5gsmart/
endef

$(eval $(call BuildPackage,luci-app-5GSmartCase))