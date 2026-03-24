# 🟩 Git Contribution Booster

A simple, lightweight script to help you fill gaps in your GitHub contribution graph by creating backdated commits. Designed to work on **Windows (Git Bash)** and **Linux/macOS**.

## 🚀 Quick Start

1. **Create a private repository** on GitHub (to keep your "dummy" commits hidden from your main feed).
2. **Clone it** to your local machine.
3. **Copy the `fill.sh` script** into your repository folder.
4. **Run the script** (see instructions below).
5. **Push the changes.**

---

## 💻 Usage (Git Bash / Linux / macOS)

Open your terminal in the repository folder and run:

```bash
# Make the script executable
chmod +x fill.sh

# Run the script
./fill.sh
```
---

🔧 Troubleshooting
------------------

If you run into issues while using the script, check these common fixes:

### 1\. "Fatal: detected dubious ownership" (Windows Users)

This occurs when the folder owner (often an Administrator) differs from the current user. To fix this, run:

PowerShell

`   git config --global --add safe.directory C:/path/to/your/repo   `

### 2\. My squares aren't turning green

There are three main reasons this happens:

*   Bashgit config user.email "your-github-email@example.com"
    
*   **Private Repository:** If your repository is private, GitHub hides these contributions by default. Go to your GitHub Profile -> **Contribution settings** (above the graph) -> Check **"Private contributions"**.
    
*   **Default Branch:** If you pushed to a branch other than your default (e.g., master instead of main), the squares won't show until you merge it into the default branch.
    

### 3\. "src refspec main does not match"

If your local branch is named master but your GitHub repository uses main, use this command to push:

Bash

`   git push origin master:main   `
