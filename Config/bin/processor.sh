#!/bin/bash

# Obtener la información de top y extraer el porcentaje de uso del procesador
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
