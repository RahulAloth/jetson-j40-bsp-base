## 📘 Chapter 1 — Installing JetPack 6.2 Using NVIDIA SDK Manager

### 1. Install NVIDIA SDK Manager
Install on an Ubuntu x86_64 host machine.

### 2. Put Jetson J40 into Recovery Mode
1. Power off  
2. Hold **Force Recovery**  
3. Press **Reset**  
4. Release **Reset**, keep holding **Force Recovery**  
5. Connect USB‑C to host  

### 3. Flash JetPack 6.2
In SDK Manager:

- **Target Hardware:** Jetson Orin NX  
- **JetPack Version:** 6.2  
- Select **Flash OS + Install SDK Components**

### 4. First Boot Setup
On the J40:

- Create user  
- Connect to network  
- Update system  

After this step, the board is ready for BSP installation.
