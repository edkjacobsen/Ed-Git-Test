#!/bin/bash

[ -z "$1" ] || [ ! -f "$1" ] || (rm -f "$1"; echo "removed")

