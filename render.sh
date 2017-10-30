#!/bin/bash
which j2 || (echo "Run 'pip install -r requirements.txt' first" && exit 1)
j2 template.j2.html journeys.yaml > index.html
