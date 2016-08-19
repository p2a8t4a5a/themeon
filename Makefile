install:
	make uninstall
	mkdir -p /usr/lib/themeon
	cp -f ./src/bin/themeon /usr/local/bin/
	cp -rf ./src/lib /usr/lib/themeon
	mv /usr/lib/themeon/lib/* /usr/lib/themeon/
	rm -rf usr/lib/themeon/lib
	chmod -R 777 /usr/lib/themeon/
	chmod 777 /usr/local/bin/themeon
	chown -R root:root /usr/lib/themeon/
	chown root:root /usr/local/bin/themeon

uninstall:
	rm -rf /usr/lib/themeon
	rm -f /usr/local/bin/themeon

goodbye:
	make uninstall
	rm -rf $HOME/.config/themeon
	rm -rf /usr/config/themeon
