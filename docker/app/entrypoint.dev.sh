#!/bin/bash

poetry config virtualenvs.path ./local/app
poetry install

exec "$@"