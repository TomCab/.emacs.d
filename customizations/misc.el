;; Changes all yes/no questions to y/n type
;;(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; Load git-blame only when necessary. In order to invoke it, type "M-x git-blame-mode"
   (autoload 'git-blame-mode "git-blame"
             "Minor mode for incremental blame for Git." t)
