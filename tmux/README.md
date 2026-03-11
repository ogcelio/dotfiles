# Tmux Guide & Keybindings

This guide summarizes the specific configuration and keybindings defined in your
`.tmux.conf`.

## 1. The Basics

- **Prefix:** `Ctrl + b` (Default). Press this before any command.
- **Sessions, Windows, and Panes:**
  - **Session:** A collection of windows (e.g., "Work", "Personal").
  - **Window:** Like a browser tab, filling the whole screen.
  - **Pane:** A split within a window (vertical or horizontal).

## 2. Your Custom Keybindings

Many of these use **Popups** (floating windows) for quick tasks.

| Keybinding            | Action                                                                  |
| :-------------------- | :---------------------------------------------------------------------- |
| `Prefix` + `r`        | **Reload Config:** Updates tmux with changes made to `.tmux.conf`.      |
| `Prefix` + `Ctrl + l` | **Fuzzy Window Finder:** Search and switch windows using `fzf`.         |
| `Prefix` + `Ctrl + n` | **Quick Notes:** Opens `nvim` in a popup to take notes.                 |
| `Prefix` + `Ctrl + p` | **Python REPL:** Opens a Python shell in a popup.                       |
| `Prefix` + `Ctrl + h` | **htop:** Monitors system resources in a popup.                         |
| `Prefix` + `Ctrl + t` | **Popup Terminal:** A floating terminal window.                         |
| `Prefix` + `Ctrl + w` | **Toggle Floating Popup:** Persistent floating terminal you can toggle. |
| `Prefix` + `Ctrl + x` | **Just Run:** Runs the `just run` command in a popup.                   |

## 3. Navigation & Copy Mode

Since you have `mode-keys vi` enabled, you can navigate tmux like you do in Vim:

- **Enter Copy Mode:** `Prefix` + `[`
- **Navigate:** Use `h`, `j`, `k`, `l` to move around the buffer.
- **Select Text:** Press `v` (just like Vim visual mode).
- **Copy Text:** Press `y` or `Enter`. It will automatically copy to your system
  clipboard (using `pbcopy` on macOS or OSC 52 on Linux).

## 4. Standard Tmux Commands (Defaults)

- **Windows:**
  - `Prefix` + `c`: Create a new window.
  - `Prefix` + `&`: Kill current window.
  - `Prefix` + `1` to `9`: Switch to window by number.
- **Panes:**
  - `Prefix` + `%`: Split window vertically.
  - `Prefix` + `"` : Split window horizontally.
  - `Prefix` + `o`: Cycle through panes.
  - `Prefix` + `x`: Kill current pane.

## 5. Session Persistence

Your setup includes `tmux-continuum` and `tmux-resurrect`:

- **Autosave:** Your sessions are saved every 5 minutes automatically.
- **Restore:** When you start tmux, it will automatically try to restore your
  previous environment.
