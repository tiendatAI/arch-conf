(setq org-directory "~/org/")
(setq org-roam-directory "~/org/roam/")
(setq org-agenda-files '( "~/org/TODO/every-day.org"
                          "~/org/TODO/long-term.org"
                          "~/org/TODO/tracking-habit.org" ))
(setq org-noter-notes-search-path '("~/org/noter/"))
(setq org-journal-dir "~/org/journal/")
(setq ob-mermaid-cli-path "/nix/store/6jly5h71i8rgv2yx63c1qrc29g36nk3s-_at_mermaid-js_slash_mermaid-cli-10.2.4/bin/mmdc") ;; bad practice
;; (setq ob-mermaid-cli-path (shell-command-to-string "which mmdc"))

;; org notification
(require 'org-alert)
(setq alert-default-style 'libnotify)

;; hide special text (italic, bold)
(setq org-hide-emphasis-markers t)
(setq org-pretty-entities-include-sub-superscripts t)

;; When a TODO is set to a done state, record a timestamp
(setq org-log-done 'time)

;; Set up for journal
(setq org-journal-file-type 'yearly)

;; add mermaid to org-babel-load-languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((mermaid . t)
   (scheme . t)
   (rust . t)
   (C . t)
   (python . t)
   ))

;; enable fold when open new file
(setq org-startup-folded 'content)
