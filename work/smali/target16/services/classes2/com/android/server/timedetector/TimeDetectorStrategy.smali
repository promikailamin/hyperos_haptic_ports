.class public interface abstract Lcom/android/server/timedetector/TimeDetectorStrategy;
.super Ljava/lang/Object;
.source "TimeDetectorStrategy.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# direct methods
.method public static originToString(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_34

    const/4 v0, 0x2

    if-eq p0, v0, :cond_31

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x5

    if-ne p0, v0, :cond_12

    .line 202
    const-string p0, "external"

    return-object p0

    .line 204
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2a
    const-string p0, "gnss"

    return-object p0

    .line 196
    :cond_2d
    const-string/jumbo p0, "network"

    return-object p0

    .line 194
    :cond_31
    const-string p0, "manual"

    return-object p0

    .line 198
    :cond_34
    const-string/jumbo p0, "telephony"

    return-object p0
.end method

.method public static stringToOrigin(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 213
    :goto_7
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_72

    :goto_18
    move v0, v6

    goto :goto_51

    :sswitch_1a
    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_18

    :cond_24
    move v0, v3

    goto :goto_51

    :sswitch_26
    const-string/jumbo v0, "telephony"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_18

    :cond_30
    move v0, v4

    goto :goto_51

    :sswitch_32
    const-string v0, "gnss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_18

    :cond_3b
    move v0, v5

    goto :goto_51

    :sswitch_3d
    const-string v0, "manual"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_18

    :cond_46
    move v0, v1

    goto :goto_51

    :sswitch_48
    const-string v2, "external"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_18

    :cond_51
    :goto_51
    packed-switch v0, :pswitch_data_88

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "originString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6c
    return v4

    :pswitch_6d
    return v1

    :pswitch_6e
    return v3

    :pswitch_6f
    return v5

    :pswitch_70
    const/4 p0, 0x5

    return p0

    :sswitch_data_72
    .sparse-switch
        -0x6c869c35 -> :sswitch_48
        -0x4075183a -> :sswitch_3d
        0x307d87 -> :sswitch_32
        0x2eaeb418 -> :sswitch_26
        0x6de15a2e -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
    .end packed-switch
.end method


# virtual methods
.method public abstract addChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
.end method

.method public abstract clearLatestNetworkSuggestion()V
.end method

.method public abstract confirmTime(Landroid/app/time/UnixEpochTime;)Z
.end method

.method public abstract getCapabilitiesAndConfig(IZ)Landroid/app/time/TimeCapabilitiesAndConfig;
.end method

.method public abstract getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;
.end method

.method public abstract getTimeState()Landroid/app/time/TimeState;
.end method

.method public abstract setTimeState(Landroid/app/time/TimeState;)V
.end method

.method public abstract suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
.end method

.method public abstract suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V
.end method

.method public abstract suggestManualTime(ILandroid/app/timedetector/ManualTimeSuggestion;Z)Z
.end method

.method public abstract suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
.end method

.method public abstract suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
.end method

.method public abstract updateConfiguration(ILandroid/app/time/TimeConfiguration;Z)Z
.end method
