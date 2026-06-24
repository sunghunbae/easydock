#!/usr/bin/env bash

set -e

case "$1" in
    protonate)
        shift
        exec python /unipka/unipka.py "$@"
        ;;
    help) 
        echo "Use docker run <image> protonate <args>"
        ;;
    *) 
        if [ -z "$1" ]; then
			echo "Error: No command provided."
			echo "Use 'protonate' to start the application, or 'help' for usage instructions."
			exit 1
		fi
        exec "$@"
        ;;
esac