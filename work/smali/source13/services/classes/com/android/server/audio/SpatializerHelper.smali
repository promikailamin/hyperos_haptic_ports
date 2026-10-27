.class public Lcom/android/server/audio/SpatializerHelper;
.super Ljava/lang/Object;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/SpatializerHelper$SADeviceState;,
        Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;,
        Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;,
        Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_MORE:Z = false

.field private static final DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final DEFAULT_FORMAT:Landroid/media/AudioFormat;

.field private static final METRICS_DEVICE_PREFIX:Ljava/lang/String; = "audio.spatializer.device."

.field private static final ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

.field private static final SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

.field private static final STATE_DISABLED_AVAILABLE:I = 0x6

.field private static final STATE_DISABLED_UNAVAILABLE:I = 0x3

.field private static final STATE_ENABLED_AVAILABLE:I = 0x5

.field private static final STATE_ENABLED_UNAVAILABLE:I = 0x4

.field private static final STATE_NOT_SUPPORTED:I = 0x1

.field private static final STATE_UNINITIALIZED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AS.SpatializerHelper"

.field private static final WIRELESS_TYPES:[I


# instance fields
.field private final mASA:Lcom/android/server/audio/AudioSystemAdapter;

.field private mActualHeadTrackingMode:I

.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private mBinauralSupported:Z

.field private mCapableSpatLevel:I

.field private mDesiredHeadTrackingMode:I

.field private mDesiredHeadTrackingModeWhenEnabled:I

.field private mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

.field private mFeatureEnabled:Z

.field final mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ISpatializerHeadToSoundStagePoseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadTrackerAvailable:Z

.field final mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ISpatializerHeadTrackerAvailableCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ISpatializerHeadTrackingModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHeadTrackingSupported:Z

.field final mOutputCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ISpatializerOutputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSACapableDeviceTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSADevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/SpatializerHelper$SADeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSpat:Landroid/media/ISpatializer;

.field private mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

.field private mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

.field private mSpatLevel:I

.field private mSpatOutput:I

.field private mState:I

.field final mStateCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ISpatializerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedHeadTrackingModes:[I

.field private mTransauralSupported:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpatOutput(Lcom/android/server/audio/SpatializerHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSpatLevel(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSpatOutput(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchActualHeadTrackingMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchOutputUpdate(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchOutputUpdate(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchPoseUpdate(Lcom/android/server/audio/SpatializerHelper;[F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchPoseUpdate([F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostInitSensors(Lcom/android/server/audio/SpatializerHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smheadTrackingModeTypeToSpatializerInt(B)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisWireless(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->isWireless(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smloglogi(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smspatializationLevelToSpatializerInt(B)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->spatializationLevelToSpatializerInt(B)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 80
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->WIRELESS_TYPES:[I

    .line 143
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 146
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 147
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 148
    const v2, 0xbb80

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 149
    const/16 v2, 0xfc

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_FORMAT:Landroid/media/AudioFormat;

    .line 153
    new-array v0, v1, [Landroid/media/AudioDeviceAttributes;

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

    return-void

    nop

    :array_44
    .array-data 4
        0x7
        0x8
        0x1a
        0x1b
        0x1e
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;)V
    .registers 6
    .param p1, "mother"    # Lcom/android/server/audio/AudioService;
    .param p2, "asa"    # Lcom/android/server/audio/AudioSystemAdapter;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 118
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    .line 120
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    .line 121
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 122
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 125
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    .line 126
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 127
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 128
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 134
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    .line 135
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    .line 138
    new-instance v1, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback-IA;)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    .line 810
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 1024
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 1037
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    .line 1245
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    .line 1350
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    .line 174
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 175
    iput-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    .line 176
    return-void
.end method

.method private addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;Z)V
    .registers 8
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "forceEnable"    # Z

    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 548
    return-void

    .line 550
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCompatibleAudioDevice: dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0

    .line 552
    .local v0, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    const/4 v1, 0x0

    .line 553
    .local v1, "deviceUpdated":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    if-eqz v0, :cond_2f

    .line 554
    if-eqz p2, :cond_61

    iget-boolean v2, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    if-nez v2, :cond_61

    .line 555
    move-object v1, v0

    .line 556
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    goto :goto_61

    .line 560
    :cond_2f
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(I)I

    move-result v2

    .line 561
    .local v2, "canonicalDeviceType":I
    if-nez v2, :cond_52

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCompatibleAudioDevice with incompatible AudioDeviceAttributes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 566
    :cond_52
    new-instance v3, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;-><init>(ILjava/lang/String;)V

    move-object v1, v3

    .line 567
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    .end local v2    # "canonicalDeviceType":I
    :cond_61
    :goto_61
    if-eqz v1, :cond_70

    .line 570
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    .line 571
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->persistSpatialAudioDeviceSettings()V

    .line 572
    const-string v2, "addCompatibleAudioDevice"

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V

    .line 574
    :cond_70
    return-void
.end method

.method private declared-synchronized addWirelessDeviceIfNew(Landroid/media/AudioDeviceAttributes;)V
    .registers 6
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    monitor-enter p0

    .line 676
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_4d

    if-nez v0, :cond_9

    .line 677
    monitor-exit p0

    return-void

    .line 679
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 681
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(I)I

    move-result v0

    .line 682
    .local v0, "canonicalDeviceType":I
    if-nez v0, :cond_33

    .line 683
    const-string v1, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWirelessDeviceIfNew with incompatible AudioDeviceAttributes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_4d

    .line 685
    monitor-exit p0

    return-void

    .line 687
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_33
    :try_start_33
    new-instance v1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 688
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;-><init>(ILjava/lang/String;)V

    .line 689
    .local v1, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->persistSpatialAudioDeviceSettings()V

    .line 691
    const-string v2, "addWirelessDeviceIfNew"

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_4d

    .line 693
    .end local v0    # "canonicalDeviceType":I
    .end local v1    # "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    :cond_4b
    monitor-exit p0

    return-void

    .line 675
    .end local p1    # "ada":Landroid/media/AudioDeviceAttributes;
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z
    .registers 6
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "devices"    # [Landroid/media/AudioDeviceAttributes;

    monitor-enter p0

    .line 735
    const/4 v0, 0x0

    :try_start_2
    aget-object v1, p3, v0

    invoke-direct {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 736
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_12

    monitor-exit p0

    return v0

    .line 738
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_10
    monitor-exit p0

    return v0

    .line 734
    .end local p1    # "attributes":Landroid/media/AudioAttributes;
    .end local p2    # "format":Landroid/media/AudioFormat;
    .end local p3    # "devices":[Landroid/media/AudioDeviceAttributes;
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkSpatForHeadTracking(Ljava/lang/String;)Z
    .registers 5
    .param p1, "funcName"    # Ljava/lang/String;

    .line 1181
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2e

    :pswitch_6
    goto :goto_2a

    .line 1189
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_2a

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSpatForHeadTracking(): native spatializer should not be null in state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.SpatializerHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->postReset()V

    .line 1194
    return v1

    .line 1184
    :pswitch_29
    return v1

    .line 1198
    :cond_2a
    :goto_2a
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_29
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private createSpat()V
    .registers 4

    .line 949
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_3a

    .line 950
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$SpatializerCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 951
    invoke-static {v0}, Landroid/media/AudioSystem;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 954
    :try_start_12
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-eqz v1, :cond_28

    .line 955
    nop

    .line 956
    invoke-interface {v0}, Landroid/media/ISpatializer;->getActualHeadTrackingMode()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 957
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    invoke-interface {v0, v1}, Landroid/media/ISpatializer;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_28} :catch_29

    .line 964
    :cond_28
    goto :goto_3a

    .line 959
    :catch_29
    move-exception v0

    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Can\'t configure head tracking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 961
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 962
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 963
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 966
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    return-void
.end method

.method private dispatchActualHeadTrackingMode(I)V
    .registers 7
    .param p1, "newMode"    # I

    .line 1202
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1203
    .local v0, "nbCallbacks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_37

    .line 1205
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackingModeCallback;

    .line 1206
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackingModeCallback;->dispatchSpatializerActualHeadTrackingModeChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1210
    goto :goto_34

    .line 1207
    :catch_15
    move-exception v2

    .line 1208
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in dispatchSpatializerActualHeadTrackingModeChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1203
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1212
    .end local v1    # "i":I
    :cond_37
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1213
    return-void
.end method

.method private dispatchDesiredHeadTrackingMode(I)V
    .registers 7
    .param p1, "newMode"    # I

    .line 1216
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1217
    .local v0, "nbCallbacks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_37

    .line 1219
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackingModeCallback;

    .line 1220
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackingModeCallback;->dispatchSpatializerDesiredHeadTrackingModeChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1224
    goto :goto_34

    .line 1221
    :catch_15
    move-exception v2

    .line 1222
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in dispatchSpatializerDesiredHeadTrackingModeChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1226
    .end local v1    # "i":I
    :cond_37
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1227
    return-void
.end method

.method private dispatchHeadTrackerAvailable(Z)V
    .registers 7
    .param p1, "available"    # Z

    .line 1230
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1231
    .local v0, "nbCallbacks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_37

    .line 1233
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    .line 1234
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackerAvailableCallback;->dispatchSpatializerHeadTrackerAvailable(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1238
    goto :goto_34

    .line 1235
    :catch_15
    move-exception v2

    .line 1236
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in dispatchSpatializerHeadTrackerAvailable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1231
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1240
    .end local v1    # "i":I
    :cond_37
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1241
    return-void
.end method

.method private dispatchOutputUpdate(I)V
    .registers 7
    .param p1, "output"    # I

    .line 1364
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1365
    .local v0, "nbCallbacks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 1367
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerOutputCallback;

    invoke-interface {v2, p1}, Landroid/media/ISpatializerOutputCallback;->dispatchSpatializerOutputChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1370
    goto :goto_1d

    .line 1368
    :catch_15
    move-exception v2

    .line 1369
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchOutputUpdate"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1365
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1372
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1373
    return-void
.end method

.method private dispatchPoseUpdate([F)V
    .registers 7
    .param p1, "pose"    # [F

    .line 1259
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1260
    .local v0, "nbCallbacks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 1262
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    .line 1263
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback;->dispatchPoseChanged([F)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1266
    goto :goto_1d

    .line 1264
    :catch_15
    move-exception v2

    .line 1265
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchPoseChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1260
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1268
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1269
    return-void
.end method

.method private declared-synchronized evaluateState(Landroid/media/AudioDeviceAttributes;)Landroid/util/Pair;
    .registers 9
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 652
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    .line 654
    .local v0, "deviceType":I
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_39

    .line 655
    const-string v1, "AS.SpatializerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device incompatible with Spatial Audio dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_ab

    monitor-exit p0

    return-object v1

    .line 659
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_39
    :try_start_39
    sget-object v1, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 660
    .local v1, "spatMode":I
    if-ne v1, v3, :cond_6b

    .line 662
    const-string v3, "AS.SpatializerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no spatialization mode found for device type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_39 .. :try_end_69} :catchall_ab

    monitor-exit p0

    return-object v3

    .line 665
    :cond_6b
    :try_start_6b
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v3

    .line 666
    .local v3, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    if-nez v3, :cond_99

    .line 668
    const-string v4, "AS.SpatializerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no spatialization device state found for Spatial Audio device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_97
    .catchall {:try_start_6b .. :try_end_97} :catchall_ab

    monitor-exit p0

    return-object v4

    .line 672
    :cond_99
    :try_start_99
    new-instance v2, Landroid/util/Pair;

    iget-boolean v4, v3, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_ab

    monitor-exit p0

    return-object v2

    .line 651
    .end local v0    # "deviceType":I
    .end local v1    # "spatMode":I
    .end local v3    # "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .end local p1    # "ada":Landroid/media/AudioDeviceAttributes;
    :catchall_ab
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .registers 9
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    .line 633
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    .line 634
    .local v0, "deviceType":I
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->isWireless(I)Z

    move-result v1

    .line 635
    .local v1, "isWireless":Z
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(I)I

    move-result v2

    .line 637
    .local v2, "canonicalDeviceType":I
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 638
    .local v4, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    iget v5, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    if-ne v5, v2, :cond_31

    if-eqz v1, :cond_30

    .line 639
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 640
    :cond_30
    return-object v4

    .line 642
    .end local v4    # "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    :cond_31
    goto :goto_12

    .line 643
    :cond_32
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getCanonicalDeviceType(I)I
    .registers 3
    .param p0, "deviceType"    # I

    .line 615
    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->isWireless(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    .line 617
    :cond_7
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 618
    .local v0, "spatMode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 619
    const/4 v1, 0x2

    return v1

    .line 620
    :cond_14
    if-nez v0, :cond_18

    .line 621
    const/4 v1, 0x4

    return v1

    .line 623
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method private getHeadSensorHandleUpdateTracker()I
    .registers 10

    .line 1661
    const/4 v0, -0x1

    .line 1662
    .local v0, "headHandle":I
    sget-object v1, Lcom/android/server/audio/SpatializerHelper;->ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1663
    .local v1, "currentDevice":Landroid/media/AudioDeviceAttributes;
    if-nez v1, :cond_9

    .line 1664
    return v0

    .line 1666
    :cond_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioService;->getDeviceSensorUuid(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;

    move-result-object v2

    .line 1672
    .local v2, "routingDeviceUuid":Ljava/util/UUID;
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDynamicSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 1673
    .local v3, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 1674
    .local v5, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 1675
    .local v6, "uuid":Ljava/util/UUID;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sensor uuid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " routingDeviceUuid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AS.SpatializerHelper"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    invoke-virtual {v6, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 1677
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1678
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->setHasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 1679
    const/4 v0, -0x1

    goto :goto_6d

    .line 1683
    :cond_60
    sget-object v7, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 1684
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1687
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    .end local v6    # "uuid":Ljava/util/UUID;
    :cond_6c
    goto :goto_1b

    .line 1688
    :cond_6d
    :goto_6d
    return v0
.end method

.method private getScreenSensorHandle()I
    .registers 4

    .line 1692
    const/4 v0, -0x1

    .line 1693
    .local v0, "screenHandle":I
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1694
    .local v1, "screenSensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_f

    .line 1695
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1697
    :cond_f
    return v0
.end method

.method private static headTrackingModeTypeToSpatializerInt(B)I
    .registers 4
    .param p0, "mode"    # B

    .line 1447
    packed-switch p0, :pswitch_data_24

    .line 1457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected head tracking mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1455
    :pswitch_1c
    const/4 v0, 0x2

    return v0

    .line 1453
    :pswitch_1e
    const/4 v0, 0x1

    return v0

    .line 1451
    :pswitch_20
    const/4 v0, -0x1

    return v0

    .line 1449
    :pswitch_22
    const/4 v0, 0x0

    return v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method private isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z
    .registers 5
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    .line 745
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-byte v0, v0

    .line 747
    .local v0, "modeForDevice":B
    const/4 v1, 0x1

    if-nez v0, :cond_13

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v2, :cond_19

    :cond_13
    if-ne v0, v1, :cond_1a

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-eqz v2, :cond_1a

    .line 750
    :cond_19
    return v1

    .line 752
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private static isWireless(I)Z
    .registers 6
    .param p0, "deviceType"    # I

    .line 1652
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->WIRELESS_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget v4, v0, v3

    .line 1653
    .local v4, "type":I
    if-ne v4, p0, :cond_d

    .line 1654
    const/4 v0, 0x1

    return v0

    .line 1652
    .end local v4    # "type":I
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1657
    :cond_10
    return v2
.end method

.method private logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V
    .registers 10
    .param p1, "deviceState"    # Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .param p2, "event"    # Ljava/lang/String;

    .line 584
    iget v0, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    .line 586
    .local v0, "deviceType":I
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "deviceName":Ljava/lang/String;
    new-instance v2, Landroid/media/MediaMetrics$Item;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio.spatializer.device."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v4, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 588
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->ENABLED:Landroid/media/MediaMetrics$Key;

    .line 589
    iget-boolean v4, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    const-string/jumbo v5, "true"

    const-string v6, "false"

    if-eqz v4, :cond_37

    move-object v4, v5

    goto :goto_38

    :cond_37
    move-object v4, v6

    :goto_38
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 590
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->HAS_HEAD_TRACKER:Landroid/media/MediaMetrics$Key;

    .line 592
    iget-boolean v4, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-eqz v4, :cond_4e

    move-object v4, v5

    goto :goto_4f

    :cond_4e
    move-object v4, v6

    .line 591
    :goto_4f
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->HEAD_TRACKER_ENABLED:Landroid/media/MediaMetrics$Key;

    .line 594
    iget-boolean v4, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    if-eqz v4, :cond_5a

    goto :goto_5b

    :cond_5a
    move-object v5, v6

    .line 593
    :goto_5b
    invoke-virtual {v2, v3, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 596
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 70
    const-string v0, "AS.SpatializerHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method private static logloge(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 1706
    sget-object v0, Lcom/android/server/audio/AudioService;->sSpatialLogger:Lcom/android/server/audio/AudioEventLogger;

    const/4 v1, 0x1

    const-string v2, "AS.SpatializerHelper"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;->loglog(Ljava/lang/String;ILjava/lang/String;)V

    .line 1707
    return-object p0
.end method

.method private static loglogi(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 1702
    sget-object v0, Lcom/android/server/audio/AudioService;->sSpatialLogger:Lcom/android/server/audio/AudioEventLogger;

    const-string v1, "AS.SpatializerHelper"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/audio/AudioEventLogger;->loglogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    return-void
.end method

.method private postInitSensors()V
    .registers 2

    .line 1378
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postInitSpatializerHeadTrackingSensors()V

    .line 1379
    return-void
.end method

.method private postReset()V
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postResetSpatializer()V

    .line 418
    return-void
.end method

.method private releaseSpat()V
    .registers 5

    .line 972
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-eqz v0, :cond_21

    .line 973
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 975
    :try_start_7
    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-eqz v2, :cond_e

    .line 976
    invoke-interface {v0, v1}, Landroid/media/ISpatializer;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V

    .line 978
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 979
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->release()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    .line 982
    goto :goto_1f

    .line 980
    :catch_17
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AS.SpatializerHelper"

    const-string v3, "Can\'t set release spatializer cleanly"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 983
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 985
    :cond_21
    return-void
.end method

.method private resetCapabilities()V
    .registers 2

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 332
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 333
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 334
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 335
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    .line 336
    return-void
.end method

.method private declared-synchronized setDispatchAvailableState(Z)V
    .registers 7
    .param p1, "available"    # Z

    monitor-enter p0

    .line 883
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    packed-switch v0, :pswitch_data_132

    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_6
    goto/16 :goto_e1

    .line 909
    .restart local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_8
    if-eqz p1, :cond_33

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") no dispatch: mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 912
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_12f

    .line 913
    monitor-exit p0

    return-void

    .line 915
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_33
    const/4 v0, 0x3

    :try_start_34
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 916
    goto/16 :goto_e1

    .line 919
    :pswitch_38
    if-eqz p1, :cond_63

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") no dispatch: mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 922
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_34 .. :try_end_61} :catchall_12f

    .line 923
    monitor-exit p0

    return-void

    .line 925
    :cond_63
    const/4 v0, 0x4

    :try_start_64
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto/16 :goto_e1

    .line 899
    :pswitch_68
    if-eqz p1, :cond_6e

    .line 900
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 901
    goto :goto_e1

    .line 904
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") no dispatch: mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 905
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_64 .. :try_end_95} :catchall_12f

    .line 906
    monitor-exit p0

    return-void

    .line 889
    :pswitch_97
    if-eqz p1, :cond_9d

    .line 890
    const/4 v0, 0x6

    :try_start_9a
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 891
    goto :goto_e1

    .line 894
    :cond_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") no dispatch: mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 895
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_9a .. :try_end_c4} :catchall_12f

    .line 896
    monitor-exit p0

    return-void

    .line 886
    :pswitch_c6
    :try_start_c6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should not update available state in state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :goto_e1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_10e
    .catchall {:try_start_c6 .. :try_end_10e} :catchall_12f

    .line 931
    .local v0, "nbCallbacks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10f
    if-ge v1, v0, :cond_128

    .line 933
    :try_start_111
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerCallback;

    .line 934
    invoke-interface {v2, p1}, Landroid/media/ISpatializerCallback;->dispatchSpatializerAvailableChanged(Z)V
    :try_end_11c
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_11c} :catch_11d
    .catchall {:try_start_111 .. :try_end_11c} :catchall_12f

    .line 937
    goto :goto_125

    .line 935
    :catch_11d
    move-exception v2

    .line 936
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11e
    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchSpatializerEnabledChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 931
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_125
    add-int/lit8 v1, v1, 0x1

    goto :goto_10f

    .line 939
    .end local v1    # "i":I
    :cond_128
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_12d
    .catchall {:try_start_11e .. :try_end_12d} :catchall_12f

    .line 940
    monitor-exit p0

    return-void

    .line 882
    .end local v0    # "nbCallbacks":I
    .end local p1    # "available":Z
    :catchall_12f
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_c6
        :pswitch_6
        :pswitch_97
        :pswitch_68
        :pswitch_38
        :pswitch_8
    .end packed-switch
.end method

.method private declared-synchronized setDispatchFeatureEnabledState(ZLjava/lang/String;)V
    .registers 8
    .param p1, "featureEnabled"    # Z
    .param p2, "source"    # Ljava/lang/String;

    monitor-enter p0

    .line 829
    if-eqz p1, :cond_65

    .line 830
    :try_start_3
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    packed-switch v0, :pswitch_data_11a

    .line 845
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_46

    .line 835
    .restart local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_b
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 836
    goto :goto_76

    .line 840
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchFeatureEnabledState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") no dispatch: mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 842
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_116

    .line 843
    monitor-exit p0

    return-void

    .line 832
    :pswitch_42
    const/4 v0, 0x4

    :try_start_43
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 833
    goto :goto_76

    .line 845
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for enabled true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_65
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    packed-switch v0, :pswitch_data_126

    .line 864
    new-instance v0, Ljava/lang/IllegalStateException;

    goto/16 :goto_f7

    .line 854
    :pswitch_6e
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 855
    goto :goto_76

    .line 851
    :pswitch_72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 852
    nop

    .line 868
    :goto_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchFeatureEnabledState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 869
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_a3
    .catchall {:try_start_43 .. :try_end_a3} :catchall_116

    .line 871
    .local v0, "nbCallbacks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a4
    if-ge v1, v0, :cond_bd

    .line 873
    :try_start_a6
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerCallback;

    .line 874
    invoke-interface {v2, p1}, Landroid/media/ISpatializerCallback;->dispatchSpatializerEnabledChanged(Z)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_b1} :catch_b2
    .catchall {:try_start_a6 .. :try_end_b1} :catchall_116

    .line 877
    goto :goto_ba

    .line 875
    :catch_b2
    move-exception v2

    .line 876
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_b3
    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchSpatializerEnabledChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    .line 879
    .end local v1    # "i":I
    :cond_bd
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_c2
    .catchall {:try_start_b3 .. :try_end_c2} :catchall_116

    .line 880
    monitor-exit p0

    return-void

    .line 859
    .end local v0    # "nbCallbacks":I
    :pswitch_c4
    :try_start_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchFeatureEnabledState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") no dispatch: mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 860
    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_c4 .. :try_end_f5} :catchall_116

    .line 862
    monitor-exit p0

    return-void

    .line 864
    :goto_f7
    :try_start_f7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for enabled false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_116
    .catchall {:try_start_f7 .. :try_end_116} :catchall_116

    .line 828
    .end local p1    # "featureEnabled":Z
    .end local p2    # "source":Ljava/lang/String;
    :catchall_116
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_11a
    .packed-switch 0x3
        :pswitch_42
        :pswitch_f
        :pswitch_f
        :pswitch_b
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x3
        :pswitch_c4
        :pswitch_72
        :pswitch_6e
        :pswitch_c4
    .end packed-switch
.end method

.method private static spatStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 1633
    packed-switch p0, :pswitch_data_1a

    .line 1647
    :pswitch_3
    const-string/jumbo v0, "invalid state"

    return-object v0

    .line 1645
    :pswitch_7
    const-string v0, "STATE_DISABLED_AVAILABLE"

    return-object v0

    .line 1643
    :pswitch_a
    const-string v0, "STATE_ENABLED_AVAILABLE"

    return-object v0

    .line 1641
    :pswitch_d
    const-string v0, "STATE_ENABLED_UNAVAILABLE"

    return-object v0

    .line 1639
    :pswitch_10
    const-string v0, "STATE_DISABLED_UNAVAILABLE"

    return-object v0

    .line 1637
    :pswitch_13
    const-string v0, "STATE_NOT_SUPPORTED"

    return-object v0

    .line 1635
    :pswitch_16
    const-string v0, "STATE_UNINITIALIZED"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_3
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private static spatializationLevelToSpatializerInt(B)I
    .registers 4
    .param p0, "level"    # B

    .line 1477
    packed-switch p0, :pswitch_data_22

    .line 1485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected spatializer level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    :pswitch_1c
    const/4 v0, 0x2

    return v0

    .line 1481
    :pswitch_1e
    const/4 v0, 0x1

    return v0

    .line 1479
    :pswitch_20
    const/4 v0, 0x0

    return v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method private static spatializerIntToHeadTrackingModeType(I)B
    .registers 4
    .param p0, "sdkMode"    # I

    .line 1462
    packed-switch p0, :pswitch_data_24

    .line 1472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected head tracking mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1470
    :pswitch_1c
    const/4 v0, 0x3

    return v0

    .line 1468
    :pswitch_1e
    const/4 v0, 0x2

    return v0

    .line 1464
    :pswitch_20
    const/4 v0, 0x0

    return v0

    .line 1466
    :pswitch_22
    const/4 v0, 0x1

    return v0

    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 3
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    monitor-enter p0

    .line 532
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 533
    monitor-exit p0

    return-void

    .line 531
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "ada":Landroid/media/AudioDeviceAttributes;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .registers 7
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;

    monitor-enter p0

    .line 991
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_8e

    .line 1004
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_7
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    goto :goto_26

    .line 996
    .restart local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canBeSpatialized false due to state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logd(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_8b

    .line 997
    monitor-exit p0

    return v1

    .line 1004
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :goto_26
    sparse-switch v0, :sswitch_data_9c

    .line 1009
    :try_start_29
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_71

    .line 1007
    :sswitch_2c
    nop

    .line 1012
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    .line 1014
    .local v0, "devices":[Landroid/media/AudioDeviceAttributes;
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1015
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1016
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/SpatializerHelper;->canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 1017
    .local v1, "able":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canBeSpatialized usage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1018
    invoke-virtual {p2}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1017
    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->logd(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_29 .. :try_end_6f} :catchall_8b

    .line 1019
    monitor-exit p0

    return v1

    .line 1009
    .end local v0    # "devices":[Landroid/media/AudioDeviceAttributes;
    .end local v1    # "able":Z
    :goto_71
    :try_start_71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canBeSpatialized false due to usage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logd(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_8b

    .line 1010
    monitor-exit p0

    return v1

    .line 990
    .end local p1    # "attributes":Landroid/media/AudioAttributes;
    .end local p2    # "format":Landroid/media/AudioFormat;
    :catchall_8b
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_7
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :sswitch_data_9c
    .sparse-switch
        0x1 -> :sswitch_2c
        0xe -> :sswitch_2c
    .end sparse-switch
.end method

.method clearSADevices()V
    .registers 2

    .line 1714
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1715
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1490
    const-string v0, "SpatializerHelper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmSpatLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmCapableSpatLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmIsHeadTrackingSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1496
    .local v0, "modesString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6e
    if-ge v3, v2, :cond_82

    aget v4, v1, v3

    .line 1497
    .local v4, "mode":I
    invoke-static {v4}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    .end local v4    # "mode":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 1499
    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tsupported head tracking modes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tmDesiredHeadTrackingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 1501
    invoke-static {v2}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1500
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tmActualHeadTrackingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 1503
    invoke-static {v2}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1502
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\theadtracker available:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tsupports binaural:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / transaural:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tmSpatOutput:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1508
    const-string v1, "\tdevices:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_152

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 1510
    .local v2, "device":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    .end local v2    # "device":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    goto :goto_12f

    .line 1512
    :cond_152
    return-void
.end method

.method declared-synchronized getActualHeadTrackingMode()I
    .registers 2

    monitor-enter p0

    .line 1054
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 1054
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCapableImmersiveAudioLevel()I
    .registers 2

    monitor-enter p0

    .line 807
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 807
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCompatibleAudioDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 522
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v0, "compatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceAttributes;>;"
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 524
    .local v2, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    iget-boolean v3, v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    if-eqz v3, :cond_23

    .line 525
    invoke-virtual {v2}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_26

    .line 527
    .end local v2    # "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_23
    goto :goto_c

    .line 528
    :cond_24
    monitor-exit p0

    return-object v0

    .line 521
    .end local v0    # "compatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceAttributes;>;"
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDesiredHeadTrackingMode()I
    .registers 2

    monitor-enter p0

    .line 1058
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 1058
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getEffectParameter(I[B)V
    .registers 7
    .param p1, "key"    # I
    .param p2, "value"    # [B

    monitor-enter p0

    .line 1298
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    packed-switch v0, :pswitch_data_74

    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_6
    goto :goto_50

    .line 1307
    .restart local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_50

    .line 1308
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParameter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): null spatializer in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_71

    .line 1309
    monitor-exit p0

    return-void

    .line 1301
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_31
    :try_start_31
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get parameter key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without a spatializer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_71

    .line 1315
    :cond_50
    :goto_50
    :try_start_50
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1, p2}, Landroid/media/ISpatializer;->getParameter(I[B)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_55} :catch_56
    .catchall {:try_start_50 .. :try_end_55} :catchall_71

    .line 1318
    goto :goto_6f

    .line 1316
    :catch_56
    move-exception v0

    .line 1317
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_57
    const-string v1, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getParameter for key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_57 .. :try_end_6f} :catchall_71

    .line 1319
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6f
    monitor-exit p0

    return-void

    .line 1297
    .end local p1    # "key":I
    .end local p2    # "value":[B
    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_31
        :pswitch_31
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method declared-synchronized getOutput()I
    .registers 4

    monitor-enter p0

    .line 1326
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    packed-switch v0, :pswitch_data_34

    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_6
    goto :goto_1d

    .line 1335
    .restart local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-eqz v0, :cond_c

    goto :goto_1d

    .line 1336
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "null Spatializer for getOutput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1329
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get output without a spatializer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_30

    .line 1343
    :goto_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->getOutput()I

    move-result v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_25
    .catchall {:try_start_1d .. :try_end_23} :catchall_30

    monitor-exit p0

    return v0

    .line 1344
    :catch_25
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error in getOutput"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_30

    .line 1346
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1325
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_15
        :pswitch_15
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method declared-synchronized getSADeviceSettings()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1604
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1605
    .local v0, "settingsBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1606
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    invoke-virtual {v2}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->toPersistableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_36

    .line 1608
    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1611
    .end local v1    # "i":I
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return-object v1

    .line 1603
    .end local v0    # "settingsBuilder":Ljava/lang/StringBuilder;
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSupportedHeadTrackingModes()[I
    .registers 2

    monitor-enter p0

    .line 1050
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1050
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .registers 6
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    monitor-enter p0

    .line 1135
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 1136
    const-string v0, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no headtracking support, hasHeadTracker always false for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2e

    .line 1137
    monitor-exit p0

    return v1

    .line 1139
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_21
    :try_start_21
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0

    .line 1140
    .local v0, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    if-eqz v0, :cond_2c

    iget-boolean v2, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_2e

    if-eqz v2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    monitor-exit p0

    return v1

    .line 1134
    .end local v0    # "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .end local p1    # "ada":Landroid/media/AudioDeviceAttributes;
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized init(ZLjava/lang/String;)V
    .registers 16
    .param p1, "effectExpected"    # Z
    .param p2, "settings"    # Ljava/lang/String;

    monitor-enter p0

    .line 179
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "init effectExpected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    if-nez p1, :cond_25

    .line 181
    const-string/jumbo v1, "init(): setting state to STATE_NOT_SUPPORTED due to effect not expected"

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 182
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_1f0

    .line 183
    monitor-exit p0

    return-void

    .line 185
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_25
    :try_start_25
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-nez v1, :cond_1d0

    .line 189
    new-instance v1, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$SpatializerCallback-IA;)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 190
    invoke-static {v1}, Landroid/media/AudioSystem;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;

    move-result-object v1

    .line 191
    .local v1, "spat":Landroid/media/ISpatializer;
    if-nez v1, :cond_41

    .line 192
    const-string/jumbo v2, "init(): No Spatializer found"

    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 193
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_1f0

    .line 194
    monitor-exit p0

    return-void

    .line 197
    :cond_41
    :try_start_41
    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->resetCapabilities()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_1f0

    .line 200
    const/4 v2, 0x0

    :try_start_45
    invoke-interface {v1}, Landroid/media/ISpatializer;->getSupportedLevels()[B

    move-result-object v3
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_49} :catch_1a1
    .catchall {:try_start_45 .. :try_end_49} :catchall_19f

    .line 201
    .local v3, "levels":[B
    if-eqz v3, :cond_18d

    :try_start_4b
    array-length v4, v3

    if-eqz v4, :cond_18d

    array-length v4, v3

    if-ne v4, v0, :cond_57

    aget-byte v4, v3, v2

    if-nez v4, :cond_57

    goto/16 :goto_18d

    .line 209
    :cond_57
    array-length v4, v3

    move v5, v2

    :goto_59
    if-ge v5, v4, :cond_82

    aget-byte v6, v3, v5

    .line 210
    .local v6, "level":B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "init(): found support for level: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 211
    if-ne v6, v0, :cond_7f

    .line 212
    const-string/jumbo v4, "init(): setting capable level to LEVEL_MULTICHANNEL"

    invoke-static {v4}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 213
    iput v6, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 214
    goto :goto_82

    .line 209
    .end local v6    # "level":B
    :cond_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 221
    :cond_82
    :goto_82
    invoke-interface {v1}, Landroid/media/ISpatializer;->isHeadTrackingSupported()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 222
    if-eqz v4, :cond_f9

    .line 223
    invoke-interface {v1}, Landroid/media/ISpatializer;->getSupportedHeadTrackingModes()[B

    move-result-object v4

    .line 224
    .local v4, "values":[B
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v6, v4

    move v7, v2

    :goto_95
    if-ge v7, v6, :cond_cd

    aget-byte v8, v4, v7

    .line 226
    .local v8, "value":B
    packed-switch v8, :pswitch_data_1f4

    .line 236
    const-string v9, "AS.SpatializerHelper"

    goto :goto_ac

    .line 233
    :pswitch_9f
    invoke-static {v8}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    goto :goto_ca

    .line 230
    :pswitch_ab
    goto :goto_ca

    .line 236
    :goto_ac
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected head tracking mode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "invalid mode"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v8    # "value":B
    :goto_ca
    add-int/lit8 v7, v7, 0x1

    goto :goto_95

    .line 241
    :cond_cd
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    .line 242
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_ed

    .line 243
    iget-object v7, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    .line 242
    add-int/lit8 v6, v6, 0x1

    goto :goto_d6

    .line 245
    .end local v6    # "i":I
    :cond_ed
    nop

    .line 246
    invoke-interface {v1}, Landroid/media/ISpatializer;->getActualHeadTrackingMode()B

    move-result v6

    invoke-static {v6}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 247
    .end local v4    # "values":[B
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_fe

    .line 248
    :cond_f9
    const/4 v4, -0x2

    iput v4, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    .line 249
    iput v4, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 252
    :goto_fe
    invoke-interface {v1}, Landroid/media/ISpatializer;->getSupportedModes()[B

    move-result-object v4

    .line 253
    .local v4, "spatModes":[B
    array-length v5, v4

    move v6, v2

    :goto_104
    if-ge v6, v5, :cond_12c

    aget-byte v7, v4, v6

    .line 254
    .local v7, "mode":B
    packed-switch v7, :pswitch_data_200

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    goto :goto_114

    .line 259
    :pswitch_10e
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 260
    goto :goto_129

    .line 256
    :pswitch_111
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 257
    goto :goto_129

    .line 262
    :goto_114
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init(): Spatializer reports unknown supported mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .end local v7    # "mode":B
    :goto_129
    add-int/lit8 v6, v6, 0x1

    goto :goto_104

    .line 267
    :cond_12c
    iget-boolean v5, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_12e} :catch_18b
    .catchall {:try_start_4b .. :try_end_12e} :catchall_1c6

    if-nez v5, :cond_140

    :try_start_130
    iget-boolean v5, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-nez v5, :cond_140

    .line 268
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_130 .. :try_end_136} :catch_1a1
    .catchall {:try_start_130 .. :try_end_136} :catchall_19f

    .line 300
    if-eqz v1, :cond_13e

    .line 302
    :try_start_138
    invoke-interface {v1}, Landroid/media/ISpatializer;->release()V
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_13b} :catch_13c
    .catchall {:try_start_138 .. :try_end_13b} :catchall_1f0

    .line 303
    :goto_13b
    goto :goto_13e

    :catch_13c
    move-exception v0

    goto :goto_13b

    .line 269
    :cond_13e
    :goto_13e
    monitor-exit p0

    return-void

    .line 273
    .restart local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_140
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_141
    :try_start_141
    sget-object v6, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v7
    :try_end_147
    .catch Landroid/os/RemoteException; {:try_start_141 .. :try_end_147} :catch_18b
    .catchall {:try_start_141 .. :try_end_147} :catchall_1c6

    if-ge v5, v7, :cond_169

    .line 274
    :try_start_149
    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 275
    .local v7, "mode":I
    if-nez v7, :cond_153

    iget-boolean v8, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v8, :cond_159

    :cond_153
    if-ne v7, v0, :cond_166

    iget-boolean v8, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-eqz v8, :cond_166

    .line 278
    :cond_159
    iget-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v7    # "mode":I
    :cond_166
    add-int/lit8 v5, v5, 0x1

    goto :goto_141

    .line 284
    .end local v5    # "i":I
    :cond_169
    if-eqz p2, :cond_16e

    .line 285
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->setSADeviceSettings(Ljava/lang/String;)V
    :try_end_16e
    .catch Landroid/os/RemoteException; {:try_start_149 .. :try_end_16e} :catch_1a1
    .catchall {:try_start_149 .. :try_end_16e} :catchall_19f

    .line 290
    :cond_16e
    :try_start_16e
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/4 v6, 0x2

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v5, v2}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;Z)V

    .line 294
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/16 v6, 0x8

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v5, v2}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;Z)V
    :try_end_185
    .catch Landroid/os/RemoteException; {:try_start_16e .. :try_end_185} :catch_18b
    .catchall {:try_start_16e .. :try_end_185} :catchall_1c6

    .line 300
    .end local v3    # "levels":[B
    .end local v4    # "spatModes":[B
    if-eqz v1, :cond_1ac

    .line 302
    :try_start_187
    invoke-interface {v1}, Landroid/media/ISpatializer;->release()V
    :try_end_18a
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_18a} :catch_1ab
    .catchall {:try_start_187 .. :try_end_18a} :catchall_1f0

    goto :goto_1aa

    .line 297
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catch_18b
    move-exception v3

    goto :goto_1a2

    .line 205
    .restart local v3    # "levels":[B
    :cond_18d
    :goto_18d
    :try_start_18d
    const-string/jumbo v4, "init(): found Spatializer is useless"

    invoke-static {v4}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_18d .. :try_end_195} :catch_1a1
    .catchall {:try_start_18d .. :try_end_195} :catchall_19f

    .line 300
    if-eqz v1, :cond_19d

    .line 302
    :try_start_197
    invoke-interface {v1}, Landroid/media/ISpatializer;->release()V
    :try_end_19a
    .catch Landroid/os/RemoteException; {:try_start_197 .. :try_end_19a} :catch_19b
    .catchall {:try_start_197 .. :try_end_19a} :catchall_1f0

    .line 303
    :goto_19a
    goto :goto_19d

    :catch_19b
    move-exception v0

    goto :goto_19a

    .line 207
    :cond_19d
    :goto_19d
    monitor-exit p0

    return-void

    .line 300
    .end local v3    # "levels":[B
    .restart local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catchall_19f
    move-exception v0

    goto :goto_1c7

    .line 297
    :catch_1a1
    move-exception v3

    .line 298
    .local v3, "e":Landroid/os/RemoteException;
    :goto_1a2
    :try_start_1a2
    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->resetCapabilities()V
    :try_end_1a5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_1c6

    .line 300
    .end local v3    # "e":Landroid/os/RemoteException;
    if-eqz v1, :cond_1ac

    .line 302
    :try_start_1a7
    invoke-interface {v1}, Landroid/media/ISpatializer;->release()V
    :try_end_1aa
    .catch Landroid/os/RemoteException; {:try_start_1a7 .. :try_end_1aa} :catch_1ab
    .catchall {:try_start_1a7 .. :try_end_1aa} :catchall_1f0

    .line 303
    :goto_1aa
    goto :goto_1ac

    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catch_1ab
    move-exception v3

    .line 306
    :cond_1ac
    :goto_1ac
    :try_start_1ac
    iget v3, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    if-nez v3, :cond_1b4

    .line 307
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_1b2
    .catchall {:try_start_1ac .. :try_end_1b2} :catchall_1f0

    .line 308
    monitor-exit p0

    return-void

    .line 310
    :cond_1b4
    const/4 v0, 0x3

    :try_start_1b5
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 311
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    sget-object v3, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v2, Lcom/android/server/audio/SpatializerHelper;->ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

    .line 312
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1c4
    .catchall {:try_start_1b5 .. :try_end_1c4} :catchall_1f0

    .line 314
    monitor-exit p0

    return-void

    .line 300
    :catchall_1c6
    move-exception v0

    :goto_1c7
    if-eqz v1, :cond_1cf

    .line 302
    :try_start_1c9
    invoke-interface {v1}, Landroid/media/ISpatializer;->release()V
    :try_end_1cc
    .catch Landroid/os/RemoteException; {:try_start_1c9 .. :try_end_1cc} :catch_1cd
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_1f0

    .line 303
    :goto_1cc
    goto :goto_1cf

    :catch_1cd
    move-exception v2

    goto :goto_1cc

    .line 305
    :cond_1cf
    :goto_1cf
    :try_start_1cf
    throw v0

    .line 186
    .end local v1    # "spat":Landroid/media/ISpatializer;
    :cond_1d0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init() called in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f0
    .catchall {:try_start_1cf .. :try_end_1f0} :catchall_1f0

    .line 178
    .end local p1    # "effectExpected":Z
    .end local p2    # "settings":Ljava/lang/String;
    :catchall_1f0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_1f4
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_ab
        :pswitch_9f
        :pswitch_9f
    .end packed-switch

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_111
        :pswitch_10e
    .end packed-switch
.end method

.method declared-synchronized isAvailable()Z
    .registers 2

    monitor-enter p0

    .line 713
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    packed-switch v0, :pswitch_data_10

    .line 722
    :pswitch_6
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 718
    :pswitch_9
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 712
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method declared-synchronized isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z
    .registers 5
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    monitor-enter p0

    .line 727
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_14

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    .line 728
    monitor-exit p0

    return v2

    .line 730
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    monitor-exit p0

    return v2

    .line 726
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "ada":Landroid/media/AudioDeviceAttributes;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isEnabled()Z
    .registers 2

    monitor-enter p0

    .line 699
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    packed-switch v0, :pswitch_data_10

    .line 708
    :pswitch_6
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 704
    :pswitch_9
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 698
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method declared-synchronized isHeadTrackerAvailable()Z
    .registers 2

    monitor-enter p0

    .line 1177
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 1177
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z
    .registers 6
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    monitor-enter p0

    .line 1167
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 1168
    const-string v0, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no headtracking support, isHeadTrackerEnabled always false for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_32

    .line 1169
    monitor-exit p0

    return v1

    .line 1171
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_21
    :try_start_21
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0

    .line 1172
    .local v0, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    if-eqz v0, :cond_30

    iget-boolean v2, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-eqz v2, :cond_30

    iget-boolean v2, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_32

    if-eqz v2, :cond_30

    const/4 v1, 0x1

    :cond_30
    monitor-exit p0

    return v1

    .line 1166
    .end local v0    # "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .end local p1    # "ada":Landroid/media/AudioDeviceAttributes;
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onInitSensors()V
    .registers 11

    monitor-enter p0

    .line 1382
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_d
    move v0, v2

    .line 1383
    .local v0, "init":Z
    :goto_e
    if-eqz v0, :cond_14

    const-string/jumbo v3, "initializing"

    goto :goto_17

    :cond_14
    const-string/jumbo v3, "releasing"

    .line 1384
    .local v3, "action":Ljava/lang/String;
    :goto_17
    iget-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v4, :cond_3a

    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sensors, null spatializer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_163

    .line 1386
    monitor-exit p0

    return-void

    .line 1388
    :cond_3a
    :try_start_3a
    iget-boolean v4, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-nez v4, :cond_5d

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sensors, spatializer doesn\'t support headtracking"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_3a .. :try_end_5b} :catchall_163

    .line 1390
    monitor-exit p0

    return-void

    .line 1392
    :cond_5d
    const/4 v4, -0x1

    .line 1393
    .local v4, "headHandle":I
    const/4 v5, -0x1

    .line 1394
    .local v5, "screenHandle":I
    const/4 v6, 0x0

    if-eqz v0, :cond_ca

    .line 1395
    :try_start_62
    iget-object v7, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_163

    if-nez v7, :cond_90

    .line 1397
    :try_start_66
    iget-object v7, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v7, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "sensor"

    .line 1398
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    iput-object v7, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1399
    new-instance v7, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    invoke-direct {v7, p0, v6}, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback-IA;)V

    iput-object v7, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    .line 1400
    iget-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v8, v7}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_81} :catch_82
    .catchall {:try_start_66 .. :try_end_81} :catchall_163

    .line 1406
    goto :goto_90

    .line 1401
    :catch_82
    move-exception v1

    .line 1402
    .local v1, "e":Ljava/lang/Exception;
    :try_start_83
    const-string v2, "AS.SpatializerHelper"

    const-string v7, "Error with SensorManager, can\'t initialize sensors"

    invoke-static {v2, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1403
    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1404
    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_163

    .line 1405
    monitor-exit p0

    return-void

    .line 1413
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_90
    :goto_90
    :try_start_90
    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->getHeadSensorHandleUpdateTracker()I

    move-result v6

    move v4, v6

    .line 1414
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "head tracker sensor handle initialized to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 1415
    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->getScreenSensorHandle()I

    move-result v6

    move v5, v6

    .line 1416
    const-string v6, "AS.SpatializerHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found screen sensor handle initialized to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 1418
    :cond_ca
    iget-object v7, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v7, :cond_d9

    iget-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    if-eqz v8, :cond_d9

    .line 1419
    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    .line 1420
    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1421
    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
    :try_end_d9
    .catchall {:try_start_90 .. :try_end_d9} :catchall_163

    .line 1426
    :cond_d9
    :goto_d9
    :try_start_d9
    const-string v6, "AS.SpatializerHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setScreenSensor:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v6, v5}, Landroid/media/ISpatializer;->setScreenSensor(I)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f7} :catch_f8
    .catchall {:try_start_d9 .. :try_end_f7} :catchall_163

    .line 1430
    goto :goto_111

    .line 1428
    :catch_f8
    move-exception v6

    .line 1429
    .local v6, "e":Ljava/lang/Exception;
    :try_start_f9
    const-string v7, "AS.SpatializerHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error calling setScreenSensor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_111
    .catchall {:try_start_f9 .. :try_end_111} :catchall_163

    .line 1432
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_111
    :try_start_111
    const-string v6, "AS.SpatializerHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setHeadSensor:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v6, v4}, Landroid/media/ISpatializer;->setHeadSensor(I)V

    .line 1434
    iget-boolean v6, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    const/4 v7, -0x1

    if-eq v4, v7, :cond_136

    move v8, v1

    goto :goto_137

    :cond_136
    move v8, v2

    :goto_137
    if-eq v6, v8, :cond_142

    .line 1435
    if-eq v4, v7, :cond_13c

    goto :goto_13d

    :cond_13c
    move v1, v2

    :goto_13d
    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 1436
    invoke-direct {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->dispatchHeadTrackerAvailable(Z)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_142} :catch_143
    .catchall {:try_start_111 .. :try_end_142} :catchall_163

    .line 1440
    :cond_142
    goto :goto_15c

    .line 1438
    :catch_143
    move-exception v1

    .line 1439
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_144
    const-string v2, "AS.SpatializerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error calling setHeadSensor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1441
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15c
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->setDesiredHeadTrackingMode(I)V
    :try_end_161
    .catchall {:try_start_144 .. :try_end_161} :catchall_163

    .line 1442
    monitor-exit p0

    return-void

    .line 1381
    .end local v0    # "init":Z
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "headHandle":I
    .end local v5    # "screenHandle":I
    :catchall_163
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onRoutingUpdated()V
    .registers 9

    monitor-enter p0

    .line 341
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_126

    if-nez v0, :cond_7

    .line 342
    monitor-exit p0

    return-void

    .line 344
    :cond_7
    :try_start_7
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    packed-switch v0, :pswitch_data_12a

    .line 354
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_126

    goto :goto_11

    .line 347
    :pswitch_f
    monitor-exit p0

    return-void

    .line 354
    :goto_11
    :try_start_11
    sget-object v1, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v3, Lcom/android/server/audio/SpatializerHelper;->ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

    .line 355
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 358
    aget-object v0, v3, v2

    if-nez v0, :cond_2c

    .line 359
    const-string/jumbo v0, "onRoutingUpdated: device is null, no Spatial Audio"

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    invoke-direct {p0, v2}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_126

    .line 362
    monitor-exit p0

    return-void

    .line 366
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->isWireless(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 367
    aget-object v0, v3, v2

    invoke-direct {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->addWirelessDeviceIfNew(Landroid/media/AudioDeviceAttributes;)V

    .line 371
    :cond_3b
    aget-object v0, v3, v2

    invoke-direct {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->evaluateState(Landroid/media/AudioDeviceAttributes;)Landroid/util/Pair;

    move-result-object v0

    .line 373
    .local v0, "enabledAvailable":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 374
    .local v4, "able":Z
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 376
    sget-object v5, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_FORMAT:Landroid/media/AudioFormat;

    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/audio/SpatializerHelper;->canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    move v4, v1

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRoutingUpdated: can spatialize media 5.1:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " on device:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v3, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, v4}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V

    goto :goto_9c

    .line 381
    :cond_7a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRoutingUpdated: device:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v3, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " not available for Spatial Audio"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0, v2}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V

    .line 386
    :goto_9c
    const/4 v1, 0x1

    if-eqz v4, :cond_ab

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_ab

    move v5, v1

    goto :goto_ac

    :cond_ab
    move v5, v2

    .line 387
    .local v5, "enabled":Z
    :goto_ac
    if-eqz v5, :cond_c7

    .line 388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enabling Spatial Audio since enabled for media device:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v3, v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    goto :goto_df

    .line 391
    :cond_c7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disabling Spatial Audio since disabled for media device:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v3, v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 394
    :goto_df
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-eqz v3, :cond_113

    .line 395
    if-eqz v5, :cond_e7

    move v2, v1

    goto :goto_e8

    .line 396
    :cond_e7
    nop

    :goto_e8
    move v1, v2

    .line 397
    .local v1, "level":B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting spatialization level to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_ff
    .catchall {:try_start_2c .. :try_end_ff} :catchall_126

    .line 399
    :try_start_ff
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v2, v1}, Landroid/media/ISpatializer;->setLevel(B)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_104} :catch_105
    .catchall {:try_start_ff .. :try_end_104} :catchall_126

    .line 405
    goto :goto_113

    .line 400
    :catch_105
    move-exception v2

    .line 401
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_106
    const-string v3, "AS.SpatializerHelper"

    const-string/jumbo v6, "onRoutingUpdated() Can\'t set spatializer level"

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->postReset()V
    :try_end_111
    .catchall {:try_start_106 .. :try_end_111} :catchall_126

    .line 404
    monitor-exit p0

    return-void

    .line 408
    .end local v1    # "level":B
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_113
    :goto_113
    :try_start_113
    const-string/jumbo v1, "onRoutingUpdated"

    invoke-direct {p0, v5, v1}, Lcom/android/server/audio/SpatializerHelper;->setDispatchFeatureEnabledState(ZLjava/lang/String;)V

    .line 410
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_124

    const/4 v2, -0x1

    if-eq v1, v2, :cond_124

    .line 412
    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V
    :try_end_124
    .catchall {:try_start_113 .. :try_end_124} :catchall_126

    .line 414
    :cond_124
    monitor-exit p0

    return-void

    .line 340
    .end local v0    # "enabledAvailable":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    .end local v4    # "able":Z
    .end local v5    # "enabled":Z
    :catchall_126
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method declared-synchronized recenterHeadTracker()V
    .registers 4

    monitor-enter p0

    .line 1076
    :try_start_1
    const-string/jumbo v0, "recenterHeadTracker"

    invoke-direct {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatForHeadTracking(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1c

    if-nez v0, :cond_c

    .line 1077
    monitor-exit p0

    return-void

    .line 1080
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->recenterHeadTracker()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_1c

    .line 1083
    goto :goto_1a

    .line 1081
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catch_12
    move-exception v0

    .line 1082
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error calling recenterHeadTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    .line 1084
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    monitor-exit p0

    return-void

    .line 1075
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    monitor-enter p0

    .line 1250
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1251
    monitor-exit p0

    return-void

    .line 1249
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "callback":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized registerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V
    .registers 4
    .param p1, "cb"    # Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    .param p2, "register"    # Z

    monitor-enter p0

    .line 1042
    if-eqz p2, :cond_9

    .line 1043
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_e

    .line 1045
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1047
    :goto_e
    monitor-exit p0

    return-void

    .line 1041
    .end local p1    # "cb":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    .end local p2    # "register":Z
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized registerHeadTrackingModeCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/ISpatializerHeadTrackingModeCallback;

    monitor-enter p0

    .line 1029
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1030
    monitor-exit p0

    return-void

    .line 1028
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "callback":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/ISpatializerOutputCallback;

    monitor-enter p0

    .line 1355
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1356
    monitor-exit p0

    return-void

    .line 1354
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "callback":Landroid/media/ISpatializerOutputCallback;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized registerStateCallback(Landroid/media/ISpatializerCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/ISpatializerCallback;

    monitor-enter p0

    .line 815
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 816
    monitor-exit p0

    return-void

    .line 814
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "callback":Landroid/media/ISpatializerCallback;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 4
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    monitor-enter p0

    .line 599
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeCompatibleAudioDevice: dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 601
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0

    .line 602
    .local v0, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    if-eqz v0, :cond_33

    iget-boolean v1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    if-eqz v1, :cond_33

    .line 603
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    .line 604
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    .line 605
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->persistSpatialAudioDeviceSettings()V

    .line 606
    const-string/jumbo v1, "removeCompatibleAudioDevice"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 608
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_33
    monitor-exit p0

    return-void

    .line 598
    .end local v0    # "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .end local p1    # "ada":Landroid/media/AudioDeviceAttributes;
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized reset(Z)V
    .registers 4
    .param p1, "featureEnabled"    # Z

    monitor-enter p0

    .line 321
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resetting featureEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->releaseSpat()V

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 324
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    .line 325
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 326
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper;->init(ZLjava/lang/String;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 328
    monitor-exit p0

    return-void

    .line 320
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "featureEnabled":Z
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setDesiredHeadTrackingMode(I)V
    .registers 6
    .param p1, "mode"    # I

    monitor-enter p0

    .line 1087
    :try_start_1
    const-string/jumbo v0, "setDesiredHeadTrackingMode"

    invoke-direct {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatForHeadTracking(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5b

    if-nez v0, :cond_c

    .line 1088
    monitor-exit p0

    return-void

    .line 1090
    :cond_c
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    .line 1091
    :try_start_f
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_5b

    .line 1094
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_11
    :try_start_11
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    if-eq v1, p1, :cond_1a

    .line 1095
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 1096
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchDesiredHeadTrackingMode(I)V

    .line 1098
    :cond_1a
    const-string v1, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDesiredHeadTrackingMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1099
    invoke-static {p1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1098
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatializerIntToHeadTrackingModeType(I)B

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/ISpatializer;->setDesiredHeadTrackingMode(B)V

    .line 1101
    if-ne p1, v0, :cond_50

    .line 1102
    const-string/jumbo v0, "sys.spatial.headtrack"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_50} :catch_51
    .catchall {:try_start_11 .. :try_end_50} :catchall_5b

    .line 1106
    :cond_50
    goto :goto_59

    .line 1104
    :catch_51
    move-exception v0

    .line 1105
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_52
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error calling setDesiredHeadTrackingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5b

    .line 1107
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_59
    monitor-exit p0

    return-void

    .line 1086
    .end local p1    # "mode":I
    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setEffectParameter(I[B)V
    .registers 7
    .param p1, "key"    # I
    .param p2, "value"    # [B

    monitor-enter p0

    .line 1274
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    packed-switch v0, :pswitch_data_76

    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_6
    goto :goto_51

    .line 1283
    .restart local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_51

    .line 1284
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setParameter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): null spatializer in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_72

    .line 1285
    monitor-exit p0

    return-void

    .line 1277
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_32
    :try_start_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set parameter key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without a spatializer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catchall {:try_start_32 .. :try_end_51} :catchall_72

    .line 1291
    :cond_51
    :goto_51
    :try_start_51
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1, p2}, Landroid/media/ISpatializer;->setParameter(I[B)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_56} :catch_57
    .catchall {:try_start_51 .. :try_end_56} :catchall_72

    .line 1294
    goto :goto_70

    .line 1292
    :catch_57
    move-exception v0

    .line 1293
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_58
    const-string v1, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in setParameter for key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_72

    .line 1295
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_70
    monitor-exit p0

    return-void

    .line 1273
    .end local p1    # "key":I
    .end local p2    # "value":[B
    :catchall_72
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_32
        :pswitch_32
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method declared-synchronized setFeatureEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 756
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFeatureEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") was featureEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 757
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_4c

    if-ne v0, p1, :cond_2a

    .line 758
    monitor-exit p0

    return-void

    .line 760
    :cond_2a
    :try_start_2a
    iput-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    .line 761
    if-eqz p1, :cond_46

    .line 762
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    .line 763
    const-string v0, "AS.SpatializerHelper"

    const-string v1, "Can\'t enabled Spatial Audio, unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_4c

    .line 764
    monitor-exit p0

    return-void

    .line 766
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_3c
    if-nez v0, :cond_42

    .line 767
    const/4 v0, 0x0

    :try_start_3f
    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/SpatializerHelper;->init(ZLjava/lang/String;)V

    .line 769
    :cond_42
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V

    goto :goto_4a

    .line 771
    :cond_46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_4c

    .line 773
    :goto_4a
    monitor-exit p0

    return-void

    .line 755
    .end local p1    # "enabled":Z
    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setGlobalTransform([F)V
    .registers 5
    .param p1, "transform"    # [F

    monitor-enter p0

    .line 1062
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_20

    .line 1065
    const-string/jumbo v0, "setGlobalTransform"

    invoke-direct {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatForHeadTracking(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3b

    if-nez v0, :cond_10

    .line 1066
    monitor-exit p0

    return-void

    .line 1069
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1}, Landroid/media/ISpatializer;->setGlobalTransform([F)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_3b

    .line 1072
    goto :goto_1e

    .line 1070
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :catch_16
    move-exception v0

    .line 1071
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error calling setGlobalTransform"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_3b

    .line 1073
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    monitor-exit p0

    return-void

    .line 1063
    :cond_20
    :try_start_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid array size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_3b

    .line 1061
    .end local p1    # "transform":[F
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setHasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .registers 7
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    monitor-enter p0

    .line 1149
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 1150
    const-string v0, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no headtracking support, setHasHeadTracker always false for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_58

    .line 1151
    monitor-exit p0

    return v1

    .line 1153
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_21
    :try_start_21
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0

    .line 1154
    .local v0, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    if-eqz v0, :cond_3d

    .line 1155
    iget-boolean v1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-nez v1, :cond_39

    .line 1156
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    .line 1157
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->persistSpatialAudioDeviceSettings()V

    .line 1158
    const-string/jumbo v1, "setHasHeadTracker"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V

    .line 1160
    :cond_39
    iget-boolean v1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_58

    monitor-exit p0

    return v1

    .line 1162
    :cond_3d
    :try_start_3d
    const-string v2, "AS.SpatializerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHasHeadTracker: device not found for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_58

    .line 1163
    monitor-exit p0

    return v1

    .line 1148
    .end local v0    # "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .end local p1    # "ada":Landroid/media/AudioDeviceAttributes;
    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "ada"    # Landroid/media/AudioDeviceAttributes;

    monitor-enter p0

    .line 1110
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-nez v0, :cond_28

    .line 1111
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no headtracking support, ignoring setHeadTrackerEnabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_28
    invoke-direct {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_ba

    .line 1115
    .local v0, "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    if-nez v0, :cond_30

    monitor-exit p0

    return-void

    .line 1116
    .restart local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_30
    :try_start_30
    iget-boolean v1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-nez v1, :cond_5e

    .line 1117
    const-string v1, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called setHeadTrackerEnabled enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on a device without headtracker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_ba

    .line 1119
    monitor-exit p0

    return-void

    .line 1121
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_5e
    :try_start_5e
    const-string v1, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHeadTrackerEnabled enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iput-boolean p1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    .line 1123
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->persistSpatialAudioDeviceSettings()V

    .line 1124
    const-string/jumbo v1, "setHeadTrackerEnabled"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V

    .line 1127
    sget-object v1, Lcom/android/server/audio/SpatializerHelper;->ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_b8

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v4

    if-ne v3, v4, :cond_b8

    aget-object v1, v1, v2

    .line 1128
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 1129
    if-eqz p1, :cond_b4

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    goto :goto_b5

    .line 1130
    :cond_b4
    const/4 v1, -0x1

    .line 1129
    :goto_b5
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->setDesiredHeadTrackingMode(I)V
    :try_end_b8
    .catchall {:try_start_5e .. :try_end_b8} :catchall_ba

    .line 1132
    :cond_b8
    monitor-exit p0

    return-void

    .line 1109
    .end local v0    # "deviceState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .end local p1    # "enabled":Z
    .end local p2    # "ada":Landroid/media/AudioDeviceAttributes;
    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSADeviceSettings(Ljava/lang/String;)V
    .registers 9
    .param p1, "persistedSettings"    # Ljava/lang/String;

    monitor-enter p0

    .line 1615
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\\|"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1618
    .local v0, "devSettings":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_3b

    aget-object v3, v0, v2

    .line 1619
    .local v3, "setting":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->fromPersistedString(Ljava/lang/String;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v4

    .line 1622
    .local v4, "devState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    if-eqz v4, :cond_38

    iget v5, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    iget v6, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    .line 1623
    invoke-static {v6}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(I)I

    move-result v6

    if-ne v5, v6, :cond_38

    .line 1625
    invoke-virtual {v4}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;

    move-result-object v5

    .line 1624
    invoke-direct {p0, v5}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1626
    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    const-string/jumbo v5, "setSADeviceSettings"

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3d

    .line 1618
    .end local v3    # "setting":Ljava/lang/String;
    .end local v4    # "devState":Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1630
    :cond_3b
    monitor-exit p0

    return-void

    .line 1614
    .end local v0    # "devSettings":[Ljava/lang/String;
    .end local p1    # "persistedSettings":Ljava/lang/String;
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSpatializerEnabledInt(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 776
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    packed-switch v0, :pswitch_data_38

    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_6
    goto :goto_32

    .line 798
    .restart local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_7
    if-nez p1, :cond_32

    .line 799
    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->releaseSpat()V

    .line 800
    const/4 v0, 0x0

    const-string/jumbo v1, "setSpatializerEnabledInt"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper;->setDispatchFeatureEnabledState(ZLjava/lang/String;)V

    goto :goto_32

    .line 789
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    :pswitch_14
    if-eqz p1, :cond_32

    .line 790
    invoke-direct {p0}, Lcom/android/server/audio/SpatializerHelper;->createSpat()V

    .line 791
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    goto :goto_32

    .line 783
    :pswitch_1d
    if-eqz p1, :cond_32

    .line 784
    const-string v0, "AS.SpatializerHelper"

    const-string v1, "Can\'t enable when unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 778
    :pswitch_27
    if-nez p1, :cond_2a

    goto :goto_32

    .line 779
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t enable when uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 804
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 775
    .end local p1    # "enabled":Z
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_27
        :pswitch_1d
        :pswitch_6
        :pswitch_14
        :pswitch_7
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method declared-synchronized unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    monitor-enter p0

    .line 1255
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1256
    monitor-exit p0

    return-void

    .line 1254
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "callback":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unregisterHeadTrackingModeCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/ISpatializerHeadTrackingModeCallback;

    monitor-enter p0

    .line 1034
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1035
    monitor-exit p0

    return-void

    .line 1033
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "callback":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/ISpatializerOutputCallback;

    monitor-enter p0

    .line 1360
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1361
    monitor-exit p0

    return-void

    .line 1359
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "callback":Landroid/media/ISpatializerOutputCallback;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unregisterStateCallback(Landroid/media/ISpatializerCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/ISpatializerCallback;

    monitor-enter p0

    .line 820
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 821
    monitor-exit p0

    return-void

    .line 819
    .end local p0    # "this":Lcom/android/server/audio/SpatializerHelper;
    .end local p1    # "callback":Landroid/media/ISpatializerCallback;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
