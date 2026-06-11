#!/bin/bash

sudo mkdir /var/log/clamav/

sudo chown -R clamav:clamav /var/log/clamav/

sudo service clamav-freshclam stop

sudo freshclam

sudo service clamav-freshclam start

clear

echo "Definições do Antivírus Clamav Atualizadas com Êxito!"