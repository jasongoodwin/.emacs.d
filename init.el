;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/conf/")
(load-library "melpa")
(load-library "style")
(load-library "keys")
(load-library "modes")

(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(fset 'yes-or-no-p 'y-or-n-p)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("02591317120fb1d02f8eb4ad48831823a7926113fa9ecfb5a59742420de206e0" default)))
 '(package-selected-packages
   (quote
    (wttrin nyan-mode elixir-mode geben-helm-projectile helm-projectile helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
