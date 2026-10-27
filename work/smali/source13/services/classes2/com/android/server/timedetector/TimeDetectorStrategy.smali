.class public interface abstract Lcom/android/server/timedetector/TimeDetectorStrategy;
.super Ljava/lang/Object;
.source "TimeDetectorStrategy.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorStrategy$Origin;
    }
.end annotation


# static fields
.field public static final ORIGIN_EXTERNAL:I = 0x5

.field public static final ORIGIN_GNSS:I = 0x4

.field public static final ORIGIN_MANUAL:I = 0x2

.field public static final ORIGIN_NETWORK:I = 0x3

.field public static final ORIGIN_TELEPHONY:I = 0x1


# direct methods
.method public static getTimeAt(Landroid/os/TimestampedValue;J)J
    .registers 7
    .param p1, "referenceClockMillisNow"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    .line 100
    .local p0, "timeValue":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 101
    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 100
    return-wide v0
.end method

.method public static originToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "origin"    # I

    .line 109
    packed-switch p0, :pswitch_data_30

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :pswitch_1d
    const-string v0, "external"

    return-object v0

    .line 117
    :pswitch_20
    const-string v0, "gnss"

    return-object v0

    .line 113
    :pswitch_23
    const-string/jumbo v0, "network"

    return-object v0

    .line 111
    :pswitch_27
    const-string/jumbo v0, "manual"

    return-object v0

    .line 115
    :pswitch_2b
    const-string/jumbo v0, "telephony"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static stringToOrigin(Ljava/lang/String;)I
    .registers 8
    .param p0, "originString"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 132
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_6e

    :cond_15
    goto :goto_4a

    :sswitch_16
    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_4b

    :sswitch_21
    const-string/jumbo v0, "telephony"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v6

    goto :goto_4b

    :sswitch_2c
    const-string v0, "gnss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v5

    goto :goto_4b

    :sswitch_36
    const-string/jumbo v3, "manual"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_4b

    :sswitch_40
    const-string v0, "external"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v4

    goto :goto_4b

    :goto_4a
    move v0, v2

    :goto_4b
    packed-switch v0, :pswitch_data_84

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "originString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_68
    const/4 v0, 0x5

    return v0

    .line 140
    :pswitch_6a
    return v4

    .line 138
    :pswitch_6b
    return v1

    .line 136
    :pswitch_6c
    return v5

    .line 134
    :pswitch_6d
    return v6

    :sswitch_data_6e
    .sparse-switch
        -0x6c869c35 -> :sswitch_40
        -0x4075183a -> :sswitch_36
        0x307d87 -> :sswitch_2c
        0x2eaeb418 -> :sswitch_21
        0x6de15a2e -> :sswitch_16
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_68
    .end packed-switch
.end method


# virtual methods
.method public abstract getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
.end method

.method public abstract suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
.end method

.method public abstract suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
.end method

.method public abstract suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
.end method

.method public abstract suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
.end method

.method public abstract suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
.end method
