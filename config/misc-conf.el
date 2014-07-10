(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))
(setq reb-re-syntax 'string)
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(show-paren-mode 1)
(transient-mark-mode t)
(global-font-lock-mode t)
(scroll-bar-mode -1)

(global-unset-key "\C-z")

(defalias 'yes-or-no-p 'y-or-n-p) ; y or n is enough
(setq confirm-kill-emacs 'y-or-n-p)


(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))


