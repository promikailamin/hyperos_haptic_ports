.class public Lmiui/hardware/input/MiuiKeyEventUtil;
.super Ljava/lang/Object;
.source "MiuiKeyEventUtil.java"


# static fields
.field public static final blacklist KEYCODE_LOCK_SCREEN:I = 0x270f

.field public static final blacklist KEYCODE_MUTE_MIC:I = 0x270c

.field public static final blacklist KEYCODE_SCREEN_SHOT:I = 0x270a

.field public static final blacklist KEYCODE_VOICE_TO_WORDS:I = 0x270b

.field public static final blacklist KEYCODE_XIAOAI:I = 0x270d

.field public static final blacklist KEYCODE_ZEN:I = 0x270e

.field public static final blacklist TAG:Ljava/lang/String; = "MiuiKeyEventUtil"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist matchMiuiKey(Landroid/view/KeyEvent;)I
    .registers 7
    .param p0, "event"    # Landroid/view/KeyEvent;

    .line 22
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 23
    .local v0, "device":Landroid/view/InputDevice;
    if-nez v0, :cond_b

    .line 24
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    return v1

    .line 26
    :cond_b
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 27
    .local v1, "resultKeyCode":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v2

    .line 28
    .local v2, "productId":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v3

    .line 29
    .local v3, "vendorId":I
    invoke-static {v2, v3}, Lmiui/hardware/input/MiuiKeyboardHelper;->isXiaomiKeyboard(II)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 30
    invoke-static {v1}, Lmiui/hardware/input/MiuiKeyEventUtil;->matchMiuiKeyForIICKeyboard(I)I

    move-result v1

    goto :goto_29

    .line 32
    :cond_22
    const-string v4, "MiuiKeyEventUtil"

    const-string v5, "Can\'t match right device"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_29
    return v1
.end method

.method private static blacklist matchMiuiKeyForIICKeyboard(I)I
    .registers 2
    .param p0, "keycode"    # I

    .line 41
    sparse-switch p0, :sswitch_data_16

    .line 55
    return p0

    .line 51
    :sswitch_4
    const/16 v0, 0x270b

    return v0

    .line 49
    :sswitch_7
    const/16 v0, 0x270c

    return v0

    .line 47
    :sswitch_a
    const/16 v0, 0x270d

    return v0

    .line 45
    :sswitch_d
    const/16 v0, 0x270e

    return v0

    .line 43
    :sswitch_10
    const/16 v0, 0x270f

    return v0

    .line 53
    :sswitch_13
    const/16 v0, 0x270a

    return v0

    :sswitch_data_16
    .sparse-switch
        0x78 -> :sswitch_13
        0xbc -> :sswitch_10
        0xbd -> :sswitch_d
        0xbe -> :sswitch_a
        0xbf -> :sswitch_7
        0xc0 -> :sswitch_4
    .end sparse-switch
.end method
