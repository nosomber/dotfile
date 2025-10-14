(require 'yasnippet)
(yas-reload-all)
(add-hook 'markdown-mode-hook #'yas-minor-mode)
(add-hook 'org-mode-hook #'yas-minor-mode)

(setq yas-snippet-dirs "~/.emacs.d/snippets")
(provide 'init-yasnippet)
