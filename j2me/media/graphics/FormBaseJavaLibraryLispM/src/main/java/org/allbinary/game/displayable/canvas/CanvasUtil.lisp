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

(defclass CanvasUtil (JObject)
  ())

    
(defun CanvasUtil.jnew_0 ()
  (let ((this (make-instance 'CanvasUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(defun CanvasUtil.jm_getKeyName_1 (_key)
  (declare (ignorable _key))
  (let (_commonPhoneStrings)
  (declare (ignorable _commonPhoneStrings))
    (block jreturn
        (setf _commonPhoneStrings (CommonPhoneStrings.jm_getInstance_0))
        (if (= _key (Canvas.jstatic_UP))
            (progn
            (return-from jreturn (slot-value _commonPhoneStrings 'f_UP)))
            (if (= _key (Canvas.jstatic_DOWN))
            (progn
            (return-from jreturn (slot-value _commonPhoneStrings 'f_DOWN)))
            (if (= _key (Canvas.jstatic_RIGHT))
            (progn
            (return-from jreturn (slot-value _commonPhoneStrings 'f_RIGHT)))
            (if (= _key (Canvas.jstatic_LEFT))
            (progn
            (return-from jreturn (slot-value _commonPhoneStrings 'f_LEFT)))
            (if (= _key (Canvas.jstatic_FIRE))
            (progn
            (return-from jreturn (slot-value _commonPhoneStrings 'f_FIRE))))))))
        (return-from jreturn "UNKNOWN KEY"))))



