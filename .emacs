


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
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(background-color "#202020")
 '(background-mode dark)
 '(cursor-color "#cccccc")
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "59e82a683db7129c0142b4b5a35dbbeaf8e01a4b81588f8c163bd255b76f4d21" "8885761700542f5d0ea63436874bf3f9e279211707d4b1ca9ed6f53522f21934" default)))
 '(fci-rule-color "#383838")
 '(foreground-color "#cccccc")
 '(package-selected-packages
   (quote
    (evil-tutor solaire-mode dracula-theme cyberpunk-theme noctilux-theme spaceline anzu diminish web-mode vimish-fold use-package treemacs-projectile transpose-frame tide symon sublimity solarized-theme smartparens rainbow-delimiters pyenv-mode py-autopep8 powerline ng2-mode nasm-mode modern-cpp-font-lock material-theme magit json-mode js2-mode jedi helm haskell-mode fsharp-mode focus flycheck-color-mode-line fiplr exec-path-from-shell erlang elpy elm-mode dired-toggle dired-subtree dimmer dashboard company-jedi beacon alchemist ace-popup-menu ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ================================== MINE ==================================

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/")
             t)
(add-to-list 'package-pinned-packages '(spaceline . "melpa-stable"))
(add-to-list 'package-pinned-packages '(spaceline-all-the-icons . "melpa-stable"))
(add-to-list 'package-pinned-packages '(all-the-icons . "melpa-stable"))

;; use-package initial config

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  ;;(Add-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

;; ================================= EDITOR =================================

(tool-bar-mode -1)

(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (evil-set-initial-state 'bs-mode 'emacs)
  (evil-set-initial-state 'dashboard-mode 'emacs)
  (evil-set-initial-state 'treemacs-mode 'emacs)
  (evil-ex-define-cmd "sh" 'split-window-horizontally)
  (evil-ex-define-cmd "sv" 'split-window-vertically)
  (define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode))


(use-package all-the-icons
  :if window-system
  :ensure t)

(use-package doom-themes
  :ensure t
  :init
  (load-theme 'doom-dracula t)
  (doom-themes-treemacs-config))


(use-package solaire-mode
  :ensure t
  :after doom-themes
  :hook ((change-major-mode after-revert ediff-prepare-buffer) . turn-on-solaire-mode)
  :config
  (add-hook 'minibuffer-setup-hook #'solaire-mode-in-minibuffer)
  (solaire-mode-swap-bg))

(use-package exec-path-from-shell
  :ensure t
  :init
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "WORKON_HOME"))

;; diminish - shorter names for minor modes

(use-package diminish
  :ensure t
  :init
  (eval-after-load "highlight-indentation" '(diminish 'highlight-indentation-mode)))

;; line numbers

(global-display-line-numbers-mode)

;; no scrollbars

(when (display-graphic-p)
  (scroll-bar-mode -1)
  (horizontal-scroll-bar-mode -1))

;; start maximized

;; (add-to-list 'default-frame-alist '(fullscreen . maximized))

;; C-x C-b for buffer window

(global-set-key (kbd "C-x C-b") 'bs-show)

;; switch buffers with shift + arrow

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Shrink windows with S+C+arrows

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; beacon - cursor highlight

(use-package beacon
  :if window-system
  :diminish
  :ensure t
  :init
  (beacon-mode 1))

;; dashboard - better initial widow (breaks colors in terminal!)

(use-package dashboard
  :if window-system
  :ensure t
  :init
  (setq dashboard-items '((recents  . 5)))
  (setq dashboard-startup-banner 'logo)
  (add-hook 'dashboard-mode-hook (display-line-numbers-mode -1))
  :config
(dashboard-setup-startup-hook))

;; anzu - search highlighting

(use-package anzu
  :ensure t
  :diminish
  :init
  (global-anzu-mode +1)
  (setq anzu-cons-mode-line-p nil))

;; spaceline - better powerline

(use-package spaceline
  :if window-system
  :ensure t
  :init
  (require 'spaceline-config)
  :config
  (spaceline-spacemacs-theme)
  (spaceline-helm-mode)
  (spaceline-toggle-evil-state-on)
  (spaceline-toggle-projectile-root-on)
  (setq powerline-height 22)
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state))

;; Ace jump

(use-package ace-jump-mode
  :ensure t
  :commands ace-jump-mode
  :init
  (bind-key "C-." 'ace-jump-mode))

;; helm config, M-x for helm-M-x

(use-package helm
  :ensure t
  :init
  (require 'helm-config)
  (bind-key "M-x" 'helm-M-x))

;; C-x t for transpose-frame

(use-package transpose-frame
  :ensure t
  :init
  (global-set-key (kbd "C-x t") 'transpose-frame))

;; ================================== MISC ==================================

;; company-mode on startup

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  ;; aligns annotation to the right hand side
  (setq company-tooltip-align-annotations t))

;; vimish-fold

(use-package vimish-fold
  :ensure t)

;; default smartparens-mode config

(use-package smartparens
  :ensure t
  :diminish
  :init
  (smartparens-global-mode t)
  (require 'smartparens-config))

;;rainbow delimiters in modes

(use-package rainbow-delimiters
  :ensure t
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

;; magit

(use-package magit
  :ensure t
  :init
  ;; magit <f4> for git status
  (global-set-key (kbd "<f4>") 'magit-status)
  ;; magit <C-f4> for git popup
  (global-set-key (kbd "<C-f4>") 'magit-dispatch-popup)
  :hook (magit-status-mode . (lambda () (setq mode-line-format nil)))
)

;;turn on flychecking globally

(use-package flycheck
  :ensure t
  :diminish
  :init
  (add-hook 'after-init-hook 'global-flycheck-mode)
  (setq-default flycheck-temp-prefix ".flycheck")
  ;; disable flycheck on .emacs
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

(use-package flycheck-color-mode-line
  :ensure t
  :requires flycheck
  :init
  (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

;; enable projectile

(use-package projectile
  :ensure t
  :diminish
  :commands projectile-mode
  :init
  (projectile-mode +1))

;; fiplr - shortcut

(use-package fiplr
  :ensure t
  :commands fiplr-find-file
  :init
  (bind-key "C-x f" 'fiplr-find-file) 
  (setq fiplr-ignored-globs '((directories (".git" ".svn" "node_modules"))
                              (files ("*.jpg" "*.png" "*.zip" "*~"))))
  (setq fiplr-root-markers '(".git" ".svn" ".projectile")))

;; Treemacs - settings

(use-package treemacs
  :ensure t
  :init
  (global-set-key (kbd "<f5>") 'treemacs)
  (global-set-key (kbd "<f6>") 'treemacs-projectile)
  (setq treemacs-position 'right)
  ;(setq treemacs-no-png-images 1)
  (setq treemacs-never-persist t)
  (add-hook 'treemacs-mode-hook 'treemacs-follow-mode))
  ;;:config
  ;;(add-hook 'treemacs-mode-hook (display-line-numbers-mode -1))) ;; CAUSES BUG

(use-package treemacs-projectile
  :ensure t
  :requires treemacs)

;; ================================== NASM ==================================

;; enable nasm-mode

(use-package nasm-mode
  :ensure t
  :defer t
  :init
  ;; custom compile
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
  ;; bind file hooks
  (add-to-list 'auto-mode-alist '("\\.nasm\\'" . nasm-mode))
  (add-to-list 'auto-mode-alist '("\\.asm\\'" . nasm-mode))
  ;; C-c C-c for compiling
  (bind-key "C-c C-c" 'compile))

;; ================================ HASKELL =================================

;; C-c C-c for compiling haskell

(use-package haskell-mode
  :ensure t
  :defer t
  :init
  ;; C-c C-c for compiling
  (bind-key "C-c C-c" 'compile)
  ;; Custom compile
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
	    ))

;; ================================ JS/TS/ES ================================

(use-package json-mode
  :ensure t
  :defer t)

(use-package web-mode
  :ensure t
  :defer t
  :init
  ;; use web-mode for .jsx files
  (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
  ;; use eslint with web-mode for jsx files
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  ;; for better jsx syntax-highlighting in web-mode
  ;; - courtesy of Patrick @halbtuerke
  (defadvice web-mode-highlight-part (around tweak-jsx activate)
    (if (equal web-mode-content-type "jsx")
	(let ((web-mode-enable-part-face nil))
	  ad-do-it)
      ad-do-it)))

(use-package js2-mode
  :ensure t
  :defer t
  :requires flycheck
  :init
  ;; js2-mode as default for javascript
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  ;; disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers
		(append flycheck-disabled-checkers
			'(javascript-jshint))))

(use-package typescript-mode
  :ensure t
  :defer t)

(use-package ng2-mode
  :ensure t
  :defer t
  :requires typescript-mode
  :init
  (add-hook 'ng2-ts-mode-hook 'typescript-mode))

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

(use-package tide
  :ensure t
  :defer t
  :init
  (add-hook 'before-save-hook 'tide-format-before-save)
  (add-hook 'typescript-mode-hook #'setup-tide-mode)
  :config
  (flycheck-add-mode 'typescript-tslint 'ng2-ts-mode)
  (flycheck-add-mode 'typescript-tide 'ng2-ts-mode))

;; ============================ OTHER LANGUAGES =============================

;; Elm

(use-package elm-mode
  :ensure t
  :defer t)

;; Erlang

(use-package erlang
  :ensure t
  :defer t)

;; F#

;; (use-package fsharp-mode
;;   :ensure t
;;   :defer t
;;   :bind (:map fsharp-mode-map
;; 	     ("C-SPC" . fsharp-ac/complete-at-point)))

;; Elixir

(use-package alchemist
  :ensure t
  :defer t)

(use-package elixir-mode
  :ensure t
  :defer t
  :requires (smartparens alchemist)
  :init
  ;; alchemist on elixir mode
  (add-hook 'elixir-mode-hook 'alchemist-mode)
  :config
  (sp-with-modes '(elixir-mode)
    (sp-local-pair "fn" "end"
		   :when '(("SPC" "RET"))
		   :actions '(insert navigate))
    (sp-local-pair "do" "end"
		   :when '(("SPC" "RET"))
		   :post-handlers '(sp-ruby-def-post-handler)
		   :actions '(insert navigate))))

;; bison-mode for .l files

(add-to-list 'auto-mode-alist '("\\.l\\'" . c-mode))

;; prolog-mode for .pl files

(add-to-list 'auto-mode-alist '("\\.pl\\'" . prolog-mode))

;; c++11 on flycheck

(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

;; ================================= PYTHON =================================

;; Set-up Elpy

(use-package elpy
  :ensure t
  :requires flycheck
  :init
  (with-eval-after-load 'python (elpy-enable))
  (add-hook 'elpy-mode-hook 'flycheck-mode)
  (setq elpy-rpc-python-command "python")
  :config
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules)))

(use-package py-autopep8
  :ensure t
  :requires elpy)
  ;:init
  ;(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))

(use-package company-jedi
  :ensure t
  :init
  (add-hook 'elpy-mode-hook 'jedi:setup)
  (setq jedi:complete-on-dot t))

(use-package pyenv-mode
  :ensure t
  :init
  (with-eval-after-load 'python (pyenv-mode)))

;; ================================= LaTeX ==================================

;; spell checking for LaTeX

;;enable flyspell for text-mode
(add-hook 'LaTeX-mode-hook #'turn-on-flyspell)

;; flyspell use babel settings in LaTeX

(add-to-list 'load-path "~/.emacs.d/flyspell-babel/")

(autoload 'flyspell-babel-setup "flyspell-babel")
(add-hook 'latex-mode-hook 'flyspell-babel-setup)
(add-hook 'LaTeX-mode-hook 'flyspell-babel-setup)

;; remove lines in DocView

(add-hook 'doc-view-mode-hook 'nolinum)

;; ================================= END ====================================

