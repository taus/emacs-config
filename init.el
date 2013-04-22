(setq dotfiles-dir "~/.emacs.d/")


(let ((default-directory "~/.emacs.d/site-lisp/"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path)) ;; set path to include site-lisp and subdirs


(defconst *emacs-config-dir* (concat dotfiles-dir "/config/")) ;; set config dir

(defun load-config-files (files)
  (dolist (f files)
    (load (expand-file-name (concat *emacs-config-dir* f)))
    (message "Loaded config file: %s" f)))

(load-config-files '("latex-conf.el"
		     "color-theme-conf.el"
		     "ido-conf.el"
		     "backup-conf.el"
		     "magit-conf.el"
		     ))




(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(show-paren-mode 1)
(transient-mark-mode t)
(global-font-lock-mode t)
