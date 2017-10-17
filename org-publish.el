;; insert into ~/.emacs.d/init.el
;; org-publish

; No author / date at the bottom
(setf org-html-home/up-format "")

; The defaults are just fine for mathjax and style
; However, they do not work over TLS due to mixed content errors
;; (setf org-html-mathjax-options
;;       '((path "/etc/MathJax/MathJax.js?config=TeX-AMS-MML_HTMLorMML")
;;         (scale "100") (align "center") (indent "2em")
;;         (mathml nil)))
;; (setf org-html-mathjax-template
;;       "<script type=\"text/javascript\" src=\"%PATH\"></script>")

(setf org-html-footnotes-section "<div id='footnotes'><!--%s-->%s</div>")
(setf org-html-link-up "")
(setf org-html-link-home "")
(setf org-html-preamble nil)
(setf org-html-postamble nil)
(setf org-html-scripts "")

 (setf org-html-postamble-format
       (list
        (list
         "en"
         (concat
          "<p>By <a href='https://me.com' rel='author'>%a</a>.\n"
          "Share it—it's <a href='http://creativecommons.org/licenses/by-sa/4.0' rel='license'>CC-BY-SA licensed</a>.</p>"))))

(setf user-full-name "Vorname Nachname")
(setf user-mail-address "adresse@email.domain")

;; (setf my-head-extra-original
;;       (concat
;;        "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
;;        "<link rel='stylesheet' href='/etc/main.css' />"))

;;(setf my-head-extra
;;      (concat
;;       "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
;;      "<link rel='stylesheet' href='/etc/main.css' />")
;;)


(require 'ox-publish)
(setq org-publish-project-alist
      '(("org-notes"
	 :base-directory "~/org-website-template/org-files/"
	 :base-extension "org"
	 :publishing-directory "~/org-website-template/public_html/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :with-author t
	 :with-creator nil
	 :headline-level 4
	 :section-numbers nil
	 :with-toc nil
	 :with-drawers t
	 :html-link-home "/"
	 :html-preamble t
	 :html-postamble t
	 ;;	 :html-head-extra ,my-head-extra
;;	 :html-head-extra "<link rel='stylesheet' href='./css/stylesheet.css' />"
	 :html-head-include-default-style nil
	 :html-head-include-scripts nil
	 :auto-preamble t)
	("org-static"
	 :base-directory "~/org-website-template/org-files/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "~/org-website-template/public_html/"
	 :recursive t
	 :publishing-function org-publish-attachment)	
	("org-website-template" :components ("org-notes" "org-static"))))
