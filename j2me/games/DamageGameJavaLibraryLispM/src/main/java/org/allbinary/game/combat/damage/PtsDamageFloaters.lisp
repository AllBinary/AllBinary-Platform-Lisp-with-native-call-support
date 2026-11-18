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
;;;; package org.allbinary.game.combat.damage

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PtsDamageFloaters (DamageFloaters)
  ((f_basicSetColorUtil :initform nil)
   (f_layerInterface :initform nil)
   (f_lastDamage :initform nil)
   (f_lastDamageString :initform nil)
   (f_lastDamageStringSizeArray :initform nil)
   (f_circularIndexUtil :initform nil)
   (f_primitiveLongUtil :initform nil)
   (f_myRandomFactory :initform nil)))

(defvar PtsDamageFloaters.jcell_basicColorArrayIndexer :jnone)
(defun PtsDamageFloaters.jstatic_basicColorArrayIndexer ()
  (when (eq PtsDamageFloaters.jcell_basicColorArrayIndexer :jnone) (setf PtsDamageFloaters.jcell_basicColorArrayIndexer (BasicColorArrayIndexer.jnew_1 (vector (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_RED) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_YELLOW) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLUE)))))
  PtsDamageFloaters.jcell_basicColorArrayIndexer)
(defun (setf PtsDamageFloaters.jstatic_basicColorArrayIndexer) (value) (setf PtsDamageFloaters.jcell_basicColorArrayIndexer value))

    
(defun PtsDamageFloaters.jnew_1 (_layerInterface)
  (declare (ignorable _layerInterface))
  (let ((this (make-instance 'PtsDamageFloaters)))
    (setf (slot-value this 'f_basicSetColorUtil) (BasicColorSetUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_lastDamage) (JR.newArray 0 5))
    (setf (slot-value this 'f_lastDamageString) (JR.newArray 0 5 0))
    (setf (slot-value this 'f_lastDamageStringSizeArray) (JR.newArray 0 5))
    (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 5))
    
    (setf (slot-value this 'f_myRandomFactory) (MyRandomFactory.jm_getInstance_0))
  (let (_CHAR_ARRAY _index)
  (declare (ignorable _CHAR_ARRAY _index))
    (block jreturn
        (setf (slot-value this 'f_primitiveLongUtil) (PrimitiveLongUtil.jm_createPowerOfTen_1 100000))
        (setf (slot-value this 'f_layerInterface) _layerInterface)
        (setf _CHAR_ARRAY (jm_getZeroCharArray_0 (CharArrayFactory.jm_getInstance_0)))
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_lastDamageString)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf (aref (slot-value this 'f_lastDamageString) _index) _CHAR_ARRAY))
                (setf _index (JR.i32 (- _index 1))))))))
    this))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this PtsDamageFloaters) _damage)
  (declare (ignorable this _damage))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (setf _index (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
        (setf (aref (slot-value this 'f_lastDamage) _index) _damage)
        (setf (aref (slot-value this 'f_lastDamageString) _index) (jm_getCharArray_1 (slot-value this 'f_primitiveLongUtil) (aref (slot-value this 'f_lastDamage) _index)))
        (setf (aref (slot-value this 'f_lastDamageStringSizeArray) _index) (jm_getCurrentTotalDigits_0 (slot-value this 'f_primitiveLongUtil)))
        (jm_next_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this PtsDamageFloaters) _graphics)
  (declare (ignorable this _graphics))
  (let (_viewPosition _x _y _delta _index)
  (declare (ignorable _viewPosition _x _y _delta _index))
    (block jreturn
        (setf _viewPosition (jm_getViewPosition_0 (slot-value this 'f_layerInterface)))
        (setf _x (jm_getX_0 _viewPosition))
        (setf _y (jm_getY_0 _viewPosition))
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_lastDamage)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (if (/= (aref (slot-value this 'f_lastDamage) _index) 0)
                (progn
                (setf _delta (JR.i32 (* 10 (JR.i32 (+ _index 2)))))
                (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (jm_get_0 (PtsDamageFloaters.jstatic_basicColorArrayIndexer)))
                (jm_drawChars_6 _graphics (aref (slot-value this 'f_lastDamageString) _index) 0 (aref (slot-value this 'f_lastDamageStringSizeArray) _index) (JR.i32 (- _x (jm_getNextInt_1 (slot-value this 'f_myRandomFactory) _delta))) (JR.i32 (- _y _delta)) 0)
                (jm_next_0 (PtsDamageFloaters.jstatic_basicColorArrayIndexer))))
            (setf (aref (slot-value this 'f_lastDamage) _index) 0))
                (setf _index (JR.i32 (- _index 1)))))))))



