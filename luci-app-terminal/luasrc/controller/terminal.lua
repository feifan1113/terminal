module("luci.controller.terminal", package.seeall)

function index()
	if not (luci.sys.call("pidof ttyd > /dev/null") == 0) then
		return
	end

	entry({"admin", "system", "terminal"}, template("terminal"), _("Terminal"), 5).leaf = true
end