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
;;;; package org.allbinary.logic.io

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BufferedWriterUtil (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_commonLabels :initform nil)
   (f_REMOVING_OLD :initform nil)))

(defvar BufferedWriterUtil.jcell_instance :jnone)
(defun BufferedWriterUtil.jstatic_instance ()
  (when (eq BufferedWriterUtil.jcell_instance :jnone) (setf BufferedWriterUtil.jcell_instance (BufferedWriterUtil.jnew_0)))
  BufferedWriterUtil.jcell_instance)
(defun (setf BufferedWriterUtil.jstatic_instance) (value) (setf BufferedWriterUtil.jcell_instance value))

(defun BufferedWriterUtil.jnew_0 ()
  (let ((this (make-instance 'BufferedWriterUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_commonLabels) (CommonLabels.jm_getInstance_0))
    (setf (slot-value this 'f_REMOVING_OLD) "Remove old for overwriting: ")
    this))

    
(defun BufferedWriterUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BufferedWriterUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_overwrite_2) (defgeneric jm_overwrite_2 (this p1 p2)))
(defmethod jm_overwrite_2 ((this BufferedWriterUtil) (_path string) (_data string))
  (declare (ignorable this _path _data))
  (let (_abFile _name _abFileDirectory _stringBuilder _result)
  (declare (ignorable _abFile _name _abFileDirectory _stringBuilder _result))
    (block jreturn
        (setf _abFile (AbFile.jm_createAbFile_1 _path))
        (if (jm_exists_0 _abFile)
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (JR.concat (slot-value this 'f_REMOVING_OLD) _path) this (slot-value (slot-value this 'f_commonStrings) 'f_CREATE))
            (jm_delete_0 _abFile))
            (progn
            (setf _name (jm_removeNameFromPath_1 (AbPathData.jm_getInstance_0) _path))
            (setf _abFileDirectory (AbFile.jm_createAbFile_1 _name))
            (if (jm_exists_0 _abFileDirectory)
                (progn
                nil)
                (progn
                (setf _stringBuilder (StringMaker.jnew_0))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 _stringBuilder (slot-value (slot-value this 'f_commonStrings) 'f_CREATE)) (slot-value (slot-value this 'f_commonLabels) 'f_COLON_SEP)) _name)) this (slot-value (slot-value this 'f_commonStrings) 'f_CREATE))
                (setf _result (jm_mkdirs_0 _abFileDirectory))
                (jm_delete_2 _stringBuilder 0 (jm_length_0 _stringBuilder))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendboolean_1 (jm_append_1 _stringBuilder (slot-value (slot-value this 'f_commonLabels) 'f_RESULT_)) _result)) this (slot-value (slot-value this 'f_commonStrings) 'f_CREATE))))))
        (jm_write_2 this _abFile _data))))

    
(unless (fboundp 'jm_overwrite_2) (defgeneric jm_overwrite_2 (this p1 p2)))
(defmethod jm_overwrite_2 ((this BufferedWriterUtil) (_abFile t) (_data string))
  (declare (ignorable this _abFile _data))
  (let (_name _abFileDirectory _stringBuilder _result)
  (declare (ignorable _name _abFileDirectory _stringBuilder _result))
    (block jreturn
        (if (jm_exists_0 _abFile)
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (JR.concat (slot-value this 'f_REMOVING_OLD) (JR.str (jm_getPath_0 _abFile))) this (slot-value (slot-value this 'f_commonStrings) 'f_CREATE))
            (jm_delete_0 _abFile))
            (progn
            (setf _name (jm_removeNameFromPath_1 (AbPathData.jm_getInstance_0) (jm_getAbsolutePath_0 _abFile)))
            (setf _abFileDirectory (AbFile.jm_createAbFile_1 _name))
            (if (jm_exists_0 _abFileDirectory)
                (progn
                nil)
                (progn
                (setf _stringBuilder (StringMaker.jnew_0))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 _stringBuilder (slot-value (slot-value this 'f_commonStrings) 'f_CREATE)) (slot-value (slot-value this 'f_commonLabels) 'f_COLON_SEP)) _name)) this (slot-value (slot-value this 'f_commonStrings) 'f_CREATE))
                (setf _result (jm_mkdirs_0 _abFileDirectory))
                (jm_delete_2 _stringBuilder 0 (jm_length_0 _stringBuilder))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendboolean_1 (jm_append_1 _stringBuilder (slot-value (slot-value this 'f_commonLabels) 'f_RESULT_)) _result)) this (slot-value (slot-value this 'f_commonStrings) 'f_CREATE))))))
        (jm_write_2 this _abFile _data))))

    
(unless (fboundp 'jm_write_2) (defgeneric jm_write_2 (this p1 p2)))
(defmethod jm_write_2 ((this BufferedWriterUtil) _abFile _data)
  (declare (ignorable this _abFile _data))
  (let (_fileOut)
  (declare (ignorable _fileOut))
    (block jreturn
        (setf _fileOut (BufferedWriter.jnew_1 (FileWriter.jnew_1 (AbFileNativeUtil.jm_get_1 _abFile))))
        (jm_write_3 _fileOut _data 0 (length _data))
        (jm_newLine_0 _fileOut)
        (jm_flush_0 _fileOut))))



