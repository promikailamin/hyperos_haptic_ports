.class Lcom/android/server/display/DisplayManagerService$Injector;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDisplayDelayTimeout()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public getDisplayPowerController(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager;)Lcom/android/server/display/DisplayPowerController;
    .registers 15

    .line 4141
    new-instance p0, Lcom/android/server/display/DisplayPowerController;

    invoke-direct/range {p0 .. p14}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager;)V

    return-object p0
.end method

.method public getFlags()Lcom/android/server/display/feature/DisplayManagerFlags;
    .registers 1

    .line 4131
    new-instance p0, Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {p0}, Lcom/android/server/display/feature/DisplayManagerFlags;-><init>()V

    return-object p0
.end method

.method public getHdrOutputConversionSupport()Z
    .registers 1

    .line 4122
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputConversionSupport()Z

    move-result p0

    return p0
.end method

.method public getHdrOutputTypesWithLatency()[I
    .registers 1

    .line 4118
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputTypesWithLatency()[I

    move-result-object p0

    return-object p0
.end method

.method public getLocalDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;)Lcom/android/server/display/LocalDisplayAdapter;
    .registers 7

    .line 4098
    new-instance p0, Lcom/android/server/display/LocalDisplayAdapter;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    return-object p0
.end method

.method public getPersistentDataStore()Lcom/android/server/display/PersistentDataStore;
    .registers 1

    .line 4151
    new-instance p0, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    return-object p0
.end method

.method public getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .registers 1

    .line 4126
    const-string/jumbo p0, "media_projection"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 4127
    invoke-static {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedHdrOutputTypes()[I
    .registers 1

    .line 4114
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getSupportedHdrOutputTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/VirtualDisplayAdapter;
    .registers 6

    .line 4090
    new-instance p0, Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    return-object p0
.end method

.method public isDesktopModeSupportedOnInternalDisplay(Landroid/content/Context;)Z
    .registers 2

    .line 4147
    invoke-static {p1}, Lcom/android/server/wm/DesktopModeHelper;->isDesktopModeSupportedOnInternalDisplay(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setHdrConversionMode(II[I)I
    .registers 4

    .line 4108
    invoke-static {p1, p2, p3}, Lcom/android/server/display/DisplayControl;->setHdrConversionMode(II[I)I

    move-result p0

    return p0
.end method
