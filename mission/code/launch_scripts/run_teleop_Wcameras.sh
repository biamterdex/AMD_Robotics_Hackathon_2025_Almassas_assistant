#!/bin/bash

python -m lerobot.teleoperate \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM1 \
    --robot.id=lexxpluss-follower-01 \
    --robot.cameras="{ top: {type: opencv, index_or_path: /dev/video2 , width: 640, height: 480, fps: 30}, wrist: {type: opencv, index_or_path: /dev/video0 , width: 640, height: 480, fps: 30}, front: {type: opencv, index_or_path: /dev/video6 , width: 640, height: 480, fps: 30}}" \
    --teleop.type=so101_leader \
    --teleop.port=/dev/ttyACM0 \
    --teleop.id=lexxpluss-leader-01 \
    --display_data=true