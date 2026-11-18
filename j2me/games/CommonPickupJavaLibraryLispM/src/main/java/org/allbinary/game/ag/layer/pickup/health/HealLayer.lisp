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
;;;; package org.allbinary.game.ag.layer.pickup.health

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HealLayer (AllBinaryLayer)
  ())

    
(defun HealLayer.jnew_0 ()
  (let ((this (make-instance 'HealLayer)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this HealLayer) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this HealLayer) _healthInterface)
  (declare (ignorable this _healthInterface))
  (let ()
    (block jreturn
        (if (jm_isAlive_0 _healthInterface)
            (progn
            (jm_healMax_0 _healthInterface))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Heal attempt on dead: Does not currently occur" this "visit"))))))



