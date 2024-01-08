;;; configs/vterm.el -*- lexical-binding: t; -*-

;; vterm popup
(after! vterm
  (set-popup-rule! "^\\*vterm" :side 'right :size 0.5 :select t))
