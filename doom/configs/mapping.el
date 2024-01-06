;; add quick open files
(map! :leader
      (:prefix ("=" . "open file")
       :desc "Open cheat-sheet file" "=" #'(lambda () (interactive) (find-file-read-only "~/.config/doom/cheat-sheet/README.org"))
       )
      )
;; custom binding

;; binding pomodoro
(global-set-key (kbd "<f12>") #'pomidor)

;; resize split window
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; imenu-list
(global-set-key (kbd "C-'") #'imenu-list-smart-toggle)
