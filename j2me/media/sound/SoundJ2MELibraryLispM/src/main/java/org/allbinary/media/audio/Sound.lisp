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
;;;; package org.allbinary.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Sound (JObject)
  ((f_resource :initform nil)
   (f_player :initform nil)))

    
(defun Sound.jnew_1 (_resource)
  (declare (ignorable _resource))
  (let ((this (make-instance 'Sound)))
    
    (setf (slot-value this 'f_player) (NoPlayer.jstatic_NO_PLAYER))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_resource) _resource)))
    this))

    
(unless (fboundp 'jm_getResource_0) (defgeneric jm_getResource_0 (this)))
(defmethod jm_getResource_0 ((this Sound))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_resource)))))

    
(unless (fboundp 'jm_getPlayerP_0) (defgeneric jm_getPlayerP_0 (this)))
(defmethod jm_getPlayerP_0 ((this Sound))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_player)))))

    
(unless (fboundp 'jm_setPlayerP_1) (defgeneric jm_setPlayerP_1 (this p1)))
(defmethod jm_setPlayerP_1 ((this Sound) _player)
  (declare (ignorable this _player))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_player) _player))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this Sound))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getDuration_0) (defgeneric jm_getDuration_0 (this)))
(defmethod jm_getDuration_0 ((this Sound))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this Sound))
  (declare (ignorable this))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_start_0 (slot-value this 'f_player)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_put_3 (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_RUN)))))))



