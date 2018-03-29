
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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2b2b2b" "#da4939" "#a5c261" "#ffc66d" "#6d9cbe" "#b6b3eb" "#6d9cbe" "#e6e1dc"])
 '(ansi-term-color-vector
   [unspecified "#2b2b2b" "#da4939" "#a5c261" "#ffc66d" "#6d9cbe" "#b6b3eb" "#6d9cbe" "#e6e1dc"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (material)))
 '(custom-safe-themes
   (quote
    ("fec6c786b1d3088091715772839ac6051ed972b17991af04b50e9285a98c7463" "65d4e1535e8fa5d40b9a95d30ed0e95b3bac2b905e905f4397e0425a51addc55" "bce3ae31774e626dce97ed6d7781b4c147c990e48a35baedf67e185ebc544a56" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "9a58c408a001318ce9b4eab64c620c8e8ebd55d4c52327e354f24d298fb6978f" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a4d03266add9a1c8f12b5309612cbbf96e1291773c7bc4fb685bfdaf83b721c6" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "e654ce0507ae5b2d7feeaef2c07354206781527941e7feb178c0a94be4a98e90" "a40eac965142a2057269f8b2abd546b71a0e58e733c6668a62b1ad1aa7669220" "a33858123d3d3ca10c03c657693881b9f8810c9e242a62f1ad6380adf57b031c" "3d0142352ce19c860047ad7402546944f84c270e84ae479beddbc2608268e0e5" "3eb2b5607b41ad8a6da75fe04d5f92a46d1b9a95a202e3f5369e2cdefb7aac5c" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "b1bcb837df0455af8e91114b7a3bddfa084cde32ceb16b1b468d5e5e8605a835" "a922c743710bb5d7c14995345549141f01211ff5089057dc718a5a33104c3fd1" "e8e744a1b0726814ac3ab86ad5ccdf658b9ff1c5a63c4dc23841007874044d4a" "b110da1a5934e91717b5c490709aba3c60eb4595194bbf9fdcbb97d247c70cfa" "232f715279fc131ed4facf6a517b84d23dca145fcc0e09c5e0f90eb534e1680f" "6bb466c89b7e3eedc1f19f5a0cfa53be9baf6077f4d4a6f9b5d087f0231de9c8" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "a164837cd2821475e1099911f356ed0d7bd730f13fa36907895f96a719e5ac3e" "066d4710e40eeb85aa7c72afa6c23d09dee4795bf4e450d4869324e917b5f64d" "44eec3c3e6e673c0d41b523a67b64c43b6e38f8879a7969f306604dcf908832c" "cedd3b4295ac0a41ef48376e16b4745c25fa8e7b4f706173083f16d5792bb379" "7c1e99f9d46c397b3fd08c7fdd44fe47c4778ab69cc22c344f404204eb471baa" "d69a0f6d860eeff5ca5f229d0373690782a99aee2410a3eed8a31332a7101f1e" "03e3e79fb2b344e41a7df897818b7969ca51a15a67dc0c30ebbdeb9ea2cd4492" "e254f8e18ba82e55572c5e18f3ac9c2bd6728a7e500f6cc216e0c6f6f8ea7003" "0ae52e74c576120c6863403922ee00340a3bf3051615674c4b937f9c99b24535" "aed73c6d0afcf2232bb25ed2d872c7a1c4f1bda6759f84afc24de6a1aec93da8" default)))
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#452E2E")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-sexp-background-color "#1c1f26")
 '(magit-diff-use-overlays nil)
 '(neo-theme (quote ascii))
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (treemacs-projectile treemacs project-explorer fiplr projectile vimish-fold zoom sublimity kaolin-themes zerodark-theme zenburn-theme evil company-jedi darktooth-theme py-autopep8 material-theme elpy jedi web-mode transpose-frame tide solarized-theme smartparens rainbow-delimiters powerline ng2-mode neotree nasm-mode magit json-mode js2-mode helm haskell-mode gruvbox-theme fsharp-mode flycheck-color-mode-line erlang elm-mode dired-toggle dired-subtree dired+ auto-complete alchemist ace-jump-mode)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;------------------------- MINE -------------------------

;;---------------------- INSTALLERS ----------------------

(unless (package-installed-p 'js2-mode)
  (package-install 'js2-mode))

(unless (package-installed-p 'web-mode)
  (package-install 'web-mode))

(unless (package-installed-p 'json-mode)
  (package-install 'json-mode))

(unless (package-installed-p 'nasm-mode)
  (package-install 'nasm-mode))

(unless (package-installed-p 'haskell-mode)
  (package-install 'haskell-mode))

(unless (package-installed-p 'erlang)
  (package-install 'erlang))

(unless (package-installed-p 'fsharp-mode)
  (package-install 'fsharp-mode))

(unless (package-installed-p 'elixir-mode)
  (package-install 'elixir-mode))

(unless (package-installed-p 'elm-mode)
  (package-install 'elm-mode))

(unless (package-installed-p 'alchemist)
  (package-install 'alchemist))

(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))

(unless (package-installed-p 'company)
  (package-install 'company))

(unless (package-installed-p 'helm)
  (package-install 'helm))

(unless (package-installed-p 'magit)
  (package-install 'magit))

(unless (package-installed-p 'ace-jump-mode)
  (package-install 'ace-jump-mode))

(unless (package-installed-p 'powerline)
  (package-install 'powerline))

(unless (package-installed-p 'transpose-frame)
  (package-install 'transpose-frame))

(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))

(unless (package-installed-p 'smartparens)
  (package-install 'smartparens))

(unless (package-installed-p 'typescript-mode)
  (package-install 'typescript-mode))

(unless (package-installed-p 'ng2-mode)
  (package-install 'ng2-mode))

(unless (package-installed-p 'tide)
  (package-install 'tide))

(unless (package-installed-p' 'flycheck-color-mode-line)
  (package-install 'flycheck-color-mode-line))

(unless (package-installed-p' 'dired+)
  (package-install 'dired+))

(unless (package-installed-p' 'dired-subtree)
  (package-install 'dired-subtree))

(unless (package-installed-p' 'dired-toggle)
  (package-install 'dired-toggle))

(unless (package-installed-p' 'company-jedi)
  (package-install 'company-jedi))

(unless (package-installed-p' 'elpy)
  (package-install 'elpy))

(unless (package-installed-p' 'py-autopep8)
  (package-install 'py-autopep8))

(unless (package-installed-p' 'sublimity)
  (package-install 'sublimity))

(unless (package-installed-p' 'vimish-fold)
  (package-install 'vimish-fold))

(unless (package-installed-p' 'projectile)
  (package-install 'projectile))

(unless (package-installed-p' 'fiplr)
  (package-install 'fiplr))

(unless (package-installed-p' 'treemacs)
  (package-install 'treemacs))

(unless (package-installed-p' 'treemacs-projectile)
  (package-install 'treemacs-projectile))



;; ----------------------- CONFIG ------------------------

;; lines in every file

(global-linum-mode 1)

;; save session

(desktop-save-mode 1)

;; no scrollbars

(scroll-bar-mode -1)
(horizontal-scroll-bar-mode -1)

;; start maximized

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Interesting themes from www.emacsthemes.com
;;
;; brown  -  Gruvbox
;;        -  Badwolf
;;        -  Birds of Paradise
;; dark   -  Graham
;; blue   -  TronesqueIsExist
;;        -  Deep Thought


;; Installed Plugins

;; --- languages

;; js2-mode
;; web-mode
;; json-mode
;; nasm-mode
;; haskell-mode
;; erlang-mode
;; fsharp-mode
;; elixir-mode
;; elm-mode
;; typescript-mode
;; ng2-mode - Angular 4 support
;; tide - typescript support
;; alchemist - elixir tooling integration
;; jedi - autocomplete for python
;; elpy - python support
;; py-autopep8 - auto pep8

;; --- features

;; flycheck - syntax checking
;; company - code completion
;; helm - new M-x menu
;; magit - git 
;; ace-jump-mode - jump to letter 
;; powerline - fancy status bar
;; transpose-frame - vertical windows to horizontal
;; rainbow-delimiters - color delimiters like parenthesis
;; smartparens - smart parenthesis completion
;; flycheck-color-mode-line - flycheck colors mode line
;; dired+ - catalog tree
;; dired-subtree - look for catalogs with <TAB>
;; dired-toggle - have dired as a toggle mode
;; sublimity - smooth-scrolling
;; vimish-fold - regions
;; projectile - project integration
;; Fiplr - Find in Project for Emacs
;; Treemacs - tree directory management with treemacs-projectile

;; Modes config

;; company-mode on startup

(add-hook 'after-init-hook 'global-company-mode)

;; alchemist on elixir mode

(add-hook 'elixir-mode-hook 'alchemist-mode)

;; enable powerline

(require 'powerline)
(powerline-default-theme)

;; default smartparens-mode config

(require 'smartparens)
(smartparens-global-mode t)
(require 'smartparens-config)

;; smartparens addon for elixir

(sp-with-modes '(elixir-mode)
  (sp-local-pair "fn" "end"
         :when '(("SPC" "RET"))
         :actions '(insert navigate))
  (sp-local-pair "do" "end"
         :when '(("SPC" "RET"))
         :post-handlers '(sp-ruby-def-post-handler)
         :actions '(insert navigate)))

;; rainbow delimiters in modes

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; C-c SPC for ace-jump-mode

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

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

;; switch buffers with shift + arrow

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; js2-mode as default for javascript

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; use web-mode for .jsx files

(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; turn on flychecking globally

(require 'flycheck)
(add-hook 'after-init-hook 'global-flycheck-mode)

;; disable flycheck on .emacs

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))

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

;; F# C-SPC intellisense

(require 'fsharp-mode)
(add-hook 'fsharp-mode-hook
 (lambda ()
   (define-key fsharp-mode-map (kbd "C-SPC") 'fsharp-ac/complete-at-point)))

;; bison-mode for .l files

(add-to-list 'auto-mode-alist '("\\.l\\'" . c-mode))

;; prolog-mode for .pl files

(add-to-list 'auto-mode-alist '("\\.pl\\'" . prolog-mode))

;; C-x C-b for buffer window

(global-set-key (kbd "C-x C-b") 'bs-show)

;; enable typescript mode

(require 'ng2-mode)

;; configure tide

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; enable flycheck-color-mode-line

(require 'flycheck-color-mode-line)

(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

;; add ng2-mode  to flycheck

(flycheck-add-mode 'typescript-tslint 'ng2-ts-mode)

;; C-x t for transpose-frame

(global-set-key (kbd "C-x t") 'transpose-frame)

;; Use Dired+ instead of normal

(require 'dired+)

;; Go to sub-folders in Dired using <TAB>

(require 'dired-subtree)

(eval-after-load "dired"
  '(define-key dired-mode-map (kbd "TAB") 'dired-subtree-toggle))

;; Shrink windows with S+C+arrows

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Dired-toggle

(global-set-key (kbd "<f4>") 'dired-toggle)

(setq dired-toggle-window-side 'right)
(setq dired-toggle-window-size 35)

;; Set-up Elpy

(require 'elpy)

(elpy-enable)

(setq elpy-rpc-python-command "python3")

;; elpy with Flycheck
	  
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; enable jedi

(add-hook 'elpy-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; smooth-scrolling with sublimity-mode

(require 'sublimity)
(require 'sublimity-scroll)

(sublimity-mode 1)

;; enable projectile

(projectile-mode)

;; fiplr - shortcut

(global-set-key (kbd "C-x f") 'fiplr-find-file)

;; fiplr - disable files

(setq fiplr-ignored-globs '((directories (".git" ".svn" "node_modules"))
                            (files ("*.jpg" "*.png" "*.zip" "*~"))))

(setq fiplr-root-markers '(".git" ".svn" ".projectile"))

;; Treemacs - settings

(global-set-key (kbd "<f5>") 'treemacs-toggle)
(global-set-key (kbd "<f6>") 'treemacs-projectile-toggle)

(setq treemacs-position 'right)
(setq treemacs-no-png-images 1)
(setq treemacs-never-persist t)

(add-hook 'treemacs-mode-hook 'treemacs-follow-mode)

(defun nolinum ()
  (linum-mode 0)
)
(add-hook 'treemacs-mode-hook 'nolinum)






