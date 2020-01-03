;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;--------------------setting up MELPA---------------------------------
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
 ; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)
;-----------------------------------------------------------------------

;; activate auto-fill mode
(add-hook 'text-mode-hook 'auto-fill-mode)
(setq-default fill-column 80)

(eval-after-load "org"
  '(require 'ox-odt nil t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 
; '(package-selected-packages
;   (quote
;    (cyberpunk-2019-theme cyberpunk-theme fireplace zenburn-theme markdown-mode darkokai-theme))))
;(custom-set-faces

  '(package-selected-packages
   (quote
    (cyberpunk-2019-theme  markdown-mode))))
(custom-set-faces



 
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

 (load-theme 'cyberpunk t)


(load "auctex.el" nil t t)
     (load "preview-latex.el" nil t t)

(setq TeX-PDF-mode t)

(setq latex-run-command "pdflatex")

(setq python-shell-interpreter "python3")
(put 'erase-buffer 'disabled nil)

(setq load-path (append (list (expand-file-name "~/site-lisp")) load-path))

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(global-linum-mode t) ;; Enables line numbers globally


(setq inhibit-startup-message t) ;; Hides the startup message



