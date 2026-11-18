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
;;;; package org.allbinary.graphics.draw

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DrawStringUtil (JObject)
  ((f_EMPTY_STRING :initform nil)
   (f_anchor :initform 0)))

(defvar DrawStringUtil.jcell_instance :jnone)
(defun DrawStringUtil.jstatic_instance ()
  (when (eq DrawStringUtil.jcell_instance :jnone) (setf DrawStringUtil.jcell_instance (DrawStringUtil.jnew_0)))
  DrawStringUtil.jcell_instance)
(defun (setf DrawStringUtil.jstatic_instance) (value) (setf DrawStringUtil.jcell_instance value))

(defun DrawStringUtil.jnew_0 ()
  (let ((this (make-instance 'DrawStringUtil)))
    (setf (slot-value this 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
    this))

    
(defun DrawStringUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DrawStringUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_drawCenterString_6) (defgeneric jm_drawCenterString_6 (this p1 p2 p3 p4 p5 p6)))
(defmethod jm_drawCenterString_6 ((this DrawStringUtil) _graphics _string _offset _length _x _y)
  (declare (ignorable this _graphics _string _offset _length _x _y))
  (let (_width)
  (declare (ignorable _width))
    (block jreturn
        (setf _width (ash (jm_substringWidth_3 (jm_getFont_0 _graphics) _string _offset _length) (- (logand 1 31))))
        (handler-case (progn
            (jm_drawSubstring_6 _graphics _string _offset _length (JR.i32 (- _x _width)) _y (slot-value this 'f_anchor)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_put_3 (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Exception: stringLength: ") (length _string)) " offset: ") _offset) " currentLength: ") _length)) this "drawCenterString"))))))

    
(unless (fboundp 'jm_drawCenterStrings_6) (defgeneric jm_drawCenterStrings_6 (this p1 p2 p3 p4 p5 p6)))
(defmethod jm_drawCenterStrings_6 ((this DrawStringUtil) _graphics _stringArray _maxWidth _charHeight _x _y)
  (declare (ignorable this _graphics _stringArray _maxWidth _charHeight _x _y))
  (let (_extraLines _string _width _minTotalLines _linePortion _offset _currentLength _size _index)
  (declare (ignorable _extraLines _string _width _minTotalLines _linePortion _offset _currentLength _size _index))
    (block jreturn
        (setf _extraLines 0)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _stringArray)) do
                (block jcontinue
            (setf _string (aref _stringArray _index))
            (if (not (eq _string (slot-value this 'f_EMPTY_STRING)))
                (progn
                (setf _width (jm_stringWidth_1 (jm_getFont_0 _graphics) _string))
                (setf _minTotalLines 1)
                (if (> _width _maxWidth)
                    (progn
                    (setf _minTotalLines (JR.i32 (+ (JR.idiv _width _maxWidth) 1)))))
                (setf _linePortion (JR.idiv (length _string) _minTotalLines))
                (setf _offset 0)
                (setf _currentLength _linePortion)
                (setf _size (length _string))
                (block jbreak (loop while (< _offset _size) do
                        (block jcontinue
                    (if (> (JR.i32 (+ _offset _currentLength)) _size)
                        (progn
                        (setf _currentLength (JR.i32 (- _size _offset)))))
                    (if (/= (JR.i32 (+ _offset _currentLength)) _size)
                        (progn
                        (block jbreak (loop while (and (> _currentLength 0) (not (eq (jm_charAt_1 (aref _stringArray _index) (JR.i32 (+ _offset _currentLength))) (char-code #\ )))) do
                                (block jcontinue
                            (setf _currentLength (JR.i32 (- _currentLength 1))))))
                        (if (<= _currentLength 4)
                            (progn
                            (setf _currentLength _linePortion)))))
                    (jm_drawCenterString_6 this _graphics _string _offset _currentLength _x (JR.i32 (+ _y (JR.i32 (* (JR.i32 (+ _index (prog1 _extraLines (setf _extraLines (JR.i32 (+ _extraLines 1)))))) _charHeight)))))
                    (setf _offset (JR.i32 (+ _offset _currentLength)))
                    (setf _currentLength _linePortion))))
                (setf _extraLines (JR.i32 (- _extraLines 1))))))
                (setf _index (JR.i32 (+ _index 1)))))))))



