;;; configs/programming.el -*- lexical-binding: t; -*-

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

;; platformio embedded
;; Enable ccls for all c++ files, and platformio-mode only
;; when needed (platformio.ini present in project root).
(add-hook 'c++-mode-hook (lambda ()
                           (lsp-deferred)
                           (platformio-conditionally-enable)))
