;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicGameInfoFactory (JObject)
  ((f_currentReleaseIndex :initform 0)
   (f_currentDestroyIndex :initform 0)
   (f_total :initform 0)))

(defvar BasicGameInfoFactory.jcell_SINGLETON :jnone)
(defun BasicGameInfoFactory.jstatic_SINGLETON ()
  (when (eq BasicGameInfoFactory.jcell_SINGLETON :jnone) (setf BasicGameInfoFactory.jcell_SINGLETON (BasicGameInfoFactory.jnew_0)))
  BasicGameInfoFactory.jcell_SINGLETON)
(defun (setf BasicGameInfoFactory.jstatic_SINGLETON) (value) (setf BasicGameInfoFactory.jcell_SINGLETON value))

    
(defun BasicGameInfoFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicGameInfoFactory.jstatic_SINGLETON)))))

    
(defun BasicGameInfoFactory.jnew_0 ()
  (let ((this (make-instance 'BasicGameInfoFactory)))
    
    
    
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this BasicGameInfoFactory) _total)
  (declare (ignorable this _total))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentReleaseIndex) 0)
        (setf (slot-value this 'f_currentDestroyIndex) 0)
        (setf (slot-value this 'f_total) _total))))

    
(unless (fboundp 'jm_isPeaked_0) (defgeneric jm_isPeaked_0 (this)))
(defmethod jm_isPeaked_0 ((this BasicGameInfoFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (>= (slot-value this 'f_currentDestroyIndex) (slot-value this 'f_total))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_howManyLeft_0) (defgeneric jm_howManyLeft_0 (this)))
(defmethod jm_howManyLeft_0 ((this BasicGameInfoFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- (slot-value this 'f_total) (slot-value this 'f_currentDestroyIndex)))))))



