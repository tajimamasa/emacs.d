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
