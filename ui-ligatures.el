(use-package ligature
  :ensure t
  :config
  (ligature-set-ligatures
   'prog-mode
   '("->" "<-" "=>" "!=" "==" "<=" ">=" "&&" "||"))

  (global-ligature-mode t))

(provide 'ui-ligatures)

;; ui-ligatures termina aquí.
