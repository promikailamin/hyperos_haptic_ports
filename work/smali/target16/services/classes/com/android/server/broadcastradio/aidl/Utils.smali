.class public abstract Lcom/android/server/broadcastradio/aidl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static getBand(I)Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;
    .registers 2

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_7

    .line 35
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    :cond_7
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_e

    .line 36
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    :cond_e
    const/16 v0, 0x6a9

    if-ge p0, v0, :cond_15

    .line 37
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    :cond_15
    const/16 v0, 0x7530

    if-ge p0, v0, :cond_1c

    .line 38
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    :cond_1c
    const v0, 0xea60

    if-ge p0, v0, :cond_24

    .line 39
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    :cond_24
    const v0, 0x1adb0

    if-ge p0, v0, :cond_2c

    .line 40
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->FM:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0

    .line 41
    :cond_2c
    sget-object p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0
.end method
