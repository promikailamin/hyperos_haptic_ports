.class public Lmiui/os/HapticPlayer;
.super Ljava/lang/Object;
.source "HapticPlayer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HapticPlayer"

.field private static final blacklist USAGE_DYNAMICEFFECT:I = -0x2


# instance fields
.field private blacklist mAvailable:Z

.field private blacklist mEffect:Lmiui/os/DynamicEffect;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mService:Landroid/os/IVibratorManagerService;

.field private blacklist mStarted:Z

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/os/HapticPlayer;->mToken:Landroid/os/Binder;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z

    .line 21
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    .line 22
    const-string v0, "vibrator_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    .line 23
    invoke-static {}, Lmiui/os/HapticPlayer;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mAvailable:Z

    .line 24
    return-void
.end method

.method public constructor whitelist <init>(Lmiui/os/DynamicEffect;)V
    .registers 2
    .param p1, "effect"    # Lmiui/os/DynamicEffect;

    .line 26
    invoke-direct {p0}, Lmiui/os/HapticPlayer;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lmiui/os/HapticPlayer;->setDataSource(Lmiui/os/DynamicEffect;)V

    .line 28
    return-void
.end method

.method public static whitelist isAvailable()Z
    .registers 2

    .line 38
    const-string v0, "sys.haptic.dynamiceffect"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 39
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_10
    const-string v0, "HapticPlayer"

    const-string v1, "device not support core haptic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist setDataSource(Lmiui/os/DynamicEffect;)V
    .registers 4
    .param p1, "effect"    # Lmiui/os/DynamicEffect;

    .line 30
    iget-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z

    if-eqz v0, :cond_11

    .line 31
    invoke-virtual {p0}, Lmiui/os/HapticPlayer;->stop()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z

    .line 33
    const-string v0, "HapticPlayer"

    const-string v1, "setDataSource stop playing DynamicEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_11
    iput-object p1, p0, Lmiui/os/HapticPlayer;->mEffect:Lmiui/os/DynamicEffect;

    .line 36
    return-void
.end method

.method public whitelist start()V
    .registers 9

    .line 46
    iget-object v0, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    const-string v7, "HapticPlayer"

    if-nez v0, :cond_c

    .line 47
    const-string v0, "Failed to play haptic; no vibrator service"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 49
    :cond_c
    iget-object v1, p0, Lmiui/os/HapticPlayer;->mEffect:Lmiui/os/DynamicEffect;

    if-nez v1, :cond_16

    .line 50
    const-string v0, "Failed to play haptic; no effect"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 52
    :cond_16
    iget-boolean v1, p0, Lmiui/os/HapticPlayer;->mAvailable:Z

    if-nez v1, :cond_20

    .line 53
    const-string v0, "Failed to play haptic; device not support!"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 57
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Lmiui/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/os/HapticPlayer;->mEffect:Lmiui/os/DynamicEffect;

    invoke-virtual {v3}, Lmiui/os/DynamicEffect;->get()Landroid/os/DynamicEffect;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "DynamicEffect"

    iget-object v6, p0, Lmiui/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-interface/range {v0 .. v6}, Landroid/os/IVibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_37} :catch_38

    .line 61
    goto :goto_3e

    .line 59
    :catch_38
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Failed to play haptic."

    invoke-static {v7, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3e
    return-void
.end method

.method public whitelist start(Lmiui/os/DynamicEffect;)V
    .registers 11
    .param p1, "effect"    # Lmiui/os/DynamicEffect;

    .line 81
    iget-object v0, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_c

    .line 82
    const-string v0, "Failed to play haptic; no vibrator service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 84
    :cond_c
    if-nez p1, :cond_14

    .line 85
    const-string v0, "Failed to play haptic; no effect"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 87
    :cond_14
    iget-boolean v0, p0, Lmiui/os/HapticPlayer;->mAvailable:Z

    if-nez v0, :cond_1e

    .line 88
    const-string v0, "Failed to play haptic; device not support!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 91
    :cond_1e
    invoke-virtual {p0}, Lmiui/os/HapticPlayer;->stop()V

    .line 93
    :try_start_21
    iget-object v2, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget-object v4, p0, Lmiui/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/os/DynamicEffect;->get()Landroid/os/DynamicEffect;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "DynamicEffect"

    iget-object v8, p0, Lmiui/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-interface/range {v2 .. v8}, Landroid/os/IVibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_35} :catch_36

    .line 96
    goto :goto_3c

    .line 94
    :catch_36
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to play haptic."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method

.method public whitelist stop()V
    .registers 5

    .line 65
    iget-object v0, p0, Lmiui/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_c

    .line 66
    const-string v0, "Failed to stop haptic; no vibrator service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 68
    :cond_c
    iget-boolean v2, p0, Lmiui/os/HapticPlayer;->mAvailable:Z

    if-nez v2, :cond_16

    .line 69
    const-string v0, "Failed to stop haptic; device not support!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 73
    :cond_16
    const/4 v2, -0x2

    :try_start_17
    iget-object v3, p0, Lmiui/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v2, v3}, Landroid/os/IVibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/os/HapticPlayer;->mStarted:Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    .line 77
    goto :goto_26

    .line 75
    :catch_20
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to stop haptic."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method
