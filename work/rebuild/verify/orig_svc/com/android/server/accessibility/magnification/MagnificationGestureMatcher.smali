.class public abstract Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;
.super Ljava/lang/Object;
.source "MagnificationGestureMatcher.java"


# direct methods
.method public static gestureIdToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1a

    .line 71
    const-string/jumbo p0, "none"

    return-object p0

    .line 69
    :pswitch_7
    const-string p0, "GESTURE_TRIPLE_TAP_AND_HOLD"

    return-object p0

    .line 67
    :pswitch_a
    const-string p0, "GESTURE_TRIPLE_TAP"

    return-object p0

    .line 65
    :pswitch_d
    const-string p0, "GESTURE_SINGLE_TAP_AND_HOLD"

    return-object p0

    .line 63
    :pswitch_10
    const-string p0, "GESTURE_SINGLE_TAP"

    return-object p0

    .line 59
    :pswitch_13
    const-string p0, "GESTURE_SWIPE"

    return-object p0

    .line 61
    :pswitch_16
    const-string p0, "GESTURE_TWO_FINGERS_DOWN_OR_SWIPE"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x65
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public static getMagnificationMultiTapTimeout(Landroid/content/Context;)I
    .registers 3

    .line 81
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10e014e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
