;;; elixir formatter

;; Copyright 20017-2018 Jason Goodwin

;; Author: Jason Goodwin <jason@funnelcloud.io>
;; URL: http://github.com/jasongoodwin/emacs-elixir-formatter
;; Version: 0.0.1
;; Package-Requires: ()

;; This package will expose commands to call out to mix to format your project for you.
;; Requires elixir 1.6
;; Note you may need to start emacs from the shell to have the proper environment. mix/elixir appear to depend on many unix utilities.

;;; Code:

(defcustom
  mix-location
  "/Users/jasongoodwin/.kiex/elixirs/elixir-1.6.0-rc.0/bin/mix"
  "Location of mix binary (must be elixir 1.6 or later)"
  :type 'string
  :group 'mix-format
  )

(defcustom
  elixir-location
  "/Users/jasongoodwin/.kiex/elixirs/elixir-1.6.0-rc.0/bin/elixir"
  "Location of elixir binary (must be elixir 1.6 or later)"
  :type 'string
  :group 'mix-format
  )

(defun
    elixir-format-current-file
    ()
  "Saves the file and then calls out to mix to format the code."
  (interactive)
  (save-buffer)
  (defvar current-file (buffer-file-name))
  (shell-command (concat elixir-location " " mix-location " format " current-file)))

;;; elixir-formatter.el ends here
