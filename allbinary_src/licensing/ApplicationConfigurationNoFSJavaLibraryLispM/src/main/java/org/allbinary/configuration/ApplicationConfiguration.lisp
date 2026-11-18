;;;; Generated Code Do Not Modify
;;;; package org.allbinary.configuration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ApplicationConfiguration (JObject)
  ((f_logUtil :initform nil)
   (f_fullscreen :initform nil)
   (f_showTitleBar :initform nil)
   (f_progressBarView :initform nil)))

(defvar ApplicationConfiguration.jcell_instance :jnone)
(defun ApplicationConfiguration.jstatic_instance ()
  (when (eq ApplicationConfiguration.jcell_instance :jnone) (setf ApplicationConfiguration.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  ApplicationConfiguration.jcell_instance)
(defun (setf ApplicationConfiguration.jstatic_instance) (value) (setf ApplicationConfiguration.jcell_instance value))

    
(defun ApplicationConfiguration.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (ApplicationConfiguration.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (ApplicationConfiguration.jstatic_instance) (ApplicationConfiguration.jnew_0))))
        (return-from jreturn (ApplicationConfiguration.jstatic_instance)))))

    
(defun ApplicationConfiguration.jnew_0 ()
  (let ((this (make-instance 'ApplicationConfiguration)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_fullscreen) t)
    (setf (slot-value this 'f_showTitleBar) nil)
    (setf (slot-value this 'f_progressBarView) nil)
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_read_0 this))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_CONSTRUCTOR) _e)))))
    this))

    
(unless (fboundp 'jm_read_0) (defgeneric jm_read_0 (this)))
(defmethod jm_read_0 ((this ApplicationConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setFullscreen_1 this t)
        (jm_setProgressBarView_1 this nil)
        (jm_setShowTitleBar_1 this nil)
        (jm_putF_3 (slot-value this 'f_logUtil) (JR.concat "Read Configuration: " (jm_toString_0 this)) this "read"))))

    
(unless (fboundp 'jm_write_0) (defgeneric jm_write_0 (this)))
(defmethod jm_write_0 ((this ApplicationConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_update_1) (defgeneric jm_update_1 (this p1)))
(defmethod jm_update_1 ((this ApplicationConfiguration) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let (_features)
  (declare (ignorable _features))
    (block jreturn
        (if (eq _gameFeature (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_FULL_SCREEN))
            (progn
            (setf _features (Features.jm_getInstance_0))
            (if (jm_isFeature_1 _features _gameFeature)
                (progn
                (if (not (jm_isFullscreen_0 this))
                    (progn
                    (jm_setFullscreen_1 this t)
                    (jm_write_0 this))))
                (progn
                (if (jm_isFullscreen_0 this)
                    (progn
                    (jm_setFullscreen_1 this nil)
                    (jm_write_0 this))))))))))

    
(unless (fboundp 'jm_setFullscreen_1) (defgeneric jm_setFullscreen_1 (this p1)))
(defmethod jm_setFullscreen_1 ((this ApplicationConfiguration) _fullscreen)
  (declare (ignorable this _fullscreen))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_fullscreen) _fullscreen))))

    
(unless (fboundp 'jm_isFullscreen_0) (defgeneric jm_isFullscreen_0 (this)))
(defmethod jm_isFullscreen_0 ((this ApplicationConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_fullscreen)))))

    
(unless (fboundp 'jm_setShowTitleBar_1) (defgeneric jm_setShowTitleBar_1 (this p1)))
(defmethod jm_setShowTitleBar_1 ((this ApplicationConfiguration) _showTitleBar)
  (declare (ignorable this _showTitleBar))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_showTitleBar) _showTitleBar))))

    
(unless (fboundp 'jm_isShowTitleBar_0) (defgeneric jm_isShowTitleBar_0 (this)))
(defmethod jm_isShowTitleBar_0 ((this ApplicationConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_showTitleBar)))))

    
(unless (fboundp 'jm_setProgressBarView_1) (defgeneric jm_setProgressBarView_1 (this p1)))
(defmethod jm_setProgressBarView_1 ((this ApplicationConfiguration) _progressBarView)
  (declare (ignorable this _progressBarView))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_progressBarView) _progressBarView))))

    
(unless (fboundp 'jm_isProgressBarView_0) (defgeneric jm_isProgressBarView_0 (this)))
(defmethod jm_isProgressBarView_0 ((this ApplicationConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_progressBarView)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this ApplicationConfiguration))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "isFullscreen: ")
        (jm_appendboolean_1 _stringBuffer (jm_isFullscreen_0 this))
        (jm_append_1 _stringBuffer " isProgressBarView: ")
        (jm_appendboolean_1 _stringBuffer (jm_isProgressBarView_0 this))
        (jm_append_1 _stringBuffer " isShowTitleBar: ")
        (jm_appendboolean_1 _stringBuffer (jm_isShowTitleBar_0 this))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



