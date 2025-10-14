;;; Require
(require 'rime)
(require 'isearch-mb)

;;; Code:
(setq rime-user-data-dir (expand-file-name "~/.local/share/fcitx5/emacs-rime/"))

;;(setq rime-posframe-properties
;;      (list :background-color "#333333"
;;            :foreground-color "#dcdccc"
;;            ;; :font "TsangerJinKai03-6763"
;;            :internal-border-width 10))

(setq default-input-method "rime"
      rime-show-candidate 'minibuffer)


;;修复 emacs-rime 在 isearch 模式下不能使用的问题
(isearch-mb-mode)
;;修复 rime 在退出时需要鼠标点一下的问题
(defun rime-lib-finalize() nil)   ; 防止在不启用rime，关闭emacs时提示该函数为空
(add-hook 'kill-emacs-hook #'rime-lib-finalize)

(lazy-load-set-keys
'(
  ("M-o" . rime--backspace)
  ("M-m" . rime--return)
  ("C-g" . rime--escape))
rime-active-mode-map)

(provide 'init-rime)


