(defvar emacsrootpath "~/emacsconfig_2/")
(setq user-emacs-directory (file-truename "~/emacsconfig_2/.emacs.d/"))

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

;(add-to-list 'load-path (concat emacsrootpath ".emacs.d/"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; AUTO COMPLETE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; CUSTOM SNIPPETS
(setq yas-snippet-dirs (concat emacsrootpath ".emacs.d/snippets/"))

(require 'yasnippet)
(yas-reload-all)
(yas-global-mode)

;;PHP
(add-hook 'php-mode-hook '(lambda ()
                           (auto-complete-mode t)
                           (require 'ac-php)
                           (setq ac-sources  '(ac-source-php ) )
                           (yas-global-mode 1)

                           (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
                           (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
                           ))
