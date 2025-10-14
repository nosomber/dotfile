(require 'super-save)

(super-save-mode 1)
(add-to-list 'super-save-hook-triggers 'find-file-hook) ;;当触发 find-file 时自动保存当前文件
(setq super-save-silent t)
(setq super-save-all-buffers t)
(provide 'init-save)
