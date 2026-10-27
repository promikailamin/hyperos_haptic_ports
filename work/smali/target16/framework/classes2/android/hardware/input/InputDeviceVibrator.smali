.class final Landroid/hardware/input/InputDeviceVibrator;
.super Landroid/os/Vibrator;
.source "InputDeviceVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputDeviceVibrator"


# instance fields
.field private final blacklist mDelegates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceId:I

.field private final blacklist mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final blacklist mToken:Landroid/os/Binder;

.field private final blacklist mVibratorInfo:Landroid/os/VibratorInfo;


# direct methods
.method constructor blacklist <init>(II)V
    .registers 5

    .line 54
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    .line 55
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 56
    iput p1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    .line 57
    new-instance p1, Landroid/os/VibratorInfo$Builder;

    invoke-direct {p1, p2}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 58
    const-wide/16 v0, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo$Builder;->setCapabilities(J)Landroid/os/VibratorInfo$Builder;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, p2, [I

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/VibratorInfo$Builder;->setSupportedEffects([I)Landroid/os/VibratorInfo$Builder;

    move-result-object p1

    new-array p2, p2, [I

    .line 62
    invoke-virtual {p1, p2}, Landroid/os/VibratorInfo$Builder;->setSupportedBraking([I)Landroid/os/VibratorInfo$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/InputDeviceVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 64
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputDeviceVibrator;->mToken:Landroid/os/Binder;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 3

    .line 107
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputDeviceVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 110
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 6

    .line 123
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 128
    :try_start_9
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 129
    const-string p1, "InputDeviceVibrator"

    const-string p2, "Listener already registered."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    monitor-exit v0

    return-void

    .line 133
    :cond_1a
    new-instance v1, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;

    invoke-direct {v1, p0, p2, p1}, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;-><init>(Landroid/hardware/input/InputDeviceVibrator;Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V

    .line 135
    iget-object p1, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    invoke-virtual {p1, v2, v1}, Landroid/hardware/input/InputManagerGlobal;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 136
    const-string p1, "InputDeviceVibrator"

    const-string p2, "Failed to register vibrate state listener"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v0

    return-void

    .line 139
    :cond_32
    iget-object p1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public whitelist cancel()V
    .registers 4

    .line 184
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerGlobal;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 185
    return-void
.end method

.method public blacklist cancel(I)V
    .registers 2

    .line 189
    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceVibrator;->cancel()V

    .line 190
    return-void
.end method

.method public blacklist getInfo()Landroid/os/VibratorInfo;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public whitelist hasAmplitudeControl()Z
    .registers 4

    .line 170
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasVibrator()Z
    .registers 2

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isVibrating()Z
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->isVibrating(I)Z

    move-result v0

    return v0
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 6

    .line 152
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 156
    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 157
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;

    .line 159
    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v3, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    invoke-virtual {v2, v3, v1}, Landroid/hardware/input/InputManagerGlobal;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 160
    const-string p1, "InputDeviceVibrator"

    const-string v1, "Failed to unregister vibrate state listener"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit v0

    return-void

    .line 163
    :cond_29
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_2e
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 6

    .line 179
    iget-object p1, p0, Landroid/hardware/input/InputDeviceVibrator;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget p2, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    iget-object p4, p0, Landroid/hardware/input/InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {p1, p2, p3, p4}, Landroid/hardware/input/InputManagerGlobal;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V

    .line 180
    return-void
.end method
