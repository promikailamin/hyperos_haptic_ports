.class Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Lcom/android/server/display/mode/DisplayModeDirector$Injector;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 3175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3176
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAmbientFilter(Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;
    .registers 2

    .line 3319
    const-string p0, "DisplayModeDirector"

    invoke-static {p0, p1}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .registers 2

    .line 3246
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 3248
    invoke-virtual {p0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceConfig()Landroid/provider/DeviceConfigInterface;
    .registers 1

    .line 3182
    sget-object p0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    return-object p0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .registers 2

    .line 3219
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayInfo(ILandroid/view/DisplayInfo;)Z
    .registers 3

    .line 3234
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 3241
    :cond_c
    invoke-virtual {p0, p2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result p0

    return p0
.end method

.method public final getDisplayManager()Landroid/hardware/display/DisplayManager;
    .registers 3

    .line 3333
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_10

    .line 3334
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 3336
    :cond_10
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;
    .registers 1

    .line 3298
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method public getDisplays()[Landroid/view/Display;
    .registers 2

    .line 3224
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledDisplays()[Landroid/view/Display;
    .registers 1

    .line 3229
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getModeChangeObserver(Lcom/android/server/display/mode/VotesStorage;Landroid/os/Looper;)Lcom/android/server/display/mode/ModeChangeObserver;
    .registers 4

    .line 3329
    new-instance v0, Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/display/mode/ModeChangeObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Landroid/os/Looper;)V

    return-object v0
.end method

.method public getSensorManagerInternal()Lcom/android/server/sensors/SensorManagerInternal;
    .registers 1

    .line 3308
    const-class p0, Lcom/android/server/sensors/SensorManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sensors/SensorManagerInternal;

    return-object p0
.end method

.method public getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 1

    .line 3303
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    return-object p0
.end method

.method public getSystemRequestObserver(Lcom/android/server/display/mode/VotesStorage;)Lcom/android/server/display/mode/SystemRequestObserver;
    .registers 2

    .line 3324
    new-instance p0, Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-direct {p0, p1}, Lcom/android/server/display/mode/SystemRequestObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;)V

    return-object p0
.end method

.method public final getThermalService()Landroid/os/IThermalService;
    .registers 1

    .line 3340
    const-string/jumbo p0, "thermalservice"

    .line 3341
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 3340
    invoke-static {p0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p0

    return-object p0
.end method

.method public getVotesStatsReporter()Lcom/android/server/display/mode/VotesStatsReporter;
    .registers 2

    .line 3314
    new-instance v0, Lcom/android/server/display/mode/VotesStatsReporter;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->supportsFrameRateOverride()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/VotesStatsReporter;-><init>(Z)V

    return-object v0
.end method

.method public isDozeState(Landroid/view/Display;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 3258
    :cond_4
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p0

    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result p0

    return p0
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .registers 3

    .line 3202
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
    .registers 5

    .line 3208
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public registerMinRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 5

    .line 3195
    sget-object p0, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->MIN_REFRESH_RATE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 5

    .line 3188
    sget-object p0, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerThermalServiceListener(Landroid/os/IThermalEventListener;)Z
    .registers 5

    .line 3263
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x0

    .line 3264
    const-string v1, "DisplayModeDirector"

    if-nez p0, :cond_f

    .line 3265
    const-string p0, "Could not observe thermal status. Service not available"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    const/4 v2, 0x3

    .line 3269
    :try_start_10
    invoke-interface {p0, p1, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_15

    const/4 p0, 0x1

    return p0

    :catch_15
    move-exception p0

    .line 3272
    const-string p1, "Failed to register thermal status listener"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public supportsFrameRateOverride()Z
    .registers 2

    .line 3293
    invoke-static {}, Landroid/sysprop/SurfaceFlingerProperties;->enable_frame_rate_override()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public unregisterThermalServiceListener(Landroid/os/IThermalEventListener;)V
    .registers 4

    .line 3280
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getThermalService()Landroid/os/IThermalService;

    move-result-object p0

    .line 3281
    const-string v0, "DisplayModeDirector"

    if-nez p0, :cond_d

    .line 3282
    const-string v1, "Could not unregister thermal status. Service not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    :cond_d
    :try_start_d
    invoke-interface {p0, p1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 3287
    const-string p1, "Failed to unregister thermal status listener"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
