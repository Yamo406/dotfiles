# =============================================================================
#  ZenBlue tmux Theme
#  Based on the ZenBlue VS Code theme by the same author.
#  https://marketplace.visualstudio.com/items?itemName=zenblue
#
#  Color Palette (extracted from zenblue-color-theme.json):
#
#   Role                    | VS Code Key                        | Hex
#  ─────────────────────────────────────────────────────────────────────────
#   Editor Background       | editor.background                  | #000520
#   Deep Navy (title/tabs)  | titleBar.activeBackground          | #01072b
#   Widget/Status BG        | statusBar.background               | #010a3c
#   Sidebar Background      | sideBar.background                 | #00031a
#   Foreground (text)       | editor.foreground                  | #ffffff
#   Primary Accent (blue)   | button.background / badge          | #007ce2
#   Bright Accent (cyan)    | operator/tag syntax                | #2ec0ff
#   Electric Cyan           | function / constant syntax         | #00eeff
#   Comment / Muted         | comment token                      | #6289bd
#   Line Highlight          | editor.lineHighlightBackground     | #0e3672
#   Variable / Warm Yellow  | variable token                     | #edf9b1
#   Cursor / Warm Peach     | editorCursor.foreground            | #ffe4c2
#   Active Line Number      | editorLineNumber.activeForeground  | #229bff
#  ─────────────────────────────────────────────────────────────────────────
# =============================================================================


# =============================================================================
#  STATUS BAR — Overall style
#  Background: Widget/status bar navy (#010a3c) mirrors VS Code's status bar.
#  Foreground: Soft white (#ffffff) for general text.
# =============================================================================

set -g status on
set -g status-interval 5
set -g status-position bottom
set -g status-justify left

set -g status-style "bg=#010a3c,fg=#ffffff"


# =============================================================================
#  STATUS LEFT — Session name
#  Bold primary accent (#007ce2) on the deep navy sidebar background (#00031a),
#  giving it a distinct "pill" appearance that mirrors the VS Code activity bar.
# =============================================================================

set -g status-left-length 40
set -g status-left "#[bg=#00031a,fg=#007ce2,bold]  #S #[bg=#010a3c,fg=#00031a]"


# =============================================================================
#  STATUS RIGHT — Date and time
#  Muted comment color (#6289bd) for the date, bright accent (#2ec0ff) for the
#  time, keeping the right side clean but readable.
# =============================================================================

set -g status-right-length 60
set -g status-right "#[fg=#6289bd] %a %d %b #[fg=#2ec0ff,bold]%H:%M #[fg=#007ce2,bg=#010a3c] "


# =============================================================================
#  WINDOW STATUS — Inactive tabs
#  Inactive windows use the muted comment color (#6289bd) on the widget
#  background (#010a3c), blending into the status bar without distraction.
# =============================================================================

set -g window-status-format " #[fg=#6289bd]#I:#W#F "
set -g window-status-separator ""


# =============================================================================
#  WINDOW STATUS — Active tab
#  The active window uses the primary accent (#007ce2) background with bright
#  white foreground and bold text — mirroring VS Code's active tab border top.
# =============================================================================

set -g window-status-current-format "#[bg=#007ce2,fg=#000520,bold] #I:#W#F #[bg=#010a3c,fg=#007ce2]"


# =============================================================================
#  WINDOW STATUS — Bell / activity alert
#  Uses the warm yellow (#edf9b1) used for variables in syntax — stands out
#  naturally as a "something needs attention" signal.
# =============================================================================

set -g window-status-bell-style "bg=#010a3c,fg=#edf9b1,bold"
set -g window-status-activity-style "bg=#010a3c,fg=#edf9b1"


# =============================================================================
#  PANE BORDERS
#  Active pane border: primary accent blue (#007ce2) — same as VS Code's
#  sideBySideEditor border and active tab indicator.
#  Inactive pane border: muted line highlight color (#0e3672), subtle and dark.
# =============================================================================

set -g pane-border-style "fg=#0e3672"
set -g pane-active-border-style "fg=#007ce2"

# Optional: show pane title in border (tmux 3.2+)
set -g pane-border-status off


# =============================================================================
#  MESSAGE / COMMAND LINE
#  Shown when typing tmux commands (prefix + :).
#  High contrast: bright electric cyan (#00eeff) on deep editor background
#  (#000520), mirroring the function/decorator color used in syntax.
# =============================================================================

set -g message-style "bg=#000520,fg=#00eeff,bold"
set -g message-command-style "bg=#000520,fg=#2ec0ff"


# =============================================================================
#  MODE INDICATOR (copy-mode, etc.)
#  Uses the warm cursor peach (#ffe4c2) — directly from the VS Code cursor
#  color — to signal you are in a special mode.
# =============================================================================

set -g mode-style "bg=#0e3672,fg=#edf9b1"


# =============================================================================
#  CLOCK (prefix + t)
#  Uses the primary accent blue to stay on-brand.
# =============================================================================

set -g clock-mode-colour "#007ce2"
set -g clock-mode-style 24
