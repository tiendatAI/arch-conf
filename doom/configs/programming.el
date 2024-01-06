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

;; imenu-list
(setq imenu-list-focus-after-activation t)
(setq imenu-list-auto-resize t)
