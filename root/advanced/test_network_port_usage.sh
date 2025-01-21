#!/bin/bash

test_port=8080
echo "Starting Python HTTP server on port $test_port..."
python3 -m http.server "$test_port" &
pid=$!

echo "HTTP server started with PID $pid. Use this for testing."
echo "To stop the server, run: kill -9 $pid"

