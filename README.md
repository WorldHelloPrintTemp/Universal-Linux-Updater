# 🚀 Universal Linux Updater

A smart, adaptive, and fully automated bash script designed to keep your Linux distribution completely up to date, clean, and running at peak performance. 

Whether you are running **Arch/Omarchy**, **Kali**, **Ubuntu/Debian**, or **Fedora**, this tool auto-detects your operating system, automatically changes its terminal theme color to match your OS identity, and handles all updates flawlessly.

---

## ⚡ Fast Installation (One-Line Execution)

Don't want to clone the whole repository? You can download, configure, and run the script with **one single copy-and-paste command**:

```bash
curl -sSL [https://raw.githubusercontent.com/WorldHelloPrintTemp/Universal-Linux-Updater/main/super-updater.sh](https://raw.githubusercontent.com/WorldHelloPrintTemp/Universal-Linux-Updater/main/super-updater.sh) -o super-updater.sh && chmod +x super-updater.sh && ./super-updater.sh
🛠️ Manual Installation GuideIf you prefer to clone the repository and keep the files locally, copy and paste these commands step-by-step:1. Clone the RepositoryBashgit clone [https://github.com/WorldHelloPrintTemp/Universal-Linux-Updater.git](https://github.com/WorldHelloPrintTemp/Universal-Linux-Updater.git)
cd Universal-Linux-Updater
2. Grant Execution PermissionsBashchmod +x super-updater.sh
3. Run the UtilityBash./super-updater.sh
✨ Key Features🎨 Dynamic Theming: Automatically switches color schemes based on your detected distribution (Green for Arch/Omarchy, Blue for Kali, Amber for Debian/Ubuntu, etc.).📦 All-in-One Package Upgrades: Detects and runs upgrades for yay, pacman, apt, dnf, or zypper.🧩 Flatpak Syncing: Keeps your sandboxed application ecosystem updated in one go.🛡️ Smart Firmware Flashing: Runs fwupdmgr with NVRAM-saving flags to protect small laptop motherboard spaces (perfect for Lenovo laptops).🧹 Deep System Cleanup: Safely sweeps away orphaned packages and unused application cache layers.📊 Interactive Menu OptionsWhen you launch the tool, you will be presented with a clean, interactive menu:OptionActionIdeal For1) Standard UpdateUpdates core repository packages and system hardware drivers.Daily maintenance.2) Full-Scale UpdateUpgrades packages, Flatpaks, and motherboard/BIOS firmware.Weekly complete sync.3) Optimization & CleanupPurges leftover junk, cached data, and detached dependencies.Freeing up disk space.4) ExitSafely closes the utility.Leaving the terminal clean.⚠️ Important Note for Laptop UsersIf option 2 flags firmware database errors regarding efivarfs space (common on Lenovo laptops), the script will automatically bypass the issue safely using the --no-history block configuration. Your core drivers and kernel will remain entirely up to date!🤝 ContributingUpdates, optimization suggestions, and pull requests are always welcome! Feel free to fork the repository and open an issue if you want to add support for more distributions.⭐ If this script helped keep your system clean and updated, give it a star on GitHub!
***

### 💡 Pro-Tip for your GitHub Repository:
Make sure that when you upload your script file to GitHub, you name it exactly `super-updater.sh` and that it sits in the main folder. That way, the mega one-line `curl` command at the top of the README will work perfectly for anyone who visits your page! 

`Universal Linux Updater` is a phenomenal, clean name choice. Your repository is going to look awesome!
