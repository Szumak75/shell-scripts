#!/bin/bash

# (Debian|Ubuntu) APT upgrade sequence

apt update && apt upgrade && apt autoremove --purge -y && apt autoclean -y