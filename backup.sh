#!/usr/bin/env bash

# 0 0 * * * /usr/local/sbin/backup.sh 2>&1 | /usr/bin/logger -t "k3s-backup"

date=`date +%Y-%m-%d`
folder="/var/backups/k3s"
file="k3s-backup-${date}.db"
path="${folder}/${file}"

echo "[${date}]"
echo "starting k3s backup"

cd /var/backups/k3s

/usr/bin/sqlite3 /var/lib/rancher/k3s/server/db/state.db <<EOF
.timeout 20000
.backup ${path}
EOF

echo "backup created at ${path}"

echo "starting backup rotation"

/usr/bin/find $folder -mtime +3 -name "*.db" -print -delete

echo "backup rotation done"
