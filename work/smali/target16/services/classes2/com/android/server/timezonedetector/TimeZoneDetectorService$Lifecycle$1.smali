.class public Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;
.super Ljava/lang/Object;
.source "TimeZoneDetectorService.java"

# interfaces
.implements Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;


# instance fields
.field public final synthetic val$timeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V
    .registers 3

    .line 92
    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;->val$timeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlightComplete()V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;->val$timeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    const-string/jumbo v0, "onFlightComplete()"

    invoke-interface {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->enableTelephonyTimeZoneFallback(Ljava/lang/String;)V

    return-void
.end method

.method public onFlightStart()V
    .registers 1

    .line 0
    return-void
.end method
