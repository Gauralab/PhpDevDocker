#!/bin/sh
docker compose run certbot -d locdev.ru -d *.locdev.ru -d *.hk.locdev.ru -d *.vo.locdev.ru -d *.tt.locdev.ru --manual --preferred-challenges dns certonly