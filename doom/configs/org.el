(setq org-directory "~/org/")
(setq org-roam-directory "~/org/roam-notes")
(setq org-agenda-files '( "~/org/TODO/every-day.org"
                          "~/org/TODO/long-term.org"
                          "~/org/TODO/tracking-habit.org" ))
(setq org-noter-notes-search-path '("~/org/noter/"))

;; record time I actually work
(defun my-reset-org-clock ()
  "Reset all org-mode clocks at midnight."
  (interactive)
  (save-excursion
    (org-clock-reset)
    (org-save-all-org-buffers)))
(run-at-time "24:00" nil #'my-reset-org-clock)

;; org notification
(require 'org-alert)
(setq alert-default-style 'libnotify)

;; hide special text (italic, bold)
(setq org-hide-emphasis-markers t)
(setq org-pretty-entities-include-sub-superscripts t)

;; When a TODO is set to a done state, record a timestamp
(setq org-log-done 'time)
