# Alarms Service Tutorial

## Tutorial Prerequisites

- docker
- docker compose
- jq
- curl

If running the Edge Central version of the tutorial then Edge Central v4 is required.

## Running The Tutorial

The following scripts are provided to run the Alarm Service with Edge Central or EdgeX in both secure or non secure modes. Scripts are also provided to provision a number of Modbus devices (using simulators) that can be used as the source of device related alarm triggers:

### Start EdgeX

To run the the Alarm Service with EdgeX in non secure mode then issue the following command:

```bash
./deploy_edgex.sh
```

### Start EdgeX with Security

To run the the Alarm Service with EdgeX in secure mode then issue the following command:

```bash
./deploy_edgex_secure.sh
```

### Start Edge Central

To run the the Alarm Service with Edge Central in non secure mode then issue the following command:

```bash
./deploy_edgecentral.sh
```
### Add Devices and Run Alarm Commands

If the platform is running in non secure mode then Modbus devices can be added to the deployment by issuing the following command:

```bash
./add_devices.sh
```

If the platform is running in secure mode then Modbus devices can be added to the deployment by issuing the following command:

```bash
./add_devices_secure.sh
```

We can now trigger alarms for the Modbus devices and observe how the Alarms Service can handle and deliver these.

To manage Alarms and States please follow the steps [here](./docs/alarms-management.md).

To configure Alarm Conditions, Routes, and Actions please follow the steps [here](./docs/routing-management.md).


## Stopping The Tutorial

### Stop EdgeX

To stop the tutorial when EdgeX is running in non secure mode issue the following command:

```bash
docker compose -f docker-compose.edgex.yml down
```

### Stop EdgeX with Security

To stop the tutorial when EdgeX is running in secure mode issue the following command:

```bash
docker compose -f docker-compose.edgex-secure.yml down
```

### Stop Edge Central

To stop the tutorial when Edge Central is running in non secure mode issue the following command:

```bash
edgecentral down
```
