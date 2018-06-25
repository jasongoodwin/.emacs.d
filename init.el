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
(load-library "elixir-formatter")

(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(fset 'yes-or-no-p 'y-or-n-p)

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
    (rainbow-delimiters vlf magit hackernews clojure-mode markdown-mode wttrin nyan-mode elixir-mode geben-helm-projectile helm-projectile helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package ensime
  :ensure t
  :pin melpa-stable)

;; GTD Things...

(setq org-agenda-files '("~/gtd/inbox.org"
                         "~/gtd/gtd.org"
                         "~/gtd/done.org"
                         "~/gtd/scratch.org"
                         "~/gtd/tickler.org"))

(setq org-capture-templates '(("t" "Todo [inbox]" entry
                               (file+headline "~/gtd/inbox.org" "Tasks")
                               "* TODO %i%?")
                              ("T" "Tickler" entry
                               (file+headline "~/gtd/tickler.org" "Tickler")
                               "* %i%? \n %U")))

(find-file "~/gtd/inbox.org")
(find-file "~/gtd/gtd.org")
(find-file "~/gtd/done.org")
(find-file "~/gtd/tickler.org")
(find-file "~/gtd/scratch.org")

(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))
(setq org-refile-targets '(("~/gtd/gtd.org" :maxlevel . 1)
			   ("~/gtd/inbox.org" :maxlevel . 1)
                           ("~/gtd/done.org" :maxlevel . 1)
                           ("~/gtd/tickler.org" :maxlevel . 1)))

(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cr" 'org-refile)

;;
(put 'erase-buffer 'disabled nil)
