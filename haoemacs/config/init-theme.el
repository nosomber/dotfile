;; Add all your customizations prior to loading the themes
(setq modus-themes-italic-constructs t
      modus-themes-bold-constructs nil)

;; Load the theme of your choice:
(load-theme 'modus-operandi-tinted t)
(setq modus-themes-to-toggle '(modus-operandi-tinted modus-vivendi-tinted))
(define-key global-map (kbd "<f5>") #'modus-themes-toggle)

;; modify the origin font-lock-comment-face #7f0000 to #705757
;; how to check?
;; use M-x describe-face RET font-lock-comment-face
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:inherit modus-themes-slant :foreground "#705757")))))

;; rime inputing color #555 grey
(custom-set-faces
 '(rime-preedit-face ((t (:foreground "#555" :background "unspecified-bg")))))

(provide 'init-theme)
