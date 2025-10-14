(require 'corfu)
(require 'cape)
;;(require 'yasnippet-capf)

(add-hook 'eglot-managed-mode-hook
          (lambda ()
            (flymake-mode -1)     ;; Disable flymake-mode
            (eldoc-mode -1)))     ;; Disable eldoc-mode

(setq corfu-auto        t
      corfu-count 5
      corfu-auto-delay  0.3  ;; TOO SMALL - NOT RECOMMENDED!
      corfu-auto-prefix 2) ;; TOO SMALL - NOT RECOMMENDED!

(add-hook 'corfu-mode-hook
          (lambda ()
            ;; Settings only for Corfu
            (setq-local completion-styles '(basic)
                        completion-category-overrides nil
                        completion-category-defaults nil)))

(global-corfu-mode)

;;;===============cape====================
(add-hook 'completion-at-point-functions #'cape-dabbrev)
(add-hook 'completion-at-point-functions #'cape-file)
(add-hook 'completion-at-point-functions #'cape-elisp-block)

;;;=================python============

(setq org-babel-load-languages
      '((java . t)
        (python . t)
        (emacs-lisp . t)
        (shell . t)))

(setq org-confirm-babel-evaluate nil)  ;; 代码块执行不用确认

;;;===============term===========
(setq explicit-shell-file-name "/usr/bin/zsh")
(setq explicit-zsh-args '())

(setq font-lock-maximum-decoration 2)   ;代码高亮等级
(add-hook 'prog-mode-hook 'display-line-numbers-mode) ;在编程模式下显示行号
(setq-default display-line-numbers-width 3) ;行号显示区域大小
;; configuration for scheme lisp
;; (setq scheme-program-name "mit-scheme")
(provide 'init-code)
