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
;;;; package org.allbinary.game.layer.resources

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicGameResources (JObject)
  ((f_logUtil :initform nil)
   (f_RESOURCE :initform nil)
   (f_RESOURCE_DESTROY :initform nil)))

(defvar BasicGameResources.jcell_stringBuffer :jnone)
(defun BasicGameResources.jstatic_stringBuffer ()
  (when (eq BasicGameResources.jcell_stringBuffer :jnone) (setf BasicGameResources.jcell_stringBuffer (StringMaker.jnew_0)))
  BasicGameResources.jcell_stringBuffer)
(defun (setf BasicGameResources.jstatic_stringBuffer) (value) (setf BasicGameResources.jcell_stringBuffer value))

    
(defun BasicGameResources.jnew_0 ()
  (let ((this (make-instance 'BasicGameResources)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_RESOURCE) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_RESOURCE_DESTROY) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this BasicGameResources) _ROOT _SIZE)
  (declare (ignorable this _ROOT _SIZE))
  (let (_scale _commonStrings)
  (declare (ignorable _scale _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _scale (jm_intValue_0 (jm_getValue_0 (slot-value (GameConfigurationCentral.jm_getInstance_0) 'f_SCALE))))
            (if (and (> _scale 1) (< (JR.i32 (- _scale 1)) (length _SIZE)))
                (progn
                (jm_append_2 this _ROOT (aref _SIZE (JR.i32 (- _scale 1)))))
                (progn
                (error (JR.newException "Exception" (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Invalid Value: ") _scale)))))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_INIT) _e))))))

    
(unless (fboundp 'jm_append_2) (defgeneric jm_append_2 (this p1 p2)))
(defmethod jm_append_2 ((this BasicGameResources) _ROOT _sizeString)
  (declare (ignorable this _ROOT _sizeString))
  (let (_DESTROY _string)
  (declare (ignorable _DESTROY _string))
    (block jreturn
        (setf _DESTROY "_destroy")
        (setf _string (jm_getString_0 this))
        (jm_delete_2 (BasicGameResources.jstatic_stringBuffer) 0 (jm_length_0 (BasicGameResources.jstatic_stringBuffer)))
        (jm_append_1 (BasicGameResources.jstatic_stringBuffer) _ROOT)
        (jm_append_1 (BasicGameResources.jstatic_stringBuffer) _string)
        (jm_append_1 (BasicGameResources.jstatic_stringBuffer) _sizeString)
        (setf (slot-value this 'f_RESOURCE) (JR.toString (BasicGameResources.jstatic_stringBuffer)))
        (jm_delete_2 (BasicGameResources.jstatic_stringBuffer) 0 (jm_length_0 (BasicGameResources.jstatic_stringBuffer)))
        (jm_append_1 (BasicGameResources.jstatic_stringBuffer) _ROOT)
        (jm_append_1 (BasicGameResources.jstatic_stringBuffer) _DESTROY)
        (jm_append_1 (BasicGameResources.jstatic_stringBuffer) _string)
        (jm_append_1 (BasicGameResources.jstatic_stringBuffer) _sizeString)
        (setf (slot-value this 'f_RESOURCE_DESTROY) (JR.toString (BasicGameResources.jstatic_stringBuffer))))))

    
(unless (fboundp 'jm_getString_0) (defgeneric jm_getString_0 (this)))
(defmethod jm_getString_0 ((this BasicGameResources))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getName_0 (GameGraphicsResourceUtil.jm_getInstance_0))))))



