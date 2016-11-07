(defun package-installed-packages ()
  (mapcar 'car 
          (cl-remove-if-not
           (lambda (package-desc)
             (let
                 ((pack (car package-desc)))
               (package-installed-p pack))) package-archive-contents)))


(defun package-dump-to-string ()
  (concat "(mapc 'package-install '" (prin1-to-string (package-installed-packages)) ")"))

(defun package-dump-to-file (filename)
  (write-region (concat (package-dump-to-string) "\n") nil filename))

