(deftheme fonce
  "Created 2020-12-18.")

(custom-theme-set-faces
 'fonce
 '(cursor ((((class color) (min-colors 16777215)) (:background "#d33682"))))
 '(font-lock-builtin-face ((((class color) (min-colors 16777215)) (:foreground "#b58900"))))
 '(font-lock-constant-face ((((class color) (min-colors 16777215)) (:foreground "#268bd2"))))
 '(font-lock-comment-face ((((class color) (min-colors 16777215)) (:foreground "#eee8d5"))))
 '(font-lock-type-face ((((class color) (min-colors 16777215)) (:foreground "#dc322f"))))
 '(default ((t (:background "#000000" :foreground "green yellow")))))

(provide-theme 'fonce)
