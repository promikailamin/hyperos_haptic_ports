.class public Lcom/android/server/companion/virtual/InputController$NativeWrapper;
.super Ljava/lang/Object;
.source "InputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/InputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NativeWrapper"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeUinput(I)Z
    .registers 3
    .param p1, "fd"    # I

    .line 403
    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeCloseUinput(I)Z

    move-result v0

    return v0
.end method

.method public openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 389
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public openUinputMouse(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 393
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I
    .registers 8
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;
    .param p5, "height"    # I
    .param p6, "width"    # I

    .line 398
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public writeButtonEvent(III)Z
    .registers 5
    .param p1, "fd"    # I
    .param p2, "buttonCode"    # I
    .param p3, "action"    # I

    .line 411
    invoke-static {p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteButtonEvent(III)Z

    move-result v0

    return v0
.end method

.method public writeKeyEvent(III)Z
    .registers 5
    .param p1, "fd"    # I
    .param p2, "androidKeyCode"    # I
    .param p3, "action"    # I

    .line 407
    invoke-static {p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteKeyEvent(III)Z

    move-result v0

    return v0
.end method

.method public writeRelativeEvent(IFF)Z
    .registers 5
    .param p1, "fd"    # I
    .param p2, "relativeX"    # F
    .param p3, "relativeY"    # F

    .line 422
    invoke-static {p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRelativeEvent(IFF)Z

    move-result v0

    return v0
.end method

.method public writeScrollEvent(IFF)Z
    .registers 5
    .param p1, "fd"    # I
    .param p2, "xAxisMovement"    # F
    .param p3, "yAxisMovement"    # F

    .line 426
    invoke-static {p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteScrollEvent(IFF)Z

    move-result v0

    return v0
.end method

.method public writeTouchEvent(IIIIFFFF)Z
    .registers 10
    .param p1, "fd"    # I
    .param p2, "pointerId"    # I
    .param p3, "toolType"    # I
    .param p4, "action"    # I
    .param p5, "locationX"    # F
    .param p6, "locationY"    # F
    .param p7, "pressure"    # F
    .param p8, "majorAxisSize"    # F

    .line 416
    invoke-static/range {p1 .. p8}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteTouchEvent(IIIIFFFF)Z

    move-result v0

    return v0
.end method
