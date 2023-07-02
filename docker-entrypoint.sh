#!/bin/sh
echo "Starting Flights, a flight tracker for aircraft owners"
echo "Trying to migrate database"
/usr/local/bundle/bin/rails db:migrate
echo "Starting server on port 3000"
/usr/local/bundle/bin/rails server -b 0.0.0.0