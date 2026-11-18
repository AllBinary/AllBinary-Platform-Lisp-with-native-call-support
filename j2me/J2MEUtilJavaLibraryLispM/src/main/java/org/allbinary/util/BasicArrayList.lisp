;;;; Generated Code Do Not Modify
;;;; package org.allbinary.util

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;This is a very fast and simple resizable list.
(defclass BasicArrayList (JObject)
  ((f_arrayUtil :initform nil)
   (f_objectArray :initform nil)
   (f_currentIndex :initform 0)))

(defvar BasicArrayList.jcell_SIZE :jnone)
(defun BasicArrayList.jstatic_SIZE ()
  (when (eq BasicArrayList.jcell_SIZE :jnone) (setf BasicArrayList.jcell_SIZE ", Size: "))
  BasicArrayList.jcell_SIZE)
(defun (setf BasicArrayList.jstatic_SIZE) (value) (setf BasicArrayList.jcell_SIZE value))

    
(defun BasicArrayList.jnew_1 (_objectArray)
  (declare (ignorable _objectArray))
  (let ((this (make-instance 'BasicArrayList)))
    (setf (slot-value this 'f_arrayUtil) (ArrayUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_currentIndex) 0)
  (let ()
    (block jreturn
        (setf (slot-value this 'f_objectArray) _objectArray)))
    this))

    
(unless (fboundp 'jm_addAt_2) (defgeneric jm_addAt_2 (this p1 p2)))
(defmethod jm_addAt_2 ((this BasicArrayList) _index _element)
  (declare (ignorable this _index _element))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (if (or (> _index (slot-value this 'f_currentIndex)) (< _index 0))
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer (slot-value (CommonLabels.jm_getInstance_0) 'f_INDEX_LABEL))
            (jm_appendint_1 _stringBuffer _index)
            (jm_append_1 _stringBuffer (BasicArrayList.jstatic_SIZE))
            (jm_appendint_1 _stringBuffer (slot-value this 'f_currentIndex))
            (error (JR.newException "IndexOutOfBoundsException" (jm_toString_0 _stringBuffer)))))
        (jm_ensureCapacity_1 this (JR.i32 (+ (slot-value this 'f_currentIndex) 1)))
        (JR.arraycopy (slot-value this 'f_objectArray) _index (slot-value this 'f_objectArray) (JR.i32 (+ _index 1)) (JR.i32 (- (slot-value this 'f_currentIndex) _index)))
        (setf (aref (slot-value this 'f_objectArray) _index) _element)
        (setf (slot-value this 'f_currentIndex) (JR.i32 (+ (slot-value this 'f_currentIndex) 1))))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this BasicArrayList) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (jm_ensureCapacity_1 this (JR.i32 (+ (slot-value this 'f_currentIndex) 1)))
        (setf (aref (slot-value this 'f_objectArray) (prog1 (slot-value this 'f_currentIndex) (setf (slot-value this 'f_currentIndex) (JR.i32 (+ (slot-value this 'f_currentIndex) 1))))) _anyType)
        (return-from jreturn t))))

    
(unless (fboundp 'jm_removeAt_1) (defgeneric jm_removeAt_1 (this p1)))
(defmethod jm_removeAt_1 ((this BasicArrayList) _index)
  (declare (ignorable this _index))
  (let (_stringBuffer _oldValue _numMoved)
  (declare (ignorable _stringBuffer _oldValue _numMoved))
    (block jreturn
        (if (>= _index (slot-value this 'f_currentIndex))
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer (slot-value (CommonLabels.jm_getInstance_0) 'f_INDEX_LABEL))
            (jm_appendint_1 _stringBuffer _index)
            (jm_append_1 _stringBuffer (BasicArrayList.jstatic_SIZE))
            (jm_appendint_1 _stringBuffer (slot-value this 'f_currentIndex))
            (error (JR.newException "IndexOutOfBoundsException" (jm_toString_0 _stringBuffer)))))
        (setf _oldValue (aref (slot-value this 'f_objectArray) _index))
        (setf _numMoved (JR.i32 (- (JR.i32 (- (slot-value this 'f_currentIndex) _index)) 1)))
        (if (> _numMoved 0)
            (progn
            (JR.arraycopy (slot-value this 'f_objectArray) (JR.i32 (+ _index 1)) (slot-value this 'f_objectArray) _index _numMoved)))
        (setf (aref (slot-value this 'f_objectArray) (setf (slot-value this 'f_currentIndex) (JR.i32 (- (slot-value this 'f_currentIndex) 1)))) nil)
        (return-from jreturn _oldValue))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this BasicArrayList) _anyType)
  (declare (ignorable this _anyType))
  (let (_numMoved _index)
  (declare (ignorable _numMoved _index))
    (block jreturn
        (if (null _anyType)
            (progn
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index (slot-value this 'f_currentIndex)) do
                    (block jcontinue
                (if (null (aref (slot-value this 'f_objectArray) _index))
                    (progn
                    (setf _numMoved (JR.i32 (- (JR.i32 (- (slot-value this 'f_currentIndex) _index)) 1)))
                    (if (> _numMoved 0)
                        (progn
                        (JR.arraycopy (slot-value this 'f_objectArray) (JR.i32 (+ _index 1)) (slot-value this 'f_objectArray) _index _numMoved)))
                    (setf (aref (slot-value this 'f_objectArray) (setf (slot-value this 'f_currentIndex) (JR.i32 (- (slot-value this 'f_currentIndex) 1)))) nil)
                    (return-from jreturn t))))
                    (setf _index (JR.i32 (+ _index 1)))))))
            (progn
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index (slot-value this 'f_currentIndex)) do
                    (block jcontinue
                (if (or (eq _anyType (aref (slot-value this 'f_objectArray) _index)) (eq _anyType (aref (slot-value this 'f_objectArray) _index)))
                    (progn
                    (setf _numMoved (JR.i32 (- (JR.i32 (- (slot-value this 'f_currentIndex) _index)) 1)))
                    (if (> _numMoved 0)
                        (progn
                        (JR.arraycopy (slot-value this 'f_objectArray) (JR.i32 (+ _index 1)) (slot-value this 'f_objectArray) _index _numMoved)))
                    (setf (aref (slot-value this 'f_objectArray) (setf (slot-value this 'f_currentIndex) (JR.i32 (- (slot-value this 'f_currentIndex) 1)))) nil)
                    (return-from jreturn t))))
                    (setf _index (JR.i32 (+ _index 1))))))))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_removeAll2_1) (defgeneric jm_removeAll2_1 (this p1)))
(defmethod jm_removeAll2_1 ((this BasicArrayList) _list)
  (declare (ignorable this _list))
  (let (_result _size _index)
  (declare (ignorable _result _size _index))
    (block jreturn
        (setf _result t)
        (setf _size (jm_size_0 _list))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (if (jm_remove_1 this (jm_get_1 _list _index))
                (progn
                nil)
                (progn
                (setf _result nil))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _result))))

    
(unless (fboundp 'jm_addAll2_1) (defgeneric jm_addAll2_1 (this p1)))
(defmethod jm_addAll2_1 ((this BasicArrayList) _list)
  (declare (ignorable this _list))
  (let (_listSize _index)
  (declare (ignorable _listSize _index))
    (block jreturn
        (jm_ensureCapacity_1 this (JR.i32 (+ (slot-value this 'f_currentIndex) (slot-value _list 'f_currentIndex))))
        (setf _listSize (slot-value _list 'f_currentIndex))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _listSize) do
                (block jcontinue
            (setf (aref (slot-value this 'f_objectArray) (prog1 (slot-value this 'f_currentIndex) (setf (slot-value this 'f_currentIndex) (JR.i32 (+ (slot-value this 'f_currentIndex) 1))))) (aref (slot-value _list 'f_objectArray) _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_addAllList_1) (defgeneric jm_addAllList_1 (this p1)))
(defmethod jm_addAllList_1 ((this BasicArrayList) _list)
  (declare (ignorable this _list))
  (let (_newObjectArray)
  (declare (ignorable _newObjectArray))
    (block jreturn
        (setf _newObjectArray (jm_toArray_0 _list))
        (return-from jreturn (jm_addAll_1 this _newObjectArray)))))

    
(unless (fboundp 'jm_addAll_1) (defgeneric jm_addAll_1 (this p1)))
(defmethod jm_addAll_1 ((this BasicArrayList) _newObjectArray)
  (declare (ignorable this _newObjectArray))
  (let (_numSize)
  (declare (ignorable _numSize))
    (block jreturn
        (setf _numSize (length _newObjectArray))
        (jm_ensureCapacity_1 this (JR.i32 (+ (slot-value this 'f_currentIndex) _numSize)))
        (JR.arraycopy _newObjectArray 0 (slot-value this 'f_objectArray) (slot-value this 'f_currentIndex) _numSize)
        (setf (slot-value this 'f_currentIndex) (JR.i32 (+ (slot-value this 'f_currentIndex) _numSize)))
        (return-from jreturn (/= _numSize 0)))))

    
(unless (fboundp 'jm_ensureCapacity_1) (defgeneric jm_ensureCapacity_1 (this p1)))
(defmethod jm_ensureCapacity_1 ((this BasicArrayList) _minSize)
  (declare (ignorable this _minSize))
  (let (_oldCapacity _newCapacity)
  (declare (ignorable _oldCapacity _newCapacity))
    (block jreturn
        (setf _oldCapacity (length (slot-value this 'f_objectArray)))
        (if (> _minSize _oldCapacity)
            (progn
            (setf _newCapacity (JR.i32 (+ (ash (JR.i32 (* _oldCapacity 3)) (- (logand 1 31))) 1)))
            (if (< _newCapacity _minSize)
                (progn
                (setf _newCapacity _minSize)))
            (setf (slot-value this 'f_objectArray) (jm_copyOf_2 (slot-value this 'f_arrayUtil) (slot-value this 'f_objectArray) _newCapacity)))))))

    
(unless (fboundp 'jm_trimToSize_0) (defgeneric jm_trimToSize_0 (this)))
(defmethod jm_trimToSize_0 ((this BasicArrayList))
  (declare (ignorable this))
  (let (_oldCapacity)
  (declare (ignorable _oldCapacity))
    (block jreturn
        (setf _oldCapacity (length (slot-value this 'f_objectArray)))
        (if (< (slot-value this 'f_currentIndex) _oldCapacity)
            (progn
            (setf (slot-value this 'f_objectArray) (jm_copyOf_2 (slot-value this 'f_arrayUtil) (slot-value this 'f_objectArray) (slot-value this 'f_currentIndex))))))))

    
(unless (fboundp 'jm_indexOf_1) (defgeneric jm_indexOf_1 (this p1)))
(defmethod jm_indexOf_1 ((this BasicArrayList) _anyType)
  (declare (ignorable this _anyType))
  (let (_i)
  (declare (ignorable _i))
    (block jreturn
        (if (null _anyType)
            (progn
            (progn
                (setf _i 0)
                (block jbreak (loop while (< _i (slot-value this 'f_currentIndex)) do
                    (block jcontinue
                (if (null (aref (slot-value this 'f_objectArray) _i))
                    (progn
                    (return-from jreturn _i))))
                    (setf _i (JR.i32 (+ _i 1)))))))
            (progn
            (progn
                (setf _i 0)
                (block jbreak (loop while (< _i (slot-value this 'f_currentIndex)) do
                    (block jcontinue
                (if (eq _anyType (aref (slot-value this 'f_objectArray) _i))
                    (progn
                    (return-from jreturn _i))))
                    (setf _i (JR.i32 (+ _i 1))))))))
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_lastIndexOf_1) (defgeneric jm_lastIndexOf_1 (this p1)))
(defmethod jm_lastIndexOf_1 ((this BasicArrayList) _anyType)
  (declare (ignorable this _anyType))
  (let (_i)
  (declare (ignorable _i))
    (block jreturn
        (if (null _anyType)
            (progn
            (progn
                (setf _i (JR.i32 (- (slot-value this 'f_currentIndex) 1)))
                (block jbreak (loop while (>= _i 0) do
                    (block jcontinue
                (if (null (aref (slot-value this 'f_objectArray) _i))
                    (progn
                    (return-from jreturn _i))))
                    (setf _i (JR.i32 (- _i 1)))))))
            (progn
            (progn
                (setf _i (JR.i32 (- (slot-value this 'f_currentIndex) 1)))
                (block jbreak (loop while (>= _i 0) do
                    (block jcontinue
                (if (eq _anyType (aref (slot-value this 'f_objectArray) _i))
                    (progn
                    (return-from jreturn _i))))
                    (setf _i (JR.i32 (- _i 1))))))))
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_get_1) (defgeneric jm_get_1 (this p1)))
(defmethod jm_get_1 ((this BasicArrayList) _index)
  (declare (ignorable this _index))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (if (>= _index (slot-value this 'f_currentIndex))
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer (slot-value (CommonLabels.jm_getInstance_0) 'f_INDEX_LABEL))
            (jm_appendint_1 _stringBuffer _index)
            (jm_append_1 _stringBuffer (BasicArrayList.jstatic_SIZE))
            (jm_appendint_1 _stringBuffer (slot-value this 'f_currentIndex))
            (error (JR.newException "IndexOutOfBoundsException" (jm_toString_0 _stringBuffer)))))
        (return-from jreturn (aref (slot-value this 'f_objectArray) _index)))))

    
(unless (fboundp 'jm_set_2) (defgeneric jm_set_2 (this p1 p2)))
(defmethod jm_set_2 ((this BasicArrayList) _index _element)
  (declare (ignorable this _index _element))
  (let (_stringBuffer _oldValue)
  (declare (ignorable _stringBuffer _oldValue))
    (block jreturn
        (if (>= _index (slot-value this 'f_currentIndex))
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer (slot-value (CommonLabels.jm_getInstance_0) 'f_INDEX_LABEL))
            (jm_appendint_1 _stringBuffer _index)
            (jm_append_1 _stringBuffer (BasicArrayList.jstatic_SIZE))
            (jm_appendint_1 _stringBuffer (slot-value this 'f_currentIndex))
            (error (JR.newException "IndexOutOfBoundsException" (jm_toString_0 _stringBuffer)))))
        (setf _oldValue (aref (slot-value this 'f_objectArray) _index))
        (setf (aref (slot-value this 'f_objectArray) _index) _element)
        (return-from jreturn _oldValue))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this BasicArrayList))
  (declare (ignorable this))
  (let (_i)
  (declare (ignorable _i))
    (block jreturn
        (progn
            (setf _i 0)
            (block jbreak (loop while (< _i (slot-value this 'f_currentIndex)) do
                (block jcontinue
            (setf (aref (slot-value this 'f_objectArray) _i) nil))
                (setf _i (JR.i32 (+ _i 1))))))
        (setf (slot-value this 'f_currentIndex) 0))))

    
(unless (fboundp 'jm_size_0) (defgeneric jm_size_0 (this)))
(defmethod jm_size_0 ((this BasicArrayList))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_currentIndex)))))

    
(unless (fboundp 'jm_isEmpty_0) (defgeneric jm_isEmpty_0 (this)))
(defmethod jm_isEmpty_0 ((this BasicArrayList))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (= (slot-value this 'f_currentIndex) 0)))))

    
(unless (fboundp 'jm_contains_1) (defgeneric jm_contains_1 (this p1)))
(defmethod jm_contains_1 ((this BasicArrayList) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (return-from jreturn (>= (jm_indexOf_1 this _anyType) 0)))))

    
(unless (fboundp 'jm_toArray_0) (defgeneric jm_toArray_0 (this)))
(defmethod jm_toArray_0 ((this BasicArrayList))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_copyOf_2 (slot-value this 'f_arrayUtil) (slot-value this 'f_objectArray) (slot-value this 'f_currentIndex))))))

    
(unless (fboundp 'jm_toArrayType_1) (defgeneric jm_toArrayType_1 (this p1)))
(defmethod jm_toArrayType_1 ((this BasicArrayList) _objectArray)
  (declare (ignorable this _objectArray))
  (let ()
    (block jreturn
        (if (< (length _objectArray) (slot-value this 'f_currentIndex))
            (progn
            (return-from jreturn (jm_copyOfType_3 (slot-value this 'f_arrayUtil) (slot-value this 'f_objectArray) (slot-value this 'f_currentIndex) (JR.className _objectArray)))))
        (JR.arraycopy (slot-value this 'f_objectArray) 0 _objectArray 0 (slot-value this 'f_currentIndex))
        (if (> (length _objectArray) (slot-value this 'f_currentIndex))
            (progn
            (setf (aref _objectArray (slot-value this 'f_currentIndex)) nil)))
        (return-from jreturn _objectArray))))

    
(unless (fboundp 'jm_clone_0) (defgeneric jm_clone_0 (this)))
(defmethod jm_clone_0 ((this BasicArrayList))
  (declare (ignorable this))
  (let (_size _list _anyType _index)
  (declare (ignorable _size _list _anyType _index))
    (block jreturn
        (setf _size (jm_size_0 this))
        (setf _list (BasicArrayListS.jnew_1 _size))
        (setf _anyType nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _anyType (aref (slot-value this 'f_objectArray) _index))
            (jm_add_1 _list _anyType))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _list))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BasicArrayList))
  (declare (ignorable this))
  (let (_COMMA_SEP _stringBuffer _index)
  (declare (ignorable _COMMA_SEP _stringBuffer _index))
    (block jreturn
        (setf _COMMA_SEP (slot-value (CommonSeps.jm_getInstance_0) 'f_COMMA_SEP))
        (setf _stringBuffer (StringMaker.jnew_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (slot-value this 'f_currentIndex)) do
                (block jcontinue
            (jm_append_1 _stringBuffer (JR.toString (aref (slot-value this 'f_objectArray) _index)))
            (jm_append_1 _stringBuffer _COMMA_SEP))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



