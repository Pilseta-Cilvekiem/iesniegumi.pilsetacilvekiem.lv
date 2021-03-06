#!/bin/sh

cd /app

apk update
apk upgrade
apk add --no-cache bash git openssh nodejs npm

mix local.hex --force
mix local.rebar --force

mix deps.get

cd assets && npm install && cd ..

# mix ecto.create
# mix ecto.migrate

# mix test

mix phx.server