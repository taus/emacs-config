(add-hook 'c++-mode-hook (lambda ()
			   (yas-global-mode 1)
			   (subword-mode 1)
			   )
	  )


(c-add-style "open-tissue" '("stroustrup" 
			     (c-basic-offset . 2)

			     (c-offsets-alist
			      (inline-open . 0)
;			      (arglist-intro . c-lineup-arglist-intro-after-paren)
;			      (arglist-cont . -)
;			      (arglist-cont-nonempty . -)
;			      (arglist-close . c-lineup-arglist)
			      )
			     ))

(setq c-default-style "open-tissue")

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.inl\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cuh\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cl\\'" . c-mode))


