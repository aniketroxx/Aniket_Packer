echo "Pack the final kernel"

mkdir out

./tools/mkbootimg --kernel kernel/zImage --ramdisk ramdisk.img -o out/boot.img --base 0x80200000 --ramdisk_offset 0x02000000 --cmdline "console=ttyHSL0,115200,n8 androidboot.hardware=sony androidboot.selinux=permissive user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2" --pagesize 2048

echo "Successfully done , out will contain the boot.img"


