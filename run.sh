#!/bin/bash

# Refer: https://gerrit.googlesource.com/gitiles/+/refs/tags/v1.2.0/tools/run_dev.sh

set -e

PROPERTIES="--jvm_flag=-Dcom.google.gitiles.configPath=$1"
PROPERTIES="$PROPERTIES --jvm_flag=-Dcom.google.gitiles.sourcePath=/source"

"/source/bazel-bin/java/com/google/gitiles/dev/dev" $PROPERTIES
