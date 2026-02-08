;;; ui-theme.el --- UI -*- lexical-binding: t; -*-

(use-package modus-themes
  :init
  (setq modus-themes-no-mixed-fonts t    ;; Evitar confirmación
        modus-themes-italic-constructs t
        modus-themes-bold-constructs t)
  :config
  (load-theme 'modus-vivendi t))    ;; Tema oscuro

(set-face-attribute 'default nil
                    :family "terminus"
                    :height 150)

(line-number-mode 1)
(column-number-mode 1)
(global-display-line-numbers-mode 1)
(display-color-cells)


(provide 'ui-theme)


;;; ui-theme.el termina aquí.
