#!/bin/bash

# Login credentials (Render ke Environment Variables se change kar sakte ho)
USERNAME="${TTYD_USER:-admin}"
PASSWORD="${TTYD_PASS:-admin123}"

exec /usr/local/bin/ttyd --writable -p 8080 -c "${USERNAME}:${PASSWORD}" /bin/bash
