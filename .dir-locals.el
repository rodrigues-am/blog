;;; Directory local variables for the blog project
;;; For use with Doom Emacs + projectile + ox-hugo

((org-mode
  . ((eval . (setq-local org-hugo-base-dir
                         (expand-file-name "./"
                                            (file-name-directory
                                             (dir-locals-find-file "./")))))
      (eval . (setq-local fill-column 100))
      (eval . (setq-local org-export-with-toc nil))))
 (emacs-lisp-mode
  . ((eval . (setq-local indent-tabs-mode nil))))
 (markdown-mode
  . ((eval . (setq-local fill-column 100)))))