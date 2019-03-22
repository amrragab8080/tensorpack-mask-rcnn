#!/usr/bin/env bash

# A script to download old tensorboard event files to compare against. Downloads an example of successful convergence,
# an example of non-successful convergence and all of the 'convergence' codebase runs. Allows Tensorboard to display
# all runs together if the tensorboard.sh command is used

# Use in VM, not inside docker container

rm -r ~/old_logs
mkdir -p ~/old_logs


aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/nobatch_notconverging_20190315_t1 ~/old_logs/nobatch_notconverging_20190315_t1
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/cuda10_baseline_converge_2019021_3030540 ~/old_logs/cuda10_baseline_converge_2019021_3030540


# Convergence isolation codebase
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_baseline_20190319 ~/old_logs/convergence_codebase_iso_baseline_20190319
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_baseline_20190320 ~/old_logs/convergence_codebase_iso_baseline_20190320
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_roialign_box_20190319 ~/old_logs/convergence_codebase_iso_roialign_box_20190319
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_roialign_mask_20190320 ~/old_logs/convergence_codebase_iso_roialign_box_20190320
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_sampletargets_20190320 ~/old_logs/convergence_codebase_iso_sampletargets_20190320
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_rpnloss_20190320 ~/old_logs/convergence_codebase_iso_rpnloss_20190320
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_fastrcnn_losses_20190321 ~/old_logs/convergence_codebase_iso_fastrcnn_losses_20190321
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_fastrcnn_outputs_20190321 ~/old_logs/convergence_codebase_iso_fastrcnn_outputs_20190321
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_maskloss_20190321 ~/old_logs/convergence_codebase_iso_maskloss_20190321
aws s3 cp --recursive s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_crop_and_resize_mask_20190321 ~/old_logs/convergence_codebase_iso_crop_and_resize_mask_20190321




# sudo rm ~/logs/htimeline.json
# aws s3 cp --recursive logs/ s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_XXXXXXX/
#aws s3 cp --recursive logs/ s3://aws-tensorflow-benchmarking/maskrcnn/results/convergence_codebase_iso_crop_and_resize_mask_20190321/


