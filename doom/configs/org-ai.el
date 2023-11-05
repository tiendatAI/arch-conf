(use-package org-ai
  :ensure t
  :commands (org-ai-mode
             org-ai-global-mode)
  :init
  (add-hook 'org-mode-hook #'org-ai-mode) ; enable org-ai in org-mode
  (org-ai-global-mode) ; installs global keybindings on C-c M-a
  ) ; if you are using yasnippet and want `ai` snippets

(setq org-ai-openai-api-token "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")
