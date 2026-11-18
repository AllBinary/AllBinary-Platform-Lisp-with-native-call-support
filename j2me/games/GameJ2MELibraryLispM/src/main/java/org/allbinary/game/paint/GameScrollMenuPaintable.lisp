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

(defclass GameScrollMenuPaintable (BasicGameDemoPaintable)
  ())

    
(defun GameScrollMenuPaintable.jnew_4 (_mainDemoStatePaintable _ownershipPaintable _helpPaintableInterface _basicColor)
  (declare (ignorable _mainDemoStatePaintable _ownershipPaintable _helpPaintableInterface _basicColor))
  (let ((this (make-instance 'GameScrollMenuPaintable)))
  (let ()
    (block jreturn
        nil
        (jm_setColor_1 this _basicColor)
        (jm_addListenerInterface_1 (ColorChangeEventHandler.jm_getInstance_0) this)))
    this))

    
(unless (fboundp 'jm_setState_1) (defgeneric jm_setState_1 (this p1)))
(defmethod jm_setState_1 ((this GameScrollMenuPaintable) _state)
  (declare (ignorable this _state))
  (let ()
    (block jreturn
        (jm_setCurrentStatePaintable_1 this (jm_getMainDemoStatePaintable_0 this)))))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this GameScrollMenuPaintable) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setColor_1) (defgeneric jm_setColor_1 (this p1)))
(defmethod jm_setColor_1 ((this GameScrollMenuPaintable) _basicColor)
  (declare (ignorable this _basicColor))
  (let (_mainGameDemoStatePaintable _formPaintable _scrollSelectionForm _item _stringComponent _index)
  (declare (ignorable _mainGameDemoStatePaintable _formPaintable _scrollSelectionForm _item _stringComponent _index))
    (block jreturn
        (setf _mainGameDemoStatePaintable (jm_getMainDemoStatePaintable_0 this))
        (setf _formPaintable (jm_getMenuPaintableInterface_0 _mainGameDemoStatePaintable))
        (setf _scrollSelectionForm (jm_getForm_0 _formPaintable))
        (jm_setBasicColorP_1 (jm_getOwnershipPaintableInterface_0 _mainGameDemoStatePaintable) _basicColor)
        (jm_setButtonBasicColor_1 _scrollSelectionForm _basicColor)
        (setf _item nil)
        (setf _stringComponent nil)
        (progn
            (setf _index (JR.i32 (- (jm_size_0 _scrollSelectionForm) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _item (jm_get_1 _scrollSelectionForm _index))
            (setf _stringComponent (jm_getLabelStringComponent_0 _item))
            (if (not (null _stringComponent))
                (progn
                (jm_setForegroundBasicColor_1 _stringComponent _basicColor))))
                (setf _index (JR.i32 (- _index 1)))))))))



