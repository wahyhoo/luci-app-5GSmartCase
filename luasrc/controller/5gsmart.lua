module("luci.controller.5gsmart", package.seeall)

function index()
    entry({"admin", "network", "5gsmart"}, firstchild(), _("5GSmartCase"), 90).dependent = false
    entry({"admin", "network", "5gsmart", "overview"}, template("5gsmart/index"), _("Overview"), 10)
end
