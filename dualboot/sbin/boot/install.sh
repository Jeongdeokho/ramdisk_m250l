if /sbin/ext/busybox [ ! -f /system/cfroot/release-122-LPF- ]; 
then
# Remount system RW
    /sbin/ext/busybox mount -o remount,rw /system
    /sbin/ext/busybox mount -t rootfs -o remount,rw rootfs


# Once be enough
    toolbox mkdir /system/cfroot
    toolbox chmod 755 /system/cfroot
    toolbox rm /data/cfroot/*
    toolbox rmdir /data/cfroot
    toolbox rm /system/cfroot/*
    echo 1 > /system/cfroot/release-122-LPF- 

fi;
