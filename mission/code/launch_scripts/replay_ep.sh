#!/bin/bash

HUGGINGFACE_TOKEN=""

huggingface-cli login --token ${HUGGINGFACE_TOKEN} --add-to-git-credential
HF_USER=$(huggingface-cli whoami | head -n 1)
echo $HF_USER

python -m lerobot.replay \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM1 \
    --robot.id=lexxpluss-follower-01 \
    --dataset.repo_id=${HF_USER}/record-lexxpluss_pickNdrop_bottle\
    --dataset.episode=3