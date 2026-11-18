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

(defclass PlayerQueue (JObject)
  ((f_commonStrings :initform nil)
   (f_list :initform nil)
   (f_max :initform 0)))

(defvar PlayerQueue.jcell_TOTAL :jnone)
(defun PlayerQueue.jstatic_TOTAL ()
  (when (eq PlayerQueue.jcell_TOTAL :jnone) (setf PlayerQueue.jcell_TOTAL "Sounds In Queue: "))
  PlayerQueue.jcell_TOTAL)
(defun (setf PlayerQueue.jstatic_TOTAL) (value) (setf PlayerQueue.jcell_TOTAL value))

    
(defun PlayerQueue.jnew_1 (_max)
  (declare (ignorable _max))
  (let ((this (make-instance 'PlayerQueue)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_max) _max)))
    this))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this PlayerQueue) _sound)
  (declare (ignorable this _sound))
  (let ()
    (block jreturn
        (handler-case (progn
            (if (not (jm_contains_1 (slot-value this 'f_list) _sound))
                (progn
                (jm_add_1 (slot-value this 'f_list) _sound))))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD)))))))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this PlayerQueue))
  (declare (ignorable this))
  (let (_sound _played _resource)
  (declare (ignorable _sound _played _resource))
    (block jreturn
        (setf _sound (NoSound.jm_getInstance_0))
        (handler-case (progn
            (setf _played nil)
            (if (> (jm_size_0 (slot-value this 'f_list)) 0)
                (progn
                (setf _sound (jm_removeAt_1 (slot-value this 'f_list) 0))
                (if (not (null _sound))
                    (progn
                    (jm_start_0 (jm_getPlayerP_0 _sound))))
                (block jbreak (loop while (> (jm_size_0 (slot-value this 'f_list)) (slot-value this 'f_max)) do
                        (block jcontinue
                    (jm_removeAt_1 (slot-value this 'f_list) 0))))
                (setf _played t)))
            (return-from jreturn _played))
            (error (_e) (declare (ignorable _e))
            (setf _resource (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
            (if (not (null _sound))
                (progn
                (setf _resource (jm_getResource_0 _sound))))
            (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION_LABEL)) _resource)) this (slot-value (slot-value this 'f_commonStrings) 'f_PROCESS))
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this PlayerQueue))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this PlayerQueue))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (PlayerQueue.jstatic_TOTAL)) (jm_size_0 (slot-value this 'f_list))))))))



