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
;;;; package org.allbinary.game.resource

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ResourceLoadingLevelFactory (JObject)
  ((f_LOAD_EARLY :initform nil)
   (f_LOAD_TOUCH :initform nil)
   (f_LOAD_GAME :initform nil)
   (f_LEVEL :initform nil)
   (f_MAX_LEVEL :initform nil)
   (f_LOAD_ALL :initform nil)
   (f_RESOURCE_LOADING_LEVEL_ARRAY :initform nil)))

(defvar ResourceLoadingLevelFactory.jcell_instance :jnone)
(defun ResourceLoadingLevelFactory.jstatic_instance ()
  (when (eq ResourceLoadingLevelFactory.jcell_instance :jnone) (setf ResourceLoadingLevelFactory.jcell_instance (ResourceLoadingLevelFactory.jnew_0)))
  ResourceLoadingLevelFactory.jcell_instance)
(defun (setf ResourceLoadingLevelFactory.jstatic_instance) (value) (setf ResourceLoadingLevelFactory.jcell_instance value))

(defun ResourceLoadingLevelFactory.jnew_0 ()
  (let ((this (make-instance 'ResourceLoadingLevelFactory)))
    (setf (slot-value this 'f_LOAD_EARLY) (ResourceLoadingLevel.jnew_2 "Load Early" (Integer.jstatic_MAX_VALUE)))
    (setf (slot-value this 'f_LOAD_TOUCH) (ResourceLoadingLevel.jnew_2 "Load Touch" (JR.i32 (- (Integer.jstatic_MAX_VALUE) 1))))
    (setf (slot-value this 'f_LOAD_GAME) (ResourceLoadingLevel.jnew_2 "Load Game" (JR.i32 (- (Integer.jstatic_MAX_VALUE) 2))))
    (setf (slot-value this 'f_LEVEL) (ResourceLoadingLevel.jnew_2 "Level" (JR.i32 (- (Integer.jstatic_MAX_VALUE) 99))))
    (setf (slot-value this 'f_MAX_LEVEL) (ResourceLoadingLevel.jnew_2 "Max Level" (JR.i32 (- (Integer.jstatic_MAX_VALUE) 100))))
    (setf (slot-value this 'f_LOAD_ALL) (ResourceLoadingLevel.jnew_2 "Load All" (JR.i32 (- 1))))
    (setf (slot-value this 'f_RESOURCE_LOADING_LEVEL_ARRAY) (vector (slot-value this 'f_LOAD_ALL) (slot-value this 'f_MAX_LEVEL) (slot-value this 'f_LEVEL) (slot-value this 'f_LOAD_GAME) (slot-value this 'f_LOAD_TOUCH) (slot-value this 'f_LOAD_EARLY)))
    this))

    
(defun ResourceLoadingLevelFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ResourceLoadingLevelFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getLevelString_1) (defgeneric jm_getLevelString_1 (this p1)))
(defmethod jm_getLevelString_1 ((this ResourceLoadingLevelFactory) _level)
  (declare (ignorable this _level))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length (slot-value this 'f_RESOURCE_LOADING_LEVEL_ARRAY))) do
                (block jcontinue
            (if (= _level (jm_getLevel_0 (aref (slot-value this 'f_RESOURCE_LOADING_LEVEL_ARRAY) _index)))
                (progn
                (return-from jreturn (jm_getName_0 (aref (slot-value this 'f_RESOURCE_LOADING_LEVEL_ARRAY) _index))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (JR.str _level)))))



