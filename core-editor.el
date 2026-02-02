;;; core-editor.el --- Configuración estándar -*- lexical-binding: t; -*-

(setq inhibit-startup-message t
      ring-bell-function 'ignore
      use-short-answers t
      make-backup-files nil
      auto-save-default nil)

(setq-default indent-tabs-mode nil
              tab-width 4)

(save-place-mode 1)
(recentf-mode 1)
(global-auto-revert-mode 1)

(provide 'core-editor)


;;; core-editor.el termina aquí
