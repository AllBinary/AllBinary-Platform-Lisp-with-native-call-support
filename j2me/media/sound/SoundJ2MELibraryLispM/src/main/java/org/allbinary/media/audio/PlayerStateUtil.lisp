;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PlayerStateUtil (JObject)
  ((f_commonStrings :initform nil)
   (f_UNREALIZED :initform nil)
   (f_REALIZED :initform nil)
   (f_PREFETCHED :initform nil)
   (f_STARTED :initform nil)
   (f_CLOSED :initform nil)))

(defvar PlayerStateUtil.jcell_instance :jnone)
(defun PlayerStateUtil.jstatic_instance ()
  (when (eq PlayerStateUtil.jcell_instance :jnone) (setf PlayerStateUtil.jcell_instance (PlayerStateUtil.jnew_0)))
  PlayerStateUtil.jcell_instance)
(defun (setf PlayerStateUtil.jstatic_instance) (value) (setf PlayerStateUtil.jcell_instance value))

(defun PlayerStateUtil.jnew_0 ()
  (let ((this (make-instance 'PlayerStateUtil)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_UNREALIZED) "UNREALIZED")
    (setf (slot-value this 'f_REALIZED) "REALIZED")
    (setf (slot-value this 'f_PREFETCHED) "PREFETCHED")
    (setf (slot-value this 'f_STARTED) "STARTED")
    (setf (slot-value this 'f_CLOSED) "CLOSED")
    this))

    
(defun PlayerStateUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PlayerStateUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_convert_1) (defgeneric jm_convert_1 (this p1)))
(defmethod jm_convert_1 ((this PlayerStateUtil) _state)
  (declare (ignorable this _state))
  (let ()
    (block jreturn
        (if (= _state (Player.jstatic_UNREALIZED))
            (progn
            (return-from jreturn (slot-value this 'f_UNREALIZED)))
            (if (= _state (Player.jstatic_REALIZED))
            (progn
            (return-from jreturn (slot-value this 'f_REALIZED)))
            (if (= _state (Player.jstatic_PREFETCHED))
            (progn
            (return-from jreturn (slot-value this 'f_PREFETCHED)))
            (if (= _state (Player.jstatic_STARTED))
            (progn
            (return-from jreturn (slot-value this 'f_STARTED)))
            (if (= _state (Player.jstatic_CLOSED))
            (progn
            (return-from jreturn (slot-value this 'f_CLOSED))))))))
        (return-from jreturn (slot-value (slot-value this 'f_commonStrings) 'f_UNKNOWN)))))



