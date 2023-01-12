(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   '("fe1c13d75398b1c8fd7fdd1241a55c286b86c3e4ce513c4292d01383de152cb7" default))
 '(inhibit-startup-screen t)
 '(org-agenda-files nil)
 '(package-selected-packages
   '(company rustic clojure-mode cider dracula-theme which-key-mode rustic-mode lsp-mode flycheck))
 '(safe-local-variable-values '((cider-clojure-cli-global-options . -A:dev))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'dracula t)
(set-frame-font "Fira Code Retina 14")
(setq display-line-numbers-mode t)
;; troubleshooting 
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(put 'upcase-region 'disabled nil)
(global-set-key [(control z)] 'undo) ; disable suspend
