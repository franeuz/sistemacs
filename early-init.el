;;; early-init.el --- Early startup config -*- lexical-binding: t; -*-

;; GC agresivo durante startup
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

;; Desactivar package.el si usas gestor moderno
(setq package-enable-at-startup nil)

;; UI minimal desde el primer frame
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Frame minimalista (reduce flicker)
(setq default-frame-alist
      '((fullscreen . maximized)
        (vertical-scroll-bars . nil)
        (menu-bar-lines . 0)
        (tool-bar-lines . 0)))

;; Sin pantalla de bienvenida
(setq inhibit-startup-message t
      inhibit-startup-screen t
      inhibit-startup-echo-area-message t)

;;; early-init.el termina aquí
