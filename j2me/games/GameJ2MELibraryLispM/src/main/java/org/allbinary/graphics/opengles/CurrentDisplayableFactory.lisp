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
;;;; package org.allbinary.graphics.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CurrentDisplayableFactory (JObject)
  ((f_commonStrings :initform nil)
   (f_canvasStrings :initform nil)
   (f_stringUtil :initform nil)
   (f_SET_DISPLAYABLE :initform nil)
   (f_SET_RUNNABLE :initform nil)
   (f_CLEAR_RUNNABLE :initform nil)
   (f_SET_USED_RUNNABLE :initform nil)
   (f_RUNNABLE :initform nil)
   (f_RUNNABLE_WAS_ALREADY_IN_USE :initform nil)
   (f_DEFAULT_CHILD_NAME_LIST :initform nil)
   (f_displayable :initform nil)
   (f_openGlReadydisplayable :initform nil)
   (f_runnable :initform nil)
   (f_usedRunnable :initform nil)))

(defvar CurrentDisplayableFactory.jcell_instance :jnone)
(defun CurrentDisplayableFactory.jstatic_instance ()
  (when (eq CurrentDisplayableFactory.jcell_instance :jnone) (setf CurrentDisplayableFactory.jcell_instance (CurrentDisplayableFactory.jnew_0)))
  CurrentDisplayableFactory.jcell_instance)
(defun (setf CurrentDisplayableFactory.jstatic_instance) (value) (setf CurrentDisplayableFactory.jcell_instance value))

    
(defun CurrentDisplayableFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CurrentDisplayableFactory.jstatic_instance)))))

    
(defun CurrentDisplayableFactory.jnew_0 ()
  (let ((this (make-instance 'CurrentDisplayableFactory)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_canvasStrings) (CanvasStrings.jm_getInstance_0))
    (setf (slot-value this 'f_stringUtil) (StringUtil.jm_getInstance_0))
    (setf (slot-value this 'f_SET_DISPLAYABLE) "setDisplayable")
    (setf (slot-value this 'f_SET_RUNNABLE) "setRunnable")
    (setf (slot-value this 'f_CLEAR_RUNNABLE) "clearRunnable")
    (setf (slot-value this 'f_SET_USED_RUNNABLE) "setUsedRunnable")
    (setf (slot-value this 'f_RUNNABLE) "Runnable: ")
    (setf (slot-value this 'f_RUNNABLE_WAS_ALREADY_IN_USE) "Runnable was already in use: ")
    (setf (slot-value this 'f_DEFAULT_CHILD_NAME_LIST) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_displayable) (NullDisplayable.jm_getInstance_0))
    (setf (slot-value this 'f_openGlReadydisplayable) (NullDisplayable.jm_getInstance_0))
    (setf (slot-value this 'f_runnable) (NullWaitGameRunnable.jm_getInstance_0))
    (setf (slot-value this 'f_usedRunnable) (NullWaitGameRunnable.jm_getInstance_0))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_DEFAULT_CHILD_NAME_LIST) (slot-value (slot-value this 'f_canvasStrings) 'f_ABOUT))
        (jm_add_1 (slot-value this 'f_DEFAULT_CHILD_NAME_LIST) (slot-value (slot-value this 'f_canvasStrings) 'f_OPTIONS))
        (jm_add_1 (slot-value this 'f_DEFAULT_CHILD_NAME_LIST) (GameInputMappingCanvas.jstatic_NAME))
        (jm_add_1 (slot-value this 'f_DEFAULT_CHILD_NAME_LIST) (GameInputMappingInstructionsCanvas.jstatic_NAME))
        (jm_add_1 (slot-value this 'f_DEFAULT_CHILD_NAME_LIST) (HighScoresCanvas.jstatic_NAME))))
    this))

    
(unless (fboundp 'jm_setMyCanvas_1) (defgeneric jm_setMyCanvas_1 (this p1)))
(defmethod jm_setMyCanvas_1 ((this CurrentDisplayableFactory) _displayable)
  (declare (ignorable this _displayable))
  (let ()
    (block jreturn
        (if (typep (slot-value this 'f_displayable) 'MyCanvas)
            (progn
            (if (jm_hasChild_1 _displayable (slot-value this 'f_displayable))
                (progn
                (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Child Displayable is already set for: ") (jm_toString_1 (slot-value this 'f_stringUtil) _displayable))) this (slot-value this 'f_SET_DISPLAYABLE))
                (return-from jreturn)))))
        (jm_setDisplayable_1 this _displayable))))

    
(unless (fboundp 'jm_setDisplayable_1) (defgeneric jm_setDisplayable_1 (this p1)))
(defmethod jm_setDisplayable_1 ((this CurrentDisplayableFactory) _displayable)
  (declare (ignorable this _displayable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_displayable) _displayable)
        (jm_setOpenGlReadydisplayable_1 this _displayable))))

    
(unless (fboundp 'jm_setOpenGlReadydisplayable_1) (defgeneric jm_setOpenGlReadydisplayable_1 (this p1)))
(defmethod jm_setOpenGlReadydisplayable_1 ((this CurrentDisplayableFactory) _openGlReadydisplayable)
  (declare (ignorable this _openGlReadydisplayable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_openGlReadydisplayable) _openGlReadydisplayable)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_getOpenGlReadydisplayable_0) (defgeneric jm_getOpenGlReadydisplayable_0 (this)))
(defmethod jm_getOpenGlReadydisplayable_0 ((this CurrentDisplayableFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_openGlReadydisplayable)))))

    
(unless (fboundp 'jm_setRunnable_1) (defgeneric jm_setRunnable_1 (this p1)))
(defmethod jm_setRunnable_1 ((this CurrentDisplayableFactory) _runnable)
  (declare (ignorable this _runnable))
  (let ()
    (block jreturn
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_RUNNABLE)) (jm_toString_1 (slot-value this 'f_stringUtil) _runnable))) this (slot-value this 'f_SET_RUNNABLE))
        (setf (slot-value this 'f_runnable) _runnable)
        (if (not (eq (slot-value this 'f_usedRunnable) (slot-value this 'f_runnable)))
            (progn
            (jm_update_0 this))
            (progn
            (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_RUNNABLE_WAS_ALREADY_IN_USE)) (jm_toString_1 (slot-value this 'f_stringUtil) _runnable))) this (slot-value this 'f_SET_RUNNABLE)))))))

    
(unless (fboundp 'jm_clearRunnable_0) (defgeneric jm_clearRunnable_0 (this)))
(defmethod jm_clearRunnable_0 ((this CurrentDisplayableFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_RUNNABLE)) (jm_toString_1 (slot-value this 'f_stringUtil) (NullRunnable.jm_getInstance_0)))) this (slot-value this 'f_CLEAR_RUNNABLE))
        (jm_setUsedRunnable_1 this (NullWaitGameRunnable.jm_getInstance_0)))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this CurrentDisplayableFactory))
  (declare (ignorable this))
  (let (_commonSeps _features _stringMaker)
  (declare (ignorable _commonSeps _features _stringMaker))
    (block jreturn
        (progn
            (setf _commonSeps (CommonSeps.jm_getInstance_0))
            (setf _features (Features.jm_getInstance_0))
            (setf _stringMaker (StringMaker.jnew_0))
            (jm_append_1 _stringMaker (jm_toString_1 (slot-value this 'f_stringUtil) (slot-value this 'f_openGlReadydisplayable)))
            (if (and (SWTUtil.jstatic_isSWT) (not (jm_isDefault_1 _features (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL))))
                (progn
                (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 _stringMaker (slot-value _commonSeps 'f_SPACE)) (SWTUtil.jstatic_SWT)) (slot-value _commonSeps 'f_SPACE)) (slot-value this 'f_RUNNABLE)) (jm_toString_1 (slot-value this 'f_stringUtil) (NullRunnable.jm_getInstance_0)))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
                (jm_setUsedRunnable_1 this (NullWaitGameRunnable.jm_getInstance_0)))
                (if (J2MEUtil.jm_isHTML_0)
                (progn
                (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 _stringMaker (slot-value _commonSeps 'f_SPACE)) (slot-value (GraphicsStrings.jm_getInstance_0) 'f_HTML)) (slot-value _commonSeps 'f_SPACE)) (slot-value this 'f_RUNNABLE)) (jm_toString_1 (slot-value this 'f_stringUtil) (slot-value this 'f_runnable)))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
                (jm_setUsedRunnable_1 this (slot-value this 'f_runnable)))
                (if (or (or (typep (slot-value this 'f_openGlReadydisplayable) 'DemoCanvas) (typep (slot-value this 'f_openGlReadydisplayable) 'AllBinaryGameCanvas)) (jm_isDefault_1 _features (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL)))
                (progn
                (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 _stringMaker (slot-value _commonSeps 'f_SPACE)) (JR.toString (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL))) (slot-value _commonSeps 'f_SPACE)) (slot-value this 'f_RUNNABLE)) (jm_toString_1 (slot-value this 'f_stringUtil) (slot-value this 'f_runnable)))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
                (jm_setUsedRunnable_1 this (slot-value this 'f_runnable)))
                (progn
                (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker (slot-value this 'f_RUNNABLE)) (jm_toString_1 (slot-value this 'f_stringUtil) (NullRunnable.jm_getInstance_0)))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
                (jm_setUsedRunnable_1 this (NullWaitGameRunnable.jm_getInstance_0))))))))))

    
(unless (fboundp 'jm_getDisplayable_0) (defgeneric jm_getDisplayable_0 (this)))
(defmethod jm_getDisplayable_0 ((this CurrentDisplayableFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_displayable)))))

    
(unless (fboundp 'jm_getUsedRunnable_0) (defgeneric jm_getUsedRunnable_0 (this)))
(defmethod jm_getUsedRunnable_0 ((this CurrentDisplayableFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_usedRunnable)))))

    
(unless (fboundp 'jm_setUsedRunnable_1) (defgeneric jm_setUsedRunnable_1 (this p1)))
(defmethod jm_setUsedRunnable_1 ((this CurrentDisplayableFactory) _usedRunnable)
  (declare (ignorable this _usedRunnable))
  (let ()
    (block jreturn
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_RUNNABLE)) (jm_toString_1 (slot-value this 'f_stringUtil) (slot-value this 'f_runnable))) (slot-value (CommonSeps.jm_getInstance_0) 'f_COLON_SEP)) (jm_toString_1 (slot-value this 'f_stringUtil) _usedRunnable))) this (slot-value this 'f_SET_USED_RUNNABLE))
        (setf (slot-value this 'f_usedRunnable) _usedRunnable))))



