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
;;;; package org.allbinary.logic.system.security.crypt

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass WeakCrypt (JObject)
  ((f_tsUtil :initform nil)
   (f_abCrypt :initform nil)))

(defvar WeakCrypt.jcell_keys :jnone)
(defun WeakCrypt.jstatic_keys ()
  (when (eq WeakCrypt.jcell_keys :jnone) (setf WeakCrypt.jcell_keys (vector "qwres6qewrupoi1132790jfahleavi89398" "143uk32lngf8675gt1tv9214uvt924ut9u9" "12kvjlvlkv11445v12951v512v9m51295v1" "gampipoiupg4g43y5u238tu2485u20u0932" "a93u5uu02s2d2g3259u4395u409u093u9vu" "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j" "2lk5fn5j23nr8f0233vq35n23jn58vhy843" "9q24334m598t092tkn2iv0982456n425j9g" "5m9uvmt9436243m5v34g09d43i52ki35g99" "n123lr1iubiu2br32lv32rbu23b32ub2rlb" "va0u0iovji2ojpvj2oij22poiu4ov2uv28v" "bkk80gn2v9uc902340ut209pcup0u09utc9" "mn32m32neee23c42fn32nf3mf2n3fn2m3fm" "zcxpozo3423voizupovsijevnv3n33o33n3" "v0345324thv93h03893893vh893v8h3vhzz" "v8na898v8wyef9ty39yv98yaw39yeeyf8ye" "45zd36d34jg09434hfshp8uj9sy8s7cyr78" "b098yy0908vdvh983b2lb327980a76s5e5e" "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh" "vblkzhhzp8yvzi8u4t9856456zy3rv8a388" "da7696023rgf28dssfa98asd879hg32hewe" "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf" "4gijvqo8vq984hv984hj5j3511h832hf833")))
  WeakCrypt.jcell_keys)
(defun (setf WeakCrypt.jstatic_keys) (value) (setf WeakCrypt.jcell_keys value))

(defvar WeakCrypt.jcell_KEYMAX :jnone)
(defun WeakCrypt.jstatic_KEYMAX ()
  (when (eq WeakCrypt.jcell_KEYMAX :jnone) (setf WeakCrypt.jcell_KEYMAX (length (WeakCrypt.jstatic_keys))))
  WeakCrypt.jcell_KEYMAX)
(defun (setf WeakCrypt.jstatic_KEYMAX) (value) (setf WeakCrypt.jcell_KEYMAX value))

    
(defun WeakCrypt.jnew_1 (_key)
  (declare (ignorable _key))
  (let ((this (make-instance 'WeakCrypt)))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    (setf (slot-value this 'f_abCrypt) (AbCrypt.jnew_1 (slot-value (KeySpecFactory.jm_getInstance_0) 'f_DES)))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_init_1 (slot-value this 'f_abCrypt) (aref (WeakCrypt.jstatic_keys) _key)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putOE_4 (slot-value _commonStrings 'f_EXCEPTION) this "SuperCrypt(key)" _e)))))
    this))

    
(unless (fboundp 'jm_encrypt_1) (defgeneric jm_encrypt_1 (this p1)))
(defmethod jm_encrypt_1 ((this WeakCrypt) _value)
  (declare (ignorable this _value))
  (let (_crypted)
  (declare (ignorable _crypted))
    (block jreturn
        (handler-case (progn
            (setf _crypted (jm_encrypt_1 (slot-value this 'f_abCrypt) (jm_getByteArray_1 (slot-value this 'f_tsUtil) _value)))
            (return-from jreturn (DatabaseEncoder.jm_encode_1 _crypted)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 "Encrypt Failed" this "encrypt" _e)
            (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))))

    
(unless (fboundp 'jm_decrypt_1) (defgeneric jm_decrypt_1 (this p1)))
(defmethod jm_decrypt_1 ((this WeakCrypt) _value)
  (declare (ignorable this _value))
  (let (_decrypted)
  (declare (ignorable _decrypted))
    (block jreturn
        (handler-case (progn
            (setf _decrypted (jm_decrypt_1 (slot-value this 'f_abCrypt) (DatabaseEncoder.jm_decode_1 _value)))
            (return-from jreturn _decrypted))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 "decrypt Failed" this "decrypt" _e)
            (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))))



