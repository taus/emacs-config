(require 'org-latex)
(setq-default major-mode 'org-mode)
(add-hook 'org-mode-hook (lambda ()
			  (flyspell-mode 1)
			  (auto-fill-mode 1)
			  )
	  )

(unless (boundp 'org-export-latex-classes)
  (setq org-export-latex-classes nil))


(add-to-list 'org-export-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))



(setq org-todo-keywords
      '((sequence "TODO" "DRAFTED" "|" "DONE" "CANCELED")))
