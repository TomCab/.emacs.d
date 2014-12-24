;;;;
;;Packages
;;;;

;; Define package repositories
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
             ("marmalade" . "http://marmalade-repo.org/packages/")
             ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them,
;; this also sets the load path
(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; The packages you want installed. You can also install these
;; manually with M-x package-install
;; Add in your own as you wish:
(defvar my-packages
 '(
   auto-complete
   color-theme
   ctable
   dakrone-theme
   dash
   dummyparens
   epl
   ess
   ess-R-data-view
   ess-R-object-popup
   ess-smart-underscore
   f
   flatland-theme
   flylisp
   git
   git-blame
   git-commit-mode
   github-clone
   git-rebase-mode
   hlinum
   ido-ubiquitous
   magit
   markdown-mode
   naquadah-theme
   paredit
   pkg-info
   popup
   pos-tip
   projectile
   racket-mode
   rainbow-delimiters
   s
   smex
   tagedit))

;; Check if the above listed packages are installed. If not, update the local
;; package database, download and install the packages from the repositories.
(dolist (p my-packages)
(when (not (package-installed-p p))
(package-install p)))

;;;;
;; Customization
;;;;

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")
;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables
(load "shell-integration.el")

;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.
(load "navigation.el")

;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
(load "ui.el")

;; These customizations make editing a bit nicer.
(load "editing.el")

;; Hard-to-categorize customizations
(load "misc.el")

;; For editing lisps
(load "elisp-editing.el")

;; These customizations change color themes and character size for better
;; readability
(load "themes.el")

;; Language-specific
;; There's nothing here yet, as I haven't customized anything - 20141210

;; Disable changing a whole region to uppercase and/or lowercase,
;; since it tends to be confusing
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(racket-memory-limit 550)
 '(racket-program "/usr/bin/racket")
 '(raco-program "/usr/bin/raco"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(racket-paren-face ((t (:foreground "gray")))))
