;(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT"))
(setq erc-hide-list '("JOIN" "NICK"))
(setq erc-autojoin-channels-alist
          '(("freenode.net" "#emacs" "##c++-general" "##c++-basic" "##c++" "#latex"))
)

(add-hook 'erc-mode-hook '(lambda ()
			    (setq scroll-conservatively 1000)

			  ))

 (add-hook 'window-configuration-change-hook 
	   '(lambda ()
	      (setq erc-fill-column  75))); (-(/ (window-width) 2) 4))))
