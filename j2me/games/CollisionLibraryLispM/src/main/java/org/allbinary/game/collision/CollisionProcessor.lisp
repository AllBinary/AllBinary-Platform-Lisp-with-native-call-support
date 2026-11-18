;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.collision

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CollisionProcessor (JObject)
  ())

(defun CollisionProcessor.jnew_0 ()
  (let ((this (make-instance 'CollisionProcessor)))
    this))

    
(unless (fboundp 'jm_isCollision_2) (defgeneric jm_isCollision_2 (this p1 p2)))
(defmethod jm_isCollision_2 ((this CollisionProcessor) _myLayer _myLayer2)
  (declare (ignorable this _myLayer _myLayer2))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



