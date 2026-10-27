.class public abstract Landroid/hardware/health/V2_1/BatteryCapacityLevel;
.super Ljava/lang/Object;
.source "BatteryCapacityLevel.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 42
    const-string p0, "UNSUPPORTED"

    return-object p0

    :cond_6
    if-nez p0, :cond_b

    .line 45
    const-string p0, "UNKNOWN"

    return-object p0

    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 48
    const-string p0, "CRITICAL"

    return-object p0

    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    .line 51
    const-string p0, "LOW"

    return-object p0

    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    .line 54
    const-string p0, "NORMAL"

    return-object p0

    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    .line 57
    const-string p0, "HIGH"

    return-object p0

    :cond_23
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    .line 60
    const-string p0, "FULL"

    return-object p0

    .line 62
    :cond_29
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
