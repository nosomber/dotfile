;; 增加IO性能
(setq process-adaptive-read-buffering nil)
(setq read-process-output-max (* 1024 1024))

(fset 'yes-or-no-p 'y-or-n-p)           ;以 y/n代表 yes/no
(blink-cursor-mode -1)                  ;指针不闪动
(transient-mark-mode 1)                 ;标记高亮

(setq use-dialog-box nil)               ;never pop dialog
(setq inhibit-startup-screen t)         ;inhibit start screen

(setq-default comment-style 'indent)    ;设定自动缩进的注释风格
(setq ring-bell-function 'ignore)       ;关闭烦人的出错时的提示声
(setq default-major-mode 'text-mode)    ;设置默认地主模式为TEXT模式
(setq mouse-yank-at-point t)            ;粘贴于光标处,而不是鼠标指针处
(setq x-select-enable-clipboard t)      ;支持emacs和外部程序的粘贴
(setq split-width-threshold nil)        ;分屏的时候使用上下分屏
(setq inhibit-compacting-font-caches t) ;使用字体缓存，避免卡顿

(setq word-wrap-by-category t)             ;按照中文折行
(setq enable-local-variables :all)         ;不要问 .dir-locals 的问题

(setq completion-auto-select nil)         ;避免默认自动选择

(setq ad-redefinition-action 'accept)     ;不要烦人的 redefine warning

;; 平滑地进行半屏滚动，避免滚动后recenter操作
(setq scroll-step 1
      scroll-conservatively 10000)

;; scratch 的默认显示
(setq initial-scratch-message ";;Welcome to Emacs :)\n")

;; ;;设置平滑滚动(缺点是在页末会出现不连贯跳转)
;; (pixel-scroll-precision-mode 1)

;;不生成备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-inhibited t)
(setq backup-directory-alist `(("." . "~/.saves")))
(setq auto-save-file-name-transforms '((".*" "~/.saves/" t)))
(setq backup-by-copying t)

;;emacs换行不显示小箭头
(global-visual-line-mode 1)

(provide 'init-generic)
