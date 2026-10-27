.class public abstract Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionStatus;
.super Ljava/lang/Object;
.source "ISoundTriggerHwCallback.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 93
    const-string p0, "SUCCESS"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 96
    const-string p0, "ABORT"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 99
    const-string p0, "FAILURE"

    return-object p0

    .line 101
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
