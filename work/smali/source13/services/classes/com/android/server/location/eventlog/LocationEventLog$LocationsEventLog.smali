.class final Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;
.super Lcom/android/server/location/eventlog/LocalEventLog;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationsEventLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/eventlog/LocalEventLog<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 513
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/eventlog/LocalEventLog;-><init>(ILjava/lang/Class;)V

    .line 514
    return-void
.end method

.method private addLog(Ljava/lang/Object;)V
    .registers 4
    .param p1, "logEvent"    # Ljava/lang/Object;

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->addLog(JLjava/lang/Object;)V

    .line 527
    return-void
.end method


# virtual methods
.method public logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "numLocations"    # I
    .param p3, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 522
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;-><init>(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->addLog(Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public logProviderReceivedLocations(Ljava/lang/String;I)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "numLocations"    # I

    .line 517
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->addLog(Ljava/lang/Object;)V

    .line 518
    return-void
.end method
