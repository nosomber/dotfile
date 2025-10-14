(require 'olivetti)

;;; Code:

;; markdown
(add-hook 'markdown-mode-hook
          (lambda ()
            (olivetti-mode 1)  ;; 启用 Olivetti 模式
            (setq olivetti-body-width 100)))  ;; 设置文本宽度为 80 字符

;; emacs
(add-hook 'org-mode-hook
          (lambda ()
            (olivetti-mode 1)
            (setq olivetti-body-width 100)))


;; (dolist (hook (list
;;                'Info-mode-hook
;;                'rcirc-mode-hook
;;                'eww-mode-hook
;;                ))
;;   (add-hook hook
;;             #'(lambda ()
;;                 (olivetti-mode 1)
;;                 (olivetti-set-width 120)
;;                 )))

;; (dolist (hook (list
;;                'text-mode-hook
;;                'markdown-mode-hook
;;                'org-mode-hook
;;                ))
;;   (add-hook hook
;;             #'(lambda ()
;;                 (when (buffer-file-name)
;;                   (unless (string-prefix-p "README" (file-name-base (buffer-file-name)))
;;                     (olivetti-mode 1)
;;                     (olivetti-set-width 120))))))

(provide 'init-olivetti)
