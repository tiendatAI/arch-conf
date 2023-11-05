;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; customize theme
(package! catppuccin-theme)

;; cursor
(package! beacon)

;; better pdf tools
(package! pdf-tools :recipe
  (:host github
   :repo "dalanicolai/pdf-tools"
   :branch "pdf-roll"
   :files ("lisp/*.el"
           "README"
           ("build" "Makefile")
           ("build" "server")
           (:exclude "lisp/tablist.el" "lisp/tablist-filter.el"))))
(package! image-roll :recipe
  (:host github
   :repo "dalanicolai/image-roll.el"))
;; remember position when leave pdf
(package! saveplace-pdf-view)

;; better pomodoro
(package! pomidor)

;; notification on org
(package! org-alert)

;; ;; codeium
;; (package! codeium :recipe (:host github :repo "Exafunction/codeium.el"))
;; (package! cape)
;; tabnine

;; typst
(package! typst-ts-mode :recipe (:type git :host sourcehut :repo "meow_king/typst-ts-mode"))

;;python autoload env
(package! pyvenv)

;;rss for research paper
(package! elfeed-score)

;;translate
(package! google-translate)

;; org ai for chatGPT
(package! org-ai)
