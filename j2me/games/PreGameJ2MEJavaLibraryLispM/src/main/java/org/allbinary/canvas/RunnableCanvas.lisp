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
;;;; package org.allbinary.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RunnableCanvas (MyCanvas)
  ((f_nullUtil :initform nil)
   (f_stdUtil :initform nil)
   (f_systemWrapper :initform nil)
   (f_tsUtil :initform nil)
   (f_thread :initform nil)
   (f_currentThread :initform nil)
   (f_running :initform nil)
   (f_loopTimeHelper :initform nil)
   (f_runnableCanvasRefreshHelper :initform nil)
   (f_commonLabels :initform nil)
   (f_threadObjectUtil :initform nil)
   (f_SET_RUNNING :initform nil)
   (f_IS_RUNNING :initform nil)
   (f_THREAD :initform nil)
   (f_NOT_EQUAL :initform nil)
   (f_PAUSE_SLEEP :initform nil)
   (f_START_PAUSE :initform nil)
   (f_END_PAUSE :initform nil)
   (f_PROCESS_LOOP_SLEEP :initform nil)
   (f_pauseWait :initform 0)
   (f_notified :initform nil)))

    
(defun RunnableCanvas.jnew_3 (_commandListener _childNameList _hasParam)
  (declare (ignorable _commandListener _childNameList _hasParam))
  (let ((this (make-instance 'RunnableCanvas)))
    (setf (slot-value this 'f_nullUtil) (NullUtil.jm_getInstance_0))
    (setf (slot-value this 'f_stdUtil) (StdUtil.jm_getInstance_0))
    (setf (slot-value this 'f_systemWrapper) (ABSystemWrapper.jm_getInstance_0))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    (setf (slot-value this 'f_thread) (NullThread.jstatic_NULL_THREAD))
    (setf (slot-value this 'f_currentThread) (NullThread.jstatic_NULL_THREAD))
    
    (setf (slot-value this 'f_loopTimeHelper) (TimeDelayHelper.jnew_1 (slot-value (NullWaitGameRunnable.jm_getInstance_0) 'f_WAIT)))
    (setf (slot-value this 'f_runnableCanvasRefreshHelper) (Processor.jm_getInstance_0))
    (setf (slot-value this 'f_commonLabels) (CommonLabels.jm_getInstance_0))
    (setf (slot-value this 'f_threadObjectUtil) (ThreadObjectUtil.jm_getInstance_0))
    (setf (slot-value this 'f_SET_RUNNING) "setRunning")
    (setf (slot-value this 'f_IS_RUNNING) "isRunning")
    (setf (slot-value this 'f_THREAD) "Thread: ")
    (setf (slot-value this 'f_NOT_EQUAL) " != ")
    (setf (slot-value this 'f_PAUSE_SLEEP) "pause sleep")
    (setf (slot-value this 'f_START_PAUSE) "start pause - game thread sleep at: ")
    (setf (slot-value this 'f_END_PAUSE) "end pause - game thread sleep at: ")
    (setf (slot-value this 'f_PROCESS_LOOP_SLEEP) "processLoopSleep")
    (setf (slot-value this 'f_pauseWait) 0)
    (setf (slot-value this 'f_notified) nil)
  (let ()
    (block jreturn
        nil
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "RunnableCanvas delay: ") (slot-value (slot-value this 'f_loopTimeHelper) 'f_delay))) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (setf (slot-value this 'f_runnableCanvasRefreshHelper) (RunnableCanvasRefreshHelper.jnew_1 this))
        (if (not (null _commandListener))
            (progn
            (jm_initCommands_1 this _commandListener))
            (if _hasParam
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "commandListener was null" this "initCommands"))))))
    this))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this RunnableCanvas) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED) this "initCommands"))))

    
(unless (fboundp 'jm_isMainCanvas_0) (defgeneric jm_isMainCanvas_0 (this)))
(defmethod jm_isMainCanvas_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (not (null (jm_getCustomCommandListener_0 this)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_setThread_1) (defgeneric jm_setThread_1 (this p1)))
(defmethod jm_setThread_1 ((this RunnableCanvas) _thread)
  (declare (ignorable this _thread))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_thread) _thread))))

    
(unless (fboundp 'jm_setRunning_1) (defgeneric jm_setRunning_1 (this p1)))
(defmethod jm_setRunning_1 ((this RunnableCanvas) _running)
  (declare (ignorable this _running))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_running) _running)
        (if (not (slot-value this 'f_running))
            (progn
            (setf (slot-value this 'f_thread) (NullThread.jstatic_NULL_THREAD))
            (progn
                (jm_notifyObject_1 (slot-value this 'f_threadObjectUtil) this))))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendboolean_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_IS_RUNNING)) (slot-value this 'f_running))) this (slot-value this 'f_SET_RUNNING)))))

    
(unless (fboundp 'jm_isRunning_0) (defgeneric jm_isRunning_0 (this)))
(defmethod jm_isRunning_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (if (eq (slot-value this 'f_thread) (slot-value this 'f_currentThread))
            (progn
            (return-from jreturn (slot-value this 'f_running)))
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer (slot-value this 'f_THREAD))
            (if (not (null (slot-value this 'f_thread)))
                (progn
                (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_thread)))))
            (jm_append_1 _stringBuffer (slot-value this 'f_NOT_EQUAL))
            (if (not (null (slot-value this 'f_currentThread)))
                (progn
                (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) (slot-value this 'f_currentThread)))))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value this 'f_IS_RUNNING))
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_getLoopTimeHelperP_0) (defgeneric jm_getLoopTimeHelperP_0 (this)))
(defmethod jm_getLoopTimeHelperP_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_loopTimeHelper)))))

    
(unless (fboundp 'jm_setWait_1) (defgeneric jm_setWait_1 (this p1)))
(defmethod jm_setWait_1 ((this RunnableCanvas) _wait)
  (declare (ignorable this _wait))
  (let ()
    (block jreturn
        (setf (slot-value (slot-value this 'f_loopTimeHelper) 'f_delay) _wait)
        (setf (slot-value this 'f_pauseWait) (JR.i64 (* _wait 3)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "setWait - delay: ") (slot-value (slot-value this 'f_loopTimeHelper) 'f_delay))) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR)))))

    
(unless (fboundp 'jm_getWait_0) (defgeneric jm_getWait_0 (this)))
(defmethod jm_getWait_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (slot-value this 'f_loopTimeHelper) 'f_delay)))))

    
(unless (fboundp 'jm_setCurrentThread_0) (defgeneric jm_setCurrentThread_0 (this)))
(defmethod jm_setCurrentThread_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentThread) (Thread.jm_currentThread_0)))))

    
(unless (fboundp 'jm_setCurrentThreadFake_0) (defgeneric jm_setCurrentThreadFake_0 (this)))
(defmethod jm_setCurrentThreadFake_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentThread) (slot-value this 'f_thread)))))

    
(unless (fboundp 'jm_showNotify_0) (defgeneric jm_showNotify_0 (this)))
(defmethod jm_showNotify_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_stopWaiting_0 this))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "showNotify" _e))))))

    
(unless (fboundp 'jm_stopWaiting_0) (defgeneric jm_stopWaiting_0 (this)))
(defmethod jm_stopWaiting_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_notified) t)
        (progn
            (jm_notifyObject_1 (slot-value this 'f_threadObjectUtil) this))
        (jm_repaint_0 this))))

    
(unless (fboundp 'jm_waitOnNotify_1) (defgeneric jm_waitOnNotify_1 (this p1)))
(defmethod jm_waitOnNotify_1 ((this RunnableCanvas) _wait)
  (declare (ignorable this _wait))
  (let ()
    (block jreturn
        (if (not (slot-value this 'f_notified))
            (progn
            (if (> _wait 0)
                (progn
                (jm_waitObjectFor_2 (slot-value this 'f_threadObjectUtil) this _wait))
                (progn
                (jm_waitObject_1 (slot-value this 'f_threadObjectUtil) this))))))))

    
(unless (fboundp 'jm_processSleep_0) (defgeneric jm_processSleep_0 (this)))
(defmethod jm_processSleep_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (Thread.jm_sleep_1 (slot-value this 'f_pauseWait)))))

    
(unless (fboundp 'jm_isPausable_0) (defgeneric jm_isPausable_0 (this)))
(defmethod jm_isPausable_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_processGameSleep_1) (defgeneric jm_processGameSleep_1 (this p1)))
(defmethod jm_processGameSleep_1 ((this RunnableCanvas) _sleep)
  (declare (ignorable this _sleep))
  (let ()
    (block jreturn
        (Thread.jm_sleep_1 _sleep))))

    
(unless (fboundp 'jm_processLoopSleep_0) (defgeneric jm_processLoopSleep_0 (this)))
(defmethod jm_processLoopSleep_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let (_stringMaker _currentTimeMillis _elapsedTime _wait)
  (declare (ignorable _stringMaker _currentTimeMillis _elapsedTime _wait))
    (block jreturn
        (jm_process_0 (slot-value this 'f_runnableCanvasRefreshHelper))
        (if (jm_isPaused_0 this)
            (progn
            (setf _stringMaker (StringMaker.jnew_0))
            (if (and (jm_isRunning_0 this) (not (jm_isSingleThread_0 this)))
                (progn
                (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                (setf _currentTimeMillis (jm_currentTimeMillis_0 (slot-value this 'f_systemWrapper)))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendlong_1 (jm_append_1 (jm_appendlong_1 (jm_append_1 _stringMaker (slot-value this 'f_START_PAUSE)) _currentTimeMillis) (slot-value this 'f_PAUSE_SLEEP)) (slot-value this 'f_pauseWait))) this (slot-value this 'f_PROCESS_LOOP_SLEEP))
                (block jbreak (loop while (and (and (jm_isPaused_0 this) (jm_isRunning_0 this)) (not (jm_isSingleThread_0 this))) do
                        (block jcontinue
                    (jm_processSleep_0 this)
                    (if (not (jm_isPausable_0 this))
                        (progn
                        (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendlong_1 (jm_append_1 _stringMaker (slot-value this 'f_END_PAUSE)) _currentTimeMillis)) this (slot-value this 'f_PROCESS_LOOP_SLEEP))
                        (return-from jreturn))))))))))
        (setf _elapsedTime (jm_getElapsedTNT_0 (slot-value this 'f_loopTimeHelper)))
        (setf _wait (slot-value (slot-value this 'f_loopTimeHelper) 'f_delay))
        (if (> _elapsedTime _wait)
            (progn
            (setf _elapsedTime _wait))
            (progn
            (jm_processGameSleep_1 this (JR.i64 (- _wait _elapsedTime))))))))

    
(unless (fboundp 'jm_isSingleThread_0) (defgeneric jm_isSingleThread_0 (this)))
(defmethod jm_isSingleThread_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setCurrentThread_0 this))))

    
(unless (fboundp 'jm_end2_0) (defgeneric jm_end2_0 (this)))
(defmethod jm_end2_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this RunnableCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))



