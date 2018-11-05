(defvar emacsrootpath "~/emacsconfig_2/")
(setq user-emacs-directory (file-truename "~/emacsconfig_2/.emacs.d/"))

;; Check is in terminal functions ;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun is-in-terminal()
      (not (display-graphic-p)))
(defmacro when-term (&rest body)
  "Works just like `progn' but will only evaluate expressions in VAR when Emacs is running in a terminal else just nil."
  `(when (is-in-terminal) ,@body))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; hide that tucking foolbar (in terminal)
(when-term
    (tool-bar-mode -1)
    (menu-bar-mode 0))

;; and the startup message too
(setq inhibit-startup-message t)
(setq visible-bell t)

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

;; Themes
(add-to-list 'custom-theme-load-path
	                  (file-name-as-directory (concat emacsrootpath ".emacs.d/themes/")))
;; Loading theme
(if (is-in-terminal)
    (load-theme 'manoj-dark t);; (load-theme 'molokai t)
 (load-theme 'dracula t))

;;(load-theme 'manoj-dark)
;;(load-theme 'cobalt)


;; ido
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching


;;;;;;;;;;;;;;;;;;; CUSTOM NOVMACS TOOLS ;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path (concat emacsrootpath ".emacs.d/novmacs/"))
;; CUSTOM BINDS
(require 'novmacs-bind)


;; Tabs & spaces
;; ---------------------------------------------------------------------
;; Set tabs to 4 spaces and replace all tabs with spaces
(setq default-tab-width 4)
(setq default-tab-width 8) ;; XXX pour conneries de notre ami MrLex
(setq-default indent-tabs-mode nil)

