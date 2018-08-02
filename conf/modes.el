(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; Saving and backups
(global-auto-revert-mode t)
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

;; Modeline bar config
(nyan-mode)
(nyan-toggle-wavy-trail)
(nyan-start-animation)

(require 'helm-smex)
(global-set-key [remap execute-extended-command] #'helm-smex)
(global-set-key (kbd "M-X") #'helm-smex-major-mode-commands)

(use-package ensime
  :ensure t
  :pin melpa-stable)

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;; I don't think I like truncated lines
(set-default 'truncate-lines t)

;; turn on rainbow delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; dash docs
(setq helm-dash-common-docsets '("Elixir")) 

;; org-mode items
(setq org-src-fontify-natively t)

;; company mode
(add-hook 'after-init-hook 'global-company-mode)
