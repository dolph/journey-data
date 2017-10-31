#!/bin/bash
which j2 || (echo "Run 'pip install -r requirements.txt' first" && exit 1)
j2 index.j2 journeys.yaml > index.html
