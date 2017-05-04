#!/bin/sh

mkdir tmp
cd tmp
wget https://s3.amazonaws.com/analytics-library/freshsales_php.zip -O source.zip
unzip source.zip
cp -r Freshsales ../src
cd ..
rm -f src/Freshsales/Sample.php
rm -rf tmp
find . -name '.DS_Store' -type f -delete
php-cs-fixer fix --rules=@Symfony ./src