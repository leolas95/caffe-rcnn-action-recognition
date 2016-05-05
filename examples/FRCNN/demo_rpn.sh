#!/usr/bin/env sh
# This script test four voc images using faster rcnn end-to-end trained model (ZF-Model)
BUILD=build/examples/FRCNN/demo_rpn_api.bin

$BUILD --gpu 0 \
       --model models/FRCNN/zf_rpn/test.prototxt \
       --weights models/FRCNN/zf_faster_rcnn_final.caffemodel \
       --default_c examples/FRCNN/config/default_config.json \
       --override_c examples/FRCNN/config/demo_config.json \
       --image_dir examples/FRCNN/images/  \
       --out_dir examples/FRCNN/results/ 
