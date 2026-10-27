.class public abstract Landroid/hardware/usb/V1_2/ContaminantProtectionStatus;
.super Ljava/lang/Object;
.source "ContaminantProtectionStatus.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 35
    const-string p0, "NONE"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 38
    const-string p0, "FORCE_SINK"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 41
    const-string p0, "FORCE_SOURCE"

    return-object p0

    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 44
    const-string p0, "FORCE_DISABLE"

    return-object p0

    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 47
    const-string p0, "DISABLED"

    return-object p0

    .line 49
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
