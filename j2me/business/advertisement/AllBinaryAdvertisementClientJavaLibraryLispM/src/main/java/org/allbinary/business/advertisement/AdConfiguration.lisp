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
;;;; package org.allbinary.business.advertisement

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AdConfiguration (JObject)
  ((f_INNERACTIVE :initform nil)
   (f_LEADBOLT :initform nil)
   (f_ADMOB :initform nil)))

    
(defun AdConfiguration.jnew_1 (_advertIdArray)
  (declare (ignorable _advertIdArray))
  (let ((this (make-instance 'AdConfiguration)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_INNERACTIVE) (aref _advertIdArray 0))
        (setf (slot-value this 'f_ADMOB) (aref _advertIdArray 1))
        (setf (slot-value this 'f_LEADBOLT) (aref _advertIdArray 2))))
    this))

    
(unless (fboundp 'jm_getValidAdSpots_0) (defgeneric jm_getValidAdSpots_0 (this)))
(defmethod jm_getValidAdSpots_0 ((this AdConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.newArray nil 0)))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this AdConfiguration) _gameState)
  (declare (ignorable this _gameState))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processDemo_1) (defgeneric jm_processDemo_1 (this p1)))
(defmethod jm_processDemo_1 ((this AdConfiguration) _state)
  (declare (ignorable this _state))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setShowAds_0) (defgeneric jm_setShowAds_0 (this)))
(defmethod jm_setShowAds_0 ((this AdConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setToggleAds_1) (defgeneric jm_setToggleAds_1 (this p1)))
(defmethod jm_setToggleAds_1 ((this AdConfiguration) _showAds)
  (declare (ignorable this _showAds))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isShowAds_0) (defgeneric jm_isShowAds_0 (this)))
(defmethod jm_isShowAds_0 ((this AdConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))



