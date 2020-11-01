
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


