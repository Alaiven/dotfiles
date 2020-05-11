


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
   ["#1E2029" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(background-color "#202020")
 '(background-mode dark)
 '(cursor-color "#cccccc")
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("8a0c35b74b0407ca465dd8db28c9136d5f539868d4867565ee214ac85ceb0d3a" "3577ee091e1d318c49889574a31175970472f6f182a9789f1a3e9e4513641d86" "d71aabbbd692b54b6263bfe016607f93553ea214bc1435d17de98894a5c3a086" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "1526aeed166165811eefd9a6f9176061ec3d121ba39500af2048073bea80911e" "24132f7b6699c6e0118d742351b74141bac3c4388937e40db9207554eaae78c9" "6bacece4cf10ea7dd5eae5bfc1019888f0cb62059ff905f37b33eec145a6a430" "e30e72b10b9c7887ff8adcd1a25b5c6eaa32665e0f8f40994e5b6d51069d3b2a" "4e764943cc022ba136b80fa82d7cdd6b13a25023da27528a59ac61b0c4f1d16f" "379a804655efccc13a3d446468992bfdfc30ff27d19cfda6f62c7f9c9e7a8a7d" "56911bd75304fdb19619c9cb4c7b0511214d93f18e566e5b954416756a20cc80" "6231254e74298a1cf8a5fee7ca64352943de4b495e615c449e9bb27e2ccae709" "9f15d03580b08dae41a1e5c1f00d1f1aa99fea121ca32c28e2abec9563c6e32c" "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "e964832f274625fa45810c688bdbe18caa75a5e1c36b0ca5ab88924756e5667f" "f2b56244ecc6f4b952b2bcb1d7e517f1f4272876a8c873b378f5cf68e904bd59" "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e" "e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "7f791f743870983b9bb90c8285e1e0ba1bf1ea6e9c9a02c60335899ba20f3c94" "d5f8099d98174116cba9912fe2a0c3196a7cd405d12fa6b9375c55fc510988b5" "7c4cfa4eb784539d6e09ecc118428cd8125d6aa3053d8e8413f31a7293d43169" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "58c3313b4811ed8b30239b1d04816f74d438bcb72626d68181f294b115b7220d" "51956e440cec75ba7e4cff6c79f4f8c884a50b220e78e5e05145386f5b381f7b" "285efd6352377e0e3b68c71ab12c43d2b72072f64d436584f9159a58c4ff545a" "1d50bd38eed63d8de5fcfce37c4bb2f660a02d3dff9cbfd807a309db671ff1af" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "fa3bdd59ea708164e7821574822ab82a3c51e262d419df941f26d64d015c90ee" "9b01a258b57067426cc3c8155330b0381ae0d8dd41d5345b5eddac69f40d409b" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "93ed23c504b202cf96ee591138b0012c295338f38046a1f3c14522d4a64d7308" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "72fda75af7caddec17ba9b49d2f99703c20a5f5f5c4dcec641d34a0b83569e88" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "0809c08440b51a39c77ec5529f89af83ab256a9d48107b088d40098ce322c7d8" "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "59e82a683db7129c0142b4b5a35dbbeaf8e01a4b81588f8c163bd255b76f4d21" "8885761700542f5d0ea63436874bf3f9e279211707d4b1ca9ed6f53522f21934" default)))
 '(fci-rule-color "#383838")
 '(foreground-color "#cccccc")
 '(jdee-db-active-breakpoint-face-colors (cons "#000000" "#80A0C2"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#000000" "#A2BF8A"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#000000" "#3f3f3f"))
 '(objed-cursor-color "#C16069")
 '(package-selected-packages
   (quote
    (web-mode vimish-fold use-package treemacs-projectile treemacs-evil transpose-frame tide solaire-mode smartparens rainbow-delimiters pyvenv py-autopep8 ng2-mode mood-line magit lsp-python-ms json-mode js2-mode helm-projectile flycheck-color-mode-line fiplr doom-themes diminish dashboard company anzu all-the-icons ace-jump-mode)))
 '(pdf-view-midnight-colors (cons "#eceff4" "#323334"))
 '(rustic-ansi-faces
   ["#fafafa" "#e45649" "#50a14f" "#986801" "#4078f2" "#a626a4" "#0184bc" "#383a42"])
 '(vc-annotate-background "#323334")
 '(vc-annotate-color-map
   (list
    (cons 20 "#A2BF8A")
    (cons 40 "#bac389")
    (cons 60 "#d3c788")
    (cons 80 "#ECCC87")
    (cons 100 "#e3b57e")
    (cons 120 "#da9e75")
    (cons 140 "#D2876D")
    (cons 160 "#c88982")
    (cons 180 "#be8b98")
    (cons 200 "#B58DAE")
    (cons 220 "#b97e97")
    (cons 240 "#bd6f80")
    (cons 260 "#C16069")
    (cons 280 "#a0575e")
    (cons 300 "#804f54")
    (cons 320 "#5f4749")
    (cons 340 "#525252")
    (cons 360 "#525252")))
 '(vc-annotate-very-old-color nil))
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

  :after helm
  :config
  (evil-mode 1)
  (evil-set-initial-state 'dashboard-mode 'emacs)
  (evil-ex-define-cmd "sh" 'split-window-horizontally)
  (evil-ex-define-cmd "sv" 'split-window-vertically)
  (evil-ex-define-cmd "p" 'execute-extended-command)
  (evil-global-set-key 'normal "b" 'helm-mini)
  (evil-global-set-key 'normal "e" 'helm-find-files)
  ;(evil-global-set-key 'normal "g" 'helm-projectile-grep)
  (evil-global-set-key 'normal (kbd "SPC") 'ace-jump-mode))
  ;(evil-global-set-key 'normal "f" 'helm-projectile-find-file)

(use-package doom-themes
  :ensure t
  :init
  (load-theme 'doom-one-light t))

(use-package all-the-icons
  :if window-system
  :after doom-themes
  :ensure t
  :config
  (doom-themes-treemacs-config))

;; diminish - shorter names for minor modes

(use-package diminish
  :ensure t
  :init
  (eval-after-load "highlight-indentation" '(diminish 'highlight-indentation-mode)))

;; line numbers

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)

;; no scrollbars

(when (display-graphic-p)
  (scroll-bar-mode -1)
  (horizontal-scroll-bar-mode -1))

;; start maximized

;; (add-to-list 'default-frame-alist '(fullscreen . maximized))

;; switch buffers with shift + arrow

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Shrink windows with S+C+arrows

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; dashboard - better initial widow (breaks colors in terminal!)

(use-package dashboard
  :if window-system
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (dashboard-modify-heading-icons '((recents . "book")))
  (setq dashboard-items '((recents  . 5)
                          (projects . 5)))
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-navigator t)
  (setq dashboard-startup-banner 'logo))

;; anzu - search highlighting

(use-package anzu
  :ensure t
  :diminish
  :init
  (global-anzu-mode +1)
  (setq anzu-cons-mode-line-p nil))

;; mood-line - better powerline

(defvar evil-state-string "")

(use-package mood-line
  :ensure t
  :init (mood-line-mode)
  (setq global-mode-string
	(add-to-list 'global-mode-string '(:eval evil-state-string)))
  (add-hook 'evil-insert-state-entry-hook (lambda ()
					    (setq evil-state-string "[I]")))
  (add-hook 'evil-normal-state-entry-hook (lambda ()
					    (setq evil-state-string "[N]")))
  (add-hook 'evil-emacs-state-entry-hook (lambda ()
					    (setq evil-state-string "[E]")))
  (add-hook 'evil-replace-state-entry-hook (lambda ()
					    (setq evil-state-string "[R]")))
  (add-hook 'evil-visual-state-entry-hook (lambda ()
					    (setq evil-state-string "[V]"))))


;; C-x t for transpose-frame

(use-package transpose-frame
  :ensure t
  :init
  (global-set-key (kbd "C-x t") 'transpose-frame)
  (evil-ex-define-cmd "tf" 'transpose-frame))

;; ================================== MISC ==================================

;; company-mode on startup

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  ;; aligns annotation to the right hand side
  (setq company-tooltip-align-annotations t)
  (setq company-minimum-prefix-length 1
      company-idle-delay 0.0))

;; vimish-fold

(use-package vimish-fold
  :ensure t
  :after evil
  :init
  (vimish-fold-global-mode)
  (evil-global-set-key 'visual (kbd "f c") 'vimish-fold)
  (evil-global-set-key 'normal (kbd "f c") 'vimish-fold)
  (evil-global-set-key 'normal (kbd "f f") 'vimish-fold-toggle)
  (evil-global-set-key 'normal (kbd "f u") 'vimish-fold-unfold)
  (evil-global-set-key 'normal (kbd "f d") 'vimish-fold-delete))

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
  (evil-ex-define-cmd "ms" 'magit-status)
  (evil-ex-define-cmd "md" 'magit-dispatch-popup)
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
;; TODO - BARELY USED

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
  (global-set-key (kbd "<f7>") 'treemacs-select-window)
  (evil-global-set-key 'normal "t" 'treemacs-select-window)
  :config
  (progn
    (setq treemacs-position 'right)
    (treemacs-follow-mode t)))
  
(use-package treemacs-projectile
  :ensure t
  :requires treemacs)

(use-package treemacs-evil
  :ensure t
  :requires treemacs)

;; ================================== LSP ===================================

(use-package lsp-mode
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (python-mode . lsp-deferred))
  :commands lsp)

;; ================================== NASM ==================================

;; enable nasm-mode

;; (use-package nasm-mode
;;   :ensure t
;;   :defer t
;;   :init
;;   ;; custom compile
;;   (add-hook 'nasm-mode-hook
;;             (lambda ()
;;               (set (make-local-variable 'compile-command)
;;                    (concat
;; 		    "nasm "
;; 		    (file-name-sans-extension buffer-file-name)
;; 		    ".asm -felf64 -o "
;; 		    (file-name-sans-extension buffer-file-name)
;; 		    ".o && ld -m elf_x86_64 "
;; 		    (file-name-sans-extension buffer-file-name)
;; 		    ".o -o "
;; 		    (file-name-sans-extension buffer-file-name))
;; 		   )
;; 	      )
;; 	    )
;;   ;; bind file hooks
;;   (add-to-list 'auto-mode-alist '("\\.nasm\\'" . nasm-mode))
;;   (add-to-list 'auto-mode-alist '("\\.asm\\'" . nasm-mode))
;;   ;; C-c C-c for compiling
;;   (bind-key "C-c C-c" 'compile))

;; ================================ HASKELL =================================

;; C-c C-c for compiling haskell

;; (use-package haskell-mode
;;   :ensure t
;;   :defer t
;;   :init
;;   ;; C-c C-c for compiling
;;   (bind-key "C-c C-c" 'compile)
;;   ;; Custom compile
;;   (add-hook 'haskell-mode-hook
;;             (lambda ()
;;               (set (make-local-variable 'compile-command)
;;                    (concat
;; 		    "ghc "
;; 		    (file-name-sans-extension buffer-file-name)
;; 		    ".hs -o "
;; 		    (file-name-sans-extension buffer-file-name)
;; 		    )
;; 		   )
;; 	      )
;; 	    ))

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

;; (use-package elm-mode
;;   :ensure t
;;   :defer t)

;; Erlang

;; (use-package erlang
;;   :ensure t
;;   :defer t)

;; f#

;; (use-package fsharp-mode
;;   :ensure t
;;   :defer t
;;   :bind (:map fsharp-mode-map
;; 	     ("C-SPC" . fsharp-ac/complete-at-point)))

;; Elixir

;; (use-package alchemist
;;   :ensure t
;;   :defer t)

;; (use-package elixir-mode
;;   :ensure t
;;   :defer t
;;   :requires (smartparens alchemist)
;;   :init
;;   ;; alchemist on elixir mode
;;   (add-hook 'elixir-mode-hook 'alchemist-mode)
;;   :config
;;   (sp-with-modes '(elixir-mode)
;;     (sp-local-pair "fn" "end"
;; 		   :when '(("SPC" "RET"))
;; 		   :actions '(insert navigate))
;;     (sp-local-pair "do" "end"
;; 		   :when '(("SPC" "RET"))
;; 		   :post-handlers '(sp-ruby-def-post-handler)
;; 		   :actions '(insert navigate))))

;; bison-mode for .l files

;; (add-to-list 'auto-mode-alist '("\\.l\\'" . c-mode))

;; prolog-mode for .pl files

;; (add-to-list 'auto-mode-alist '("\\.pl\\'" . prolog-mode))

;; c++11 on flycheck

;; (add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

;; ================================= PYTHON =================================

;; Set-up Elpy
(use-package lsp-python-ms
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-python-ms)
                          (lsp-deferred))))

(use-package py-autopep8
  :ensure t
  :requires elpy
  :init
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))

(use-package pyvenv
  :ensure t
  :defer t
  :diminish
  :config
  (setenv "WORKON_HOME" "/Users/maciej/miniconda3")
  (pyvenv-mode t))

;; ================================= LaTeX ==================================

;; spell checking for LaTeX

;;enable flyspell for text-mode
;;(add-hook 'LaTeX-mode-hook #'turn-on-flyspell)

;; flyspell use babel settings in LaTeX

;; (add-to-list 'load-path "~/.emacs.d/flyspell-babel/")

;; (autoload 'flyspell-babel-setup "flyspell-babel")
;; (add-hook 'latex-mode-hook 'flyspell-babel-setup)
;; (add-hook 'LaTeX-mode-hook 'flyspell-babel-setup)

;; remove lines in DocView

;; (add-hook 'doc-view-mode-hook 'nolinum)

;; ================================= END ====================================
