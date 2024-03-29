(deftheme fonce3
  "Created 2022-12-15.")

(custom-theme-set-faces
 'fonce3
 '(default ((t (:family "Fira Code" :foundry "CTDB" :width normal :height 120 :weight normal :slant normal :underline nil :overline nil :extend nil :strike-through nil :box nil :inverse-video nil :foreground "green1" :background "#000000" :stipple nil :inherit nil))))
 '(cursor ((t (:background "#DC1B11"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:weight bold :foreground "dodger blue"))))
 '(highlight ((t (:foreground "#d1d079" :background "#382a28"))))
 '(region ((t (:extend t :foreground "#000000" :background "green1"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:extend t :background "yellow1")) (((class color) (min-colors 88) (background dark)) (:extend t :background "SkyBlue4")) (((class color) (min-colors 16) (background light)) (:extend t :background "yellow")) (((class color) (min-colors 16) (background dark)) (:extend t :background "SkyBlue4")) (((class color) (min-colors 8)) (:extend t :foreground "black" :background "cyan")) (t (:inverse-video t))))
 '(trailing-whitespace ((t (:background "#ff0000"))))
 '(font-lock-builtin-face ((t (:foreground "deep sky blue"))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:foreground "white"))))
 '(font-lock-constant-face ((t (:weight bold :foreground "yellow"))))
 '(font-lock-doc-face ((t (:foreground "#b2b2b2"))))
 '(font-lock-function-name-face ((t (:weight bold :foreground "#DC1B11"))))
 '(font-lock-keyword-face ((t (:weight bold :foreground "dodger blue"))))
 '(font-lock-negation-char-face ((t (:foreground "yellow"))))
 '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:weight bold :foreground "red"))))
 '(font-lock-type-face ((t (:foreground "magenta"))))
 '(font-lock-variable-name-face ((t (:foreground "yellow"))))
 '(font-lock-warning-face ((t (:foreground "#ff0000" :background "#521f10"))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:underline (:color foreground-color :style line) :foreground "yellow"))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(fringe ((t (:foreground "#bbba6d" :background "#521f10"))))
 '(header-line ((default (:inherit (mode-line))) (((type tty)) (:underline (:color foreground-color :style line) :inverse-video nil)) (((class color grayscale) (background light)) (:box nil :foreground "grey20" :background "grey90")) (((class color grayscale) (background dark)) (:box nil :foreground "grey90" :background "grey20")) (((class mono) (background light)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "black" :background "white")) (((class mono) (background dark)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "white" :background "black"))))
 '(tooltip ((((class color)) (:inherit (variable-pitch) :foreground "black" :background "lightyellow")) (t (:inherit (variable-pitch)))))
 '(mode-line ((t (:weight bold :box (:line-width 1 :color nil :style nil) :foreground "#bbba6d" :background "#521f10"))))
 '(mode-line-buffer-id ((t (:weight bold :foreground "#DC1B11"))))
 '(mode-line-emphasis ((t (:foreground "green1"))))
 '(mode-line-highlight ((t (:weight bold :box nil :foreground "dodger blue"))))
 '(mode-line-inactive ((t (:weight normal :box (:line-width 1 :color nil :style pressed-button) :foreground "#1fb2af" :background "#000000"))))
 '(isearch ((t (:weight bold :foreground "#ff0000" :background "#382a28"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((t (:foreground "#e7e685" :background "#382a28"))))
 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch))))))

(provide-theme 'fonce3)
