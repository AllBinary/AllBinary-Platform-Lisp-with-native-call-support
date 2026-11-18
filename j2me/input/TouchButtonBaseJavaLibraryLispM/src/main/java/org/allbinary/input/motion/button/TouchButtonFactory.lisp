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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchButtonFactory (JObject)
  ((f_LIST :initform nil)
   (f_list :initform nil)
   (f_savedList :initform nil)
   (f_saved :initform nil)))

(defvar TouchButtonFactory.jcell_SINGLETON :jnone)
(defun TouchButtonFactory.jstatic_SINGLETON ()
  (when (eq TouchButtonFactory.jcell_SINGLETON :jnone) (setf TouchButtonFactory.jcell_SINGLETON (TouchButtonFactory.jnew_0)))
  TouchButtonFactory.jcell_SINGLETON)
(defun (setf TouchButtonFactory.jstatic_SINGLETON) (value) (setf TouchButtonFactory.jcell_SINGLETON value))

    
(defun TouchButtonFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonFactory.jstatic_SINGLETON)))))

    
(defun TouchButtonFactory.jnew_0 ()
  (let ((this (make-instance 'TouchButtonFactory)))
    (setf (slot-value this 'f_LIST) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))
    (setf (slot-value this 'f_list) (slot-value this 'f_LIST))
    (setf (slot-value this 'f_savedList) (slot-value this 'f_LIST))
    (setf (slot-value this 'f_saved) nil)
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_defaultList_0) (defgeneric jm_defaultList_0 (this)))
(defmethod jm_defaultList_0 ((this TouchButtonFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_list) (slot-value this 'f_LIST))
        (jm_toggle_2 this nil (slot-value this 'f_LIST)))))

    
(unless (fboundp 'jm_toggle_2) (defgeneric jm_toggle_2 (this p1 p2)))
(defmethod jm_toggle_2 ((this TouchButtonFactory) _save _list)
  (declare (ignorable this _save _list))
  (let ()
    (block jreturn
        (if (not (eq _list (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0))))
            (progn
            (setf (slot-value this 'f_savedList) _list)
            (if (not (slot-value this 'f_saved))
                (progn
                (setf (slot-value this 'f_list) (slot-value this 'f_savedList)))))
            (progn
            (if _save
                (progn
                (if (not (slot-value this 'f_saved))
                    (progn
                    (setf (slot-value this 'f_saved) t)
                    (setf (slot-value this 'f_savedList) (slot-value this 'f_list))
                    (setf (slot-value this 'f_list) (slot-value this 'f_LIST)))
                    (progn
                    nil)))
                (progn
                (setf (slot-value this 'f_list) (slot-value this 'f_savedList))
                (setf (slot-value this 'f_saved) nil))))))))

    
(unless (fboundp 'jm_setList_1) (defgeneric jm_setList_1 (this p1)))
(defmethod jm_setList_1 ((this TouchButtonFactory) _list)
  (declare (ignorable this _list))
  (let ()
    (block jreturn
        (if (null _list)
            (progn
            (error (JR.newException "Exception" "Null List"))))
        (setf (slot-value this 'f_list) _list))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this TouchButtonFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))



