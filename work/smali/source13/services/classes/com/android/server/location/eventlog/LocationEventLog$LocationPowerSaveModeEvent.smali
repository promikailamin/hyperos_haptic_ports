.class final Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationPowerSaveModeEvent"
.end annotation


# instance fields
.field private final mLocationPowerSaveMode:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "locationPowerSaveMode"    # I

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    .line 433
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 438
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    packed-switch v0, :pswitch_data_2c

    .line 455
    const-string v0, "UNKNOWN"

    .local v0, "mode":Ljava/lang/String;
    goto :goto_17

    .line 452
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_8
    const-string v0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    .line 453
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_17

    .line 449
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_b
    const-string v0, "FOREGROUND_ONLY"

    .line 450
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_17

    .line 446
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_e
    const-string v0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    .line 447
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_17

    .line 443
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_11
    const-string v0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    .line 444
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_17

    .line 440
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_14
    const-string v0, "NO_CHANGE"

    .line 441
    .restart local v0    # "mode":Ljava/lang/String;
    nop

    .line 458
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location power save mode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
