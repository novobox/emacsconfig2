(require 'novmacs--movetext)

;; Bind (shift-right) and (shift-left) function to your favorite keys. I use
;; the following so that Ctrl-Shift-Right Arrow moves selected text one 
;; column to the right, Ctrl-Shift-Left Arrow moves selected text one
;; column to the left:

(global-set-key '[M-right] 'shift-right)
(global-set-key '[M-left] 'shift-left)

(global-set-key '[M-up] 'move-lines-up)
(global-set-key '[M-down] 'move-lines-down)


(global-set-key "\C-x\C-g"  'goto-line)
(global-set-key '[C-i] 'indent-region)

(provide 'novmacs-bind)
