#!/usr/bin/env bash

set -e

case "$1" in 
    server) 
        shift
        exec python /carsidock/carsidock_server.py "$@"
        ;;
    help) 
        echo "Use docker run <image> server <args>"
        ;;
    *) 
        if [ -z "$1" ]; then
			echo "Error: No command provided."
			echo "Use 'server' to start the application, or 'help' for usage instructions."
			exit 1
		fi
        exec "$@"
        ;;
esac