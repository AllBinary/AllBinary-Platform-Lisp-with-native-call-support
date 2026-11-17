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
;;;; package org.allbinary.string

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CommonSeps (JObject)
  ((f_NEW_LINE :initform nil)
   (f_SEMICOLON :initform nil)
   (f_EQUALS :initform nil)
   (f_SPACE :initform nil)
   (f_COMMA :initform nil)
   (f_COLON :initform nil)
   (f_PERIOD :initform nil)
   (f_UNDERSCORE :initform nil)
   (f_COLON_SEP :initform nil)
   (f_COMMA_SEP :initform nil)
   (f_PARENTHESIS_OPEN :initform nil)
   (f_PARENTHESIS_CLOSE :initform nil)
   (f_BRACE_OPEN :initform nil)
   (f_BRACE_CLOSE :initform nil)
   (f_BRACKET_OPEN :initform nil)
   (f_BRACKET_CLOSE :initform nil)
   (f_DASH :initform nil)
   (f_PERCENT :initform nil)
   (f_AMPERSAND :initform nil)
   (f_FORWARD_SLASH :initform nil)
   (f_BACK_SLASH :initform nil)
   (f_QUESTION :initform nil)
   (f_QUOTE :initform nil)
   (f_QUOTE_END :initform nil)
   (f_COMMENT :initform nil)
   (f_INDENT :initform nil)))

(defvar CommonSeps.jcell_instance :jnone)
(defun CommonSeps.jstatic_instance ()
  (when (eq CommonSeps.jcell_instance :jnone) (setf CommonSeps.jcell_instance (CommonSeps.jnew_0)))
  CommonSeps.jcell_instance)

(defun CommonSeps.jnew_0 ()
  (let ((this (make-instance 'CommonSeps)))
    (setf (slot-value this 'f_NEW_LINE) (JR.unescape "\\n"))
    (setf (slot-value this 'f_SEMICOLON) ";")
    (setf (slot-value this 'f_EQUALS) "=")
    (setf (slot-value this 'f_SPACE) " ")
    (setf (slot-value this 'f_COMMA) ",")
    (setf (slot-value this 'f_COLON) ":")
    (setf (slot-value this 'f_PERIOD) ".")
    (setf (slot-value this 'f_UNDERSCORE) "_")
    (setf (slot-value this 'f_COLON_SEP) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_COLON)) (slot-value this 'f_SPACE))))
    (setf (slot-value this 'f_COMMA_SEP) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_COMMA)) (slot-value this 'f_SPACE))))
    (setf (slot-value this 'f_PARENTHESIS_OPEN) "(")
    (setf (slot-value this 'f_PARENTHESIS_CLOSE) ")")
    (setf (slot-value this 'f_BRACE_OPEN) "{")
    (setf (slot-value this 'f_BRACE_CLOSE) "}")
    (setf (slot-value this 'f_BRACKET_OPEN) "[")
    (setf (slot-value this 'f_BRACKET_CLOSE) "]")
    (setf (slot-value this 'f_DASH) "-")
    (setf (slot-value this 'f_PERCENT) "%")
    (setf (slot-value this 'f_AMPERSAND) "&")
    (setf (slot-value this 'f_FORWARD_SLASH) "/")
    (setf (slot-value this 'f_BACK_SLASH) (JR.unescape "\\\\"))
    (setf (slot-value this 'f_QUESTION) "?")
    (setf (slot-value this 'f_QUOTE) (JR.unescape "\\\""))
    (setf (slot-value this 'f_QUOTE_END) (JR.unescape "\\\","))
    (setf (slot-value this 'f_COMMENT) "//")
    (setf (slot-value this 'f_INDENT) "    ")
    this))

    
(defun CommonSeps.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CommonSeps.jstatic_instance)))))



