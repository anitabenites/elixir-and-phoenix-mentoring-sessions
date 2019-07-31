# FROM instruction reference:
#   https://docs.docker.com/engine/reference/builder/#from
FROM elixir:1.9.1

# RUN instruction reference:
#   https://docs.docker.com/engine/reference/builder/#run
RUN mix local.hex --force && \
  mix local.rebar --force && \
  mix hex.info

# WORKDIR instruction reference:
#   https://docs.docker.com/engine/reference/builder/#workdir
WORKDIR /shop_api
