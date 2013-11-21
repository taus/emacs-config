(defvar *emacs-load-start* (current-time)) ; Time .init.el

(setq dotfiles-dir "~/.emacs.d/") ;specify this dir

(setq custom-file "~/.emacs-custom.el") ; seperate out setting edited by custom variables to remove clutter
(load custom-file 'noerror)

(global-unset-key "\C-z")

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
		     "c++-conf.el"
		     "matlab-conf.el"
		     ))


(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cl\\'" . c-mode))
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(show-paren-mode 1)
(transient-mark-mode t)
(global-font-lock-mode t)


(message "My .emacs loaded in %ds" (destructuring-bind (hi lo ms) (current-time)
                           (- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*)))))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
