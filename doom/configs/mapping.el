;;; configs/mapping.el -*- lexical-binding: t; -*-

;; binding pomodoro
(global-set-key (kbd "<f12>") #'pomidor)

;; resize split window
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; imenu-list
(global-set-key (kbd "C-'") #'lsp-ui-imenu)

;; company for file path
(global-set-key (kbd "C-.") #'company-files)

(defun edwina-split-window ()
  "Split window using edwina"
  (interactive)
  (evil-split-buffer nil)
  (edwina-arrange)
  (edwina-swap-next-window)
  )

(defun delete-window-below ()
  "Delete the window below, ignoring errors when moving down."
  (interactive)
  (condition-case nil
      (progn
        (evil-window-down nil) ; Attempt to move down
        (delete-window))       ; Delete the current window
    (error
     (delete-window))))         ; If error, delete the current window anyway

(defun delete-window-above ()
  "Delete the window above, ignoring errors when moving down."
  (interactive)
  (condition-case nil
      (progn
        (evil-window-up nil) ; Attempt to move down
        (delete-window))       ; Delete the current window
    (error
     (delete-window))))         ; If error, delete the current window anyway

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

      ;; rebining for comment
      :desc "comment" "/" #'comment-line

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
       ;; duckduckgo-web
       :desc "duckduckgo-web" "d" #'duckduckgo-web

       ;; quick delete window
       :desc "delete-window-below" "j" #'delete-window-below
       :desc "delete-window-above" "k" #'delete-window-above
       )
      )
