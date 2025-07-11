cd ~

if [ -d sqlmap ]; then
    cd sqlmap

	git pull https://github.com/sqlmapproject/sqlmap.git master
else
	git clone https://github.com/sqlmapproject/sqlmap.git
fi