#!/bin/sh

mkdir tmp
cd tmp
wget https://s3.amazonaws.com/analytics-library/freshsales_php.zip -O source.zip
unzip source.zip
cp -r Freshsales ../src
rm -f src/Freshsales/Sample.php
cd ..
rm -rf tmp
php-cs-fixer fix --rules=@Symfony ./src