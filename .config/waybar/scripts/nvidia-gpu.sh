#!/bin/bash

TEMP=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)
FAN=$(nvidia-smi --query-gpu=fan.speed --format=csv,noheader,nounits)

if [[ "$FAN" == "N/A" ]]; then
  FAN="0"
fi

echo "{\"text\": \"󰢮 ${TEMP}°C  ${FAN}%\", \"tooltip\": \"NVIDIA GPU Temp: ${TEMP}°C\\nFan Speed: ${FAN}%\"}"