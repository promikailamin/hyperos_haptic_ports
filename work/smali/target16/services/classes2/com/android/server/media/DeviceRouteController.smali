.class public interface abstract Lcom/android/server/media/DeviceRouteController;
.super Ljava/lang/Object;
.source "DeviceRouteController.java"


# direct methods
.method public static createInstance(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/media/DeviceRouteController$EventListener;)Lcom/android/server/media/DeviceRouteController;
    .registers 6

    .line 55
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 56
    invoke-static {}, Lcom/android/server/media/AudioRoutingUtils;->getMediaAudioProductStrategy()Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v1

    .line 58
    const-class v2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    if-eqz v2, :cond_1b

    .line 60
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-eqz v1, :cond_28

    if-eqz v2, :cond_28

    .line 68
    invoke-static {p0, v0, p1, v1, v2}, Lcom/android/server/media/AudioManagerRouteController;->getInstance(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)Lcom/android/server/media/AudioManagerRouteController;

    move-result-object p0

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/server/media/AudioManagerRouteController;->registerRouteChangeListener(Lcom/android/server/media/DeviceRouteController$EventListener;)V

    return-object p0

    .line 73
    :cond_28
    const-string p1, "audio"

    .line 75
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object p1

    .line 76
    new-instance v1, Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/media/LegacyDeviceRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/DeviceRouteController$EventListener;)V

    return-object v1
.end method

.method public static getBuiltInSpeakerSuitabilityStatus(Landroid/content/Context;)I
    .registers 2

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00f1

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 p0, 0x0

    :cond_14
    return p0
.end method


# virtual methods
.method public abstract deselectRoute(JLjava/lang/String;)V
.end method

.method public abstract getAvailableRoutes()Ljava/util/List;
.end method

.method public abstract getDeselectableRoutes()Ljava/util/List;
.end method

.method public abstract getSelectableRoutes()Ljava/util/List;
.end method

.method public abstract getSelectedRoutes()Ljava/util/List;
.end method

.method public abstract getSessionReleaseType()I
.end method

.method public abstract releaseRoutingSession()V
.end method

.method public abstract selectRoute(JLjava/lang/String;)V
.end method

.method public abstract setVolume(JLjava/lang/String;I)V
.end method

.method public abstract start(Landroid/os/UserHandle;)V
.end method

.method public abstract stop()V
.end method

.method public abstract transferTo(JLjava/lang/String;)V
.end method

.method public abstract updateVolume(I)Z
.end method
