;;;;;; font

;; firacode font w/ ligatures
;; Requires install of firacode from brew
(set-face-attribute 'default (selected-frame) :height 125)
(when (window-system)
  (set-default-font "Fira Code Retina"))
  
(setq inhibit-splash-screen t)

;; turn off window-system features 
(if window-system
    (tool-bar-mode -1))
(if window-system
    (scroll-bar-mode -1))

;; theme path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'idea-darkula t)

;; Show paren mode doesn't work correctly with elixir major mode
;;(show-paren-mode t)

;;(setq-default show-trailing-whitespace t)

(global-linum-mode t)
(set-face-foreground 'linum "#666")
(set-face-background 'linum "#474747")
