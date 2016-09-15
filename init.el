;; load path
;;(setq load-path (append
;;                 '("~/.emacs.d"
;;                   "~/.emacs.d/packages")

;;
;; Auto Complete
;;
;; auto-complete-config の設定ファイルを読み込む。
(require 'auto-complete-config)
;; よくわからない
(ac-config-default)

;; TABキーで自動補完を有効にする
(ac-set-trigger-key "TAB")

;; auto-complete-mode を起動時に有効にする
(global-auto-complete-mode t)
(load-theme 'manoj-dark t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
;; janpanese
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)
(menu-bar-mode -1)
(tool-bar-mode t)
;; no start up message
(setq inhibit-startup-message t)
;; 現在行を目立たせる
(setq hl-line-face 'underline)
(global-hl-line-mode)

;; no backup file
(setq make-backup-files nil)

;; delete auto save files
(setq delete-auto-save-files t)

;; tab space
(setq-default tab-width 4 indent-tabs-mode nil)

;; enter
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; line number
(column-number-mode t)

;; linum
(global-linum-mode t)

;;cursor 
(blink-cursor-mode 0)

;; ()
(show-paren-mode 1)

;; scroll 1
(setq scroll-conservatively 1)

;; shift > select
(setq pc-select-selection-keys-only t)
(pc-selection-mode 1)

;; C-k  delect line
(setq kill-whole-line t)

;; "yes or no" -> "y or n" 
(fset 'yes-or-no-p 'y-or-n-p)

;; no beep
(defun my-bell-function ()
  (unless (memq this-command
        '(isearch-abort abort-recursive-edit exit-minibuffer
              keyboard-quit mwheel-scroll down up next-line previous-line
              backward-char forward-char))
    (ding)))
(setq ring-bell-function 'my-bell-function)
(require 'color-theme)
(color-theme-initialize)

(color-theme-molokai)
