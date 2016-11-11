(set-variable 'inhibit-startup-screen t)
(set-variable 'make-backup-files nil)
(set-variable 'default-frame-alist
              '((fullscreen . maximized)))
(set-default 'indent-tabs-mode nil)

(menu-bar-mode 0)
(tool-bar-mode 0)
(show-paren-mode 1)
(column-number-mode)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(load-theme 'inkpot t)

(add-hook 'Man-mode-hook
          (lambda ()
            (kill-local-variable 'truncate-lines)))

(global-set-key "\C-xr" (lambda () (interactive) (revert-buffer t t)))
(global-set-key "\M-x" 'helm-M-x)
(global-set-key "\C-x\C-f" 'helm-find-files)

(helm-mode)

