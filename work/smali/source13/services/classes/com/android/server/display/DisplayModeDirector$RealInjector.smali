.class Lcom/android/server/display/DisplayModeDirector$RealInjector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Lcom/android/server/display/DisplayModeDirector$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RealInjector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 2883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2884
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    .line 2885
    return-void
.end method

.method private getDisplayManager()Landroid/hardware/display/DisplayManager;
    .registers 3

    .line 2930
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_10

    .line 2931
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2933
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method


# virtual methods
.method public getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .registers 4
    .param p1, "displayId"    # I

    .line 2908
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2909
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_f

    .line 2910
    invoke-virtual {v0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v1

    return-object v1

    .line 2912
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDeviceConfig()Landroid/provider/DeviceConfigInterface;
    .registers 2

    .line 2890
    sget-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    return-object v0
.end method

.method public getThermalService()Landroid/os/IThermalService;
    .registers 2

    .line 2925
    nop

    .line 2926
    const-string/jumbo v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2925
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    return-object v0
.end method

.method public isDozeState(Landroid/view/Display;)Z
    .registers 3
    .param p1, "d"    # Landroid/view/Display;

    .line 2917
    if-nez p1, :cond_4

    .line 2918
    const/4 v0, 0x0

    return v0

    .line 2920
    :cond_4
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    return v0
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # J

    .line 2903
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 2904
    return-void
.end method

.method public registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 2896
    sget-object v0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2898
    return-void
.end method
