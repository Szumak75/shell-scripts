#!/bin/bash

# (Debian|Ubuntu) APT upgrade sequence

sudo sh -c "apt update && apt upgrade && apt autoremove --purge -y && apt autoclean -y"