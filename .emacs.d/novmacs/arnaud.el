;;; arnaud.el --- custom arnaud functions
;;CUSTOM arnaud funcs
(defun arnaud-hide-fileformat-convertion (active)
 (if(= active 0)
  (setq inhibit-eol-conversion nil)
 )
 (if(= active 1)
  (setq inhibit-eol-conversion 1)
 )
 (interactive "nActive?(1:yes,0:no)")
 (revert-buffer t t t)
 (message "inhibit-eol-conversion set to 1"))

(defun arnaud-remove-control-m ()
  "Asks for a command and executes it in inferior shell with current buffer
as input."
  (interactive)
  (shell-command-on-region
   (point-min) (point-max)
   (read-shell-command "Shell command on buffer: ")))


(defun arnaud-settheme (theme)
 (interactive "select theme? (blueor | whitest | whitest_2 | storm | matrix | desert | grayze)")
 (load-file (concat emacsrootpath (concat "colortheme/terminal/" theme)))) 

(defun arnaud-emacs-main-configure ()
 (interactive)
 (find-file "/home/arnaud/.emacs"))
(defun arnaud-emacs-arnaud-el-configure ()
 (interactive)
 (find-file "/home/arnaud/.emacs.d/arnaud.el"))

(defun arnaud-test ()
 (interactive)
 ;;(arnaud-switch-buffer-theme)
 ;;(set-face-background 'default "#000000")
 ;;(color-theme-buffer-local 'color-theme-djcb-dark (current-buffer))
 ;;(color-theme-buffer-local 'color-theme-robin-hood (current-buffer))
)

(defun arnaud-hook-find-file ()
 ;;ssh
 (if (string-match "/ssh" (buffer-file-name))
     (if (= (string-match "/ssh" (buffer-file-name)) 0)
         ;;(color-theme-buffer-local 'color-theme-robin-hood (current-buffer))         
         (color-theme-buffer-local 'color-theme-fischmeister (current-buffer))         
         ;;color-theme-charcoal-black / color-theme-kingsajz / color-theme-calm-forest
         ;;(color-theme-buffer-local 'color-theme-calm-forest (current-buffer))         
     )
 )
)



(defun arnaud-switch-buffer-theme ()
 (interactive)
 ;;(set-face-background 'default "#000000")
 ;;(color-theme-buffer-local 'color-theme-djcb-dark (current-buffer))
 ;;(if (> 5 4)
 ;;(defvar arnaud-switch-buffer-theme_inc 0)
 ;;(if )
;; )

;;>>>>
;;(setq animals '(giraffe gazelle lion tiger))
;;(defun print-elements-of-list (list)
;;  "Print each element of LIST on a line of its own."
;;  (while list
;;    (print (car list))
;;    (setq list (cdr list))))
;;(print-elements-of-list animals)
;;<<<

 (if (= (boundp 'arnaud-switch-buffer-theme_inc) nil) 
 (setf arnaud-switch-buffer-theme_inc 1)
 )
 (incf arnaud-switch-buffer-theme_inc)

 ;;print (arnaud-switch-buffer-theme_inc)
 (print arnaud-switch-buffer-theme_inc)
 
 ;;(defvar arnaud-switch-buffer-theme_inc (arnaud-switch-buffer-theme_inc)+1)

;; (color-theme-buffer-local 'color-theme-robin-hood (current-buffer))
)


;;Django python headers
(defun django-headers ()
  (interactive)
  (print "# -*- coding:utf-8 -*-" (current-buffer))
  (print "import logging; logger = logging.getLogger(__name__)" (current-buffer))
)


(defun arnaud-cua-mode ()
  (interactive)
  (setq cua-enable-cua-keys nil)
  (cua-mode t)
  (message "cua-mode activated. Do 'M-x cua-mode' to deactivate")
)


(defun arnaud-occur-non-ascii ()
  "Find any non-ascii characters in the current buffer."
  (interactive)
  (occur "[^[:ascii:]]"))



(provide 'arnaud)
