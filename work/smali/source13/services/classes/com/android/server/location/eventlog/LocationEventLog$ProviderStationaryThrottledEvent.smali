.class final Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderStationaryThrottledEvent"
.end annotation


# instance fields
.field private final mRequest:Landroid/location/provider/ProviderRequest;

.field private final mStationaryThrottled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/location/provider/ProviderRequest;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "stationaryThrottled"    # Z
    .param p3, "request"    # Landroid/location/provider/ProviderRequest;

    .line 414
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 415
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mStationaryThrottled:Z

    .line 416
    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 417
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " provider stationary/idle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mStationaryThrottled:Z

    if-eqz v1, :cond_19

    const-string/jumbo v1, "throttled"

    goto :goto_1c

    .line 422
    :cond_19
    const-string/jumbo v1, "unthrottled"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    return-object v0
.end method
