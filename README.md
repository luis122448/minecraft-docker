


# Manual Mount
sudo mount /dev/sda1 /var/www/nas-server/volumens/nas-server-nextcloud/data/disk001
sudo mount /dev/sdb1 /var/www/nas-server/volumens/nas-server-nextcloud/data/disk002

# Edit Archive
sudo nano /etc/fstab

# Automatic Mount
/dev/sda1 /var/www/nas-server/volumens/nas-server-nextcloud/data/disk001
/dev/sdb1 /var/www/nas-server/volumens/nas-server-nextcloud/data/disk002

