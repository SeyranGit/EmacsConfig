(setq temporary-file-directory "C:/Users/newle/AppData/Local/Temp/")

(global-font-lock-mode 1)
(auto-save-mode 1)
(icomplete-mode 1)
(icomplete-vertical-mode 1)

(setq auto-save-default t)
(setq auto-save-timeout 5)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default truncate-lines t)
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq scroll-preserve-screen-position t)
(setq shift-select-mode t)
(setq ring-bell-function 'ignore)


(global-display-line-numbers-mode t)
(tool-bar-mode -1)


(defun my-backward-kill-word (arg)
  "Delete ARG words backward without saving them to the kill ring."
  (interactive "p")
  (let ((start (point)))  ;; Запоминаем текущую позицию курсора
    (backward-word arg)    ;; Перемещаем курсор назад на ARG слов
    (delete-region (point) start)))  ;; Удаляем текст без сохранения в kill ring


(defun my-delete-or-backward-delete ()
  "Delete selected text or delete one character backward."
  (interactive)
  (if (use-region-p)  ;; Проверяем, выделен ли текст
      (delete-region (region-beginning) (region-end))  ;; Удаляем выделенный текст
    (backward-delete-char 1)))  ;; Удаляем один символ назад


(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "C-S-M-l"))

(global-unset-key (kbd "<C-wheel-up>"))
(global-unset-key (kbd "<C-wheel-down>"))

(global-unset-key (kbd "<down>"))
(global-unset-key (kbd "<up>"))

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



(defun toggle-comment-region ()
  "Toggle comment on the selected region."
  (interactive)
  (if (use-region-p)  ;; Проверяем, выделен ли текст
      (let ((start (region-beginning))
            (end (region-end)))
        (if (save-excursion
              (goto-char start)
              (looking-at-p (regexp-quote comment-start)))  ;; Проверка на комментарий
            (uncomment-region start end)  ;; Раскомментирование
          (comment-region start end)))    ;; Комментирование
        )
    (message "No region selected!"))  ;; Сообщение, если нет выделения


(global-set-key (kbd "C-/") 'toggle-comment-region)
(message "Configuration was successful!")

