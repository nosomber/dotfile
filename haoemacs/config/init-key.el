;;; ### Unset key ###
;;; --- 卸载按键
(lazy-load-unset-keys                   ;全局按键的卸载
 '("C-z" "C-q" "s-T" "s-W" "s-z" "M-h" "s-c" "s-x" "s-v" "C-6" "M-." "M-," "M-s o" "C-c h" "C-c v"))

;;; ### Toolkit ###
;;; --- 工具函数
(lazy-load-set-keys
 '(
   ("s-[" . eval-expression)            ;执行表达式
   ("s-]" . eval-region)                ;执行选中区域
   ("C-;" . comment-dwim)               ;注释
   ;;("C-x C-f" . ido-find-file)          ;交互式查找文件
   ("C-," . enlarge-window-horizontally)
   ("C-." . shrink-window-horizontally)
   ("M-p" . show-file-name)
   ))


;;; ### Buffer Move ###
;;; --- 缓存移动
(lazy-load-set-keys
 '(
   ("C-z k" . beginning-of-buffer)      ;缓存开始
   ("C-z j" . end-of-buffer)            ;缓存结尾
   ("C-M-f" . forward-paragraph)        ;下一个段落
   ("C-M-b" . backward-paragraph)       ;上一个段落
   ("C-M-y" . backward-up-list)         ;向左跳出 LIST
   ("C-M-o" . up-list)                  ;向右跳出 LIST
   ("C-M-u" . backward-down-list)       ;向左跳进 LIST
   ("C-M-i" . down-list)                ;向右跳进 LIST
   ("C-M-a" . beginning-of-defun)       ;函数开头
   ("C-M-e" . end-of-defun)             ;函数末尾
   ))


(lazy-load-global-keys
 '(
   ("C-o" . open-newline-below)         ;在下面一行新建一行
   ("C-S-o" . open-newline-above)       ;在上面一行新建一行                                        ;
   )
 "open-newline")

;;; ### Font ###
;;; --- 字体命令
(lazy-load-set-keys
 '(
   ("s--" . text-scale-decrease)        ;减小字体大小
   ("s-=" . text-scale-increase)        ;增加字体大小
   ))

;;; ### Window Operation ###
;;; --- 窗口操作
(lazy-load-set-keys
 '(
   ("C-c v" . split-window-vertically)   ;纵向分割窗口
   ("C-c h" . split-window-horizontally) ;横向分割窗口
   ("C-c ;" . delete-other-windows)      ;关闭其它窗口
   ))

;;; ### Fingertip ###
;;; --- 结构化编程
;(lazy-load-unset-keys
; '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b" "M-)")
; fingertip-mode-map)                    ;卸载按键
;(defvar fingertip-key-alist nil)
;(setq fingertip-key-alist
;      '(
;        ;; 移动
;        ("M-n" . fingertip-jump-left)
;        ("M-p" . fingertip-jump-right)
;        ;; 符号插入
;        ("%" . fingertip-match-paren)            ;括号跳转
;        ("(" . fingertip-open-round)             ;智能 (
;        ("[" . fingertip-open-bracket)           ;智能 [
;        ("{" . fingertip-open-curly)             ;智能 {
;        (")" . fingertip-close-round)            ;智能 )
;        ("]" . fingertip-close-bracket)          ;智能 ]
;        ("}" . fingertip-close-curly)            ;智能 }
;        ("（" . fingertip-open-chinese-round)    ;智能 （
;        ("「" . fingertip-open-chinese-bracket)  ;智能 「
;        ("【" . fingertip-open-chinese-curly)    ;智能 【
;        ("）" . fingertip-close-chinese-round)   ;智能 ）
;        ("」" . fingertip-close-chinese-bracket) ;智能 」
;        ("】" . fingertip-close-chinese-curly)   ;智能 】
;        ("\"" . fingertip-double-quote)          ;智能 "
;        ("'" . fingertip-single-quote)           ;智能 '
;        ("=" . fingertip-equal)                  ;智能 =
;        ("SPC" . fingertip-space)                ;智能 space
;        ("RET" . fingertip-newline)              ;智能 newline
;        ;; 删除
;        ("M-o" . fingertip-backward-delete) ;向后删除
;        ("C-d" . fingertip-forward-delete)  ;向前删除
;        ("C-k" . fingertip-kill)            ;向前kill
;        ;; 包围
;        ("M-\"" . fingertip-wrap-double-quote) ;用 " " 包围对象, 或跳出字符串
;        ("M-'" . fingertip-wrap-single-quote) ;用 ' ' 包围对象, 或跳出字符串
;        ("M-[" . fingertip-wrap-bracket)      ;用 [ ] 包围对象
;        ("M-{" . fingertip-wrap-curly)        ;用 { } 包围对象
;        ("M-(" . fingertip-wrap-round)        ;用 ( ) 包围对象
;        ("M-)" . fingertip-unwrap)            ;去掉包围对象
;        ;; 跳出并换行缩进
;        ("M-:" . fingertip-jump-out-pair-and-newline) ;跳出括号并换行
;        ;; 向父节点跳动
;        ("C-j" . fingertip-jump-up)
;        ))
;(lazy-load-set-keys fingertip-key-alist fingertip-mode-map)

;;; ### Isearch ###
;;; --- 交互式搜索
(lazy-load-set-keys
 '(
   ("TAB" . isearch-complete)          ;isearch补全
   ("C-s" . isearch-repeat-forward)    ;重复向前搜索, 第一次可以用来搜索上一次的历史哟
   ("C-r" . isearch-repeat-backward)   ;重复向后搜索
   ("C-g" . isearch-abort)             ;中止搜索
   ("C-w" . isearch-yank-word-or-char) ;粘帖光标后的词或字符作为搜索对象
   ("C-y" . isearch-yank-line)         ;粘帖光标后的行作为搜索对象
   ("M-o" . isearch-delete-char)       ;删除
   ("M-p" . isearch-ring-retreat)      ;搜索历史向后
   ("M-n" . isearch-ring-adjust)       ;搜索历史向前
   ("M-y" . isearch-yank-kill)         ;从 kill ring 中粘帖最后一项到搜索对象后
   ("M-h" . isearch-yank-char)         ;粘帖光标后的字符到搜索对象
   ("M-e" . isearch-edit-string)        ;编辑搜索对象
   ("M-c" . isearch-toggle-case-fold)   ;切换大小写
   ("M-r" . isearch-toggle-regexp)      ;切换正则表达式
   ("M-w" . isearch-toggle-word)        ;切换词
   ("M->" . isearch-beginning-of-buffer)    ;跳转到buffer开头并重新搜索, 搜索最前面一个
   ("M-<" . isearch-end-of-buffer)          ;跳转到buffer末尾并重新搜索, 搜索最后面一个
   ("M-%" . isearch-query-replace)          ;替换
   ("M-d" . isearch-find-duplicate-word)    ;查找重复的单词
   ("M-z" . isearch-find-duplicate-line)    ;查找重复的行
   ("C-M-%" . isearch-query-replace-regexp) ;正则表达式替换
   )
 isearch-mode-map
 )


;;; ### Toggle-One-Window ###
;;; --- 临时最大化当前窗口
(lazy-load-global-keys
 '(
   ("M-s o" . toggle-one-window)        ;切换一个窗口
   )
 "toggle-one-window")

;; ### popper ###
;;; --- 弹出窗口管理
(lazy-load-global-keys
 '(
   ("C-'" . popper-toggle)
   ("C-\"" . popper-cycle)
   )
 "init-popper")

;; (lazy-load-global-keys
;;  '(
;;    ("M-x" . consult-M-x)
;;    )
;;  "init-consult")

(provide 'init-key)
