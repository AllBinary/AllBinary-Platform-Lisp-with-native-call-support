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

(defclass ResourceRelativeRelationshipFactory (JObject)
  ((f_basicArrayListUtil :initform nil)
   (f_hashtable :initform nil)
   (f_initialized :initform nil)))

(defun ResourceRelativeRelationshipFactory.jnew_0 ()
  (let ((this (make-instance 'ResourceRelativeRelationshipFactory)))
    (setf (slot-value this 'f_basicArrayListUtil) (BasicArrayListUtil.jm_getInstance_0))
    (setf (slot-value this 'f_hashtable) (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
    
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this ResourceRelativeRelationshipFactory) _level)
  (declare (ignorable this _level))
  (let ()
    (block jreturn
        (jm_setInitialized_1 this t))))

    
(unless (fboundp 'jm_getResourceRelativeRelationshipList_1) (defgeneric jm_getResourceRelativeRelationshipList_1 (this p1)))
(defmethod jm_getResourceRelativeRelationshipList_1 ((this ResourceRelativeRelationshipFactory) _resource)
  (declare (ignorable this _resource))
  (let (_listCanBeNull)
  (declare (ignorable _listCanBeNull))
    (block jreturn
        (setf _listCanBeNull (jm_get_1 (slot-value this 'f_hashtable) _resource))
        (if (null _listCanBeNull)
            (progn
            (return-from jreturn (jm_getImmutableInstance_0 (slot-value this 'f_basicArrayListUtil)))))
        (return-from jreturn _listCanBeNull))))

    
(unless (fboundp 'jm_addResourceRelativeRelationship_2) (defgeneric jm_addResourceRelativeRelationship_2 (this p1 p2)))
(defmethod jm_addResourceRelativeRelationship_2 ((this ResourceRelativeRelationshipFactory) _resource _hardPoint)
  (declare (ignorable this _resource _hardPoint))
  (let (_list)
  (declare (ignorable _list))
    (block jreturn
        (setf _list (jm_getResourceRelativeRelationshipList_1 this _resource))
        (if (eq _list (jm_getImmutableInstance_0 (slot-value this 'f_basicArrayListUtil)))
            (progn
            (setf _list (BasicArrayListD.jnew_0))))
        (jm_add_1 _list _hardPoint)
        (jm_put_2 (slot-value this 'f_hashtable) _resource _list))))

    
(unless (fboundp 'jm_isLoadingLevel_1) (defgeneric jm_isLoadingLevel_1 (this p1)))
(defmethod jm_isLoadingLevel_1 ((this ResourceRelativeRelationshipFactory) _level)
  (declare (ignorable this _level))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isFeature_0) (defgeneric jm_isFeature_0 (this)))
(defmethod jm_isFeature_0 ((this ResourceRelativeRelationshipFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_setInitialized_1) (defgeneric jm_setInitialized_1 (this p1)))
(defmethod jm_setInitialized_1 ((this ResourceRelativeRelationshipFactory) _initialized)
  (declare (ignorable this _initialized))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_initialized) _initialized))))

    
(unless (fboundp 'jm_isInitialized_0) (defgeneric jm_isInitialized_0 (this)))
(defmethod jm_isInitialized_0 ((this ResourceRelativeRelationshipFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initialized)))))



