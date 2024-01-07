;;; configs/eww.el -*- lexical-binding: t; -*-

;; open eww in right, not bottom
(after! eww
  (set-popup-rule! "^\\*eww" :side 'right :size 0.5 :select t))

