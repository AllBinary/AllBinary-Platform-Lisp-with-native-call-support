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
;;;; package org.allbinary.game.graphics.hud

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicHud (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_canvasStrings :initform nil)
   (f_basicSetColorUtil :initform nil)
   (f_displayInfo :initform nil)
   (f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_location :initform 0)
   (f_direction :initform 0)
   (f_bufferZone :initform 0)
   (f_bufferZoneY :initform 0)
   (f_hudGraphicsPosition :initform nil)
   (f_x :initform 0)
   (f_y :initform 0)
   (f_basicColor :initform nil)
   (f_color :initform 0)
   (f_updateMaxWidth :initform 0)
   (f_updateMaxHeight :initform 0)
   (f_offsetY :initform 0)))

    
(defun BasicHud.jnew_4 (_location _direction _bufferZone _basicColor)
  (declare (ignorable _location _direction _bufferZone _basicColor))
  (let ((this (make-instance 'BasicHud)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_canvasStrings) (CanvasStrings.jm_getInstance_0))
    (setf (slot-value this 'f_basicSetColorUtil) (BasicColorSetUtil.jm_getInstance_0))
    (setf (slot-value this 'f_displayInfo) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
    
    
    
    
    (setf (slot-value this 'f_hudGraphicsPosition) (HudGraphicsPosition.jstatic_NULL_HUD_GRAPHICS_POSITION))
    
    
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK))
    
    
    
    
  (let ()
    (block jreturn
        (jm_setLocation_1 this _location)
        (jm_setDirection_1 this _direction)
        (jm_setBufferZone_1 this _bufferZone)
        (jm_onDisplayChangeEvent_1 this (slot-value (DisplayInfoSingleton.jm_getInstance_0) 'f_displayChangeEvent))
        (jm_setBasicColorP_1 this _basicColor)
        (setf (slot-value this 'f_color) (jm_intValue_0 _basicColor))))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this BasicHud) _graphics)
  (declare (ignorable this _graphics))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf (slot-value this 'f_hudGraphicsPosition) (jm_getHudGraphicsPositionWH_4 this (jm_getLastWidth_0 (slot-value this 'f_displayInfo)) (jm_getLastHeight_0 (slot-value this 'f_displayInfo)) (slot-value this 'f_updateMaxWidth) (slot-value this 'f_updateMaxHeight)))
            (setf (slot-value this 'f_x) (jm_getX_0 (jm_getPoint_0 (slot-value this 'f_hudGraphicsPosition))))
            (jm_setY_1 this (jm_getY_0 (jm_getPoint_0 (slot-value this 'f_hudGraphicsPosition)))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value (slot-value this 'f_canvasStrings) 'f_ON_DISPLAY_CHANGE_EVENT) _e)))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_getLocation_0) (defgeneric jm_getLocation_0 (this)))
(defmethod jm_getLocation_0 ((this BasicHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_location)))))

    
(unless (fboundp 'jm_getDirection_0) (defgeneric jm_getDirection_0 (this)))
(defmethod jm_getDirection_0 ((this BasicHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_direction)))))

    
(unless (fboundp 'jm_getHudGraphicsPositionWH_4) (defgeneric jm_getHudGraphicsPositionWH_4 (this p1 p2 p3 p4)))
(defmethod jm_getHudGraphicsPositionWH_4 ((this BasicHud) _width _height _maxWidth _maxHeight)
  (declare (ignorable this _width _height _maxWidth _maxHeight))
  (let (_x _y _anchor _basicHudFactory)
  (declare (ignorable _x _y _anchor _basicHudFactory))
    (block jreturn
        (setf _x 0)
        (setf _y 0)
        (setf _anchor 0)
        (setf _basicHudFactory (BasicHudFactory.jm_getInstance_0))
        (if (eq (slot-value _basicHudFactory 'f_BOTTOMLEFT) (jm_getLocation_0 this))
            (progn
            (setf _x (JR.i32 (+ (slot-value this 'f_bufferZone) 2)))
            (setf _y (JR.i32 (- (JR.i32 (- _height _maxHeight)) (slot-value this 'f_bufferZone))))
            (setf _anchor (logand (Graphics.jstatic_BOTTOM) (Graphics.jstatic_LEFT))))
            (if (eq (slot-value _basicHudFactory 'f_BOTTOMRIGHT) (jm_getLocation_0 this))
            (progn
            (setf _x (JR.i32 (- _width _maxWidth)))
            (setf _y (JR.i32 (- (JR.i32 (- _height _maxHeight)) (slot-value this 'f_bufferZone))))
            (setf _anchor (logand (Graphics.jstatic_BOTTOM) (Graphics.jstatic_RIGHT))))
            (if (eq (slot-value _basicHudFactory 'f_TOPLEFT) (jm_getLocation_0 this))
            (progn
            (setf _x (JR.i32 (+ (slot-value this 'f_bufferZone) 2)))
            (setf _y (slot-value this 'f_bufferZoneY))
            (setf _anchor (Anchor.jstatic_TOP_LEFT)))
            (if (eq (slot-value _basicHudFactory 'f_TOPRIGHT) (jm_getLocation_0 this))
            (progn
            (setf _x (JR.i32 (- _width _maxWidth)))
            (setf _y (slot-value this 'f_bufferZoneY))
            (setf _anchor (logand (Graphics.jstatic_TOP) (Graphics.jstatic_RIGHT))))
            (if (eq (slot-value _basicHudFactory 'f_TOPCENTER) (jm_getLocation_0 this))
            (progn
            (setf _x (JR.idiv (JR.i32 (- _width _maxWidth)) 2))
            (setf _y (slot-value this 'f_bufferZoneY))
            (setf _anchor (logand (Graphics.jstatic_TOP) (Graphics.jstatic_HCENTER))))
            (if (eq (slot-value _basicHudFactory 'f_BOTTOMCENTER) (jm_getLocation_0 this))
            (progn
            (setf _x (JR.idiv (JR.i32 (- _width _maxWidth)) 2))
            (setf _y (JR.i32 (- (JR.i32 (- _height _maxHeight)) (slot-value this 'f_bufferZone))))
            (setf _anchor (logand (Graphics.jstatic_BOTTOM) (Graphics.jstatic_HCENTER))))
            (if (eq (slot-value _basicHudFactory 'f_ABSOLUTE) (jm_getLocation_0 this))
            (progn
            (setf _x _maxHeight)
            (setf _y _maxWidth)
            (setf _anchor 0)))))))))
        (return-from jreturn (HudGraphicsPosition.jnew_2 (jm_getPoint_2 this _x _y) _anchor)))))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this BasicHud) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onDisplayChangeEvent_1) (defgeneric jm_onDisplayChangeEvent_1 (this p1)))
(defmethod jm_onDisplayChangeEvent_1 ((this BasicHud) _displayChangeEvent)
  (declare (ignorable this _displayChangeEvent))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_getPoint_2) (defgeneric jm_getPoint_2 (this p1 p2)))
(defmethod jm_getPoint_2 ((this BasicHud) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn
        (return-from jreturn (jm_createXY_2 (PointFactory.jm_getInstance_0) _x _y)))))

    
(unless (fboundp 'jm_getBufferZone_0) (defgeneric jm_getBufferZone_0 (this)))
(defmethod jm_getBufferZone_0 ((this BasicHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_bufferZone)))))

    
(unless (fboundp 'jm_setBufferZone_1) (defgeneric jm_setBufferZone_1 (this p1)))
(defmethod jm_setBufferZone_1 ((this BasicHud) _bufferZone)
  (declare (ignorable this _bufferZone))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_bufferZone) _bufferZone)
        (if (J2MEUtil.jm_isHTML_0)
            (progn
            (setf (slot-value this 'f_bufferZoneY) (slot-value this 'f_bufferZone)))
            (progn
            (setf (slot-value this 'f_bufferZoneY) (JR.i32 (+ (slot-value this 'f_bufferZone) 5))))))))

    
(unless (fboundp 'jm_setLocation_1) (defgeneric jm_setLocation_1 (this p1)))
(defmethod jm_setLocation_1 ((this BasicHud) _location)
  (declare (ignorable this _location))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_location) _location))))

    
(unless (fboundp 'jm_setDirection_1) (defgeneric jm_setDirection_1 (this p1)))
(defmethod jm_setDirection_1 ((this BasicHud) _direction)
  (declare (ignorable this _direction))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_direction) _direction))))

    
(unless (fboundp 'jm_getHudGraphicsPosition_0) (defgeneric jm_getHudGraphicsPosition_0 (this)))
(defmethod jm_getHudGraphicsPosition_0 ((this BasicHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hudGraphicsPosition)))))

    
(unless (fboundp 'jm_getColor_0) (defgeneric jm_getColor_0 (this)))
(defmethod jm_getColor_0 ((this BasicHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_color)))))

    
(unless (fboundp 'jm_getX_0) (defgeneric jm_getX_0 (this)))
(defmethod jm_getX_0 ((this BasicHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_x)))))

    
(unless (fboundp 'jm_setX_1) (defgeneric jm_setX_1 (this p1)))
(defmethod jm_setX_1 ((this BasicHud) _x)
  (declare (ignorable this _x))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_x) _x))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this BasicHud) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this BasicHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))

    
(unless (fboundp 'jm_setY_1) (defgeneric jm_setY_1 (this p1)))
(defmethod jm_setY_1 ((this BasicHud) _y)
  (declare (ignorable this _y))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_y) _y))))

    
(unless (fboundp 'jm_getY_0) (defgeneric jm_getY_0 (this)))
(defmethod jm_getY_0 ((this BasicHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_y)))))

    
(unless (fboundp 'jm_paintSSO_4) (defgeneric jm_paintSSO_4 (this p1 p2 p3 p4)))
(defmethod jm_paintSSO_4 ((this BasicHud) _graphics _string _string2 _offset)
  (declare (ignorable this _graphics _string _string2 _offset))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this))
        (jm_drawString_4 _graphics _string (slot-value this 'f_x) (jm_getY_0 this) (jm_getAnchor_0 (slot-value this 'f_hudGraphicsPosition)))
        (jm_drawString_4 _graphics _string2 (JR.i32 (+ (slot-value this 'f_x) _offset)) (jm_getY_0 this) (jm_getAnchor_0 (slot-value this 'f_hudGraphicsPosition))))))

    
(unless (fboundp 'jm_paintSSOO_5) (defgeneric jm_paintSSOO_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paintSSOO_5 ((this BasicHud) _graphics _string _string2 _offset _offset2)
  (declare (ignorable this _graphics _string _string2 _offset _offset2))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_setColor_1 _graphics (jm_getColor_0 this))
        (jm_drawString_4 _graphics _string (JR.i32 (+ (slot-value this 'f_x) _offset)) (jm_getY_0 this) (jm_getAnchor_0 (slot-value this 'f_hudGraphicsPosition)))
        (jm_drawString_4 _graphics _string2 (JR.i32 (+ (slot-value this 'f_x) _offset2)) (jm_getY_0 this) (jm_getAnchor_0 (slot-value this 'f_hudGraphicsPosition))))))

    
(unless (fboundp 'jm_paintDXY_9) (defgeneric jm_paintDXY_9 (this p1 p2 p3 p4 p5 p6 p7 p8 p9)))
(defmethod jm_paintDXY_9 ((this BasicHud) _graphics _charArray _offset _len _charArray2 _offset2 _len2 _xOffset _xOffset2)
  (declare (ignorable this _graphics _charArray _offset _len _charArray2 _offset2 _len2 _xOffset _xOffset2))
  (let (_y)
  (declare (ignorable _y))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this))
        (setf _y (jm_getY_0 this))
        (jm_drawChars_6 _graphics _charArray _offset _len (JR.i32 (+ (slot-value this 'f_x) _xOffset)) _y (jm_getAnchor_0 (slot-value this 'f_hudGraphicsPosition)))
        (jm_drawChars_6 _graphics _charArray2 _offset2 _len2 (JR.i32 (+ (slot-value this 'f_x) _xOffset2)) _y (jm_getAnchor_0 (slot-value this 'f_hudGraphicsPosition))))))

    
(unless (fboundp 'jm_paintDX_8) (defgeneric jm_paintDX_8 (this p1 p2 p3 p4 p5 p6 p7 p8)))
(defmethod jm_paintDX_8 ((this BasicHud) _graphics _charArray _offset _len _charArray2 _offset2 _len2 _xOffset)
  (declare (ignorable this _graphics _charArray _offset _len _charArray2 _offset2 _len2 _xOffset))
  (let (_y)
  (declare (ignorable _y))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this))
        (setf _y (jm_getY_0 this))
        (jm_drawChars_6 _graphics _charArray _offset _len (slot-value this 'f_x) _y (jm_getAnchor_0 (slot-value this 'f_hudGraphicsPosition)))
        (jm_drawChars_6 _graphics _charArray2 _offset2 _len2 (JR.i32 (+ (slot-value this 'f_x) _xOffset)) _y (jm_getAnchor_0 (slot-value this 'f_hudGraphicsPosition))))))

    
(unless (fboundp 'jm_paintOffsetAndLength_4) (defgeneric jm_paintOffsetAndLength_4 (this p1 p2 p3 p4)))
(defmethod jm_paintOffsetAndLength_4 ((this BasicHud) _graphics _charArray _offset _len)
  (declare (ignorable this _graphics _charArray _offset _len))
  (let (_y)
  (declare (ignorable _y))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this))
        (setf _y (jm_getY_0 this))
        (jm_drawChars_6 _graphics _charArray _offset _len (slot-value this 'f_x) _y (jm_getAnchor_0 (slot-value this 'f_hudGraphicsPosition))))))

    
(unless (fboundp 'jm_paintString_2) (defgeneric jm_paintString_2 (this p1 p2)))
(defmethod jm_paintString_2 ((this BasicHud) _graphics _string)
  (declare (ignorable this _graphics _string))
  (let (_y)
  (declare (ignorable _y))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this))
        (setf _y (JR.i32 (+ (jm_getY_0 this) (slot-value this 'f_offsetY))))
        (jm_drawString_4 _graphics _string (slot-value this 'f_x) _y (jm_getAnchor_0 (slot-value this 'f_hudGraphicsPosition))))))



