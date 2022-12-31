(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-enabled-themes '(tango-dark))
 '(custom-face-default-form 'all)
 '(menu-bar-mode t)
 '(package-selected-packages '(company js2-mode))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Roboto")) (t (:family "fira code")))))
(put 'dired-find-alternate-file 'disabled nil)
;; web-mode : Support various web files
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

(require 'company)
(require 'company-tern)

(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))
(use-package lsp-mode
  :ensure t)

(use-package company-lsp
  :ensure t
  :config
  (add-to-list 'company-backends 'company-lsp))                           
