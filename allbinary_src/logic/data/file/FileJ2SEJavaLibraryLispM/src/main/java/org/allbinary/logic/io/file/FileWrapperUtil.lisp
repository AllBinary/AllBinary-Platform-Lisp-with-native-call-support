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
;;;; package org.allbinary.logic.io.file

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FileWrapperUtil (JObject)
  ())

(defun FileWrapperUtil.jnew_0 ()
  (let ((this (make-instance 'FileWrapperUtil)))
    this))

    
(defun FileWrapperUtil.jm_wrapFiles_1 (_files)
  (declare (ignorable _files))
  (let (_abFileArray _index)
  (declare (ignorable _abFileArray _index))
    (block jreturn
        (handler-case (progn
            (setf _abFileArray (JR.newArray nil (length _files)))
            (progn
                (setf _index (JR.i32 (- (length _files) 1)))
                (block jbreak (loop while (>= _index 0) do
                    (block jcontinue
                (setf (aref _abFileArray _index) (AbFile.jnew_1 (aref _files _index))))
                    (setf _index (JR.i32 (- _index 1))))))
            (return-from jreturn _abFileArray))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putSE_4 "Exception Wrapping Files" "FileWrapperUtil" "wrapFiles" _e)
            (return-from jreturn (JR.newArray nil 0)))))))

    
(defun FileWrapperUtil.jm_wrapFile_1 (_file)
  (declare (ignorable _file))
  (let ()
    (block jreturn
        (handler-case (progn
            (return-from jreturn (AbFile.jnew_1 _file)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putSE_4 "Exception Wrapping File" "FileWrapperUtil" "wrapFile" _e)
            (return-from jreturn (AbFile.jstatic_NULL_FILE)))))))



