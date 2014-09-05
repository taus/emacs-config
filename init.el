;(defvar *emacs-load-start* (current-time)) ; Time .init.el

;(setq debug-on-error t)

(setq dotfiles-dir "~/.emacs.d/") ;specify this dir

(setq custom-file "~/.emacs.d/emacs-custom.el") ; seperate out setting edited by custom variables to remove clutter
(load custom-file 'noerror)

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
		     "cmake-conf.el"
		     "key-conf.el"
		     "gud-conf.el"
		     "irony-mode-conf.el"
		     "erc-conf.el"
		     "org-conf.el"
		     "misc-conf.el"
		     ))




;; apparently doesn't work in emacs 24
;(message "My .emacs loaded in %ds" (destructuring-bind (hi lo ms) (current-time)
;                           (- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*))))) 
