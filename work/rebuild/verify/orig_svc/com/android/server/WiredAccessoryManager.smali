.class public final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# static fields
.field public static final DP_AUDIO_CONNS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "WiredAccessoryManager"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mDetectedIntf:Ljava/lang/String;

.field public mDpCount:I

.field public final mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

.field public final mHandler:Landroid/os/Handler;

.field public mHeadsetState:I

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field public final mUseDevInputEventForAudioJack:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDetectedIntf(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mDetectedIntf:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDpCount(Lcom/android/server/WiredAccessoryManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseDevInputEventForAudioJack(Lcom/android/server/WiredAccessoryManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDetectedIntf(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mDetectedIntf:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemReady(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDevicesState(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDP_AUDIO_CONNS()[Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateBit([IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 80
    const-string/jumbo v6, "soc:qcom,msm-ext-disp/1/0"

    const-string/jumbo v7, "soc:qcom,msm-ext-disp/0/0"

    const-string/jumbo v0, "soc:qcom,msm-ext-disp/3/1"

    const-string/jumbo v1, "soc:qcom,msm-ext-disp/2/1"

    const-string/jumbo v2, "soc:qcom,msm-ext-disp/1/1"

    const-string/jumbo v3, "soc:qcom,msm-ext-disp/0/1"

    const-string/jumbo v4, "soc:qcom,msm-ext-disp/3/0"

    const-string/jumbo v5, "soc:qcom,msm-ext-disp/2/0"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 7

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 104
    const-string v0, "DP"

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mDetectedIntf:Ljava/lang/String;

    .line 346
    new-instance v0, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 113
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 114
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 116
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 117
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11102b4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 122
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-direct {p1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 123
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    return-void
.end method

.method public static calculateHeadsetState(III)I
    .registers 8

    .line 0
    and-int/lit8 v0, p2, 0x14

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eqz v0, :cond_19

    and-int/lit8 p0, p0, -0x4

    and-int/lit8 v0, p1, 0x14

    const/4 v3, 0x4

    if-eq v0, v3, :cond_17

    const/4 v3, 0x1

    if-eq v0, v2, :cond_18

    const/16 v4, 0x14

    if-eq v0, v4, :cond_18

    move v3, v1

    goto :goto_18

    :cond_17
    const/4 v3, 0x2

    :cond_18
    :goto_18
    or-int/2addr p0, v3

    :cond_19
    const/16 v0, 0x140

    and-int/2addr p2, v0

    if-eqz p2, :cond_37

    const/16 v3, 0x20

    const/16 v4, 0x40

    if-eq p2, v4, :cond_2a

    if-eq p2, v0, :cond_28

    move p2, v1

    goto :goto_2b

    :cond_28
    move p2, v2

    goto :goto_2b

    :cond_2a
    move p2, v3

    :goto_2b
    not-int p2, p2

    and-int/2addr p0, p2

    and-int/2addr p1, v0

    if-eq p1, v4, :cond_35

    if-eq p1, v0, :cond_33

    goto :goto_36

    :cond_33
    move v1, v2

    goto :goto_36

    :cond_35
    move v1, v3

    :goto_36
    or-int/2addr p0, v1

    :cond_37
    return p0
.end method

.method public static updateBit([IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 901
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    .line 903
    aget p2, p0, v0

    or-int/2addr p2, p1

    aput p2, p0, v0

    .line 904
    aget p2, p0, v2

    or-int/2addr p1, p2

    aput p1, p0, v2

    return-void

    .line 905
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "=0"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 906
    aget p2, p0, v0

    or-int/2addr p2, p1

    aput p2, p0, v0

    .line 907
    aget p2, p0, v2

    not-int p1, p1

    and-int/2addr p1, p2

    aput p1, p0, v2

    :cond_4b
    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 216
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JIIZ)V

    return-void
.end method

.method public notifyWiredAccessoryChanged(JIIZ)V
    .registers 6

    .line 227
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 229
    :try_start_3
    iget p2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-static {p2, p3, p4}, Lcom/android/server/WiredAccessoryManager;->calculateHeadsetState(III)I

    move-result p2

    .line 231
    const-string p3, "h2w"

    const-string p4, ""

    invoke-virtual {p0, p3, p4, p2, p5}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 232
    monitor-exit p1

    return-void

    :catchall_12
    move-exception p0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final onSystemReady()V
    .registers 14

    .line 127
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_51

    .line 129
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/16 v3, -0x100

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    const/4 v1, 0x4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 133
    :goto_15
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v5, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v4, :cond_1f

    or-int/lit8 v0, v0, 0x10

    .line 137
    :cond_1f
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x6

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v4, :cond_2a

    or-int/lit8 v0, v0, 0x40

    .line 140
    :cond_2a
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v5, 0x8

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v4, :cond_36

    or-int/lit16 v0, v0, 0x100

    :cond_36
    and-int/lit8 v4, v0, 0x14

    if-eqz v4, :cond_43

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    move v5, v4

    move-object v1, p0

    .line 146
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JIIZ)V

    goto :goto_44

    :cond_43
    move-object v1, p0

    :goto_44
    and-int/lit16 v10, v0, 0x140

    if-eqz v10, :cond_52

    const-wide/16 v8, 0x0

    const/4 v12, 0x1

    move v11, v10

    move-object v7, v1

    .line 154
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JIIZ)V

    goto :goto_52

    :cond_51
    move-object v1, p0

    .line 162
    :cond_52
    :goto_52
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result p0

    if-eqz p0, :cond_5d

    iget-object p0, v1, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->uEventCount()I

    .line 169
    :cond_5d
    iget-object p0, v1, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    return-void
.end method

.method public final setDeviceStateLocked(IIILjava/lang/String;)V
    .registers 11

    and-int/2addr p2, p1

    and-int/2addr p3, p1

    if-eq p2, p3, :cond_6f

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    move p2, v0

    goto :goto_b

    :cond_a
    move p2, p3

    :goto_b
    const/4 v1, 0x4

    if-ne p1, v0, :cond_12

    const p1, -0x7ffffff0

    goto :goto_33

    :cond_12
    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne p1, v2, :cond_1a

    move p1, p3

    move v1, v3

    goto :goto_33

    :cond_1a
    const/16 v2, 0x20

    if-ne p1, v2, :cond_22

    const/high16 v1, 0x20000

    :goto_20
    move p1, p3

    goto :goto_33

    :cond_22
    if-ne p1, v1, :cond_27

    const/16 v1, 0x800

    goto :goto_20

    :cond_27
    if-ne p1, v3, :cond_2c

    const/16 v1, 0x1000

    goto :goto_20

    :cond_2c
    const/16 v1, 0x10

    if-ne p1, v1, :cond_58

    const/16 v1, 0x400

    goto :goto_20

    .line 412
    :goto_33
    const-string v2, "/"

    invoke-virtual {p4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 414
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 415
    array-length v3, p4

    const-string v4, ""

    if-le v3, v0, :cond_43

    aget-object v3, p4, v0

    goto :goto_44

    :cond_43
    move-object v3, v4

    :goto_44
    aget-object v5, p4, p3

    .line 414
    invoke-virtual {v2, v1, p2, v3, v5}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6f

    .line 418
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 419
    array-length v1, p4

    if-le v1, v0, :cond_52

    aget-object v4, p4, v0

    :cond_52
    aget-object p3, p4, p3

    .line 418
    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 403
    :cond_58
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setDeviceState() invalid headset type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return-void
.end method

.method public final setDevicesState(IILjava/lang/String;)V
    .registers 8

    .line 364
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x3f

    const/4 v2, 0x1

    :goto_6
    if-eqz v1, :cond_17

    and-int v3, v2, v1

    if-eqz v3, :cond_14

    .line 368
    :try_start_c
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    not-int v3, v2

    and-int/2addr v1, v3

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_19

    :cond_14
    :goto_14
    shl-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 373
    :cond_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_12

    throw p0
.end method

.method public systemReady()V
    .registers 6

    .line 238
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 241
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 242
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 243
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final updateLocked(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 16

    and-int/lit8 v0, p3, 0x3f

    and-int/lit8 v1, p3, 0x10

    and-int/lit8 v2, p3, 0x4

    and-int/lit8 v3, p3, 0x8

    const/16 v4, 0x23

    and-int/2addr p3, v4

    .line 269
    iget v5, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v6, v5, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v6, :cond_15

    move v6, v8

    goto :goto_16

    :cond_15
    move v6, v7

    .line 270
    :goto_16
    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-eqz v9, :cond_1c

    move v9, v8

    goto :goto_1d

    :cond_1c
    move v9, v7

    .line 279
    :goto_1d
    const-string/jumbo v10, "soc:qcom,msm-ext-disp"

    if-ne v5, v0, :cond_30

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 280
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p1, "No state change."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    if-ne p3, v4, :cond_3b

    .line 288
    sget-object p3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v4, "Invalid combination, unsetting h2w flag"

    invoke-static {p3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v7

    goto :goto_3c

    :cond_3b
    move p3, v8

    :goto_3c
    const/4 v4, 0x4

    if-ne v2, v4, :cond_4b

    const/16 v2, 0x8

    if-ne v3, v2, :cond_4b

    .line 294
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "Invalid combination, unsetting usb flag"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_4b
    move v7, v8

    :goto_4c
    if-nez p3, :cond_58

    if-nez v7, :cond_58

    .line 298
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p1, "invalid transition, returning ..."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 302
    :cond_58
    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7f

    if-lez v1, :cond_6d

    .line 303
    iget p3, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    sget-object v2, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge p3, v2, :cond_6d

    if-ne v6, v9, :cond_6d

    add-int/2addr p3, v8

    .line 307
    iput p3, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    goto :goto_7f

    :cond_6d
    if-nez v1, :cond_77

    .line 308
    iget p3, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-lez p3, :cond_77

    sub-int/2addr p3, v8

    .line 309
    iput p3, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    goto :goto_7f

    .line 311
    :cond_77
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p1, "No state change for DP."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7f
    :goto_7f
    if-eqz p4, :cond_89

    .line 317
    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string p2, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    goto :goto_e5

    .line 319
    :cond_89
    iget-object p3, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 320
    sget-object p3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p4, "MSG_NEW_DEVICE_STATE"

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c4

    .line 324
    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-eqz v6, :cond_a3

    if-eqz v1, :cond_a3

    and-int/lit8 p1, p1, -0x11

    .line 329
    :cond_a3
    iget-object p3, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "soc:qcom,msm-ext-disp/"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v8, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    if-nez v0, :cond_e0

    .line 332
    iget p2, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-eqz p2, :cond_e0

    or-int/lit8 v0, v0, 0x10

    goto :goto_e0

    .line 337
    :cond_c4
    iget-object p3, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget p4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v8, v0, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 340
    :cond_e0
    :goto_e0
    iget-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    :goto_e5
    iput v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return-void
.end method
