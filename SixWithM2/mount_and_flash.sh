
mount /dev/sda4 /mnt/hdd/hdd1
mount /dev/sdb4 /mnt/hdd/hdd2
mount /dev/sdc4 /mnt/hdd/hdd3
mount /dev/sdd4 /mnt/hdd/hdd4
mount /dev/sde4 /mnt/hdd/hdd5
mount /dev/sdf4 /mnt/hdd/hdd6

mount /dev/nvme0n1 /mnt/seed


ls /mnt/hdd | parallel -v -j6 rsync -avzh --progress /mnt/seed/Docker_Volumes /mnt/hdd/{}/ 