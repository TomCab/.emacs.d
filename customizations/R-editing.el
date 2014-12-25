;; Paredit works quite well under ESS, so that editing S family languages
;; (R, S, SAS) becomes easier.
;; These options specifically activate paredit when entering the R
;; interactive environment and when entering R-mode for R-code editing.
;; More at http://www.emacswiki.org/emacs/ParEdit

;; Activate paredit under R - interactive environment.
(autoload 'paredit-mode "paredit"  t)
(add-hook 'inferior-ess-mode-hook  #'enable-paredit-mode t)

;; Activate paredit under R - non-interactive code editing:
(add-hook 'R-mode-hook  #'enable-paredit-mode t)
