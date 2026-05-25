#!/bin/bash
WS=/mnt/c/Users/Elias/CascadeProjects/modern-personality-agent/workspaces/CGA
S=$(ls $WS | wc -l)
sleep 10
E=$(ls $WS | wc -l)
R=$((E-S))
echo Rate +$R/10s ETA $(( (667-E)*10/R/60 ))min