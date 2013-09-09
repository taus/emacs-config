(add-hook 'c++-mode-hook (lambda ()
			   (semantic-mode 1)
			   )
	  )

(eval-after-load "semantic"
  '(progn
     (define-prefix-command 'c-z-map)
     (global-set-key (kbd "C-z") 'c-z-map)
     (define-key semantic-mode-map (kbd "C-z j") 'semantic-complete-jump-local)
     (define-key semantic-mode-map (kbd "C-z J") 'semantic-complete-jump)
     (define-key semantic-mode-map (kbd "C-z SPC") 'semantic-complete-analyze-inline)
     (define-key semantic-mode-map (kbd "C-z l") 'semantic-analyze-possible-completions)
     (define-key semantic-mode-map (kbd "C-z g") 'semantic-symref-symbol)
     (define-key semantic-mode-map (kbd "C-z p") 'senator-previous-tag)
     (define-key semantic-mode-map (kbd "C-z n") 'senator-next-tag)
     (define-key semantic-mode-map (kbd "C-z C-w") 'senator-kill-tag)
     (define-key semantic-mode-map (kbd "C-z M-w") 'senator-copy-tag)
     (define-key semantic-mode-map (kbd "C-z C-y") 'senator-yank-tag)
     (define-key semantic-mode-map (kbd "C-z <up>") 'senator-transpose-tags-up)
     (define-key semantic-mode-map (kbd "C-z <down>") 'senator-transpose-tags-down)
     )
  )


