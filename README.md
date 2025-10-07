# 🎮 GeForce NOW Anti-AFK Script (AutoHotkey v1)

This script prevents **GeForce NOW** from logging you out due to inactivity.  
It simulates small mouse movements **in the background**, without changing your actual cursor position or interfering with your game.

---

## 🚀 Features

- Works **entirely in the background** (no window focus required)  
- Uses **PostMessage** for native background input  
- No visible mouse movement or window switching  
- Customizable interval between actions  
- Available as both `.ahk` (source) and `.exe` (standalone)  

---

## How it works

- The script uses AutoHotkey’s PostMessage function to send WM_MOUSEMOVE messages directly to the GeForceNOW.exe window.
- These messages are interpreted by GeForce NOW as real user activity — even though no visible mouse motion happens.

---

## 🧩 Requirements

- For the `.ahk` version: [AutoHotkey v1.x](https://www.autohotkey.com/download/1.1/) (⚠️ not v2!)  
- For the `.exe` version: **no installation required** — just run it directly  
- GeForce NOW must be running  

---

## 💻 How to Use

### Option 1 – Run the compiled version  
1. Download **`GeForceNow_Anti_AFK.exe`** from the repository.  
2. Double-click the file while GeForce NOW is open.  
3. The script will automatically run in the background and simulate small mouse movements every few minutes.  

✅ **No AutoHotkey installation required!**

---

### Option 2 – Run the script version  
1. Download **`GeForceNow_Anti_AFK.ahk`**.  
2. Make sure **AutoHotkey v1** is installed.  
3. Double-click the script file to start it.  

---

## ⚙️ Configuration

Inside the script, you can customize how often and how the simulated mouse movement occurs:

```ahk
intervalMs := 170000    ; Time interval between actions (in milliseconds)
mx := 5                 ; Starting X position
my := 5                 ; Starting Y position
