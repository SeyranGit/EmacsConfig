(desktop-save-mode 1)
(setq desktop-dirname "~/.emacs.d/desktop/")
(setq desktop-load-locked-desktop t)
(setq desktop-save 'if-exists)
(setq desktop-restore-frames t)
(setq desktop-buffers-not-to-save
      (concat "\\("
              "\\(^nn\\.a[0-9]+\\)"
              "\\|\\(^nnimap\\)"
              "\\|\\(^\\*.*\\)"
              "\\)"))


(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(global-font-lock-mode 1)
(auto-save-mode 1)
(icomplete-mode 1)
(icomplete-vertical-mode 1)
(global-display-line-numbers-mode t)
(tool-bar-mode -1)
(window-divider-mode -1)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default truncate-lines t)
(setq-default line-spacing 1)
(setq-default left-fringe-width nil)
(setq-default right-fringe-width nil)
(setq-default header-line-format nil)
(setq-default fringe-mode 0)
(setq-default internal-border-width 0)
;; (setq-default visual-line-mode t)

(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq scroll-preserve-screen-position t)
(setq shift-select-mode t)
(setq ring-bell-function 'ignore)
(setq auto-save-default t)
(setq auto-save-timeout 5)
(setq window-border-width 0)
(setq window-divider-default-bottom-width 0)
(setq window-divider-default-right-width 0)
(setq window-border-width 0)

;; (setq temporary-file-directory "C:/Users/newle/AppData/Local/Temp/")


(defun toggle-comment-region ()
  (interactive)
  (if (use-region-p)
      (let ((start (region-beginning))
            (end (region-end)))
        (if (save-excursion
              (goto-char start)
              (looking-at-p (regexp-quote comment-start)))
            (uncomment-region start end)
          (comment-region start end)))
        )
    (message "No region selected!"))


(defun my-kill-region-or-line ()
  (interactive)
  (if (use-region-p)
      (kill-region (region-beginning) (region-end))
    (let ((beg (line-beginning-position))
          (end (line-end-position)))
      (kill-region beg end))))


(global-unset-key (kbd "C-j"))
(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "C-S-M-l"))
(global-unset-key (kbd "C-x {"))
(global-unset-key (kbd "C-x }"))
(global-unset-key (kbd "C-M-k"))
(global-unset-key (kbd "<C-wheel-up>"))
(global-unset-key (kbd "<C-wheel-down>"))
(global-unset-key (kbd "<down>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "C-n"))
(global-unset-key (kbd "C-p"))
(global-unset-key (kbd "C-f"))
(global-unset-key (kbd "C-b"))
(global-unset-key (kbd "C-l"))
(global-unset-key (kbd "C-o"))


(global-set-key (kbd "C-<up>") 'beginning-of-buffer)
(global-set-key (kbd "C-<down>") 'end-of-buffer)

(global-set-key (kbd "C-y") 'kill-ring-save)
(global-set-key (kbd "C-a") 'mark-whole-buffer)

(global-set-key (kbd "<backspace>") 'my-delete-or-backward-delete)
(global-set-key (kbd "C-<backspace>") 'my-backward-kill-word)

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-S-z") 'undo-redo)

(global-set-key (kbd "M-C-l") 'forward-word)
(global-set-key (kbd "M-C-j") 'backward-word)

(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "C-v") 'yank)

(global-set-key (kbd "C-<right>") 'next-buffer)
(global-set-key (kbd "C-<left>") 'previous-buffer)

(global-set-key (kbd "C-0") 'other-window)
(global-set-key (kbd "C-9") (lambda () (interactive) (other-window -1)))

(global-set-key (kbd "C-8") 'delete-window) 
(global-set-key (kbd "C-x C-x") 'my-kill-region-or-line)
(global-set-key (kbd "C-/") 'toggle-comment-region)


;; theme
(set-face-attribute 'default nil :height 120)
(set-face-attribute 'mode-line nil
                    :foreground "white"
                    :background "balck"
                    :box nil)

(set-face-attribute 'mode-line-inactive nil
                    :box nil)


;; (set-face-foreground 'window-divider "dark gray")  ;; Цвет разделительной линии
;; (set-face-background 'window-divider "black")
(set-face-background 'region "#0f02c0")
(set-background-color "black")
(set-foreground-color "white")

(add-to-list 'default-frame-alist '(background-color . "black"))
(add-to-list 'default-frame-alist '(foreground-color . "white"))

(set-frame-parameter (selected-frame) 'alpha '(90 .90))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))

(set-face-attribute 'default t :font "Liberation Mono-11.5")
(set-face-attribute 'font-lock-builtin-face nil :foreground "#DAB98F")
(set-face-attribute 'font-lock-comment-face nil :foreground "gray50")
(set-face-attribute 'font-lock-constant-face nil :foreground "olive drab")
(set-face-attribute 'font-lock-doc-face nil :foreground "gray50")
(set-face-attribute 'font-lock-function-name-face nil :foreground "burlywood3")
(set-face-attribute 'font-lock-keyword-face nil :foreground "DarkGoldenrod3")
(set-face-attribute 'font-lock-string-face nil :foreground "olive drab")
(set-face-attribute 'font-lock-type-face nil :foreground "burlywood3")
(set-face-attribute 'font-lock-variable-name-face nil :foreground "burlywood3")

(message "Configuration was successful!")

