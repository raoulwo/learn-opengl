#!/usr/bin/env bash

# Generates necessary build files using the Ninja generator.
cmake -S . -B build -G "Ninja"

# Build the project using the generated build files.
cmake --build build
