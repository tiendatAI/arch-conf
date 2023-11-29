;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "tiendat"
      user-mail-address "tiendatlework@gmail.com")

(setq doom-font (font-spec :family "Intel One Mono" :size 16)
      doom-variable-pitch-font (font-spec :family "Intel One Mono" :height 1.3)
      doom-symbol-font (font-spec :family "Intel One Mono")
      doom-big-font (font-spec :family "Intel One Mono" :size 22))

(setq doom-theme 'catppuccin)

(setq display-line-numbers-type 'relative)

;; load other configs
(mapc 'load (file-expand-wildcards "~/.config/doom/configs/*.el"))

;; make sure installed packages
(unless (package-installed-p 'nerd-icons)
  (package-install 'nerd-icons))

;; default path
(setq projectile-project-search-path '("~/workplaces/"))
(setq delete-by-moving-to-trash t
      trash-directory "~/.local/share/Trash/files/")

;; ;; centaur-tabs
;; (setq centaur-tabs-mode t
;;       centaur-tabs-style "wave"
;;       centaur-tabs-set-bar 'right
;;       centaur-tabs-modified-marker "●"
;;       centaur-tabs-label-fixed-length 12
;;       )

;; turn off pomodoro sound
(setq pomidor-sound-tick nil
      pomidor-sound-tack nil)

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
(display-battery-mode 1)
(setq hl-todo-mode t)
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)
(setq default-input-method "vietnamese-telex")
(setq scroll-margin 5)
(setq projectile-indexing-method 'alien)

;; remote with HPC
(setq tramp-default-method "ssh")

;; google translate
(require 'google-translate)
(require 'google-translate-smooth-ui)
(global-set-key "\C-ct" 'google-translate-smooth-translate)
(setq google-translate-translation-directions-alist '(("en" . "en")("en" . "vi")))

;; Trigger completion immediately.
(setq company-idle-delay 0)

;; lsp config
(with-eval-after-load 'lsp-mode
  (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\.devenv\\'")
  (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\.direnv\\'")
  ;; or
  ;; (add-to-list 'lsp-file-watch-ignored-files "[/\\\\]\\.my-files\\'")
  )

;; debugger
(after! dap-mode
  (setq dap-python-debugger 'debugpy))

