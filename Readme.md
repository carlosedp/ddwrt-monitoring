# DD-WRT Router Monitoring with Prometheus and Grafana

![ss1](img/ss1.png)

This stack is used to monitor a Netgear R7000P (Nighthawk) router that uses a Broadcom CPU. It might not work on different router brands or models.

## Preparing the Router

1) First enable JFFS in Router GUI to persist files and create the dir `/jffs/snmpd/`
2) Copy all `.sh` scripts from `router` directory into router's `/jffs/snmpd/`
3) Add execute permission with `chmod +x /jffs/snmpd/*.sh`
4) Copy config file `router/snmpd.conf` into `/var/snmp/snmpd.conf`
5) Disable SNMP on the service page of the GUI
6) Add `snmpd -c /jffs/snmpd/snmpd.conf` in the startup commands in the GUI (Administration -> Commands -> Save as Startup)
7) Reboot

## Setup the Monitoring Stack

1) Run `docker-compose up -d`

Grafana, Prometheus and Alertmanager will be configured with provisioned Data Source pointing to <http://prometheus:9090> and with the dashboards pre-loaded.

The historical data for Prometheus and configuration changes for Grafana are stored in Docker volumes. If required, this can be changed to the local disk.

The URLs for the stack apps are:

* Grafana: <http://localhost:3000>
* Prometheus: <http://localhost:9090>
* Alertmanager: <http://localhost:9093>
* SNMP-Exporter: <http://localhost:9116>

