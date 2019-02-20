;(set-default-font "-adobe-courier-medium-r-normal--18-180-75-75-m-110-iso8859-1")
;impression ajout juillet 2014

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq inhibit-default-init t); pas d'initialisation
(setq inhibit-startup-message t) ; no splash screen
;;ajouté le 12.11.18
;;cf pages.sachachua.com/.emacs.d/Sacha.html

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-verbose t)
(setq use-package-always-ensure t)
(require 'use-package)
(add-to-list 'package-archives
	     '("malpa-stable" . "https://stable.melpa.org/packages/") t)
(use-package auto-compile
  :config (auto-compile-on-load-mode))
(setq load-prefer-newer t)

(defun my-backup-file-name (fPath)
  "Return a new file path of a given file path.
If the new path's directories does not exist, create them."
  (let (backup-root bpath)
    (setq backup-root "~/.emacs.d/backups")
    (setq bpath (concat backup-root fPath "~"))
    (make-directory (file-name-directory bpath) bpath)
    bpath
  )
)
(setq make-backup-file-name-function 'my-backup-file-name)
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:slant normal :weight normal :height 138 :width normal :foundry "unknown" :family "DejaVu Sans Mono" :background "Black" :foreground "Green")))))

;; (put 'narrow-to-region 'disabled nil)
;; (put 'scroll-left 'disabled nil)


; A partir d'ici, fonctions et macros utiles pour l'édition et la création de
; fichiers epub

;; (require 're-builder)
;; (setq reb-re-syntax 'string)

;; (setq-default ispell-personnal-name "aspell")

;; (setq ispell-personal-dictionary "~/.ispell-dico-perso")


;; ; Formatage en soixante-dix colonnes
;; (fset 'unwraptext
;;       (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([21 57 57 57 57 24 102 134217848 102 105 108 108 kp-subtract 114 101 103 105 111 105 110 backspace backspace 110 return] 0 "%d")) arg)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray90"])
 '(beacon-mode nil)
 '(browse-url-browser-function (quote browse-url-default-browser))
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(display-time-mode t)
 '(global-visual-line-mode t)
 '(package-selected-packages
   (quote
    (php-mode js2-mode company-web company-tern emmet-mode web-mode zenburn-theme yasnippet-snippets which-key wc-mode visual-regexp visual-fill-column use-package undo-tree tabbar swiper solarized-theme smeargle smart-mode-line-powerline-theme slime session restart-emacs rainbow-mode rainbow-identifiers rainbow-delimiters pod-mode pdf-tools paredit org-bullets org nov no-littering muse monokai-theme markdown-mode linum-relative initsplit htmlize highlight-numbers highlight-indentation graphviz-dot-mode flycheck fill-column-indicator eproject el-x dpkg-dev-el discover-my-major devscripts csv-mode clues-theme clojure-mode-extra-font-locking char-menu browse-kill-ring boxquote bar-cursor auto-complete apache-mode ace-window ace-popup-menu gnugo beacon))))

(org-babel-load-file (expand-file-name "~/.emacs.d/demarrage.org")) ;
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
