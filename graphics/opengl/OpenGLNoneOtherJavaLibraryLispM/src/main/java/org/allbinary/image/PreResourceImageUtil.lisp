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

(defclass PreResourceImageUtil (JObject)
  ())

(defvar PreResourceImageUtil.jcell_instance :jnone)
(defun PreResourceImageUtil.jstatic_instance ()
  (when (eq PreResourceImageUtil.jcell_instance :jnone) (setf PreResourceImageUtil.jcell_instance (PreResourceImageUtil.jnew_0)))
  PreResourceImageUtil.jcell_instance)
(defun (setf PreResourceImageUtil.jstatic_instance) (value) (setf PreResourceImageUtil.jcell_instance value))

(defun PreResourceImageUtil.jnew_0 ()
  (let ((this (make-instance 'PreResourceImageUtil)))
    this))

    
(defun PreResourceImageUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PreResourceImageUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_encapsulate_1) (defgeneric jm_encapsulate_1 (this p1)))
(defmethod jm_encapsulate_1 ((this PreResourceImageUtil) _image)
  (declare (ignorable this _image))
  (let ()
    (block jreturn
        (return-from jreturn _image))))

    
(unless (fboundp 'jm_updateGL_2) (defgeneric jm_updateGL_2 (this p1 p2)))
(defmethod jm_updateGL_2 ((this PreResourceImageUtil) _gl _image)
  (declare (ignorable this _gl _image))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_update_2) (defgeneric jm_update_2 (this p1 p2)))
(defmethod jm_update_2 ((this PreResourceImageUtil) _graphics _image)
  (declare (ignorable this _graphics _image))
  (let ()
    (block jreturn nil)))



