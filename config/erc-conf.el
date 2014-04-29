;(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT"))
(setq erc-hide-list '("JOIN" "NICK"))
(setq erc-autojoin-channels-alist
          '(("freenode.net" "#emacs" "##c++-general" "##c++-basic"))
)

 (add-hook 'window-configuration-change-hook 
	   '(lambda ()
	      (setq erc-fill-column (-(/ (window-width) 2) 4))))
