(in-package :asdf)

(defsystem :closette
  :serial T
  :components ((:file "package")
               (:file "closette")))

(defmethod perform ((o test-op) (c (eql (find-system :closette))))
  (load-system :closette)
  (or (load (merge-pathnames
             (make-pathname :directory (pathname-directory #.*load-truename*))
             #p"closette-tests"))
      (error "test-op failed") ))

;;; eof