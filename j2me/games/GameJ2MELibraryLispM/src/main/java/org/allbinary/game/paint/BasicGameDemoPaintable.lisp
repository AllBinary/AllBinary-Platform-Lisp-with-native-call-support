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
;;;; package org.allbinary.game.paint

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicGameDemoPaintable (StatePaintable)
  ((f_mainDemoStatePaintable :initform nil)
   (f_ownershipPaintable :initform nil)
   (f_helpPaintableInterface :initform nil)
   (f_currentStatePaintable :initform nil)))

    
(defun BasicGameDemoPaintable.jnew_3 (_mainDemoStatePaintable _ownershipPaintable _helpPaintableInterface)
  (declare (ignorable _mainDemoStatePaintable _ownershipPaintable _helpPaintableInterface))
  (let ((this (make-instance 'BasicGameDemoPaintable)))
    
    
    
    (setf (slot-value this 'f_currentStatePaintable) (NullPaintable.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_mainDemoStatePaintable) _mainDemoStatePaintable)
        (jm_setCurrentStatePaintable_1 this (NullPaintable.jm_getInstance_0))
        (setf (slot-value this 'f_ownershipPaintable) _ownershipPaintable)
        (setf (slot-value this 'f_helpPaintableInterface) _helpPaintableInterface)))
    this))

    
(unless (fboundp 'jm_setState_1) (defgeneric jm_setState_1 (this p1)))
(defmethod jm_setState_1 ((this BasicGameDemoPaintable) _state)
  (declare (ignorable this _state))
  (let ()
    (block jreturn
        (if (= _state 0)
            (progn
            (jm_setCurrentStatePaintable_1 this (jm_getMainDemoStatePaintable_0 this)))
            (if (= _state 1)
            (progn
            (jm_setCurrentStatePaintable_1 this (slot-value this 'f_helpPaintableInterface)))
            (progn
            (jm_setCurrentStatePaintable_1 this (slot-value this 'f_ownershipPaintable))))))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this BasicGameDemoPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (jm_getCurrentStatePaintable_0 this) _graphics))))

    
(unless (fboundp 'jm_getHelpPaintableInterface_0) (defgeneric jm_getHelpPaintableInterface_0 (this)))
(defmethod jm_getHelpPaintableInterface_0 ((this BasicGameDemoPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_helpPaintableInterface)))))

    
(unless (fboundp 'jm_setCurrentStatePaintable_1) (defgeneric jm_setCurrentStatePaintable_1 (this p1)))
(defmethod jm_setCurrentStatePaintable_1 ((this BasicGameDemoPaintable) _currentStatePaintable)
  (declare (ignorable this _currentStatePaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentStatePaintable) _currentStatePaintable))))

    
(unless (fboundp 'jm_getCurrentStatePaintable_0) (defgeneric jm_getCurrentStatePaintable_0 (this)))
(defmethod jm_getCurrentStatePaintable_0 ((this BasicGameDemoPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_currentStatePaintable)))))

    
(unless (fboundp 'jm_getMainDemoStatePaintable_0) (defgeneric jm_getMainDemoStatePaintable_0 (this)))
(defmethod jm_getMainDemoStatePaintable_0 ((this BasicGameDemoPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_mainDemoStatePaintable)))))



