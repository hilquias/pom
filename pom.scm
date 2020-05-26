(use-modules (guix gexp)
	     (guix build-system gnu)
	     (guix packages)
	     ((guix licenses) #:prefix license:))

(package
 (name "pom")
 (version "0.1")
 (source
  (local-file (dirname (current-filename)) #:recursive? #t))
 (build-system gnu-build-system)
 (arguments
  `(#:tests? #f
    #:make-flags
    (list (string-append "PREFIX=" %output))
    #:phases
    (modify-phases %standard-phases (delete 'configure))))
 (synopsis "")
 (home-page "")
 (description "")
 (license license:gpl3))
