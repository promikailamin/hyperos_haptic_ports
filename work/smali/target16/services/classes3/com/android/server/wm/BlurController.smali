.class public final Lcom/android/server/wm/BlurController;
.super Ljava/lang/Object;
.source "BlurController.java"


# instance fields
.field public mBlurDisabledSetting:Z

.field public volatile mBlurEnabled:Z

.field public final mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

.field public final mContext:Landroid/content/Context;

.field public mInPowerSaveMode:Z

.field public final mLock:Ljava/lang/Object;

.field public mTunnelModeEnabled:Z

.field public mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;


# direct methods
.method public static bridge synthetic -$$Nest$fputmBlurDisabledSetting(Lcom/android/server/wm/BlurController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInPowerSaveMode(Lcom/android/server/wm/BlurController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTunnelModeEnabled(Lcom/android/server/wm/BlurController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBlurDisabledSetting(Lcom/android/server/wm/BlurController;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurDisabledSetting()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateBlurEnabled(Lcom/android/server/wm/BlurController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;)V
    .registers 7

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    .line 52
    new-instance v1, Lcom/android/server/wm/BlurController$1;

    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/BlurController$1;-><init>(Lcom/android/server/wm/BlurController;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    .line 64
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcom/android/server/wm/BlurController$2;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/BlurController$2;-><init>(Lcom/android/server/wm/BlurController;Landroid/os/PowerManager;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "disable_window_blurs"

    .line 80
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v1, Lcom/android/server/wm/BlurController$3;

    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/BlurController$3;-><init>(Lcom/android/server/wm/BlurController;Landroid/os/Handler;)V

    .line 79
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurDisabledSetting()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    .line 93
    iget-object p1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;

    invoke-static {p1}, Landroid/view/TunnelModeEnabledListener;->register(Landroid/view/TunnelModeEnabledListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method


# virtual methods
.method public final getBlurDisabledSetting()Z
    .registers 4

    .line 140
    const-string v0, "ro.surface_flinger.blur_disabled_by_default"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    iget-object p0, p0, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "disable_window_blurs"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    return v0

    :cond_17
    return v1
.end method

.method public getBlurEnabled()Z
    .registers 1

    .line 110
    iget-boolean p0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    return p0
.end method

.method public final notifyBlurEnabledChangedLocked(Z)V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 129
    iget-object v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    .line 130
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/view/ICrossWindowBlurEnabledListener;

    .line 132
    :try_start_12
    invoke-interface {v1, p1}, Landroid/view/ICrossWindowBlurEnabledListener;->onCrossWindowBlurEnabledChanged(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_6

    goto :goto_6

    .line 136
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 101
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurEnabled()Z

    move-result p0

    return p0
.end method

.method public unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 106
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateBlurEnabled()V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    sget-boolean v1, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_25

    :cond_17
    const/4 v1, 0x0

    .line 117
    :goto_18
    iget-boolean v2, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    if-ne v2, v1, :cond_1e

    .line 118
    monitor-exit v0

    return-void

    .line 120
    :cond_1e
    iput-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BlurController;->notifyBlurEnabledChangedLocked(Z)V

    .line 122
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_15

    throw p0
.end method
