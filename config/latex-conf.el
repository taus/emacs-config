(add-hook 'latex-mode-hook (lambda ()
			     (flyspell-mode 1)
			     (auto-fill-mode 1)))

(setq latex-run-command "pdflatex -y")