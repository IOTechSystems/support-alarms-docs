# Alarms Service Tutorial

## Tutorial Prerequisites

- Edge Central >= v4
- jq
- curl

## Running The Tutorial

To run the tutorial, start Edge Central including the Alarms Service, the Edge Central UI and some Modbus device simulators using the provided script:
```bash
./deploy.sh
```

Once Edge Central is running, add the device profiles and onboard the devices with the following command:

```bash
./add_devices.sh
```

We can now trigger alarms for the Modbus devices and observe how the Alarms Service can handle and deliver these. To configure Alarms Conditions, Routes, and Actions please follow the steps [here](./docs/contents.md).

## Stopping The Tutorial

To stop the tutorial, run the following command:

```bash
edgecentral down
```
