
mount /dev/sda3 /mnt/hdd/hdd1
mount /dev/sdc3 /mnt/hdd/hdd2
mount /dev/sdd3 /mnt/hdd/hdd3
mount /dev/sde3 /mnt/hdd/hdd4
mount /dev/sdf3 /mnt/hdd/hdd5


mount /dev/sdb /mnt/seed


ls /mnt/hdd | parallel -v -j6 rsync -avzh --progress /mnt/seed/Docker_Volumes /mnt/hdd/{}/ 