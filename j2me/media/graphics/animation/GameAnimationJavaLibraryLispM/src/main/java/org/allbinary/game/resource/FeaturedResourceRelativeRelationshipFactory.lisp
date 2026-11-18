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

(defclass FeaturedResourceRelativeRelationshipFactory (FeaturedResourceFactory)
  ((f_basicArrayListUtil :initform nil)))

(defvar FeaturedResourceRelativeRelationshipFactory.jcell_INSTANCE :jnone)
(defun FeaturedResourceRelativeRelationshipFactory.jstatic_INSTANCE ()
  (when (eq FeaturedResourceRelativeRelationshipFactory.jcell_INSTANCE :jnone) (setf FeaturedResourceRelativeRelationshipFactory.jcell_INSTANCE (FeaturedResourceRelativeRelationshipFactory.jnew_0)))
  FeaturedResourceRelativeRelationshipFactory.jcell_INSTANCE)
(defun (setf FeaturedResourceRelativeRelationshipFactory.jstatic_INSTANCE) (value) (setf FeaturedResourceRelativeRelationshipFactory.jcell_INSTANCE value))

    
(defun FeaturedResourceRelativeRelationshipFactory.jnew_0 ()
  (let ((this (make-instance 'FeaturedResourceRelativeRelationshipFactory)))
    (setf (slot-value this 'f_basicArrayListUtil) (BasicArrayListUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(defun FeaturedResourceRelativeRelationshipFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FeaturedResourceRelativeRelationshipFactory.jstatic_INSTANCE)))))

    
(unless (fboundp 'jm_getRelativeRelationshipList_2) (defgeneric jm_getRelativeRelationshipList_2 (this p1 p2)))
(defmethod jm_getRelativeRelationshipList_2 ((this FeaturedResourceRelativeRelationshipFactory) _resource _layer)
  (declare (ignorable this _resource _layer))
  (let (_featureReleaseList _size _featureInterface _list _index)
  (declare (ignorable _featureReleaseList _size _featureInterface _list _index))
    (block jreturn
        (setf _featureReleaseList (jm_getList_0 this))
        (setf _size (jm_size_0 (jm_getList_0 this)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _featureInterface (aref (slot-value _featureReleaseList 'f_objectArray) _index))
            (if (jm_isFeature_0 _featureInterface)
                (progn
                (setf _list (jm_getResourceRelativeRelationshipList_1 _featureInterface _resource))
                (if (not (eq _list (jm_getImmutableInstance_0 (slot-value this 'f_basicArrayListUtil))))
                    (progn
                    (return-from jreturn (jm_duplicate_2 this _list _layer)))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (error (JR.newException "Exception" (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Not available for current feature selection or Resource: ") _resource)))))))

    
(unless (fboundp 'jm_duplicate_2) (defgeneric jm_duplicate_2 (this p1 p2)))
(defmethod jm_duplicate_2 ((this FeaturedResourceRelativeRelationshipFactory) _list _layer)
  (declare (ignorable this _list _layer))
  (let (_pointFactory _newList _size _relativeRelationship _index)
  (declare (ignorable _pointFactory _newList _size _relativeRelationship _index))
    (block jreturn
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (setf _newList (BasicArrayListD.jnew_0))
        (setf _size (jm_size_0 _list))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _relativeRelationship (aref (slot-value _list 'f_objectArray) _index))
            (jm_add_1 _newList (RelativeLayerRelationship.jnew_3 _layer (jm_createXY_2 _pointFactory (jm_getX_0 _relativeRelationship) (jm_getY_0 _relativeRelationship)) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _newList))))



