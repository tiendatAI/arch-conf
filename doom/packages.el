;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; packages for org
;; notification on org
(package! org-alert)
;; org ai for chatGPT
(package! org-ai)
;; code rust in org mode
(package! ob-rust)
;; download image from internet
(package! org-download)
;; beter org-roam
(package! org-roam-ui)
;;insert content of text with a link
(package! org-transclusion)
;; better agenda
(package! org-super-agenda)
(package! org-timeblock)
;; kaban board for project planning
(package! org-kanban)
;; diagram in org-mode
(package! ob-mermaid)

;; customize theme
(package! catppuccin-theme)

;; cursor
(package! beacon)

;; better pdf tools
;; (package! pdf-tools :recipe
;;   (:host github
;;    :repo "dalanicolai/pdf-tools"
;;    :branch "pdf-roll"
;;    :files ("lisp/*.el"
;;            "README"
;;            ("build" "Makefile")
;;            ("build" "server")
;;            (:exclude "lisp/tablist.el" "lisp/tablist-filter.el"))))
;; (package! image-roll :recipe
;;   (:host github
;;    :repo "dalanicolai/image-roll.el"))
;;
;; ;; remember position when leave pdf
;; (package! saveplace-pdf-view)

;; better pomodoro
(package! pomidor)

;; typst
(package! typst-ts-mode :recipe (:type git :host sourcehut :repo "meow_king/typst-ts-mode"))

;;python autoload env
(package! pyvenv)

;;rss for research paper
(package! elfeed-score)

;;translate
(package! google-translate)

;; display list of special comment (TODO, FIXME,  etc.)
(package! comment-tags )

;; show current buffer's imenu entries
(package! imenu-list)

;; cross-platform embedded
(package! platformio-mode)

;; vterm toggle in righ-side
(package! multi-vterm)

;; window mangager
(package! edwina)
