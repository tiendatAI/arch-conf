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

;; split window using edwina
(defun edwina-split-window ()
  (interactive)
  (evil-split-buffer nil)
  (edwina-arrange)
  (edwina-swap-next-window)
  )


(map! :leader
      ;; consult (telescope of emacs)
      (:prefix ("f")
       :desc "Consult-find" "f" #'consult-find
       :desc "Consult-grep" "w" #'consult-grep
       )

      ;; quick open files
      (:prefix ("=" . "Open file")
       :desc "Cheat-sheet" "c" #'(lambda () (interactive) (find-file-read-only "~/.config/doom/cheat-sheet/README.org"))
       )

      (:prefix ("j". "My binding functions")
       ;; eww
       :desc "eww" "w" #'eww

       ;; edwina split window
       :desc "edwina split window" "s" #'edwina-split-window

       ;; consult (telescope of emacs)
       (:prefix ("e". "Emms")
        :desc "emms-add-file" "a" #'emms-add-file
        :desc "emms-start" "s" #'emms-start
        :desc "emms-mode-line-disable" "m" #'emms-mode-line-disable
        )
       )
      )
