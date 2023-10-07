;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "Intel One Mono" :size 17))
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-theme 'doom-one)
(setq doom-theme 'catppuccin)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")
(setq org-agenda-files '( "~/org/TODO/every-day.org" "~/org/TODO/long-term.org" "~/org/TODO/tracking-habit.org" ))


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;; load other configs
(mapc 'load (file-expand-wildcards "~/.config/doom/configs/*.el"))

;; make sure installed packages
(unless (package-installed-p 'nerd-icons)
  (package-install 'nerd-icons))

;; default path
(setq org-roam-directory "~/org/roam-notes")
(setq projectile-project-search-path '("~/workplaces/"))
(setq delete-by-moving-to-trash t
      trash-directory "~/.local/share/Trash/files/")

;; centaur-tabs
(setq centaur-tabs-mode t
      centaur-tabs-style "wave"
      centaur-tabs-set-bar 'right
      centaur-tabs-modified-marker "●")

;; record time I actually work
(defun my-reset-org-clock ()
  "Reset all org-mode clocks at midnight."
  (interactive)
  (save-excursion
    (org-clock-reset)
    (org-save-all-org-buffers)))
(run-at-time "24:00" nil #'my-reset-org-clock)

;; turn off pomodoro sound
(setq pomidor-sound-tick nil
      pomidor-sound-tack nil)

;; org notification
(require 'org-alert)
(setq alert-default-style 'libnotify)

;; pdf tools
(require 'saveplace-pdf-view)
(save-place-mode 1)

;; disable mouse
(require 'disable-mouse)
(global-disable-mouse-mode)
(mapc #'disable-mouse-in-keymap
  (list evil-motion-state-map
        evil-normal-state-map
        evil-visual-state-map
        evil-insert-state-map))

;; duckduckgo
(setq load-path (cons "~/.config/doom/configs/duckduckgo" load-path))
(require 'ddg)
(require 'ddg-search)
(require 'ddg-mode)

;; default settings
(beacon-mode 1)
(display-time-mode 1)
(setq hl-todo-mode t)
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)
(setq default-input-method "vietnamese-telex")
(setq scroll-margin 8)
