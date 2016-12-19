
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2b2b2b" "#da4939" "#a5c261" "#ffc66d" "#6d9cbe" "#b6b3eb" "#6d9cbe" "#e6e1dc"])
 '(ansi-term-color-vector
   [unspecified "#2b2b2b" "#da4939" "#a5c261" "#ffc66d" "#6d9cbe" "#b6b3eb" "#6d9cbe" "#e6e1dc"])
 '(custom-enabled-themes (quote (base16-solarized-light)))
 '(custom-safe-themes
   (quote
    ("232f715279fc131ed4facf6a517b84d23dca145fcc0e09c5e0f90eb534e1680f" "6bb466c89b7e3eedc1f19f5a0cfa53be9baf6077f4d4a6f9b5d087f0231de9c8" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "a164837cd2821475e1099911f356ed0d7bd730f13fa36907895f96a719e5ac3e" "066d4710e40eeb85aa7c72afa6c23d09dee4795bf4e450d4869324e917b5f64d" "44eec3c3e6e673c0d41b523a67b64c43b6e38f8879a7969f306604dcf908832c" "cedd3b4295ac0a41ef48376e16b4745c25fa8e7b4f706173083f16d5792bb379" "7c1e99f9d46c397b3fd08c7fdd44fe47c4778ab69cc22c344f404204eb471baa" "d69a0f6d860eeff5ca5f229d0373690782a99aee2410a3eed8a31332a7101f1e" "03e3e79fb2b344e41a7df897818b7969ca51a15a67dc0c30ebbdeb9ea2cd4492" "e254f8e18ba82e55572c5e18f3ac9c2bd6728a7e500f6cc216e0c6f6f8ea7003" "0ae52e74c576120c6863403922ee00340a3bf3051615674c4b937f9c99b24535" "aed73c6d0afcf2232bb25ed2d872c7a1c4f1bda6759f84afc24de6a1aec93da8" default)))
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#452E2E")
 '(neo-theme (quote ascii))
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;------------------------------------------MY

;; lines in every file

(global-linum-mode 1)

;; Interesting themes from www.emacsthemes.com
;;
;; brown  -  Gruvbox
;;        -  Badwolf
;;        -  Birds of Paradise
;; dark   -  Graham
;; blue   -  Tronesque
;;        -  Deep Thought


;; Installed Plugins
;; js2-mode
;; web-mode
;; flycheck
;; neotree
;; json-mode
;; auto-complete
;; nasm-mode
;; haskell-mode
;; fsharp-mode
;; help
;; magit

;; magit C-x g for git status

(global-set-key (kbd "C-x g") 'magit-status)

;; magit C-x M-g for git popup

(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; helm config, M-x for helm-M-x

(require 'helm-config)

(global-set-key (kbd "M-x") 'helm-M-x)

;; enable nasm-mode

(require 'nasm-mode)
(add-to-list 'auto-mode-alist '("\\.nasm\\'" . nasm-mode))
(add-to-list 'auto-mode-alist '("\\.asm\\'" . nasm-mode))

;; C-c C-c for compiling nasm

(eval-after-load 'nasm-mode 
  '(define-key nasm-mode-map (kbd "C-c C-c") 'compile))

;; Change compilation command for nasm

(add-hook 'nasm-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 (concat
		  "nasm "
		  (file-name-sans-extension buffer-file-name)
		  ".asm -felf64 -o "
		  (file-name-sans-extension buffer-file-name)
		  ".o && ld -m elf_x86_64 "
		  (file-name-sans-extension buffer-file-name)
		  ".o -o "
		  (file-name-sans-extension buffer-file-name))
		 )
	    )
	  )

;; C-c C-c for compiling haskell

(require 'haskell-mode)
;(eval-after-load "haskell-mode"
;    '(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile))

(eval-after-load "haskell-mode"
  '(define-key haskell-mode-map (kbd "C-c C-c") 'compile))

(add-hook 'haskell-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 (concat
		  "ghc "
		  (file-name-sans-extension buffer-file-name)
		  ".hs -o "
		  (file-name-sans-extension buffer-file-name)
		  )
		 )
	    )
	  )

;; catalog tree

(require 'neotree)
  (global-set-key [f5] 'neotree-toggle)

;;(neotree-show)

(setq neo-smart-open t)

;; no scrollbars

(scroll-bar-mode -1)

;; start maximized

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; switch buffers with shift + arrow

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; js2-mode as default for javascript

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; auto-complete on startup

(require 'auto-complete)
(defun auto-complete-mode-maybe ()
  (unless (minibufferp (current-buffer))
    (auto-complete-mode 1)))

(global-auto-complete-mode t)

;; use web-mode for .jsx files

(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; turn on flychecking globally

(require 'flycheck)
(add-hook 'after-init-hook 'global-flycheck-mode)

;; c++11 on flycheck

(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

;; disable jshint since we prefer eslint checking

(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
	  '(javascript-jshint)))

;; use eslint with web-mode for jsx files

(flycheck-add-mode 'javascript-eslint 'web-mode)

;; customize flycheck temp file prefix

(setq-default flycheck-temp-prefix ".flycheck")

;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke

(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
    (let ((web-mode-enable-part-face nil))
      ad-do-it)
    ad-do-it))





