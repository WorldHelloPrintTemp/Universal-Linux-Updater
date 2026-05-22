# Universal Linux Updater

Have you ever wanted to update your linux system without any hassle? Maybe your distro doesnt have a built in update manager app (Like Omarchy) Maybe your update manager doesnt give you a full, complete update? Maybe you just want to update everything in one go? If any of these relate to you, well, you have come to the right place! You can update your whole system (or maintain it) in one step or simple, easy manual steps! The choice is yours! 

**This is mainly an updater**, but more maintainence features are underway!

---

# Setup

There are two ways to install this: Manually or automatically. If you prefer it to be one easy terminal command, do the automatic setup. If you prefer to see what your doing, do the manual setup. The choice is yours (as stated before).

## Automatic

Just copy this line and paste it into your terminal!

```bash
curl -sSL https://raw.githubusercontent.com/WorldHelloPrintTemp/Universal-Linux-Updater/main/update-system.sh -o update-system.sh && chmod +x update-system.sh && ./update-system.sh
```
## Manual

All you need to do is copy these lines of code and paste them into your terminal seperately!

Step 1: Grab the files from GitHub

```bash
git clone https://github.com/WorldHelloPrintTemp/Universal-Linux-Updater.git
```

Step 2: Jump into the new folder

```bash
cd Universal-Linux-Updater
```

Step 3: Give the script permission to run

```bash
chmod +x update-system.sh
```

Step 4: Execute the script!

```bash
./update-system.sh
```

---

And there you have it! No matter what setup you did, you can just run
```bash
./update-system.sh
```
Any time you want to reuse the script!

---

# What makes this maintenance script so special?

•**🎨Dynamic Theming:** This script automatically changes colour scheme of the script depending on what distro your using (For example, if your using Omarchy it will be a nice, green colour).

•**📦 All-in-One Package upgrades:** It finds your package manager (like yay, pacman, apt, dnf, or zypper) and triggers the right update sequences.

•**🧩 Flatpak Syncing:** It keeps all your standalone Flatpak apps (like Steam, Discord, and so on) updated!

•**🛡️ Laptop Firmware Flashing:** It looks for motherboard/BIOS updates using fwupdmgr with flags to hopefully prevent errors.

•**🧹 Deep Rubbish Cleanup:** It deletes old, unused packages and unused application cache layers that are just staying, sleeping on your drive

---
# 📊 What the Menu Looks Like?

when you launch this tool, you will get an interactive text menu. Here is what to expect:


| Option | What it does | When to use it |
| -------- | -------- | -------- |
| 1) Standard Update  | Updates your core system packages and hardware drivers  | Perfect for a quick, daily check  |
| 2) Full-Scale Update | Upgrades everything: system packages, Flatpaks, and BIOS firmware  | Great for a weekly total sync. |
| 3) Optimization & Cleanup  |  Deletes leftover rubbish files, unused cache, and other files. | Use this when you need extra storage space. |
| 4) Exit  | Safely exits the tool. | When you're all done! |

---

# ⚠️ A Quick Note for Laptop Users

If you select full upgrade (Option 2) and your terminals complaining about "efivarfs space", dont panic! The script is designed to automatically bypass this common hardware roadblock. Your actual drivers and kernal updates will install completely fine!

---

# 🤝 Want to help make it better?

This is an open source project, so updates, optinizatino suggestions, and pull request are, of course, welcome! Feel free to fork the repo, and maybe even improve it yourself! 

---

**⭐ If this script helped you in any way, please press that star button on the page. You dont have to but I would be very greatful!⭐**
