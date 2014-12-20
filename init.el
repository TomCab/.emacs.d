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
(require 'cl)
(defvar my-packages
 '(
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
  	git-commit-mode
  	git-rebase-mode
  	hlinum
  	ido-ubiquitous
  	magit
  	naquadah-theme
  	paredit
  	pkg-info
  	popup
  	projectile
  	racket-mode
  	rainbow-delimiters
  	s
  	smex
  	tagedit)
  "A list of packages to ensure are installed at launch.")

;; Check if the above listed packages are installed. If not, update the local package
;; database, download and install the packages from the repositories.
(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))
 
(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (package-refresh-contents)
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

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

;; Language-specific
;; There's nothing here yet, as I haven't customized anything - 20141210
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
