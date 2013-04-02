;; ---------------------------
;;
;; Goldfish Color Theme
;;
;; ----------------------------

(eval-when-compile
  (require 'color-theme))

(setq debug-on-error t)

(defconst custom-theme-description "A custom color theme")

(defconst custom-theme-name "Custom theme")

(setq theme-defaults '(color-theme-goldfish
  ((background-color . "#1D2021")
   (background-mode . dark)
   (border-color . "#000000")
   (cursor-color . "#999999")
   (foreground-color . "#F8F8F2")
   (mouse-color . "black"))

   ;; Side borders
   (fringe ((t (:background "#1D2021"))))

   ;; The bottom active tab
   (mode-line ((t (:foreground "#999999" :background "#444444"))))

   ;; Highlight region color
   (region ((t (:foreground "#465459" :background "#161A1F"))))

   ;; Builtin
   (font-lock-builtin-face ((t (:foreground "#F38630"))))

   ;; Comments
   (font-lock-comment-face ((t (:foreground "#505C63"))))

   ;; Function names
   (font-lock-function-name-face ((t (:foreground "#AEE239"))))

   ;; Keywords
   (font-lock-keyword-face ((t (:foreground "#A7DBD8"))))

   ;; Strings
   (font-lock-string-face ((t (:foreground "#F8F8F0"))))

   ;; Variables
   (font-lock-variable-name-face ((t (:foreground "#FD971F"))))

   (font-lock-type-face ((t (:foreground"#999999"))))
   (minibuffer-prompt ((t (:foreground "#999999" :bold t))))
   (font-lock-warning-face ((t (:foreground "#999999" :bold t))))))

(defun color-theme-goldfish ()
  (interactive)
  (color-theme-install theme-defaults))

(add-to-list 'color-themes
  `(color-theme-custom-theme
    custom-theme-name
    custom-theme-description))

(provide 'color-theme-goldfish)
