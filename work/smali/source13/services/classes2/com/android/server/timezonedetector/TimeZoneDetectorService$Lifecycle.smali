.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimeZoneDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/TimeZoneDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 74
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 9

    .line 79
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 82
    .local v1, "handler":Landroid/os/Handler;
    nop

    .line 83
    invoke-static {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v2

    .line 84
    .local v2, "serviceConfigAccessor":Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    nop

    .line 85
    invoke-static {v0, v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    move-result-object v3

    .line 86
    .local v3, "timeZoneDetectorStrategy":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;
    nop

    .line 87
    invoke-static {v0, v1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->create(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/timezonedetector/DeviceActivityMonitor;

    move-result-object v4

    .line 90
    .local v4, "deviceActivityMonitor":Lcom/android/server/timezonedetector/DeviceActivityMonitor;
    new-instance v5, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    invoke-interface {v4, v5}, Lcom/android/server/timezonedetector/DeviceActivityMonitor;->addListener(Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;)V

    .line 98
    new-instance v5, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    invoke-direct {v5, v0, v1, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    .line 100
    .local v5, "internal":Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;
    const-class v6, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-virtual {p0, v6, v5}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 104
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->-$$Nest$smcreate(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    move-result-object v6

    .line 108
    .local v6, "service":Lcom/android/server/timezonedetector/TimeZoneDetectorService;
    invoke-virtual {v6, v4}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->addDumpable(Lcom/android/server/timezonedetector/Dumpable;)V

    .line 110
    const-string/jumbo v7, "time_zone_detector"

    invoke-virtual {p0, v7, v6}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 111
    return-void
.end method
