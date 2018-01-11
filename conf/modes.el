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
