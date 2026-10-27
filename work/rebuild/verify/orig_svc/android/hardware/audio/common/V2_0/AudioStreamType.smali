.class public abstract Landroid/hardware/audio/common/V2_0/AudioStreamType;
.super Ljava/lang/Object;
.source "AudioStreamType.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 25
    const-string p0, "DEFAULT"

    return-object p0

    :cond_6
    if-nez p0, :cond_b

    .line 28
    const-string p0, "MIN"

    return-object p0

    :cond_b
    if-nez p0, :cond_10

    .line 31
    const-string p0, "VOICE_CALL"

    return-object p0

    :cond_10
    const/4 v0, 0x1

    if-ne p0, v0, :cond_16

    .line 34
    const-string p0, "SYSTEM"

    return-object p0

    :cond_16
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1c

    .line 37
    const-string p0, "RING"

    return-object p0

    :cond_1c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_22

    .line 40
    const-string p0, "MUSIC"

    return-object p0

    :cond_22
    const/4 v0, 0x4

    if-ne p0, v0, :cond_28

    .line 43
    const-string p0, "ALARM"

    return-object p0

    :cond_28
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2e

    .line 46
    const-string p0, "NOTIFICATION"

    return-object p0

    :cond_2e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_34

    .line 49
    const-string p0, "BLUETOOTH_SCO"

    return-object p0

    :cond_34
    const/4 v0, 0x7

    if-ne p0, v0, :cond_3a

    .line 52
    const-string p0, "ENFORCED_AUDIBLE"

    return-object p0

    :cond_3a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_41

    .line 55
    const-string p0, "DTMF"

    return-object p0

    :cond_41
    const/16 v0, 0x9

    if-ne p0, v0, :cond_48

    .line 58
    const-string p0, "TTS"

    return-object p0

    :cond_48
    const/16 v0, 0xa

    if-ne p0, v0, :cond_4f

    .line 61
    const-string p0, "ACCESSIBILITY"

    return-object p0

    :cond_4f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_56

    .line 64
    const-string p0, "REROUTING"

    return-object p0

    :cond_56
    const/16 v1, 0xc

    if-ne p0, v1, :cond_5d

    .line 67
    const-string p0, "PATCH"

    return-object p0

    :cond_5d
    if-ne p0, v0, :cond_62

    .line 70
    const-string p0, "PUBLIC_CNT"

    return-object p0

    :cond_62
    if-ne p0, v1, :cond_67

    .line 73
    const-string p0, "FOR_POLICY_CNT"

    return-object p0

    :cond_67
    const/16 v0, 0xd

    if-ne p0, v0, :cond_6e

    .line 76
    const-string p0, "CNT"

    return-object p0

    .line 78
    :cond_6e
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
