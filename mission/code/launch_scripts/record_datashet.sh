#!/bin/bash

HUGGINGFACE_TOKEN="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"

hf auth login --token ${HUGGINGFACE_TOKEN} --add-to-git-credential
HF_USER=$(hf auth whoami | head -n 1)
echo $HF_USER

lerobot-record \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM1 \
    --robot.id=amd_hack_mobile_arm \
    --robot.cameras="{ front: {type: opencv, index_or_path: /dev/video8 , width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: /dev/video12 , width: 640, height: 480, fps: 30}, above: {type: opencv, index_or_path: /dev/video10 , width: 640, height: 480, fps: 30}}" \
    --teleop.type=so101_leader \
    --teleop.port=/dev/ttyACM0 \
    --teleop.id=my_awesome_leader_arm \
    --display_data=false \
    --dataset.repo_id="Biamterdex/amd_hackathon_mobile_arm" \
    --dataset.num_episodes=5 \
    --dataset.single_task="Pick and Drop dressing bottle" \
    --resume=true
    # --dataset.episode_time_s=300 \
    # --control.push_to_hub=true \