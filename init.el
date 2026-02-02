;;; init.el --- Franz Emacs -*- lexical-binding: t; -*-

(setq user-full-name "Franz")
(setq user-mail-address "franz@localhost")

;; Arranque limpio después de early-init
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 50 1000 1000)
                  gc-cons-percentage 0.1)))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'core-editor)
(require 'core-packages)
(require 'core-server)
(require 'ui-theme)
(require 'tool-dired)
(require 'tool-completion)
(require 'tool-snippets)
(require 'tool-debug)
(require 'tool-org)
(require 'lang-python)

;; Custom (quarantine)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el termina aquí.
