(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

;; Key bindings only for the terminal mode
(if (not (display-graphic-p))
    (progn
	  (global-set-key (kbd "M-RET") 'eglot-format)))
