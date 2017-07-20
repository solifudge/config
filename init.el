;; emacs init for writing

;; packages
(require 'package)

(setq package-list '(company
		     company-auctex
                     flycheck
                     faff-theme
                     git
		     latex-extra
		     px
		     wc-mode
		     yatex))

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Frame titles.
(setq frame-title-format
      (concat "%b - emacs@" (system-name)))

;; spellcheck in text mode.
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

;; Define special keys.
(global-set-key (kbd "<f7>") 'delete-trailing-whitespace)

(setq inhibit-splash-screen t)
(setq diff-switches "-u")
(setq inhibit-default-init t)
(setq indent-tabs-mode nil)
(setq column-number-mode t)
(setq make-backup-files nil)
(setq-default word-wrap t)
(global-visual-line-mode t)
(setq-default show-trailing-whitespace t)

;; Turn on font-lock mode.
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; Packages.

;; company mode
(add-hook 'after-init-hook 'global-company-mode)

(require 'wc-mode)

;; themes
;; (require 'faff-theme)
;; (require 'challenger-deep-theme)
;; (require 'flatui-dark-theme)
;; (require 'nord-theme)
;; (require 'spaceline-all-theme)
;; (require 'abyss-theme)
;; (require 'afternoon-theme)
(require 'ample-theme)

