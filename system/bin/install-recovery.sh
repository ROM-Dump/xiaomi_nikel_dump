#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:15213472:10128dc944c5ce9ddc09a0ec0bae9c7541dfe42b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:11021216:03c16969ffabdefcf70b1a100f05071e346854be EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 10128dc944c5ce9ddc09a0ec0bae9c7541dfe42b 15213472 03c16969ffabdefcf70b1a100f05071e346854be:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
