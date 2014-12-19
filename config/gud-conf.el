;; Force gdb-mi to not dedicate any windows
;(defadvice gdb-display-buffer (after undedicate-gdb-display-buffer)
;  (set-window-dedicated-p ad-return-value nil))
;(ad-activate 'gdb-display-buffer)
;
;(defadvice gdb-set-window-buffer (after undedicate-gdb-set-window-buffer (name &optional ignore-dedi window))
;(set-window-dedicated-p window nil))
;(ad-activate 'gdb-set-window-buffer)
;
(add-hook 'gud-mode-hook (lambda ()
			   (gud-tooltip-mode 1)
;			   (gdb-many-windows 1)
			   )
	  )


;; GDB

;(defadvice gdb-setup-windows (after activate)
;  (gdb-setup-my-windows)
;  )
;
;(defun gdb-setup-my-windows ()
;  (gdb-get-buffer-create 'gdb-stack-buffer)
;  (set-window-dedicated-p (selected-window) nil)
;  (switch-to-buffer gud-comint-buffer)
;  (delete-other-windows)
;  (let
;      ((win0 (selected-window)) ; source and gdb
;       (win1 (split-window-vertically (/ (* (window-height) 3 ) 4))) ; locals,frames and breakpoints
;       (win2 (split-window-horizontally)) ; gdb
;       )
;    (set-window-buffer
;     win0
;     (if gud-last-last-frame
;	 (gud-find-file (car gud-last-last-frame))
;       (if gdb-main-file
;	   (gud-find-file gdb-main-file)
;	 ;; Put buffer list in window if we
;	 ;; can't find a source file.
;	 (list-buffers-noselect))))
;    (setq gdb-source-window (selected-window))
;    (select-window win1)
;    (split-window-horizontally (/ (* (window-width) 1 ) 4)) ; locals
;    (gdb-set-window-buffer (gdb-get-buffer-create 'gdb-locals-buffer))
;    (other-window 1)
;    (split-window-horizontally (/ (* (window-width) 2 ) 3)) ; frames
;    (gdb-set-window-buffer (gdb-stack-buffer-name))
;    (other-window 1)
;    (gdb-set-window-buffer (gdb-breakpoints-buffer-name))
;    (select-window win1)
;  )
;  )
;
;
;(ad-activate 'gdb-setup-windows)
;(defalias 'gdb 'gud-gdb)
