#!/bin/bash

BLUEMAN_PROCESSES=$(pgrep -f blueman)

if [ -n "$BLUEMAN_PROCESSES" ]; then
    echo "Terminating blueman processes:"
    for PID in $BLUEMAN_PROCESSES; do
        echo "Terminating process with PID $PID"
        kill $PID
    done
else
    echo "No blueman processes are running"
fi

