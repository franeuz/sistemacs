;;; lang-python.el

(use-package python
  :ensure nil
  :mode ("\\.py\\'" . python-mode)
  :hook (python-mode . python-indent-guess-indent-offset)
  :custom
  (python-indent-offset 4)
  (python-shell-interpreter "ipython")
  (python-shell-interpreter-args "-i --simple-prompt"))

(use-package pyvenv
  :hook (python-mode . pyvenv-mode)
  :config
  (pyvenv-tracking-mode 1))

(use-package eglot
  :hook (python-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs
               '(python-mode . ("pyright-langserver" "--stdio"))))

(use-package python-black
  :hook (python-mode . python-black-on-save-mode))


(provide 'lang-python)


;;; lang-python.el termina aquí.
