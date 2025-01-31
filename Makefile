# Warp specific targets
# Reference: https://developers.cloudflare.com/warp-client/get-started/linux/
warp: warp.off
	warp-cli connect
	make warp.test
warp.test:
	curl https://www.cloudflare.com/cdn-cgi/trace/
warp.off:
	warp-cli disconnect
	make warp.test
warp.fix:
	warp-cli tunnel rotate-keys
minecraft:
	sudo java -jar ThirdParty/TLauncher.jar
