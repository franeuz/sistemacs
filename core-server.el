;;; core-server.el --- Configuración emacs server  -*- lexical-binding: t; -*-

(require 'server)

(unless (server-running-p)
  (server-start))

(setq server-client-instructions nil)

(provide 'core-server)


;;; core-server.el termina aquí.
