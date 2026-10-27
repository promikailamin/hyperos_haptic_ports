.class public final synthetic Landroid/content/theming/ThemeSettings$1$$ExternalSyntheticTypeSwitchClass0;
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
    packed-switch p1, :pswitch_data_24

    goto :goto_21

    :pswitch_c
    const-string p1, "home_wallpaper"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    :pswitch_16
    const-string/jumbo p1, "preset"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    const/4 p0, -0x2

    return p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_c
        :pswitch_16
    .end packed-switch
.end method
