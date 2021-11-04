;; [[file:../../../../projects/sideprojects/build-website/org-mode.org::*Main][Main:1]]
(require 'ox-publish)

(setq org-html-validation-link nil)
(setq org-html-validation-link nil
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      org-html-head "<link rel=\"styleheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />")
;; Define the publishign project
(setq org-publish-project-alist
      (list
       (list "my-org-site"
             :recursive t
             :base-directory "~/org/projects/sideprojects/garun"
             :publishing-directory "~/org/projects/sideprojects/public"
             :publishing-function 'org-html-publish-to-html
             :with-author t ;; Don't include author name
             :with-creator t  ;; Include Emacs and Org version in footer
             :with-toc nil  ;; Include a table of contents
             :section-numbers nil  ;; Don't include section numbers
             :time-stamp-file t ;; Don't include time stamp in file
             )))

;; Generate the site output
(org-publish-all t)
(message "Build complete!")
;; Main:1 ends here
