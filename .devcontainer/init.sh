#!/bin/bash

nrf="nrfutil toolchain-manager launch"
$nrf -- west init -l app/
$nrf -- west update --narrow -o=--depth=1
$nrf -- west zephyr-export
$nrf -- pip install -r deps/nrf/scripts/requirements.txt