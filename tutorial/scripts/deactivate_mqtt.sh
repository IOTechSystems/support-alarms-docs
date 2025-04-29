#!/bin/sh

mosquitto_pub -t "xrt/mqtt/input" -m '{"value" : 0}'

