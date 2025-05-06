#!/bin/bash
IFACE="enp0s6"

RX1=$(cat /proc/net/dev | grep $IFACE | awk '{print $2}')
TX1=$(cat /proc/net/dev | grep $IFACE | awk '{print $10}')
sleep 1
RX2=$(cat /proc/net/dev | grep $IFACE | awk '{print $2}')
TX2=$(cat /proc/net/dev | grep $IFACE | awk '{print $10}')

RX_RATE=$((RX2 - RX1))
TX_RATE=$((TX2 - TX1))

echo "RX: $RX_RATE Bytes/s"
echo "TX: $TX_RATE Bytes/s"
