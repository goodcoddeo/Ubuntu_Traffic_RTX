#!/bin/bash

# Default values
IFACE=${1:-enp0s6}
INTERVAL=${2:-1}

# Function to read RX and TX bytes
get_bytes() {
    line=$(grep "$IFACE" /proc/net/dev | tr ':' ' ')
    RX=$(echo "$line" | awk '{print $2}')
    TX=$(echo "$line" | awk '{print $10}')
    echo "$RX $TX"
}

# Read initial values
read RX1 TX1 < <(get_bytes)
sleep "$INTERVAL"
read RX2 TX2 < <(get_bytes)

# Calculate rates
RX_RATE=$(( (RX2 - RX1) / INTERVAL ))
TX_RATE=$(( (TX2 - TX1) / INTERVAL ))

# Print results
echo "Interface: $IFACE"
echo "Interval: ${INTERVAL}s"
echo "RX Rate: $RX_RATE Bytes/s"
echo "TX Rate: $TX_RATE Bytes/s"
