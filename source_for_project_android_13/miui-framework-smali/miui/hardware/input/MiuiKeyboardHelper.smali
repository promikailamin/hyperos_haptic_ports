.class public Lmiui/hardware/input/MiuiKeyboardHelper;
.super Ljava/lang/Object;
.source "MiuiKeyboardHelper.java"


# static fields
.field public static final blacklist BLE_KEYBOARD_PRODUCT_ID:I = 0x40

.field public static final blacklist BLE_KEYBOARD_VENDOR_ID:I = 0xbf01

.field public static final blacklist IIC_KEYBOARD_CONSUMER_PRODUCT_ID:I = 0xa4

.field public static final blacklist IIC_KEYBOARD_MOUSE_PRODUCT_ID:I = 0xa2

.field public static final blacklist IIC_KEYBOARD_PRODUCT_ID:I = 0xa3

.field public static final blacklist IIC_KEYBOARD_TOUCH_PRODUCT_ID:I = 0xa1

.field public static final blacklist IIC_KEYBOARD_VENDOR_ID:I = 0x15d9

.field public static final blacklist IIC_KEYBOARD_WAKE_KEY_DEVICE_ID:I = 0x94

.field public static final blacklist IIC_KEYBOARD_WAKE_KEY_VENDOR_ID:I = 0x827

.field public static final blacklist KEYBOARD_TYPE_BLE:I = 0x2

.field public static final blacklist KEYBOARD_TYPE_IIC:I = 0x1

.field public static final blacklist KEYBOARD_TYPE_OTHER:I = 0x0

.field public static final blacklist KEYBOARD_TYPE_USB:I = 0x3

.field public static final blacklist TOUCHPAD_TYPE_BLE:I = 0x2

.field public static final blacklist TOUCHPAD_TYPE_IIC:I = 0x1

.field public static final blacklist TOUCHPAD_TYPE_OTHER:I = 0x0

.field public static final blacklist USB_KEYBOARD_PRODUCT_ID:I = 0x3ffc

.field public static final blacklist USB_KEYBOARD_VENDOR_ID:I = 0x3206


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getXiaomiKeyboardType(II)I
    .registers 3
    .param p0, "productId"    # I
    .param p1, "vendorId"    # I

    .line 53
    invoke-static {p0, p1}, Lmiui/hardware/input/MiuiKeyboardHelper;->isXiaomiIICKeyboard(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_8
    invoke-static {p0, p1}, Lmiui/hardware/input/MiuiKeyboardHelper;->isXiaomiBLEKeyboard(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    const/4 v0, 0x2

    return v0

    .line 57
    :cond_10
    invoke-static {p0, p1}, Lmiui/hardware/input/MiuiKeyboardHelper;->isXiaomiUSBExternalDevice(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 58
    const/4 v0, 0x3

    return v0

    .line 60
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getXiaomiTouchPadType(II)I
    .registers 3
    .param p0, "productId"    # I
    .param p1, "vendorId"    # I

    .line 64
    const/16 v0, 0x15d9

    if-ne p1, v0, :cond_a

    const/16 v0, 0xa1

    if-ne p0, v0, :cond_a

    .line 65
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_a
    invoke-static {p0, p1}, Lmiui/hardware/input/MiuiKeyboardHelper;->isXiaomiBLEKeyboard(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 68
    const/4 v0, 0x2

    return v0

    .line 70
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isXiaomiBLEKeyboard(II)Z
    .registers 3
    .param p0, "productId"    # I
    .param p1, "vendorId"    # I

    .line 83
    const v0, 0xbf01

    if-ne p1, v0, :cond_b

    const/16 v0, 0x40

    if-ne p0, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static blacklist isXiaomiExternalDevice(II)Z
    .registers 3
    .param p0, "productId"    # I
    .param p1, "vendorId"    # I

    .line 74
    invoke-static {p0, p1}, Lmiui/hardware/input/MiuiKeyboardHelper;->isXiaomiIICExternalDevice(II)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0, p1}, Lmiui/hardware/input/MiuiKeyboardHelper;->isXiaomiUSBExternalDevice(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist isXiaomiIICExternalDevice(II)Z
    .registers 4
    .param p0, "productId"    # I
    .param p1, "vendorId"    # I

    .line 35
    const/4 v0, 0x0

    const/16 v1, 0x15d9

    if-ne p1, v1, :cond_17

    .line 36
    const/16 v1, 0xa3

    if-eq p0, v1, :cond_15

    const/16 v1, 0xa4

    if-eq p0, v1, :cond_15

    const/16 v1, 0xa1

    if-eq p0, v1, :cond_15

    const/16 v1, 0xa2

    if-ne p0, v1, :cond_16

    :cond_15
    const/4 v0, 0x1

    :cond_16
    return v0

    .line 41
    :cond_17
    return v0
.end method

.method public static blacklist isXiaomiIICKeyboard(II)Z
    .registers 3
    .param p0, "productId"    # I
    .param p1, "vendorId"    # I

    .line 79
    const/16 v0, 0xa3

    if-ne p0, v0, :cond_a

    const/16 v0, 0x15d9

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isXiaomiKeyboard(II)Z
    .registers 3
    .param p0, "productId"    # I
    .param p1, "vendorId"    # I

    .line 49
    invoke-static {p0, p1}, Lmiui/hardware/input/MiuiKeyboardHelper;->getXiaomiKeyboardType(II)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist isXiaomiUSBExternalDevice(II)Z
    .registers 3
    .param p0, "productId"    # I
    .param p1, "vendorId"    # I

    .line 45
    const/16 v0, 0x3206

    if-ne p1, v0, :cond_a

    const/16 v0, 0x3ffc

    if-ne p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isXiaomiWakeUpDevice(II)Z
    .registers 3
    .param p0, "productId"    # I
    .param p1, "vendorId"    # I

    .line 87
    const/16 v0, 0x94

    if-ne p0, v0, :cond_a

    const/16 v0, 0x827

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist support6FKeyboard()Z
    .registers 2

    .line 97
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "yudi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist supportFnKeyboard()Z
    .registers 2

    .line 92
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "dagu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "pipa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "liuqin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method
