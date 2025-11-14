#!/bin/bash

cp -r /app/build/* /static/

exec npx -y http-server -p 8000 /app/build