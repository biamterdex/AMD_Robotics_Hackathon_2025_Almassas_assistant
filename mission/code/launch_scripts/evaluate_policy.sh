#!/bin/bash

HUGGINGFACE_TOKEN="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"

hf auth login --token ${HUGGINGFACE_TOKEN} --add-to-git-credential
HF_USER=$(hf auth whoami | head -n 1)
echo $HF_USER

python examples/lekiwi/evaluate.py
