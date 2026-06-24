#!/usr/bin/env bash
# script exits immediately if any preparatory command fails
set -e

case "$1" in 
    server) 
	    shift
	    exec python3 /opt/vinagpu/vinagpu_server.py "$@" 
	    ;;
    help) 
	    echo 'Usage: docker run <image> server'
	    echo 'GPU programs: vina-gpu, qvina-gpu, qvinaw-gpu'
	    echo 'CPU programs: vina, qvina, qvinaw'
	    echo "Set the program via 'program' key in the server config (init_server block or top-level)."
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