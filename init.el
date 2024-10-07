;; C-h k для того чтобы получить документацию по какой-то команде
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-subword-mode 1)
(global-display-line-numbers-mode 1)
(vertico-mode 1)
(set-fringe-mode 0)


(setq-default tab-width 2)
(setq-default truncate-lines t)


(setq initial-buffer-choice "~/.emacs.d/init.el")
(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq scroll-step 1)
(setq hscroll-step 1)
(setq frame-resize-pixelwise t)


(defun insert-tab ()
  (interactive)
  (insert "\t"))


(global-unset-key (kbd "C-o"))
(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "C-d"))
(global-unset-key (kbd "C-/"))
(global-unset-key (kbd "C-_"))
(global-unset-key (kbd "C-x u"))
(global-unset-key (kbd "C-M-k"))
(global-unset-key (kbd "C-l"))
(global-unset-key (kbd "C-M-S-l"))
(global-unset-key (kbd "C-M-S-o"))
(global-unset-key (kbd "<C-down-mouse-1>"))
(global-unset-key (kbd "<C-down-mouse-2>"))
(global-unset-key (kbd "<C-down-mouse-3>"))


(global-set-key (kbd "<tab>") 'insert-tab)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-S-z") 'undo-redo)
(global-set-key (kbd "M-C-l") 'forward-word)
(global-set-key (kbd "M-C-j") 'backward-word)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-y") 'kill-ring-save)
(global-set-key (kbd "C-v") 'yank)


(set-face-attribute 'default nil :font "Fira Code-12")


;; system code
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(vertico lsp-mode helm company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(message "Configuration was successful!")

