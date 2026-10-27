.class public abstract synthetic Lcom/android/server/usage/IntervalStats$$ExternalSyntheticTypeSwitchClass0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic switchDispatch(Ljava/lang/Object;I)I
    .registers 3

    .line 0
    const/16 v0, 0x9

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    if-nez p0, :cond_9

    const/4 p0, -0x1

    return p0

    :cond_9
    packed-switch p1, :pswitch_data_40

    goto :goto_3d

    :pswitch_d
    instance-of p1, p0, [S

    if-eqz p1, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    :pswitch_13
    instance-of p1, p0, [I

    if-eqz p1, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    :pswitch_19
    instance-of p1, p0, [J

    if-eqz p1, :cond_1f

    const/4 p0, 0x2

    return p0

    :cond_1f
    :pswitch_1f
    instance-of p1, p0, [F

    if-eqz p1, :cond_25

    const/4 p0, 0x3

    return p0

    :cond_25
    :pswitch_25
    instance-of p1, p0, [D

    if-eqz p1, :cond_2b

    const/4 p0, 0x4

    return p0

    :cond_2b
    :pswitch_2b
    instance-of p1, p0, [B

    if-eqz p1, :cond_31

    const/4 p0, 0x5

    return p0

    :cond_31
    :pswitch_31
    instance-of p1, p0, [C

    if-eqz p1, :cond_37

    const/4 p0, 0x6

    return p0

    :cond_37
    :pswitch_37
    instance-of p0, p0, [Ljava/lang/String;

    if-eqz p0, :cond_3d

    const/4 p0, 0x7

    return p0

    :cond_3d
    :goto_3d
    const/4 p0, -0x2

    return p0

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_d
        :pswitch_13
        :pswitch_19
        :pswitch_1f
        :pswitch_25
        :pswitch_2b
        :pswitch_31
        :pswitch_37
    .end packed-switch
.end method
