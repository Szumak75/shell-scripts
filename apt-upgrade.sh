#!/bin/bash

# (Debian|Ubuntu) APT upgrade sequence

sudo apt update && sudo apt upgrade && sudo apt autoremove --purge -y sudo && apt autoclean -y