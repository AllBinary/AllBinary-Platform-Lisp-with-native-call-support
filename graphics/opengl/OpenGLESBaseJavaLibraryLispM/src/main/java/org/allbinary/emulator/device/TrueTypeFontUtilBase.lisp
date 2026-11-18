;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.emulator.device

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TrueTypeFontUtilBase (JObject)
  ((f_shortPattern :initform nil)
   (f_patternAsBytes :initform nil)
   (f_pattern :initform nil)
   (f_charArray :initform nil)
   (f__characterWidth :initform nil)
   (f_characterArray :initform nil)
   (f_size :initform 0)
   (f_lastCapIndex :initform 0)
   (f_currentFont :initform nil)
   (f_scale :initform 0)
   (f_CELLS_PER_ROW :initform 0)
   (f_fontSize :initform 0)
   (f_baseCharWidth :initform 0)
   (f_cellSize :initform 0)
   (f_textureSize :initform 0)
   (f_actualCellsPerRow :initform 0)))

    
(defun TrueTypeFontUtilBase.jnew_1 (_scale)
  (declare (ignorable _scale))
  (let ((this (make-instance 'TrueTypeFontUtilBase)))
    
    (setf (slot-value this 'f_patternAsBytes) (vector 32 48 49 50 51 52 53 54 55 56 57 65 66 32 32 32 67 68 69 70 71 72 73 74 75 76 77 78 79 32 32 32 80 81 82 83 84 85 86 87 88 89 90 97 98 32 32 32 99 100 101 102 103 104 105 106 107 108 109 110 111 32 32 32 112 113 114 115 116 117 118 119 120 121 122 46 63 32 32 32 33 36 37 96 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 84))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 84))) 34 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 93))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 93))) 94 38 42 40 32 32 32 41 95 43 45 61 91 93 123 125 59 39 35 58 32 32 32 64 126 44 47 60 62 92 124 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 82))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 82))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 87))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 87)))))
    (setf (slot-value this 'f_pattern) (slot-value this 'f_patternAsBytes))
    (setf (slot-value this 'f_charArray) (vector #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x6f #x50 #x56 #x6b #x51 #x52 #x5a #x6a #x5c #x60 #x5b #x62 #x72 #x63 #x4b #x73 #x1 #x2 #x3 #x4 #x5 #x6 #x7 #x8 #x9 #xa #x6c #x69 #x74 #x64 #x75 #x4c #x70 #xb #xc #x10 #x11 #x12 #x13 #x14 #x15 #x16 #x17 #x18 #x19 #x1a #x1b #x1c #x20 #x21 #x22 #x23 #x24 #x25 #x26 #x27 #x28 #x29 #x2a #x65 #x76 #x66 #x59 #x61 #x53 #x2b #x2c #x30 #x31 #x32 #x33 #x34 #x35 #x36 #x37 #x38 #x39 #x3a #x3b #x3c #x40 #x41 #x42 #x43 #x44 #x45 #x46 #x47 #x48 #x49 #x4a #x67 #x77 #x68 #x71 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x58 #x0 #x0 #x0 #x0 #x0 #x7b #x0 #x0 #x55 #x0 #x79 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0 #x0))
    (setf (slot-value this 'f__characterWidth) (JR.newArray 0 (length (slot-value this 'f_pattern))))
    (setf (slot-value this 'f_characterArray) (JR.newArray 0 1))
    (setf (slot-value this 'f_size) (length (slot-value this 'f_pattern)))
    (setf (slot-value this 'f_lastCapIndex) (JR.indexOf (slot-value this 'f_pattern) (char-code #\Z)))
    (setf (slot-value this 'f_currentFont) (Font.jm_getDefaultFont_0))
    
    
    
    
    
    
    
  (let (_shortPattern _shortPatterAsByteArray)
  (declare (ignorable _shortPattern _shortPatterAsByteArray))
    (block jreturn
        (setf _shortPattern (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
        (if (AvianUtil.jm_isAvian_0)
            (progn
            (setf _shortPatterAsByteArray (vector 32 48 49 50 51 52 53 54 55 56 57 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 46 63 33 36 37 96 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 84))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 84))) 34 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 93))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 93))) 94 38 42 40 41 95 43 45 61 91 93 123 125 59 39 35 58 64 126 44 47 60 62 92 124 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 82))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 82))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 87))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 87)))))
            (setf _shortPattern _shortPatterAsByteArray))
            (progn
            (setf _shortPatterAsByteArray (vector 32 48 49 50 51 52 53 54 55 56 57 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 46 63 33 36 37 96 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 84))) 34 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 93))) 94 38 42 40 41 95 43 45 61 91 93 123 125 59 39 35 58 64 126 44 47 60 62 92 124 (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 82))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 87)))))
            (setf _shortPattern _shortPatterAsByteArray)))
        (setf (slot-value this 'f_shortPattern) _shortPattern)
        (setf (slot-value this 'f_scale) _scale)
        (setf (slot-value this 'f_CELLS_PER_ROW) 16)
        (setf (slot-value this 'f_fontSize) (JR.i32 (* (JR.i32 (+ 20 6)) (slot-value this 'f_scale))))
        (setf (slot-value this 'f_baseCharWidth) (JR.i32 (+ (slot-value this 'f_fontSize) (JR.i32 (* 6 (slot-value this 'f_scale))))))
        (setf (slot-value this 'f_cellSize) (JR.i32 (+ (slot-value this 'f_fontSize) (JR.i32 (* 6 (slot-value this 'f_scale))))))
        (setf (slot-value this 'f_textureSize) (jm_getAsTextureSize_1 this (JR.i32 (* (slot-value this 'f_CELLS_PER_ROW) (slot-value this 'f_cellSize)))))
        (setf (slot-value this 'f_actualCellsPerRow) (JR.idiv (slot-value this 'f_textureSize) (slot-value this 'f_cellSize)))))
    this))

    
(unless (fboundp 'jm_getAsTextureSize_1) (defgeneric jm_getAsTextureSize_1 (this p1)))
(defmethod jm_getAsTextureSize_1 ((this TrueTypeFontUtilBase) _textureSize)
  (declare (ignorable this _textureSize))
  (let ()
    (block jreturn
        (if (<= _textureSize 64)
            (progn
            (setf _textureSize 64))
            (if (<= _textureSize 128)
            (progn
            (setf _textureSize 128))
            (if (<= _textureSize 256)
            (progn
            (setf _textureSize 256))
            (if (<= _textureSize 512)
            (progn
            (setf _textureSize 512))
            (if (<= _textureSize 1024)
            (progn
            (setf _textureSize 1024)))))))
        (return-from jreturn _textureSize))))

    
(unless (fboundp 'jm_getCellSize_1) (defgeneric jm_getCellSize_1 (this p1)))
(defmethod jm_getCellSize_1 ((this TrueTypeFontUtilBase) _cellSize)
  (declare (ignorable this _cellSize))
  (let ()
    (block jreturn
        (if (<= _cellSize 16)
            (progn
            (setf _cellSize 16))
            (if (<= _cellSize 32)
            (progn
            (setf _cellSize 32))
            (if (<= _cellSize 64)
            (progn
            (setf _cellSize 64))
            (if (<= _cellSize 128)
            (progn
            (setf _cellSize 128))
            (if (<= _cellSize 256)
            (progn
            (setf _cellSize 256)))))))
        (return-from jreturn _cellSize))))

    
(unless (fboundp 'jm_getYOffset_0) (defgeneric jm_getYOffset_0 (this)))
(defmethod jm_getYOffset_0 ((this TrueTypeFontUtilBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (* (JR.i32 (- (slot-value this 'f_scale) 1)) (slot-value this 'f_cellSize)))))))



