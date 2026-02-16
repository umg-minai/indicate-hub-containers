#!/bin/bash

DATABASE_PASSWORD=$(cat /run/secrets/database-password) \
  exec uvicorn indicate_data_exchange_server.main:app --host 0.0.0.0 --port 8080
