;; moehuster's emacs setting
;; Server mode
(server-start)

;; Common Setting
(fset 'yes-or-no-p 'y-or-n-p)
(setq inhibit-startup-message t)
(setq mouse-yank-at-point t)
(setq kill-ring-max 200)

;; Auto-save
(setq auto-save-default nil)
(setq-default make-backup-files nil)

;; Show column/line number
(setq line-number-mode t)
(setq column-number-mode t)

;; Display time
(display-time-mode t)
(setq display-time-24hr-format t)
;(setq display-time-day-and-date t)

;; Default major mode
(setq default-major-mode 'text-mode)

;; mouse avoidance
(mouse-avoidance-mode 'animate)

;; Show buffer name
(setq frame-title-format "emacs@%b")

;; column width
(setq default-fill-column 100)

;; Enable system clipboard
(setq x-select-enable-clipboard t)

;; Enable image
(auto-image-file-mode)

;; Show matched parentheses
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; Use space not tab
;; M-x (un)tabify use space/tab
;; whitespace-cleanup cleanup trailing space
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4
	  c-basic-offset 4)

;; Scrool setting
(setq scroll-margin 3
	  scroll-conservatively 1000)

;; Syntax highlight
(global-font-lock-mode t)

;; Hide toolbar
(tool-bar-mode 0)

;; Hide scrollbar
(scroll-bar-mode 0)

;; Font Size
(global-set-key (kbd "<C-wheel-up>")   'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)

;; Auto indent
(global-set-key (kbd "C-<return>") 'newline)
(global-set-key (kbd "RET") 'newline-and-indent)

;; Setting English Font
(set-face-attribute
  'default nil :font "DejaVu Sans Mono 10")
;; Setting CJK Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
					charset
					(font-spec :family "Microsoft YaHei")))

(require 'wcy-swbuff)
(global-set-key (kbd "<C-tab>") 'wcy-switch-buffer-forward)
(global-set-key (kbd "<C-S-kp-tab>") 'wcy-switch-buffer-backward)

;; whitespace mode
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
