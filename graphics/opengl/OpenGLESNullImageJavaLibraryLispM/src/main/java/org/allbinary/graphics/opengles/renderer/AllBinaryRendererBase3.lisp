;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.graphics.opengles.renderer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryRendererBase3 (JObject)
  ((f_list :initform nil)))

(defun AllBinaryRendererBase3.jnew_0 ()
  (let ((this (make-instance 'AllBinaryRendererBase3)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    this))

    
(unless (fboundp 'jm_update_1) (defgeneric jm_update_1 (this p1)))
(defmethod jm_update_1 ((this AllBinaryRendererBase3) _gl)
  (declare (ignorable this _gl))
  (let (_openGLESImage)
  (declare (ignorable _openGLESImage))
    (block jreturn
        (block jbreak (loop while (> (jm_size_0 (slot-value this 'f_list)) 0) do
                (block jcontinue
            (setf _openGLESImage (jm_removeAt_1 (slot-value this 'f_list) 0))
            (if (not (null _openGLESImage))
                (progn
                (jm_set_1 _openGLESImage _gl)))))))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this AllBinaryRendererBase3) _image)
  (declare (ignorable this _image))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _image))))



