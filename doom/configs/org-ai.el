(use-package org-ai
  :ensure t
  :commands (org-ai-mode
             org-ai-global-mode)
  :init
  (add-hook 'org-mode-hook #'org-ai-mode) ; enable org-ai in org-mode
  (org-ai-global-mode) ; installs global keybindings on C-c M-a
  ) ; if you are using yasnippet and want `ai` snippets

(setq org-ai-openai-api-token "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")
