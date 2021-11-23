#!/usr/bin/env bash

PYTHON=${PYTHON:-"python"}



GPUS="1"
ROOT="oriented_rcnn"

# CONFIG='faster_rcnn_roitrans_r50_fpn_1x_ms_rr_daota10'
# CONFIG='faster_rcnn_orpn_swin_fpn_1x_ms_rr_dota10'
# CONFIG='faster_rcnn_orpn_swinS_fpn_1x_ms_rr_dota10'
# CONFIG='faster_rcnn_roitrans_swinS_fpn_1x_ms_rr_dota10'
# CONFIG='faster_rcnn_orpn_swinS_fpn_1x_ss_rr_dota10'
# CONFIG='faster_rcnn_orpn_swinT_fpn_1x_ss_rr_dota10'
# CONFIG='faster_rcnn_orpn_swinT_fpn_1x_ms_rr_dota10'
# CONFIG='faster_rcnn_orpn_swinT_fpn_1x_ss600_rr_dota10'
CONFIG='faster_rcnn_orpn_swinT_fpn_1x_ss1024_rr_dota10'


## single GPU

python tools/train.py configs/obb/$ROOT/$CONFIG.py

# Multiple GPU
# ./tools/dist_train.sh configs/obb/$ROOT/$CONFIG.py $GPUS
