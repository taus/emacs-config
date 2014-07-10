(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's asynchronous function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)


(add-hook 'irony-mode-hook 'company-mode)

;(setq company-clang-arguments '("-I/usr/lib/llvm3.2/include" "-I/usr/include"))


(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))
    (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
