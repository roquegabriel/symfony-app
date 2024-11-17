#!/usr/bin/env bash

composer install -n

php bin/console tailwind:build --minify
php bin/console asset-map:compile

exec "$@"
