;; Ìø×ªµ½ÖÆ¶¨ÐÐ  ¿î½ã½ã alt-g
(global-set-key (kbd "M-g") 'goto-line)

;; ´ò¿ªÏÔÊ¾ÁÐÊý
(setq column-number-mode t)

;; ¹Ø±Õ±¸·ÝÎÄ¼þ
(setq auto-save-default nil)

;;Ìí¼ÓÄ£°æ
(auto-insert-mode)  ;;; Adds hook to find-files-hook
(setq auto-insert-directory "~/.emacs.d/mytemplate/") ;;; Or use custom, *NOTE* Trailing slash important
(setq auto-insert-query nil) ;;; If you don't want to be prompted before insertion
 
(setq auto-insert-alist
      (append '(
            (python-mode . "Template.py")
           
            )
           auto-insert-alist))

;; cl-lib
(add-to-list 'load-path "~/.emacs.d/plugins/cl-lib")
(require 'cl-lib)

;; yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;(setq yas-snippet-dirs
;;      '("~/.emacs.d/snippets"                 ;; personal snippets
;;        ))

;;(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.
