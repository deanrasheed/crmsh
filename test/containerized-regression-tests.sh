#!/bin/sh
docker pull krig/crmsh:latest
docker run -t -v "$(pwd):/app" krig/crmsh /bin/sh -c "cd /app; ./test/run-in-container.sh $(id -un) $(id -gn) $(id -u) $(id -g)"
