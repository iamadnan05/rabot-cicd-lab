#!/bin/bash

# Find the log file and compress it into a zip archive
tar -czf server_logs_archive.tar.gz server.log

# Empty out the original log file so it doesn't take up disk space
> server.log

echo "SUCCESS: Log rotation complete. Old logs archived."