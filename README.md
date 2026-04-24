# 🦉 .dotfiles

Welcome to my personal configuration "web of strings." This repository houses the essential configurations that power my development workflow on **Manjaro Linux**.

Managed with **GNU Stow**, these files are symlinked from this directory into my system to ensure a portable, version-controlled environment.

## 🛠 The Stack

| Category | Tool |
| :--- | :--- |
| **OS** | Manjaro Linux (Arch-based) |
| **Editor** | Neovim (Custom Lua Config) |
| **Terminal** | Kitty |
| **Shell** | Zsh + Oh My Zsh |
| **Languages** | React (TS/JS), Go, Node.js |
| **Tools** | Docker, Git, Stow |

## 🕸 The "Web of Strings" (How it works)

I use **GNU Stow** to manage symlinks. Instead of copying files to `~/.config`, I keep them here and "cast" them to the home directory.

### Installation

1. **Clone the repo:**
   ```bash
   cd ~/dev
   git clone [https://github.com/mabdelnaby/dotfiles.git](https://github.com/mabdelnaby/dotfiles.git)
   cd dotfiles

2. Connect a tool (e.g kitty):
`stow kitty`

3. Adopt existing configs:
If a config already exists on the system, use:
`stow --adopt <folder_name>`

📂 Repository Structure
nvim/: Neovim configuration (The brain)

kitty/: Terminal emulator themes and fonts

zsh/: Shell aliases, functions, and exports

tmux/: Tmux configuration

scripts/: Custom automation scripts for my solo service business
