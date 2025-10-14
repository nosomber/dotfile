(require 'orderless)
(require 'vertico)

(setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion))))

(vertico-mode)
(setq vertico-count 5)
(provide 'init-minibuffer)
