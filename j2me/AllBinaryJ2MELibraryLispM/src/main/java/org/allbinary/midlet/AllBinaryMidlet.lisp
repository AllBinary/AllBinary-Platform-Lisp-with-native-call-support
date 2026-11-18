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
;;;; package org.allbinary.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryMidlet (MIDlet)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_SET_DISPLAY :initform nil)
   (f_SETTING_ :initform nil)
   (f__DISPLAY_ :initform nil)
   (f_SETTING_NO_TITLE :initform nil)
   (f_hashtable :initform nil)
   (f_midletDestroyed :initform nil)))

(defvar AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET :jnone)
(defun AllBinaryMidlet.jstatic_NULL_ALLBINARY_MIDLET ()
  (when (eq AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET :jnone) (setf AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET)
(defun (setf AllBinaryMidlet.jstatic_NULL_ALLBINARY_MIDLET) (value) (setf AllBinaryMidlet.jcell_NULL_ALLBINARY_MIDLET value))

    
(defun AllBinaryMidlet.jm_getNullInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (AllBinaryMidlet.jstatic_NULL_ALLBINARY_MIDLET) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (AllBinaryMidlet.jstatic_NULL_ALLBINARY_MIDLET) (AllBinaryMidlet.jnew_0))))
        (return-from jreturn (AllBinaryMidlet.jstatic_NULL_ALLBINARY_MIDLET)))))

    
(defun AllBinaryMidlet.jnew_0 ()
  (let ((this (make-instance 'AllBinaryMidlet)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_SET_DISPLAY) "setDisplay")
    (setf (slot-value this 'f_SETTING_) "Setting: ")
    (setf (slot-value this 'f__DISPLAY_) " Display: ")
    (setf (slot-value this 'f_SETTING_NO_TITLE) "Setting: No Title, Display: ")
    (setf (slot-value this 'f_hashtable) (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
    
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR) this "AllBinaryMidlet::AllBinaryMidlet")))
    this))

    
(unless (fboundp 'jm_setDisplay_1) (defgeneric jm_setDisplay_1 (this p1)))
(defmethod jm_setDisplay_1 ((this AllBinaryMidlet) _newDisplay)
  (declare (ignorable this _newDisplay))
  (let (_title _display)
  (declare (ignorable _title _display))
    (block jreturn
        (setf _title (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
        (if (not (eq _newDisplay (NullCanvas.jstatic_NULL_CANVAS)))
            (progn
            (setf _title (jm_getTitle_0 _newDisplay))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_SETTING_)) _title) (slot-value this 'f__DISPLAY_)) (jm_toString_1 (StringUtil.jm_getInstance_0) _newDisplay))) this (slot-value this 'f_SET_DISPLAY))))
        (setf _display (jm_getDisplay_0 this))
        (jm_setCurrent_1 _display _newDisplay))))

    
(unless (fboundp 'jm_getDisplay_0) (defgeneric jm_getDisplay_0 (this)))
(defmethod jm_getDisplay_0 ((this AllBinaryMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (Display.jm_getDisplay_1 this)))))

    
(unless (fboundp 'jm_getCurrentDisplayable_0) (defgeneric jm_getCurrentDisplayable_0 (this)))
(defmethod jm_getCurrentDisplayable_0 ((this AllBinaryMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getCurrent_0 (Display.jm_getDisplay_1 this))))))

    
(unless (fboundp 'jm_setDestroyed_1) (defgeneric jm_setDestroyed_1 (this p1)))
(defmethod jm_setDestroyed_1 ((this AllBinaryMidlet) _destroyed)
  (declare (ignorable this _destroyed))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_midletDestroyed) _destroyed))))

    
(unless (fboundp 'jm_isDestroyed_0) (defgeneric jm_isDestroyed_0 (this)))
(defmethod jm_isDestroyed_0 ((this AllBinaryMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_midletDestroyed)))))

    
(unless (fboundp 'jm_startApp_0) (defgeneric jm_startApp_0 (this)))
(defmethod jm_startApp_0 ((this AllBinaryMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_pauseApp_0) (defgeneric jm_pauseApp_0 (this)))
(defmethod jm_pauseApp_0 ((this AllBinaryMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_destroyAppInRunnable_2) (defgeneric jm_destroyAppInRunnable_2 (this p1 p2)))
(defmethod jm_destroyAppInRunnable_2 ((this AllBinaryMidlet) _unconditional _isProgress)
  (declare (ignorable this _unconditional _isProgress))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_destroyApp_1) (defgeneric jm_destroyApp_1 (this p1)))
(defmethod jm_destroyApp_1 ((this AllBinaryMidlet) _unconditional)
  (declare (ignorable this _unconditional))
  (let (_METHOD_NAME)
  (declare (ignorable _METHOD_NAME))
    (block jreturn
        (setf _METHOD_NAME "AllBinaryMidlet::destroyApp")
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this _METHOD_NAME)
            (PreLogUtil.jm_put_3 (Memory.jm_getInfo_0) this _METHOD_NAME)
            (jm_setDestroyed_1 this t))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this _METHOD_NAME _e))))))

    
(unless (fboundp 'jm_setStartStateHashtable_1) (defgeneric jm_setStartStateHashtable_1 (this p1)))
(defmethod jm_setStartStateHashtable_1 ((this AllBinaryMidlet) _hashtable)
  (declare (ignorable this _hashtable))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) (jm_toString_1 (StringUtil.jm_getInstance_0) _hashtable))) this "setStartStateHashtable")
        (setf (slot-value this 'f_hashtable) _hashtable))))

    
(unless (fboundp 'jm_getStartStateHashtable_0) (defgeneric jm_getStartStateHashtable_0 (this)))
(defmethod jm_getStartStateHashtable_0 ((this AllBinaryMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) (jm_toString_1 (StringUtil.jm_getInstance_0) (slot-value this 'f_hashtable)))) this "getStartStateHashtable")
        (return-from jreturn (slot-value this 'f_hashtable)))))

    
(unless (fboundp 'jm_getCurrentStateHashtable_0) (defgeneric jm_getCurrentStateHashtable_0 (this)))
(defmethod jm_getCurrentStateHashtable_0 ((this AllBinaryMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this "getStateHashtable")
        (return-from jreturn (slot-value (StdUtil.jm_getInstance_0) 'f_NULL_TABLE)))))

    
(unless (fboundp 'jm_commandAction_2) (defgeneric jm_commandAction_2 (this p1 p2)))
(defmethod jm_commandAction_2 ((this AllBinaryMidlet) _command _displayable)
  (declare (ignorable this _command _displayable))
  (let ()
    (block jreturn nil)))



