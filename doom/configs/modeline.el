;;; configs/modeline.el -*- lexical-binding: t; -*-

;; modeline
(display-time-mode 1)
(display-battery-mode 1)
(setq doom-modeline-time-icon nil)
(setq doom-modeline-lsp nil)
(setq doom-modeline-percent-position nil)
(setq emms-mode-line-mode nil)

(defun my-modeline-setup ()
  (column-number-mode 0)
  (line-number-mode 0)
  (size-indication-mode 0))

(add-hook 'buffer-list-update-hook 'my-modeline-setup)
