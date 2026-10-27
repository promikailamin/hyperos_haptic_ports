.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LocationTimeZoneManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

.field private final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-static {p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 86
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 104
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupportedInConfig()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 105
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_12

    .line 107
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->onSystemReady()V

    goto :goto_1b

    .line 108
    :cond_12
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1b

    .line 111
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->onSystemThirdPartyAppsCanStart()V

    .line 114
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 90
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupportedInConfig()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 92
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-direct {v1, v0, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;-><init>(Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 96
    const-string v2, "location_time_zone_manager"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_22

    .line 98
    :cond_1b
    const-string v1, "LocationTZDetector"

    const-string v2, "Geo time zone detection feature is disabled in config"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_22
    return-void
.end method
