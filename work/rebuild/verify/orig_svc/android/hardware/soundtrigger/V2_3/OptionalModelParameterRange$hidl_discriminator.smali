.class public abstract Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$hidl_discriminator;
.super Ljava/lang/Object;
.source "OptionalModelParameterRange.java"


# direct methods
.method public static final getName(B)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    .line 17
    const-string p0, "Unknown"

    return-object p0

    .line 16
    :cond_8
    const-string/jumbo p0, "range"

    return-object p0

    .line 15
    :cond_c
    const-string/jumbo p0, "noinit"

    return-object p0
.end method
