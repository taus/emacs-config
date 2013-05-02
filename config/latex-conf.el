(autoload 'latex-mode "auctex" "Set auctex as default tex mode" t)
(add-to-list 'auto-mode-alist '("\\.tex\\'" . latex-mode))


(custom-set-variables
 '(reftex-plug-into-AUCTeX t))



(setq TeX-output-view-style
      (quote
       (("^pdf$" "." "evince -f %o"))))


(add-hook 'LaTeX-mode-hook (lambda ()
			     (flyspell-mode 1)
			     (auto-fill-mode 1)
                             (reftex-mode 1)
			     ))




(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq TeX-PDF-mode t)

(setq LaTeX-command-style
  '(("" "%(PDF)%(latex) -file-line-error %S%(PDFout)"))) ; fix pdflatex errors




