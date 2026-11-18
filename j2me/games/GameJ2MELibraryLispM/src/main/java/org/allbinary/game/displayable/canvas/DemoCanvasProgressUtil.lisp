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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DemoCanvasProgressUtil (JObject)
  ())

(defun DemoCanvasProgressUtil.jnew_0 ()
  (let ((this (make-instance 'DemoCanvasProgressUtil)))
    this))

    
(defun DemoCanvasProgressUtil.jm_showProgress_1 (_demoCanvas)
  (declare (ignorable _demoCanvas))
  (let ()
    (block jreturn
        (DemoCanvasProgressUtil.jm_showProgressOptionallyInTheBackground_2 _demoCanvas nil))))

    
(defun DemoCanvasProgressUtil.jm_showProgressOptionallyInTheBackground_2 (_demoCanvas _background)
  (declare (ignorable _demoCanvas _background))
  (let (_progressCanvas _paintableArray)
  (declare (ignorable _progressCanvas _paintableArray))
    (block jreturn
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (jm_startBackground_1 _progressCanvas _background)
        (setf _paintableArray (JR.newArray nil 2))
        (setf (aref _paintableArray 0) _progressCanvas)
        (setf (aref _paintableArray 1) (jm_getDefaultPaintableInterface_0 _demoCanvas))
        (jm_setDefaultPaintableInterface_1 _demoCanvas (PaintableComposite.jnew_1 _paintableArray))
        (jm_setPaintableInterface_1 _demoCanvas (jm_getDefaultPaintableInterface_0 _demoCanvas)))))



