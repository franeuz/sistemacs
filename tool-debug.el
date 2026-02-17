;;; tool-debug.el --- Debugging tools -*- lexical-binding: t; -*-

(use-package dap-mode
  :commands dap-debug
  :config
  (dap-auto-configure-mode)
  (require 'dap-python)
  (setq dap-python-debugger 'debugpy))

(provide 'tool-debug)



;;; tool-debug.el termina aquí.
