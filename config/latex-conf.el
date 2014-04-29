(autoload 'latex-mode "auctex" "Set auctex as default tex mode" t)
(add-to-list 'auto-mode-alist '("\\.tex\\'" . latex-mode))


(custom-set-variables
 '(reftex-plug-into-AUCTeX t))



(setq TeX-output-view-style
      (quote
       (("^pdf$" "." "evince -f %o"))))


(add-hook 'LaTeX-mode-hook (lambda ()
			     (flyspell-mode 1)
                             (reftex-mode 1)
			     (LaTeX-math-mode 1)
			     (auto-fill-mode 0)
			     (yas-minor-mode 1)
			     ))


(defun reftex-format-cref (label def-fmt)
  (format "\\ref{%s}" label))
;(setq reftex-format-ref-function 'reftex-format-cref)
(setq reftex-format-ref-function nil)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq TeX-PDF-mode t)
(setq LaTeX-command-style
  '(("" "%(PDF)%(latex) -file-line-error %S%(PDFout)"))) ; fix pdflatex errors




