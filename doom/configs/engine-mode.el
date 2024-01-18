;;; configs/engine-mode.el -*- lexical-binding: t; -*-

(engine-mode t)

;; Use frequently
(defengine duckduckgo
  "https://duckduckgo.com/?q=%s"
  :keybinding "d")

(defengine github
  "https://github.com/search?ref=simplesearch&q=%s"
  :keybinding "g")

(defengine youtube
  "https://www.youtube.com/results?aq=f&oq=&search_query=%s"
  :keybinding "y")

(defengine wikipedia
  "https://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s"
  :keybinding "w"
  :docstring "Searchin' the wikis.")

(defengine reddit
  "https://www.reddit.com/search/?q=%s"
  :keybinding "r")

;; Not use yet
(defengine google
  "https://www.google.com/search?ie=utf-8&oe=utf-8&q=%s")

(defengine google-images
  "https://www.google.com/images?hl=en&source=hp&biw=1440&bih=795&gbv=2&aq=f&aqi=&aql=&oq=&q=%s")

(defengine google-maps
  "https://maps.google.com/maps?q=%s"
  :docstring "Mappin' it up.")

(defengine project-gutenberg
  "https://www.gutenberg.org/ebooks/search/?query=%s")

(defengine stack-overflow
  "https://stackoverflow.com/search?q=%s")

(defengine twitter
  "https://twitter.com/search?q=%s")


(defengine wiktionary
  "https://www.wikipedia.org/search-redirect.php?family=wiktionary&language=en&go=Go&search=%s")

(defengine wolfram-alpha
  "https://www.wolframalpha.com/input/?i=%s")

