
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

; ----------------
; key bind
; ----------------
;; C-h
(global-set-key "\C-h" 'delete-backward-char)
;; help
(global-set-key "\C-c\C-h" 'help-command)
;; comment out
(global-set-key "\C-c;" 'comment-dwim)
;; window operation
(global-set-key "\C-t" 'other-window)
;; Divide 3 windows by C-x @ 
(defun split-window-horizontally-n (num_wins)
  (interactive "p")
  (dotimes (i (- num_wins 1))
    (split-window-horizontally))
  (balance-windows))

(global-set-key "\C-x@" (lambda ()
                           (interactive)
                           (split-window-horizontally-n 3)))


; ----
; preferences
; ----
; Complement parentheses()
(electric-pair-mode 1)
;; tab = 4spaces
(setq-default tab-width 4 indent-tabs-mode nil)
;; デフォルトの起動時のメッセージを表示しない
(setq inhibit-startup-message t)
;; 列の番号
(column-number-mode t)
;; 行番号の表示
(global-linum-mode t)
;; エラー音をならなくする
(setq ring-bell-function 'ignore)
;; 1行ごとの改ページ
(setq scroll-conservatively 1)
;; 対応する括弧を光らせる
(show-paren-mode 1)
;; メニューバーの非表示
(menu-bar-mode -1)
;; backupファイル作らない
(setq make-backup-files nil)
(setq auto-save-default nil)
;; 大文字・小文字を区別しない
(setq case-fold-search t)
;;utf8
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)



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
