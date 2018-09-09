#!/bin/bash

date +"%Y-%m-%dT%H:%M+0900" -d "+16 hours"

TZ='Asia/Tokyo' date -Iminutes
