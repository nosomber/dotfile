;;; Code:

;;(setq-default ispell-program-name nil)
(require 'valign)

(with-eval-after-load 'org
  (setq org-odt-preferred-output-format "docx") ;ODT转换格式默认为docx
  (setq org-startup-folded nil)                 ;默认展开内容
  (setq org-startup-indented t)                 ;默认缩进内容

  ;; 隐藏 HTML 导出文件底部的一些无用信息
  (setq org-export-with-author nil)
  (setq org-export-time-stamp-file nil)
  (setq org-html-validation-link nil)

  ;; _表示下标 关闭这个默认设置
  (setq org-export-with-sub-superscripts nil) ;
  
  (setq org-publish-project-alist
      '(
  ("org-ianbarton"
          ;; Path to your org files.
          :base-directory "~/golosina/_org/"
          :base-extension "org"

          ;; Path to your Jekyll project.
          :publishing-directory "~/golosina/_posts/"
          :recursive t
          :publishing-function org-html-publish-to-html
          :headline-levels 4
          :html-extension "html"
          :body-only t ;; Only export section between <body> </body>
    )

    ("org-static-ian"
          :base-directory "~/golosina/org/"
          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
          :publishing-directory "~/golosina/"
          :recursive t
          :publishing-function org-publish-attachment)

    ("ian" :components ("org-ianbarton" "org-static-ian"))))
  
  (define-key org-mode-map (kbd "C-c e")
    (lambda ()
      (interactive)
      (save-buffer)
      (org-publish-project "ian"))))


(dolist (hook (list
               'org-mode-hook
               ))
  (add-hook hook #'(lambda ()
                     (setq truncate-lines nil) ;默认换行                 
                     (valign-mode)
                     )))

;; for emacs 30.1 text-mode 启动了 拼写检查
;; File: /opt/homebrew/Cellar/emacs-plus@30/30.1/share/emacs/30.1/lisp/textmodes/text-mode.el
;; (add-hook 'completion-at-point-functions #'ispell-completion-at-point 10 t)))
(add-hook 'org-mode-hook
          (lambda ()
            (delq 'ispell-completion-at-point completion-at-point-functions)))

(add-hook 'markdown-mode-hook
          (lambda ()
            (delq 'ispell-completion-at-point completion-at-point-functions)))

(provide 'init-org)
