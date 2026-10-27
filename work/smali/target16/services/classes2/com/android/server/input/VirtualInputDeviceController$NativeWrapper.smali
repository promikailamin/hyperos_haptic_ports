.class public Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;
.super Ljava/lang/Object;
.source "VirtualInputDeviceController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeUinput(J)V
    .registers 3

    .line 531
    invoke-static {p1, p2}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeCloseUinput(J)V

    return-void
.end method

.method public openUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
    .registers 5

    .line 502
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
    .registers 5

    .line 507
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
    .registers 5

    .line 511
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
    .registers 5

    .line 527
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
    .registers 7

    .line 522
    invoke-static/range {p1 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
    .registers 7

    .line 516
    invoke-static/range {p1 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public writeButtonEvent(JIIJ)Z
    .registers 7

    .line 546
    invoke-static/range {p1 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeWriteButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeDpadKeyEvent(JIIJ)Z
    .registers 7

    .line 536
    invoke-static/range {p1 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeWriteDpadKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeKeyEvent(JIIJ)Z
    .registers 7

    .line 541
    invoke-static/range {p1 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeWriteKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeRelativeEvent(JFFJ)Z
    .registers 7

    .line 559
    invoke-static/range {p1 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeWriteRelativeEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public writeRotaryEncoderScrollEvent(JFJ)Z
    .registers 6

    .line 580
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeWriteRotaryEncoderScrollEvent(JFJ)Z

    move-result p0

    return p0
.end method

.method public writeScrollEvent(JFFJ)Z
    .registers 7

    .line 564
    invoke-static/range {p1 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeWriteScrollEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public writeStylusButtonEvent(JIIJ)Z
    .registers 7

    .line 575
    invoke-static/range {p1 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeWriteStylusButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeStylusMotionEvent(JIIIIIIIJ)Z
    .registers 12

    .line 569
    invoke-static/range {p1 .. p11}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    move-result p0

    return p0
.end method

.method public writeTouchEvent(JIIIFFFFJ)Z
    .registers 12

    .line 552
    invoke-static/range {p1 .. p11}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z

    move-result p0

    return p0
.end method
