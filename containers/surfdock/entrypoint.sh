#!/usr/bin/env bash

set -e

case "$1" in 
	server) 
		shift
		exec conda run --no-capture-output -n SurfDock python /app/SurfDock/SurfDock/surfdock_server.py "$@" 
		;;
	help)
		echo "Use: docker run <image> server" 
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
