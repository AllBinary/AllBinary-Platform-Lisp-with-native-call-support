;;;; 
;;;; To change this license header, choose License Headers in Project Properties. 
;;;; To change this template file, choose Tools | Templates 
;;;; and open the template in the editor.  
;;;; Generated Code Do Not Modify
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchButtonResource (JObject)
  ((f_RESOURCE :initform nil)
   (f_HINT :initform nil)))

    
(defun TouchButtonResource.jnew_2 (_resource _hint)
  (declare (ignorable _resource _hint))
  (let ((this (make-instance 'TouchButtonResource)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_RESOURCE) _resource)
        (setf (slot-value this 'f_HINT) _hint)))
    this))



