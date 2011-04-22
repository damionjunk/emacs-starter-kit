;;; Electric Pairs
;;;

;;; bind RET to py-newline-and-indent
;;; bind RET to py-newline-and-indent
(add-hook 'python-mode-hook '(lambda ()
     (define-key python-mode-map "\C-m" 'newline-and-indent)))

(add-hook 'python-mode-hook '(lambda ()
      (local-set-key "\C-c\C-c" 'my-compile)))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq-default py-indent-offset 4)
