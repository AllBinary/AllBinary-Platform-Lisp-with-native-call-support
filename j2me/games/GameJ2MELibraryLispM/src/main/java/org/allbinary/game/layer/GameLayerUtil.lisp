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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameLayerUtil (JObject)
  ())

    
(defun GameLayerUtil.jnew_0 ()
  (let ((this (make-instance 'GameLayerUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(defun GameLayerUtil.jm_isOnScreen_1 (_layer)
  (declare (ignorable _layer))
  (let (_displayInfo _viewPosition)
  (declare (ignorable _displayInfo _viewPosition))
    (block jreturn
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf _viewPosition (jm_getViewPosition_0 _layer))
        (return-from jreturn (GameLayerUtil.jm_isInside_8 (jm_getX_0 _viewPosition) (jm_getY_0 _viewPosition) (jm_getX2_0 _viewPosition) (jm_getY2_0 _viewPosition) 0 0 (jm_getLastWidth_0 _displayInfo) (jm_getLastHeight_0 _displayInfo))))))

    
(defun GameLayerUtil.jm_isInside_8 (_rectX1 _rectY1 _rectX2 _rectY2 _rect2X1 _rect2Y1 _rect2X2 _rect2Y2)
  (declare (ignorable _rectX1 _rectY1 _rectX2 _rectY2 _rect2X1 _rect2Y1 _rect2X2 _rect2Y2))
  (let ()
    (block jreturn
        (if (and (and (and (> _rectX1 _rect2X1) (< _rectX2 _rect2X2)) (> _rectY1 _rect2Y1)) (< _rectY2 _rect2Y2))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



