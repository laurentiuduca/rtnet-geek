set -x
modprobe rt_ticpsw
#modprobe rt_smsc && modprobe rt_davinci_mdio && modprobe rt_ticpsw
modprobe rtipv4 && modprobe rtpacket && modprobe rtudp
modprobe rtmac
modprobe nomac
#modprobe tdma
#/usr/xenomai/sbin/rtnet start
/usr/xenomai/sbin/rtifconfig rteth0 up 192.168.1.20
/usr/xenomai/sbin/nomaccfg rteth0 attach
ifconfig vnic0 up 192.168.1.20
/usr/xenomai/sbin/rtroute solicit 192.168.1.30 dev rteth0

