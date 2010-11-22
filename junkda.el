;; Need to port this stuff to non-messy init settings
;; Copied from custom.el
;;
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-source-path (quote (("/" "/") (#("/Users/junkda/projects/rails/nearest_oneaxis" 0 44 (help-echo "Mouse-2 toggles maximizing, mouse-3 displays a popup-menu")) "nearest_oneaxis"))))
 '(ecb-tip-of-the-day nil)
 '(ecb-windows-width 0.25)
 '(rst-level-face-base-color "black "))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "#0C1021" :foreground "#F8F8F8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "apple" :family "Inconsolata"))))
 '(rst-level-1-face ((t (:background "red"))) t)
 '(rst-level-2-face ((t (:background "black"))) t)
 '(rst-level-3-face ((t (:background "black"))) t)
 '(rst-level-4-face ((t (:background "black"))) t)
 '(rst-level-5-face ((t (:background "black"))) t)
 '(rst-level-6-face ((t (:background "black"))) t))


;;
;; Color Theme stuff - I wish I had VIM's Jelly Beans.
(require 'color-theme)
(load-file "~/.emacs.d/themes/color-theme-ir-black.el")
(color-theme-ir-black)
(setq-default ispell-program-name "/usr/local/bin/aspell")

;; Undo the removal of menubar that happens in init.el
(if (fboundp 'menu-bar-mode) (menu-bar-mode 1))

;; Easier movement between windows
;; Obtained from a paste from #emacs on freenode
(define-key global-map "\M-j" 'other-window)
(define-key global-map "\M-k"       (lambda (&optional arg) (interactive "p")
(other-window (* -1 arg))))

;;
;; Display columns and line numbers
(setq column-number-mode t)
(setq line-number-mode t)
(global-visual-line-mode 1)

;; Make the mouse not scroll like crazy
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; 
;; CEDET Stuff
(load-file "~/src/emacs/cedet-1.0pre7/common/cedet.el")
(global-ede-mode 1)
(semantic-load-enable-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)
(global-srecode-minor-mode 1)

;;
;; ECB Stuff
(add-to-list 'load-path "~/src/emacs/ecb-2.40")
(require 'ecb)
(ecb-layout-switch "top1")
(ecb-activate)
