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

(defun edwina-split-window ()
  "Split window using edwina"
  (interactive)
  (evil-split-buffer nil)
  (edwina-arrange)
  (edwina-swap-next-window)
  )

(defun create-vtem-buffer ()
  "Create new vterm buffer, for multiple vterm"
  (interactive)
  (multi-vterm)
  (evil-split-buffer nil)
  (edwina-arrange)
  (other-window 1)
  )

(defun open-specific-file (file-path)
  "Open a specific file with the given path"
  (interactive "fEnter file path: ")
  (find-file file-path)
  (evil-split-buffer nil)
  (edwina-arrange)
  (other-window 1)
  )

(defun open-specific-read-only-file (file-path)
  "Open a specific file with the given path"
  (interactive "fEnter file path: ")
  (find-file-read-only file-path)
  (evil-split-buffer nil)
  (edwina-arrange)
  (other-window 1)
  )


(map! :leader
      ;; rebinding vterm
      (:prefix ("o")
       :desc "multi-vterm-dedicated-toggle" "T" #'multi-vterm-dedicated-toggle
       )

      ;; consult (telescope of emacs)
      (:prefix ("f")
       :desc "Consult-find" "f" #'consult-find
       :desc "Consult-grep" "w" #'consult-grep
       )

      ;; quick open files
      (:prefix ("=" . "Open file")
       :desc "Cheat-sheet" "c" #'(lambda() (interactive) (open-specific-read-only-file "~/.config/doom/cheat-sheet/README.org"))
       :desc "Org mode" "o" #'(lambda() (interactive) (open-specific-file "~/Documents/org/README.org"))
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
