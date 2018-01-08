(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(global-auto-revert-mode t)

;; Modeline bar config
(nyan-mode)
(nyan-toggle-wavy-trail)
(nyan-start-animation)

(require 'helm-smex)
(global-set-key [remap execute-extended-command] #'helm-smex)
(global-set-key (kbd "M-X") #'helm-smex-major-mode-commands)
