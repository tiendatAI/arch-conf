;; add quick open files
(map! :leader
      (:prefix ("=" . "open file")
       :desc "Open cheat-sheet file" "=" #'(lambda () (interactive) (find-file-read-only "~/.config/doom/cheat-sheet/README.org"))
       )
)
;; custom binding
(map! "M-[" #'centaur-tabs-backward
      "M-]" #'centaur-tabs-forward)

;; binding pomodoro
(global-set-key (kbd "<f12>") #'pomidor)

