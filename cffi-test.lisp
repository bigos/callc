;;; cffi test

(asdf:load-system :cffi)

(defpackage :cffi-test
  (:use :common-lisp :cffi))

(in-package :cffi-test)

(define-foreign-library libfoo
  (:unix (:or "libfoo.so"))
  (T (:default "libfoo")))

;;; reload on any C recompilation
(use-foreign-library libfoo)

;;; reload if arguments change
(defcfun "foo" :int
  "Multiply argument n times m."
  (n :int)
  (m :int))
