;;; configs/mapping.el -*- lexical-binding: t; -*-

;; binding pomodoro
(global-set-key (kbd "<f12>") #'pomidor)

;; resize split window
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; imenu-list
(global-set-key (kbd "C-'") #'imenu-list-smart-toggle)

;; consult (telescope of emacs)
(map! :leader
      (:prefix ("f")
       :desc "Consult-find" "f" #'consult-find
       :desc "Consult-grep" "w" #'consult-grep
       ))

;; quick open files
(map! :leader
      (:prefix ("=" . "Open file")
       :desc "Cheat-sheet" "=" #'(lambda () (interactive) (find-file-read-only "~/.config/doom/cheat-sheet/README.org"))
       )
      )

;; eww
(map! :leader
      (:prefix ("e". "Emacs Web Wowser")
       :desc "eww" "e" #'eww
       ))

;; vterm rebinding for open in right side
(map! :leader
      (:prefix ("o")
       :desc "Open vterm side" "t" #'vterm-toggle
       ))
