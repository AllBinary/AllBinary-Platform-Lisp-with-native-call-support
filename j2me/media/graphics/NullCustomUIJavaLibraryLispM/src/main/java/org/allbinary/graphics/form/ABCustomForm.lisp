;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABCustomForm (CustomScreen)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)))

    
(defun ABCustomForm.jnew_4 (_title _items _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _title _items _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'ABCustomForm)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getAllitems_0) (defgeneric jm_getAllitems_0 (this)))
(defmethod jm_getAllitems_0 ((this ABCustomForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.newArray nil 0)))))

    
(unless (fboundp 'jm_size_0) (defgeneric jm_size_0 (this)))
(defmethod jm_size_0 ((this ABCustomForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_setSelectedIndex_1) (defgeneric jm_setSelectedIndex_1 (this p1)))
(defmethod jm_setSelectedIndex_1 ((this ABCustomForm) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSelectedIndex_0) (defgeneric jm_getSelectedIndex_0 (this)))
(defmethod jm_getSelectedIndex_0 ((this ABCustomForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_deleteAll_0) (defgeneric jm_deleteAll_0 (this)))
(defmethod jm_deleteAll_0 ((this ABCustomForm))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_delete_1) (defgeneric jm_delete_1 (this p1)))
(defmethod jm_delete_1 ((this ABCustomForm) _itemNum)
  (declare (ignorable this _itemNum))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_append_1) (defgeneric jm_append_1 (this p1)))
(defmethod jm_append_1 ((this ABCustomForm) _item)
  (declare (ignorable this _item))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_insert_2) (defgeneric jm_insert_2 (this p1 p2)))
(defmethod jm_insert_2 ((this ABCustomForm) _itemNum _item)
  (declare (ignorable this _itemNum _item))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_set_2) (defgeneric jm_set_2 (this p1 p2)))
(defmethod jm_set_2 ((this ABCustomForm) _itemNum _item)
  (declare (ignorable this _itemNum _item))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_get_1) (defgeneric jm_get_1 (this p1)))
(defmethod jm_get_1 ((this ABCustomForm) _itemNum)
  (declare (ignorable this _itemNum))
  (let ()
    (block jreturn
        (return-from jreturn (ABCustomItem.jm_getNullInstance_0)))))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this ABCustomForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this ABCustomForm) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getTitle_0) (defgeneric jm_getTitle_0 (this)))
(defmethod jm_getTitle_0 ((this ABCustomForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))



