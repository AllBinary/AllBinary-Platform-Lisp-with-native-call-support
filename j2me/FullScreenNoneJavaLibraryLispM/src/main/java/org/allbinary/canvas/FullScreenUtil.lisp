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
;;;; package org.allbinary.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FullScreenUtil (JObject)
  ())

(defvar FullScreenUtil.jcell_instance :jnone)
(defun FullScreenUtil.jstatic_instance ()
  (when (eq FullScreenUtil.jcell_instance :jnone) (setf FullScreenUtil.jcell_instance (FullScreenUtil.jnew_0)))
  FullScreenUtil.jcell_instance)
(defun (setf FullScreenUtil.jstatic_instance) (value) (setf FullScreenUtil.jcell_instance value))

(defun FullScreenUtil.jnew_0 ()
  (let ((this (make-instance 'FullScreenUtil)))
    this))

    
(defun FullScreenUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FullScreenUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_initOnRun_2) (defgeneric jm_initOnRun_2 (this p1 p2)))
(defmethod jm_initOnRun_2 ((this FullScreenUtil) _fullScreenInterface _commandListener)
  (declare (ignorable this _fullScreenInterface _commandListener))
  (let ()
    (block jreturn
        (if (not (null _commandListener))
            (progn
            (jm_init_1 this _fullScreenInterface))))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this FullScreenUtil) _fullScreenInterface)
  (declare (ignorable this _fullScreenInterface))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isScreenChange_1) (defgeneric jm_isScreenChange_1 (this p1)))
(defmethod jm_isScreenChange_1 ((this FullScreenUtil) _isFullScreen)
  (declare (ignorable this _isFullScreen))
  (let (_mainFeatureFactory _features)
  (declare (ignorable _mainFeatureFactory _features))
    (block jreturn
        (setf _mainFeatureFactory (MainFeatureFactory.jm_getInstance_0))
        (setf _features (Features.jm_getInstance_0))
        (if (not (eq (jm_isFeature_1 _features (slot-value _mainFeatureFactory 'f_FULL_SCREEN)) _isFullScreen))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isScreenChangeCanvas_1) (defgeneric jm_isScreenChangeCanvas_1 (this p1)))
(defmethod jm_isScreenChangeCanvas_1 ((this FullScreenUtil) _fullScreenInterface)
  (declare (ignorable this _fullScreenInterface))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isScreenChange_1 this nil)))))



