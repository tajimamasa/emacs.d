
; ----------------
; Package
; ----------------

(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

;; auto-complete
(require 'auto-complete-config)
(global-auto-complete-mode 0.5)

;; neotree
(require 'neotree)
(global-set-key "\C-o" 'neotree-toggle)


(add-to-list 'load-path "~/.emacs.d/conf")
(load "key")
(load "pre")

; ----
; preferences
; ----
(require 'autoinsert)
(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-directory "~/.emacs.d/temp/")
(setq auto-insert-query nil)

(autoload 'python-mode "python-mode" "Python editing mode." t)
(custom-set-variables
  '(py-indent-offset 4)
)
(add-hook 'python-mode-hook
  '(lambda()
    (setq tab-width 4) 
    (setq indent-tabs-mode nil)
  )
  )

(setq auto-insert-alist
      (append '((python-mode . "temp-py.txt")
                 ) auto-insert-alist))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (python-mode neotree auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
