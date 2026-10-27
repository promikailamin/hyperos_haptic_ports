.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I

.field private static final BIT_HEADSET_NO_MIC:I

.field private static final BIT_LINEOUT:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final DP_AUDIO_CONNS:[Ljava/lang/String;

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final NAME_DP_AUDIO:Ljava/lang/String; = "soc:qcom,msm-ext-disp"

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I

.field private static final TAG:Ljava/lang/String;

.field private static final swap_update:Z


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDpCount:I

.field private final mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDpCount(Lcom/android/server/WiredAccessoryManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseDevInputEventForAudioJack(Lcom/android/server/WiredAccessoryManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monSystemReady(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDevicesState(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetBIT_HEADSET()I
    .registers 1

    sget v0, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetBIT_HEADSET_NO_MIC()I
    .registers 1

    sget v0, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET_NO_MIC:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDP_AUDIO_CONNS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateBit([IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 58
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "ro.vendor.audio.swap_update"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/WiredAccessoryManager;->swap_update:Z

    .line 69
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 70
    sput v1, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET:I

    .line 71
    sput v2, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET_NO_MIC:I

    goto :goto_1f

    .line 73
    :cond_1b
    sput v2, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET:I

    .line 74
    sput v1, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET_NO_MIC:I

    .line 83
    :goto_1f
    sget v0, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET:I

    sget v1, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET_NO_MIC:I

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x10

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/server/WiredAccessoryManager;->SUPPORTED_HEADSETS:I

    .line 92
    const-string/jumbo v0, "soc:qcom,msm-ext-disp/3/0"

    const-string/jumbo v1, "soc:qcom,msm-ext-disp/2/0"

    const-string/jumbo v2, "soc:qcom,msm-ext-disp/1/0"

    const-string/jumbo v3, "soc:qcom,msm-ext-disp/0/0"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 329
    new-instance v0, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 124
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 125
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 127
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 128
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 130
    nop

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 133
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 134
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 136
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 138
    return-void
.end method

.method private onSystemReady()V
    .registers 7

    .line 141
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_31

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "switchValues":I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/16 v4, -0x100

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 145
    or-int/lit8 v0, v0, 0x4

    .line 147
    :cond_14
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_1f

    .line 149
    or-int/lit8 v0, v0, 0x10

    .line 151
    :cond_1f
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x6

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_2a

    .line 152
    or-int/lit8 v0, v0, 0x40

    .line 154
    :cond_2a
    const-wide/16 v1, 0x0

    const/16 v3, 0x54

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 159
    .end local v0    # "switchValues":I
    :cond_31
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->uEventCount()I

    .line 166
    :cond_3c
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 168
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .registers 15
    .param p1, "headset"    # I
    .param p2, "headsetState"    # I
    .param p3, "prevHeadsetState"    # I
    .param p4, "headsetNameAddr"    # Ljava/lang/String;

    .line 361
    and-int v0, p2, p1

    and-int v1, p3, p1

    if-eq v0, v1, :cond_c9

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "outDevice":I
    const/4 v1, 0x0

    .line 366
    .local v1, "inDevice":I
    and-int v2, p2, p1

    if-eqz v2, :cond_e

    .line 367
    const/4 v2, 0x1

    .local v2, "state":I
    goto :goto_f

    .line 369
    .end local v2    # "state":I
    :cond_e
    const/4 v2, 0x0

    .line 372
    .restart local v2    # "state":I
    :goto_f
    sget v3, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET:I

    if-ne p1, v3, :cond_18

    .line 373
    const/4 v0, 0x4

    .line 374
    const v1, -0x7ffffff0

    goto :goto_39

    .line 375
    :cond_18
    sget v3, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET_NO_MIC:I

    if-ne p1, v3, :cond_1f

    .line 376
    const/16 v0, 0x8

    goto :goto_39

    .line 377
    :cond_1f
    const/16 v3, 0x20

    if-ne p1, v3, :cond_26

    .line 378
    const/high16 v0, 0x20000

    goto :goto_39

    .line 379
    :cond_26
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2c

    .line 380
    const/16 v0, 0x800

    goto :goto_39

    .line 381
    :cond_2c
    const/16 v3, 0x8

    if-ne p1, v3, :cond_33

    .line 382
    const/16 v0, 0x1000

    goto :goto_39

    .line 383
    :cond_33
    const/16 v3, 0x10

    if-ne p1, v3, :cond_af

    .line 384
    const/16 v0, 0x400

    .line 391
    :goto_39
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "headset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 392
    const/4 v5, 0x1

    if-ne v2, v5, :cond_51

    const-string v6, " connected"

    goto :goto_53

    :cond_51
    const-string v6, " disconnected"

    :goto_53
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 391
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v4, "/"

    invoke-virtual {p4, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "hs":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, ""

    if-eqz v0, :cond_a0

    .line 398
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Output device address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    if-le v9, v5, :cond_7a

    aget-object v9, v4, v5

    goto :goto_7b

    :cond_7a
    move-object v9, v7

    :goto_7b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 402
    array-length v8, v4

    if-le v8, v5, :cond_9a

    aget-object v8, v4, v5

    goto :goto_9b

    :cond_9a
    move-object v8, v7

    :goto_9b
    aget-object v9, v4, v6

    .line 401
    invoke-virtual {v3, v0, v2, v8, v9}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_a0
    if-eqz v1, :cond_c9

    .line 406
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 407
    array-length v8, v4

    if-le v8, v5, :cond_a9

    aget-object v7, v4, v5

    :cond_a9
    aget-object v5, v4, v6

    .line 406
    invoke-virtual {v3, v1, v2, v7, v5}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_c9

    .line 386
    .end local v4    # "hs":[Ljava/lang/String;
    :cond_af
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceState() invalid headset type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 410
    .end local v0    # "outDevice":I
    .end local v1    # "inDevice":I
    .end local v2    # "state":I
    :cond_c9
    :goto_c9
    return-void
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .registers 8
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetNameAddr"    # Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    sget v1, Lcom/android/server/WiredAccessoryManager;->SUPPORTED_HEADSETS:I

    .line 349
    .local v1, "allHeadsets":I
    const/4 v2, 0x1

    .local v2, "curHeadset":I
    :goto_6
    if-eqz v1, :cond_14

    .line 350
    and-int v3, v2, v1

    if-eqz v3, :cond_11

    .line 351
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 353
    not-int v3, v2

    and-int/2addr v1, v3

    .line 349
    :cond_11
    shl-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 356
    .end local v1    # "allHeadsets":I
    .end local v2    # "curHeadset":I
    :cond_14
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .registers 5
    .param p1, "switchValues"    # I
    .param p2, "switchMask"    # I

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_12

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_12

    .line 416
    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_12
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1f

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1f

    .line 420
    const-string v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static updateBit([IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "maskAndState"    # [I
    .param p1, "position"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 863
    const/4 v0, 0x0

    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2b

    .line 865
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 866
    aget v0, p0, v2

    or-int/2addr v0, p1

    aput v0, p0, v2

    goto :goto_4f

    .line 867
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 868
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 869
    aget v0, p0, v2

    not-int v1, p1

    and-int/2addr v0, v1

    aput v0, p0, v2

    .line 871
    :cond_4f
    :goto_4f
    return-void
.end method

.method private updateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 22
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .line 244
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    sget v4, Lcom/android/server/WiredAccessoryManager;->SUPPORTED_HEADSETS:I

    and-int/2addr v4, v3

    .line 245
    .local v4, "headsetState":I
    and-int/lit8 v5, v3, 0x10

    .line 246
    .local v5, "newDpState":I
    and-int/lit8 v6, v4, 0x4

    .line 247
    .local v6, "usb_headset_anlg":I
    and-int/lit8 v7, v4, 0x8

    .line 248
    .local v7, "usb_headset_dgtl":I
    sget v8, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET:I

    sget v9, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET_NO_MIC:I

    or-int v10, v8, v9

    or-int/lit8 v10, v10, 0x20

    and-int/2addr v10, v4

    .line 249
    .local v10, "h2w_headset":I
    const/4 v11, 0x1

    .line 250
    .local v11, "h2wStateChange":Z
    const/4 v12, 0x1

    .line 251
    .local v12, "usbStateChange":Z
    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v13, v13, 0x10

    if-lez v13, :cond_24

    const/4 v13, 0x1

    goto :goto_25

    :cond_24
    const/4 v13, 0x0

    .line 252
    .local v13, "dpBitState":Z
    :goto_25
    iget v14, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-nez v14, :cond_2b

    const/4 v14, 0x0

    goto :goto_2c

    :cond_2b
    const/4 v14, 0x1

    .line 255
    .local v14, "dpCountState":Z
    :goto_2c
    sget-object v15, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    move/from16 v16, v11

    .end local v11    # "h2wStateChange":Z
    .local v16, "h2wStateChange":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v12

    .end local v12    # "usbStateChange":Z
    .local v17, "usbStateChange":Z
    const-string/jumbo v12, "newName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " headsetState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " prev headsetState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " num of active dp conns= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget v11, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string/jumbo v12, "soc:qcom,msm-ext-disp"

    if-ne v11, v4, :cond_88

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_88

    .line 263
    const-string v8, "No state change."

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 270
    :cond_88
    or-int/2addr v8, v9

    or-int/lit8 v8, v8, 0x20

    if-ne v10, v8, :cond_94

    .line 271
    const-string v8, "Invalid combination, unsetting h2w flag"

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v11, 0x0

    .end local v16    # "h2wStateChange":Z
    .restart local v11    # "h2wStateChange":Z
    goto :goto_96

    .line 270
    .end local v11    # "h2wStateChange":Z
    .restart local v16    # "h2wStateChange":Z
    :cond_94
    move/from16 v11, v16

    .line 276
    .end local v16    # "h2wStateChange":Z
    .restart local v11    # "h2wStateChange":Z
    :goto_96
    const/4 v8, 0x4

    if-ne v6, v8, :cond_a5

    const/16 v8, 0x8

    if-ne v7, v8, :cond_a5

    .line 277
    const-string v8, "Invalid combination, unsetting usb flag"

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v8, 0x0

    move/from16 v17, v8

    .line 280
    :cond_a5
    if-nez v11, :cond_b0

    if-nez v17, :cond_b0

    .line 281
    const-string/jumbo v8, "invalid transition, returning ..."

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 285
    :cond_b0
    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d7

    .line 286
    if-lez v5, :cond_c6

    iget v8, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    sget-object v9, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_c6

    if-ne v13, v14, :cond_c6

    .line 290
    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    goto :goto_d7

    .line 291
    :cond_c6
    if-nez v5, :cond_d1

    iget v8, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-lez v8, :cond_d1

    .line 292
    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    goto :goto_d7

    .line 294
    :cond_d1
    const-string v8, "No state change for DP."

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 299
    :cond_d7
    :goto_d7
    iget-object v8, v0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 301
    const-string v8, "MSG_NEW_DEVICE_STATE"

    invoke-static {v15, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_115

    .line 306
    iget v8, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 307
    .local v8, "pseudoHeadsetState":I
    if-eqz v13, :cond_f1

    if-eqz v5, :cond_f1

    .line 309
    iget v9, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v8, v9, -0x11

    .line 311
    :cond_f1
    iget-object v9, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "soc:qcom,msm-ext-disp/"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x1

    invoke-virtual {v9, v15, v4, v8, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 315
    .local v9, "msg":Landroid/os/Message;
    if-nez v4, :cond_114

    iget v12, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-eqz v12, :cond_114

    .line 317
    or-int/lit8 v4, v4, 0x10

    .line 319
    .end local v8    # "pseudoHeadsetState":I
    :cond_114
    goto :goto_135

    .line 320
    .end local v9    # "msg":Landroid/os/Message;
    :cond_115
    iget-object v8, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget v9, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x1

    invoke-virtual {v8, v15, v4, v9, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 324
    .restart local v9    # "msg":Landroid/os/Message;
    :goto_135
    iget-object v8, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    iput v4, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 327
    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .registers 12
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .line 173
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Lcom/android/server/WiredAccessoryManagerStub;->get()Lcom/android/server/WiredAccessoryManagerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p3, p4}, Lcom/android/server/WiredAccessoryManagerStub;->isDeviceUnsupported(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 181
    return-void

    .line 185
    :cond_42
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_45
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int v2, p4

    and-int/2addr v1, v2

    or-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 188
    and-int/lit8 v1, v1, 0x54

    sparse-switch v1, :sswitch_data_7a

    .line 211
    const/4 v1, 0x0

    .local v1, "headset":I
    goto :goto_61

    .line 199
    .end local v1    # "headset":I
    :sswitch_53
    const/16 v1, 0x20

    .line 200
    .restart local v1    # "headset":I
    goto :goto_61

    .line 203
    .end local v1    # "headset":I
    :sswitch_56
    sget v1, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET:I

    .line 204
    .restart local v1    # "headset":I
    goto :goto_61

    .line 207
    .end local v1    # "headset":I
    :sswitch_59
    sget v1, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET:I

    .line 208
    .restart local v1    # "headset":I
    goto :goto_61

    .line 195
    .end local v1    # "headset":I
    :sswitch_5c
    sget v1, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET_NO_MIC:I

    .line 196
    .restart local v1    # "headset":I
    goto :goto_61

    .line 191
    .end local v1    # "headset":I
    :sswitch_5f
    const/4 v1, 0x0

    .line 192
    .restart local v1    # "headset":I
    nop

    .line 215
    :goto_61
    const-string/jumbo v2, "h2w"

    const-string v3, ""

    iget v4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    sget v5, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET:I

    sget v6, Lcom/android/server/WiredAccessoryManager;->BIT_HEADSET_NO_MIC:I

    or-int/2addr v5, v6

    or-int/lit8 v5, v5, 0x20

    not-int v5, v5

    and-int/2addr v4, v5

    or-int/2addr v4, v1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    .end local v1    # "headset":I
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_45 .. :try_end_79} :catchall_77

    throw v1

    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_5f
        0x4 -> :sswitch_5c
        0x10 -> :sswitch_59
        0x14 -> :sswitch_56
        0x40 -> :sswitch_53
    .end sparse-switch
.end method

.method public systemReady()V
    .registers 6

    .line 222
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 225
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 226
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method
