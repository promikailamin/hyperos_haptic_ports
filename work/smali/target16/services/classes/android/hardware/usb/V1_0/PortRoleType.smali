.class public abstract Landroid/hardware/usb/V1_0/PortRoleType;
.super Ljava/lang/Object;
.source "PortRoleType.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 26
    const-string p0, "DATA_ROLE"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 29
    const-string p0, "POWER_ROLE"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 32
    const-string p0, "MODE"

    return-object p0

    .line 34
    :cond_11
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
