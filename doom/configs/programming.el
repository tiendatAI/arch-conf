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

;; hiding code
;; python
(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'hs-hide-all)
;; C
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c-mode-hook 'hs-hide-all)
;; rust
(add-hook 'rust-mode-hook 'hs-minor-mode)
(add-hook 'rust-mode-hook 'hs-hide-all)
