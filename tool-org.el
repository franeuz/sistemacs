;; Org básico y limpio
(setq org-startup-indented t)     ; sangría visual
(setq org-hide-leading-stars t)   ; oculta estrellas extra
(setq org-ellipsis " ▾")          ; símbolo de plegado

;; Mostrar énfasis correctamente
(setq org-hide-emphasis-markers t)


;; Hooks (manos) ejecutar tareas automáticas, comportamientos o lanzar eventos.
(add-hook 'org-mode-hook 'visual-line-mode)  ; visualizar mejor texto completo en pantalla
                                             ; visual-line-mode predeterminado al iniciar


;; Estados TODO globales
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "WAIT(w)" "|" "DONE(d)" "CANCELLED(c)")))



(setq org-log-done 'time) ; instrucción externa, para que tarea se marque como done
                          ; al terminar

(provide 'tool-org)
