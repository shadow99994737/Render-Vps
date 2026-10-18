#!/bin/bash

# Login credentials (Render ke Environment Variables se change kar sakte ho)
USERNAME="${TTYD_USER:-root}"
PASSWORD="${TTYD_PASS:-root}"

exec /usr/local/bin/ttyd --writable -p 8080 -c "${USERNAME}:${PASSWORD}" /bin/bash
