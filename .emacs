(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(auto-indent-next-pair-timer-geo-mean (quote ((default 0.0005 0))))
 '(column-number-mode t)
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-safe-themes (quote ("71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(ede-project-directories (quote ("c:/Documents and Settings/user/Desktop/hydeval" "e:/test/hydraulics")))
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-ede-mode t)
 '(indicate-buffer-boundaries (quote left))
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;;  
  
;(define-key nrepl-interaction-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc)
  
;; ;; ;; ;; ;; ;; ;; ;; ;; ;; 
;; 
;; 
;; 
;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;;  
(package-initialize)
(setq-default inhibit-startup-screen t)

;; Of course, don't uncomment the line below -- doing so would
;; stop Emacs from helpfully leaving "foo~" (backup) files all
;; over the place.
(setq make-backup-files nil)

;; Use only spaces (no tabs at all).
(setq-default indent-tabs-mode nil)

;; Always show column numbers.
(setq-default column-number-mode t)

;; Display full pathname for files.
;(add-hook 'find-file-hooks
;          '(lambda ()
;             (setq mode-line-buffer-identification 'buffer-file-truename)))

;; For easy window scrolling up and down.
(global-set-key "\M-n" 'scroll-up-line)
(global-set-key "\M-p" 'scroll-down-line)

;; For easier regex search/replace.
(defalias 'qrr 'query-replace-regexp)

;; My own preference. Change or comment out the following lines if you like.
(load-theme 'deeper-blue t)
(set-background-color "#383838")

;;
;;
;; Markdown Mode
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(put 'upcase-region 'disabled nil)
(global-set-key "\M-Z" 'nrepl-jack-in)
(global-set-key "\M-X" 'paredit-mode)


(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/")
             '("melpa" . "http://melpa.milkbox.net/packages/"))

(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents)
  (package-install 'clojure-mode))

(global-set-key (kbd "M-l") (lambda () (interactive) (insert "\u03bb"))) ;lambda
(global-set-key (kbd "M-f") (lambda () (interactive) (insert "\u0192"))) ;function
(global-set-key (kbd "M-d") (lambda () (interactive) (insert "(defn )"))) ;function
