#!/bin/bash
echo '[entrypoint.sh] - Wait time to WEBSERVER stand up'
sleep 10

echo '[entrypoint.sh] - Start the PHP-FPM serviceUP '
/usr/sbin/php-fpm7.3 -O -F &

echo '[entrypoint.sh] - Silent SuiteCRM Installation'

echo '[entrypoint.sh] - Config permission '
chmod 775 -R .
chown -R www-data:www-data .

echo '[entrypoint.sh] - Wait for the install process'
sleep 5

echo '[entrypoint.sh] - DONE'
tail -f /dev/null