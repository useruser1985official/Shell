cd ~

if [ -d sqlmap ]; then
    cd sqlmap
	
	git fetch https://github.com/sqlmapproject/sqlmap.git
	
	git pull https://github.com/sqlmapproject/sqlmap.git
else
	git clone https://github.com/sqlmapproject/sqlmap.git
fi