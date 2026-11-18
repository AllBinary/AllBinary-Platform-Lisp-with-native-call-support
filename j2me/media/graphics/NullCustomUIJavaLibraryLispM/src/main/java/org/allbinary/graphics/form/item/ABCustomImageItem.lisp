;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABCustomImageItem (ABCustomItem)
  ((f_yOffset :initform 0)))

    
(defun ABCustomImageItem.jnew_6 (_label _image _layout _altText _basicColor _yOffset)
  (declare (ignorable _label _image _layout _altText _basicColor _yOffset))
  (let ((this (make-instance 'ABCustomImageItem)))
    (setf (slot-value this 'f_yOffset) 0)
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getImage_0) (defgeneric jm_getImage_0 (this)))
(defmethod jm_getImage_0 ((this ABCustomImageItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (NullImage.jstatic_NULL_IMAGE)))))



