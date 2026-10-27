.class final Lcom/android/server/vibrator/InputDeviceDelegate;
.super Ljava/lang/Object;
.source "InputDeviceDelegate.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "InputDeviceDelegate"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputDeviceVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorManager;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private final mLock:Ljava/lang/Object;

.field private mShouldVibrateInputDevices:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 54
    iput-object p2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private updateInputDevice(I)V
    .registers 7
    .param p1, "deviceId"    # I

    .line 167
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez v1, :cond_9

    .line 170
    monitor-exit v0

    return-void

    .line 172
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    if-nez v2, :cond_f

    .line 174
    monitor-exit v0

    return-void

    .line 176
    :cond_f
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 177
    .local v1, "device":Landroid/view/InputDevice;
    if-nez v1, :cond_1c

    .line 178
    iget-object v2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 179
    monitor-exit v0

    return-void

    .line 181
    :cond_1c
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibratorManager()Landroid/os/VibratorManager;

    move-result-object v2

    .line 182
    .local v2, "vibratorManager":Landroid/os/VibratorManager;
    invoke-virtual {v2}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_31

    .line 183
    iget-object v3, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_36

    .line 185
    :cond_31
    iget-object v3, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 187
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v2    # "vibratorManager":Landroid/os/VibratorManager;
    :goto_36
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method


# virtual methods
.method public cancelVibrateIfAvailable()Z
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 115
    iget-object v2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibratorManager;

    invoke-virtual {v2}, Landroid/os/VibratorManager;->cancel()V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 117
    .end local v1    # "i":I
    :cond_1a
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    monitor-exit v0

    return v1

    .line 118
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public isAvailable()Z
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 89
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public onInputDeviceAdded(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDevice(I)V

    .line 67
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDevice(I)V

    .line 72
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 76
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onSystemReady()V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 61
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public updateInputDeviceVibrators(Z)Z
    .registers 11
    .param p1, "vibrateInputDevices"    # Z

    .line 129
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 132
    monitor-exit v0

    return v2

    .line 134
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    if-ne p1, v1, :cond_10

    .line 136
    monitor-exit v0

    return v2

    .line 139
    :cond_10
    iput-boolean p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    .line 140
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 142
    if-eqz p1, :cond_4b

    .line 146
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v3, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 148
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    array-length v3, v1

    :goto_27
    if-ge v2, v3, :cond_50

    aget v4, v1, v2

    .line 149
    .local v4, "deviceId":I
    iget-object v5, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 150
    .local v5, "device":Landroid/view/InputDevice;
    if-nez v5, :cond_34

    .line 151
    goto :goto_48

    .line 153
    :cond_34
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibratorManager()Landroid/os/VibratorManager;

    move-result-object v6

    .line 154
    .local v6, "vibratorManager":Landroid/os/VibratorManager;
    invoke-virtual {v6}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_48

    .line 155
    iget-object v7, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/view/InputDevice;->getId()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    .end local v4    # "deviceId":I
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "vibratorManager":Landroid/os/VibratorManager;
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 159
    :cond_4b
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 161
    :cond_50
    monitor-exit v0

    .line 163
    const/4 v0, 0x1

    return v0

    .line 161
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public vibrateIfAvailable(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)Z
    .registers 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/CombinedVibration;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 99
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 101
    iget-object v2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/VibratorManager;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 103
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    monitor-exit v0

    return v1

    .line 104
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v1
.end method
