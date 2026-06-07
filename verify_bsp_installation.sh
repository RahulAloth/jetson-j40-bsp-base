#!/bin/bash
set -e

echo "==============================================="
echo "   Jetson J40 BSP Verification Script"
echo "==============================================="

PASS=true

check() {
    echo -n "[CHECK] $1 ... "
    if eval "$2" &>/dev/null; then
        echo "OK"
    else
        echo "FAILED"
        PASS=false
    fi
}

echo "Running verification checks..."

# CUDA
check "CUDA (nvcc)" "nvcc --version"

# cuDNN
check "cuDNN" "grep -R \"CUDNN_MAJOR\" /usr/include/cudnn_version.h"

# TensorRT
check "TensorRT" "dpkg -l | grep -q tensorrt"

# DeepStream
check "DeepStream" "deepstream-app --version-all"

# VPI
check "VPI" "vpi_sample_01 --help"

# OpenCV
check "OpenCV Python" "python3 - << 'EOF'
import cv2
print(cv2.__version__)
EOF"

# ONNX Runtime GPU
check "ONNX Runtime GPU" "python3 - << 'EOF'
import onnxruntime as ort
print(ort.get_device())
EOF"

# Python venv
check "Python Virtual Env" "test -d /home/nyra/crf_integration/crf_env"

# Docker GPU
check "Docker GPU Access" "docker run --rm --runtime=nvidia nvcr.io/nvidia/cuda:12.6.0-base nvidia-smi"

echo "-----------------------------------------------"
if [ "$PASS" = true ]; then
    echo "🎉 ALL CHECKS PASSED — BSP installation is valid!"
else
    echo "❌ SOME CHECKS FAILED — please review the output."
fi
echo "-----------------------------------------------"
