;;;;
;;;; AllBinary Open License Version 1
;;;; Copyright (c) 2011 AllBinary
;;;; 
;;;; By agreeing to this license you and any business entity you represent are
;;;; legally bound to the AllBinary Open License Version 1 legal agreement.
;;;; 
;;;; You may obtain the AllBinary Open License Version 1 legal agreement from
;;;; AllBinary or the root directory of AllBinary's AllBinary Platform repository.
;;;; 
;;;; Created By: Travis Berthelot
;;;;  
;;;; Generated Code Do Not Modify
;;;; package org.allbinary.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageTypeUtil (JObject)
  ((f_PNG :initform nil)
   (f_JPG :initform nil)
   (f_GIF :initform nil)
   (f_list :initform nil)))

(defvar ImageTypeUtil.jcell_SINGLETON :jnone)
(defun ImageTypeUtil.jstatic_SINGLETON ()
  (when (eq ImageTypeUtil.jcell_SINGLETON :jnone) (setf ImageTypeUtil.jcell_SINGLETON (ImageTypeUtil.jnew_0)))
  ImageTypeUtil.jcell_SINGLETON)
(defun (setf ImageTypeUtil.jstatic_SINGLETON) (value) (setf ImageTypeUtil.jcell_SINGLETON value))

    
(defun ImageTypeUtil.jnew_0 ()
  (let ((this (make-instance 'ImageTypeUtil)))
    (setf (slot-value this 'f_PNG) "png")
    (setf (slot-value this 'f_JPG) "jpg")
    (setf (slot-value this 'f_GIF) "gif")
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_JPG))
        (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_GIF))
        (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_PNG))))
    this))

    
(unless (fboundp 'jm_isSupported_1) (defgeneric jm_isSupported_1 (this p1)))
(defmethod jm_isSupported_1 ((this ImageTypeUtil) _mediaFileType)
  (declare (ignorable this _mediaFileType))
  (let (_name _index)
  (declare (ignorable _name _index))
    (block jreturn
        (setf _mediaFileType (JR.toLowerCase _mediaFileType))
        (progn
            (setf _index (JR.i32 (- (jm_size_0 (slot-value this 'f_list)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _name (jm_get_1 (slot-value this 'f_list) _index))
            (if (eq (JR.compareTo _mediaFileType _name) 0)
                (progn
                (return-from jreturn t))))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn nil))))

    
(defun ImageTypeUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageTypeUtil.jstatic_SINGLETON)))))



