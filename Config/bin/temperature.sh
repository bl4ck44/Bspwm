#!/bin/bash

# Obtener la temperatura del procesador (requiere lm-sensors)
temperature=$(sensors | grep "Core 0" | awk '{print $3}')
