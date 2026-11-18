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
;;;; package org.allbinary.game.configuration.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameInitializedEvent (AllBinaryEventObject)
  ((f_resourceLoadingLevel :initform nil)
   (f_level :initform 0)))

    
(defun GameInitializedEvent.jnew_1 (_anyType)
  (declare (ignorable _anyType))
  (let ((this (make-instance 'GameInitializedEvent)))
    (setf (slot-value this 'f_resourceLoadingLevel) (slot-value (ResourceLoadingLevelFactory.jm_getInstance_0) 'f_LEVEL))
    
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_setLevel_1) (defgeneric jm_setLevel_1 (this p1)))
(defmethod jm_setLevel_1 ((this GameInitializedEvent) _level)
  (declare (ignorable this _level))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_level) _level)
        (setf (slot-value this 'f_resourceLoadingLevel) (slot-value (ResourceLoadingLevelFactory.jm_getInstance_0) 'f_LEVEL)))))

    
(unless (fboundp 'jm_getLevel_0) (defgeneric jm_getLevel_0 (this)))
(defmethod jm_getLevel_0 ((this GameInitializedEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_level)))))

    
(unless (fboundp 'jm_setResourceLoadingLevel_1) (defgeneric jm_setResourceLoadingLevel_1 (this p1)))
(defmethod jm_setResourceLoadingLevel_1 ((this GameInitializedEvent) _resourceLoadingLevel)
  (declare (ignorable this _resourceLoadingLevel))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_resourceLoadingLevel) _resourceLoadingLevel)
        (setf (slot-value this 'f_level) (jm_getLevel_0 (slot-value this 'f_resourceLoadingLevel))))))

    
(unless (fboundp 'jm_getResourceLoadingLevel_0) (defgeneric jm_getResourceLoadingLevel_0 (this)))
(defmethod jm_getResourceLoadingLevel_0 ((this GameInitializedEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_resourceLoadingLevel)))))



