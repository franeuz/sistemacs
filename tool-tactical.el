;; ─────────────────────────────────────────────
;; 🧠 Scratch como Arsenal Matemático Persistente
;; ─────────────────────────────────────────────

(setq initial-major-mode 'org-mode)

(setq initial-scratch-message
"#+TITLE: Pizarra táctica - ∀  ∃  ∪ ∑ ∫ \n\n\
I. Existencia y totalidad (los dioses)

*∀* — para todo   *∃* — existe   *∃!* — existe uno único   *∄* — no existe

- Estos son literalmente filosofía formal.\n\n\

II. Pertenencia y estructura (el universo matemático)

*∈* — pertenece   *⊆* — subconjunto   *∩* — intersección   *∪* — unión   *∅* — vacío

- Aquí empieza la matemática moderna.\n\n\

III. Lógica pura (pensamiento en símbolos)

*¬* — negación   *∧* — y   *∨* — o   *→* — implica   *↔* — equivalencia   *⊥* — contradicción absoluta

- Esto es literalmente el motor del razonamiento.\n\n\

IV. Operadores grandes (la potencia)

*∑* — sumatoria   *∏* — productoria   *∫* — integral   *lim* — límite   *∞* — infinito

- La forma compacta del infinito.\n\n\
")

(defvar my/scratch-file
  (expand-file-name "scratch-arsenal.org" user-emacs-directory))

(defun my/save-scratch ()
  "Guardar el contenido de *scratch* en archivo."
  (when (get-buffer "*scratch*")
    (with-current-buffer "*scratch*"
      (write-region (point-min) (point-max) my/scratch-file))))

(defun my/load-scratch ()
  "Cargar el archivo persistente en *scratch*."
  (when (file-exists-p my/scratch-file)
    (with-current-buffer "*scratch*"
      (erase-buffer)
      (insert-file-contents my/scratch-file))))

(add-hook 'emacs-startup-hook #'my/load-scratch)
(add-hook 'kill-emacs-hook #'my/save-scratch)

(provide 'tool-tactical)

;;; tool-tactical termina aquí.
