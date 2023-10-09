#!/usr/bin/env sh

echo 'The following command terminates the "npm start" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when "deliver.sh"'
echo 'was executed.'
set -x
pid=$(cat .pidfile)
if [ -n "$pid" ]; then
    kill "$pid"
else
    echo "Process not found or .pidfile is empty."
fi