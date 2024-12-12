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

### Start Edge Central

```bash
./deploy_edgecentral.sh
```
### Add Devices and Run Alarm Commands

Once the deployment is running, add the device profiles and onboard the devices with the following command:

```bash
./add_devices.sh
```

We can now trigger alarms for the Modbus devices and observe how the Alarms Service can handle and deliver these. To configure Alarms Conditions, Routes, and Actions please follow the steps [here](./docs/contents.md).

## Stopping The Tutorial

To stop the tutorial, run the following command:

### Stop EdgeX

```bash
docker compose down
```

### Stop Edge Central

```bash
edgecentral down
```
