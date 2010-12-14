;;(require 'ruby-electric)
;;(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))

(defun echo-false-comint () (setq comint-process-echoes t))

(add-hook ’comint-mode-hook ’echo-false-comint)
