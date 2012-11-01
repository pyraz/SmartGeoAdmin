#!/bin/sh
cd /
tar -zcvpf /backups/fullbackup.tar.gz --directory=/ --exclude=proc
--exclude=sys --exclude=dev --exclude=backups --exclude=boot .