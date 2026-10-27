.class public final synthetic Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticTypeSwitchClass13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic blacklist switchDispatch(Ljava/lang/Object;I)I
    .registers 3

    .line 0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    packed-switch p1, :pswitch_data_1a

    goto :goto_18

    :pswitch_c
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    :pswitch_12
    instance-of p0, p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    :goto_18
    const/4 p0, -0x2

    return p0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method
