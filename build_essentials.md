## 📦 Chapter 2 — Additional Installations Required After JetPack

JetPack 6.2 installs only the **minimal NVIDIA BSP** (kernel, drivers, bootloader, CUDA runtime).  
To enable full GPU acceleration, AI workloads, and C++/Python development, the following components must be installed.

---

### ⚙️ GPU Compute Stack
- CUDA Toolkit 12.x  
- cuDNN 9.x  
- TensorRT 10.x  
- ONNX Runtime GPU  
- PyCUDA / CUDA Python  

---

### 👁️ Vision & Multimedia
- DeepStream 7.x  
- VPI 3.x  
- OpenCV 4.8  

---

### 🧠 Python AI / LLM / RAG Stack
- Transformers  
- Sentence Transformers  
- FAISS  
- ONNX  
- PyTorch  
- RAG libraries  

---

### 🛠️ System Tools & Development Libraries
- Docker + NVIDIA container runtime  
- Build essentials  
- OpenMPI  
- OpenBLAS  
- Codecs  
- C++ development libraries  

---

All of these components are installed automatically using the script below:

👉 **[install_base_software_packages.sh](install_base_software_packages.sh)**

---

## ▶️ How to Run the Installation Script

1. Copy the script to the Jetson J40  
2. Make it executable  
3. Run it


This script installs the **entire GPU, AI, vision, and system stack** required for development.

---

## 🔍 Verify Installations

You can verify all installed components using:

👉 **[verify_bsp_installation.sh](verify_bsp_installation.sh)**

### How to run:

```code
chmod +x verify_bsp_installation.sh
./verify_bsp_installation.sh
```


This script checks:

- CUDA  
- cuDNN  
- TensorRT  
- DeepStream  
- VPI  
- OpenCV  
- ONNX Runtime GPU  
- Python environment  
- Docker GPU runtime  

---

## 🎉 Summary

After running both scripts:

- Your Jetson J40 has a **complete GPU + AI + Vision + System stack**  
- All components are **version‑controlled and reproducible**  
- The environment is ready for **Python LLM/RAG**, **C++ inference**, and **DeepStream pipelines**  

This ensures every developer and every device has the **exact same working baseline**.
