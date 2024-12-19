# Alarms Service Tutorial

## Tutorial Prerequisites

- docker
- docker compose
- jq
- curl

If running the Edge Central version of the tutorial then Edge Central v4 is required.

## Running The Tutorial

To run the tutorial, start the Alarms Service, Edge Central/EdgeX and some Modbus device simulators using one of the provided scripts:

### Start EdgeX

```bash
./deploy_edgex.sh
```

### Start EdgeX with Security

```bash
./deploy_edgex_secure.sh
```

### Start Edge Central

```bash
./deploy_edgecentral.sh
```
### Add Devices and Run Alarm Commands

Once the deployment is running, add the device profiles and onboard the devices with the following command:

```bash
./add_devices.sh
```

Or if running with security, add the device profiles and onboard the devices with the following command:

```bash
./add_devices_secure.sh
```

We can now trigger alarms for the Modbus devices and observe how the Alarms Service can handle and deliver these.

To configure Alarms Conditions, Routes, and Actions please follow the steps [here](./docs/routing-management.md).

Additionally, to manage Alarms and States please follow the steps [here](./docs/alarms-management.md).


## Stopping The Tutorial

To stop the tutorial, run one of the following commands:

### Stop EdgeX

```bash
docker compose -f docker-compose.edgex.yml down
```

### Stop EdgeX with Security

```bash
docker compose -f docker-compose.edgex-secure.yml down
```

### Stop Edge Central

```bash
edgecentral down
```
