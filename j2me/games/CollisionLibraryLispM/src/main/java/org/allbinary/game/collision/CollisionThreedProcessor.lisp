;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.collision

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CollisionThreedProcessor (CollisionProcessor)
  ())

(defun CollisionThreedProcessor.jnew_0 ()
  (let ((this (make-instance 'CollisionThreedProcessor)))
    this))

    
(unless (fboundp 'jm_isCollision_2) (defgeneric jm_isCollision_2 (this p1 p2)))
(defmethod jm_isCollision_2 ((this CollisionThreedProcessor) _myLayer _myLayer2)
  (declare (ignorable this _myLayer _myLayer2))
  (let ()
    (block jreturn
        (if (or (or (or (or (or (>= (jm_getXP_0 _myLayer2) (jm_getX2_0 _myLayer)) (>= (jm_getYP_0 _myLayer2) (jm_getY2_0 _myLayer))) (<= (jm_getX2_0 _myLayer2) (jm_getXP_0 _myLayer))) (<= (jm_getY2_0 _myLayer2) (jm_getYP_0 _myLayer))) (< (jm_getZP_0 _myLayer2) (jm_getZ2_0 _myLayer))) (> (jm_getZ2_0 _myLayer2) (jm_getZP_0 _myLayer)))
            (progn
            (return-from jreturn nil))
            (progn
            (return-from jreturn t))))))



