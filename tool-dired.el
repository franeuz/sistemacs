;;; init-dired.el --- Dired -*- lexical-binding: t; -*-

(use-package dired
  :ensure nil
  :commands (dired dired-jump)
  :bind (("C-x C-j" . dired-jump))
  :config
  (setq dired-listing-switches "-alh"))



;; Dired – Configuración base
(require 'dired)

(setq dired-listing-switches "-alh --group-directories-first"
      dired-dwim-target t
      dired-recursive-copies 'always
      dired-recursive-deletes 'top
      delete-by-moving-to-trash nil)

;; Actualiza automáticamente Dired
(add-hook 'dired-mode-hook #'dired-hide-details-mode)


(setq dired-guess-shell-alist-user
      '(("\\.pdf\\'" "skular")
        ("\\.png\\'" "feh")
        ("\\.jpg\\'" "feh")
        ("\\.mp4\\'" "mpv")))

(provide 'tool-dired)


;;; tool-dired.el termina aquí.
