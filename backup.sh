#!/bin/sh
tar -zcvpf /home/backups/fullbackup.tar.gz --directory=/ --exclude=proc --exclude=sys --exclude=dev --exclude=home/backups --exclude=boot .
