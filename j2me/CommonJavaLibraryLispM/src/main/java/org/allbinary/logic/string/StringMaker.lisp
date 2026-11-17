;;;; Generated Code Do Not Modify
;;;; package org.allbinary.logic.string

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass StringMaker (JObject)
  ((f_charArray :initform nil)
   (f_currentLength :initform 0)))

    
(defun StringMaker.jnew_0 ()
  (let ((this (make-instance 'StringMaker)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_charArray) (JR.newArray 0 20))))
    this))

    
(unless (fboundp 'jm_append_1) (defgeneric jm_append_1 (this p1)))
(defmethod jm_append_1 ((this StringMaker) _string)
  (declare (ignorable this _string))
  (let (_stringLength)
  (declare (ignorable _stringLength))
    (block jreturn
        (setf _stringLength (length _string))
        (jm_ensureCapacity_1 this (JR.i32 (+ (slot-value this 'f_currentLength) _stringLength)))
        (JR.getChars _string 0 _stringLength (slot-value this 'f_charArray) (slot-value this 'f_currentLength))
        (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) _stringLength)))
        (return-from jreturn this))))

    
(unless (fboundp 'jm_appendchar_1) (defgeneric jm_appendchar_1 (this p1)))
(defmethod jm_appendchar_1 ((this StringMaker) _c)
  (declare (ignorable this _c))
  (let ()
    (block jreturn
        (jm_ensureCapacity_1 this (JR.i32 (+ (slot-value this 'f_currentLength) 1)))
        (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) _c)
        (return-from jreturn this))))

    
(unless (fboundp 'jm_appendCharArray_3) (defgeneric jm_appendCharArray_3 (this p1 p2 p3)))
(defmethod jm_appendCharArray_3 ((this StringMaker) _charArray _start _end)
  (declare (ignorable this _charArray _start _end))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (jm_ensureCapacity_1 this (JR.i32 (+ (slot-value this 'f_currentLength) (JR.i32 (- _end _start)))))
        (progn
            (setf _index _start)
            (block jbreak (loop while (< _index _end) do
                (block jcontinue
            (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) (aref _charArray _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn this))))

    
(unless (fboundp 'jm_appendbyte_1) (defgeneric jm_appendbyte_1 (this p1)))
(defmethod jm_appendbyte_1 ((this StringMaker) _b)
  (declare (ignorable this _b))
  (let ()
    (block jreturn
        (jm_append_1 this (JR.str _b))
        (return-from jreturn this))))

    
(unless (fboundp 'jm_appendshort_1) (defgeneric jm_appendshort_1 (this p1)))
(defmethod jm_appendshort_1 ((this StringMaker) _b)
  (declare (ignorable this _b))
  (let ()
    (block jreturn
        (jm_append_1 this (JR.str _b))
        (return-from jreturn this))))

    
(unless (fboundp 'jm_appendint_1) (defgeneric jm_appendint_1 (this p1)))
(defmethod jm_appendint_1 ((this StringMaker) _i)
  (declare (ignorable this _i))
  (let ()
    (block jreturn
        (jm_append_1 this (JR.str _i))
        (return-from jreturn this))))

    
(unless (fboundp 'jm_appendlong_1) (defgeneric jm_appendlong_1 (this p1)))
(defmethod jm_appendlong_1 ((this StringMaker) _l)
  (declare (ignorable this _l))
  (let ()
    (block jreturn
        (jm_append_1 this (JR.str _l))
        (return-from jreturn this))))

    
(unless (fboundp 'jm_appendfloat_1) (defgeneric jm_appendfloat_1 (this p1)))
(defmethod jm_appendfloat_1 ((this StringMaker) _f)
  (declare (ignorable this _f))
  (let ()
    (block jreturn
        (jm_append_1 this (JR.float _f))
        (return-from jreturn this))))

    
(unless (fboundp 'jm_appendboolean_1) (defgeneric jm_appendboolean_1 (this p1)))
(defmethod jm_appendboolean_1 ((this StringMaker) _bool)
  (declare (ignorable this _bool))
  (let ()
    (block jreturn
        (if _bool
            (progn
            (jm_ensureCapacity_1 this (JR.i32 (+ (slot-value this 'f_currentLength) 4)))
            (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) (char-code #\t))
            (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) (char-code #\r))
            (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) (char-code #\u))
            (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) (char-code #\e)))
            (progn
            (jm_ensureCapacity_1 this (JR.i32 (+ (slot-value this 'f_currentLength) 5)))
            (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) (char-code #\f))
            (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) (char-code #\a))
            (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) (char-code #\l))
            (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) (char-code #\s))
            (setf (aref (slot-value this 'f_charArray) (prog1 (slot-value this 'f_currentLength) (setf (slot-value this 'f_currentLength) (JR.i32 (+ (slot-value this 'f_currentLength) 1))))) (char-code #\e))))
        (return-from jreturn this))))

    
(unless (fboundp 'jm_ensureCapacity_1) (defgeneric jm_ensureCapacity_1 (this p1)))
(defmethod jm_ensureCapacity_1 ((this StringMaker) _minSize)
  (declare (ignorable this _minSize))
  (let (_oldCapacity _newCapacity _copy _min)
  (declare (ignorable _oldCapacity _newCapacity _copy _min))
    (block jreturn
        (setf _oldCapacity (length (slot-value this 'f_charArray)))
        (if (> _minSize _oldCapacity)
            (progn
            (setf _newCapacity (JR.i32 (* _oldCapacity 3)))
            (if (< _newCapacity _minSize)
                (progn
                (setf _newCapacity _minSize)))
            (setf _copy (JR.newArray 0 _newCapacity))
            (setf _min (jm_min_2 this (length (slot-value this 'f_charArray)) _newCapacity))
            (JR.arraycopy (slot-value this 'f_charArray) 0 _copy 0 _min)
            (setf (slot-value this 'f_charArray) _copy))))))

    
(unless (fboundp 'jm_min_2) (defgeneric jm_min_2 (this p1 p2)))
(defmethod jm_min_2 ((this StringMaker) _value _value2)
  (declare (ignorable this _value _value2))
  (let ()
    (block jreturn
        (return-from jreturn (if (<= _value _value2) _value _value2)))))

    
(unless (fboundp 'jm_delete_2) (defgeneric jm_delete_2 (this p1 p2)))
(defmethod jm_delete_2 ((this StringMaker) _start _end)
  (declare (ignorable this _start _end))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentLength) (JR.i32 (- (slot-value this 'f_currentLength) (JR.i32 (- _end _start)))))
        (return-from jreturn this))))

    
(unless (fboundp 'jm_length_0) (defgeneric jm_length_0 (this)))
(defmethod jm_length_0 ((this StringMaker))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_currentLength)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this StringMaker))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.fromChars (slot-value this 'f_charArray) 0 (slot-value this 'f_currentLength))))))



