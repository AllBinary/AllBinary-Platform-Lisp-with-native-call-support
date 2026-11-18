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
;;;; package org.allbinary.logic.string.tokens

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Tokenizer (JObject)
  ((f_sep :initform nil)
   (f_endSep :initform nil)))

    
(defun Tokenizer.jnew_1 (_sep)
  (declare (ignorable _sep))
  (let ((this (make-instance 'Tokenizer)))
    
    (setf (slot-value this 'f_endSep) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
  (let ()
    (block jreturn
        (if (eq (jm_compareTo_2 (TsUtil.jm_getInstance_0) _sep (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)) 0)
            (progn
            (error (JR.newException "Exception" "Sep provided is not valid"))))
        (setf (slot-value this 'f_sep) _sep)))
    this))

    
(unless (fboundp 'jm_setSep_1) (defgeneric jm_setSep_1 (this p1)))
(defmethod jm_setSep_1 ((this Tokenizer) _sep)
  (declare (ignorable this _sep))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_sep) _sep))))

    
(unless (fboundp 'jm_setEndSep_1) (defgeneric jm_setEndSep_1 (this p1)))
(defmethod jm_setEndSep_1 ((this Tokenizer) _endSep)
  (declare (ignorable this _endSep))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_endSep) _endSep))))

    
(unless (fboundp 'jm_getInsideSep_1) (defgeneric jm_getInsideSep_1 (this p1)))
(defmethod jm_getInsideSep_1 ((this Tokenizer) _string)
  (declare (ignorable this _string))
  (let (_tokenList _index _size _end)
  (declare (ignorable _tokenList _index _size _end))
    (block jreturn
        (setf _tokenList (BasicArrayListD.jnew_0))
        (setf _index 0)
        (setf _size (length _string))
        (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _index (JR.indexOf _string (slot-value this 'f_sep) _index))
            (if (/= _index (JR.i32 (- 1)))
                (progn
                (setf _end (JR.indexOf _string (slot-value this 'f_endSep) (JR.i32 (+ _index (length (slot-value this 'f_sep))))))
                (if (/= _end (JR.i32 (- 1)))
                    (progn
                    (jm_add_1 _tokenList (JR.substring _string (JR.i32 (+ _index (length (slot-value this 'f_sep)))) (JR.i32 (- _end (JR.i32 (- (length (slot-value this 'f_endSep)) 1))))))
                    (setf _index (JR.i32 (+ _end (length (slot-value this 'f_endSep))))))
                    (progn
                    nil)))
                (progn
                (return-from jbreak))))))
        (return-from jreturn _tokenList))))

    
(unless (fboundp 'jm_getTokensFromString_2) (defgeneric jm_getTokensFromString_2 (this p1 p2)))
(defmethod jm_getTokensFromString_2 ((this Tokenizer) _string _tokenVector)
  (declare (ignorable this _string _tokenVector))
  (let (_index _end)
  (declare (ignorable _index _end))
    (block jreturn
        (setf _index 0)
        (setf _end 0)
        (block jbreak (loop while (< _index (length _string)) do
                (block jcontinue
            (setf _end (JR.indexOf _string (slot-value this 'f_sep) _index))
            (if (/= _end (JR.i32 (- 1)))
                (progn
                (jm_add_1 _tokenVector (JR.substring _string _index _end))
                (setf _index (JR.i32 (+ _end (length (slot-value this 'f_sep))))))
                (progn
                (jm_add_1 _tokenVector (JR.substring _string _index (length _string)))
                (return-from jbreak))))))
        (return-from jreturn _tokenVector))))

    
(unless (fboundp 'jm_getTokens_1) (defgeneric jm_getTokens_1 (this p1)))
(defmethod jm_getTokens_1 ((this Tokenizer) _stringVector)
  (declare (ignorable this _stringVector))
  (let (_tokenHashtable _string _end _size _index)
  (declare (ignorable _tokenHashtable _string _end _size _index))
    (block jreturn
        (setf _tokenHashtable (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
        (setf _string (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
        (setf _end 0)
        (setf _size (jm_size_0 _stringVector))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _string (aref (slot-value _stringVector 'f_objectArray) _index))
            (setf _end (JR.indexOf _string (slot-value this 'f_sep)))
            (if (>= _end 0)
                (progn
                (jm_put_2 _tokenHashtable (JR.substring _string 0 _end) (JR.substring _string (JR.i32 (+ _end 1)) (length _string))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _tokenHashtable))))



