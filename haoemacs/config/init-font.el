(require 'all-the-icons)

;; (let ((emacs-font-size 20)
;;       (chinese-font-name  "LXGW WenKai")
;;       ;;(english-font-name "JetBrainsMono Nerd Font Mono")
;;       (english-font-name "Anonymous Pro"))
  
;;   (when (display-grayscale-p)
;;     (set-frame-font (format "%s-%s" (eval english-font-name) (eval emacs-font-size)))
    
;;     (set-fontset-font (frame-parameter nil 'font) 'unicode (eval english-font-name))
    
;;     (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;       (set-fontset-font (frame-parameter nil 'font) charset (font-spec :family "LXGW WenKai" :height 70)))
;;     ))

;; (set-frame-font "Anonymous Pro-20")   ;;整个frame，全部字符集
;;(set-frame-font "Iosevkanonymous-17")
(set-frame-font "Iosevka Comfy-14")
(set-fontset-font "fontset-default" 'han "LXGW WenKai Mono Regular-10")  ;; 特定字符集
;;(set-fontset-font "fontset-default" 'han "weibq Medium-17")

(provide 'init-font)
