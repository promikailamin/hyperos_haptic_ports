.class public Lcom/android/server/audio/SpatializerHelper;
.super Ljava/lang/Object;
.source "SpatializerHelper.java"


# static fields
.field public static final DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final DEFAULT_FORMAT:Landroid/media/AudioFormat;

.field public static final SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

.field public static sRoutingDevices:Ljava/util/ArrayList;


# instance fields
.field public final mASA:Lcom/android/server/audio/AudioSystemAdapter;

.field public mActualHeadTrackingMode:I

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field mBinauralEnabledDefault:Z

.field public mBinauralSupported:Z

.field public mCapableSpatLevel:I

.field public mDesiredHeadTrackingMode:I

.field public mDesiredHeadTrackingModeWhenEnabled:I

.field public final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

.field public mFeatureEnabled:Z

.field public final mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

.field public mHeadTrackerAvailable:Z

.field public final mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

.field mHeadTrackingEnabledDefault:Z

.field public final mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

.field public mIsHeadTrackingSupported:Z

.field public final mOutputCallbacks:Landroid/os/RemoteCallbackList;

.field public final mSACapableDeviceTypes:Ljava/util/ArrayList;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSpat:Landroid/media/ISpatializer;

.field public mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

.field public mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

.field public mSpatLevel:I

.field public mSpatOutput:I

.field public mSpatializedChannelMasks:Ljava/util/List;

.field public mState:I

.field public final mStateCallbacks:Landroid/os/RemoteCallbackList;

.field public mSupportedHeadTrackingModes:[I

.field mTransauralEnabledDefault:Z

.field public mTransauralSupported:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpatOutput(Lcom/android/server/audio/SpatializerHelper;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSpatLevel(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSpatOutput(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchActualHeadTrackingMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOutputUpdate(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchOutputUpdate(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchPoseUpdate(Lcom/android/server/audio/SpatializerHelper;[F)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchPoseUpdate([F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostInitSensors(Lcom/android/server/audio/SpatializerHelper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smheadTrackingModeTypeToSpatializerInt(B)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smloglogi(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smspatializationLevelToSpatializerInt(B)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->spatializationLevelToSpatializerInt(B)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 88
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$1;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    .line 154
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 157
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x2

    .line 158
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const v1, 0xbb80

    .line 159
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/16 v1, 0xfc

    .line 160
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_FORMAT:Landroid/media/AudioFormat;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/AudioDeviceBroker;ZZZ)V
    .registers 10

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 126
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    .line 128
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    .line 129
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 131
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatializedChannelMasks:Ljava/util/List;

    .line 133
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 136
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    const/4 v1, -0x2

    .line 137
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    const/4 v1, 0x1

    .line 138
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 139
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 145
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    .line 146
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    .line 149
    new-instance v1, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper-IA;)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    .line 891
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 1128
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 1141
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    .line 1383
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    .line 1488
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    .line 180
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 181
    iput-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    .line 182
    iput-object p3, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 184
    iput-boolean p4, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralEnabledDefault:Z

    .line 185
    iput-boolean p5, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralEnabledDefault:Z

    .line 186
    iput-boolean p6, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingEnabledDefault:Z

    return-void
.end method

.method public static getCanonicalDeviceType(II)I
    .registers 3

    .line 645
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return p0

    .line 647
    :cond_7
    sget-object p1, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    if-nez p0, :cond_18

    const/4 p0, 0x4

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static headTrackingModeTypeToSpatializerInt(B)I
    .registers 4

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_24

    const/4 v1, 0x2

    if-eq p0, v1, :cond_23

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    return v1

    .line 1595
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected head tracking mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    return v0

    :cond_24
    const/4 p0, -0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public static logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V
    .registers 7

    .line 610
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v0

    .line 609
    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    .line 611
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    new-instance v1, Landroid/media/MediaMetrics$Item;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio.spatializer.device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 613
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->ENABLED:Landroid/media/MediaMetrics$Key;

    .line 614
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v2

    const-string v3, "false"

    const-string/jumbo v4, "true"

    if-eqz v2, :cond_3b

    move-object v2, v4

    goto :goto_3c

    :cond_3b
    move-object v2, v3

    :goto_3c
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 615
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->HAS_HEAD_TRACKER:Landroid/media/MediaMetrics$Key;

    .line 617
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v1

    if-eqz v1, :cond_54

    move-object v1, v4

    goto :goto_55

    :cond_54
    move-object v1, v3

    .line 616
    :goto_55
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->HEAD_TRACKER_ENABLED:Landroid/media/MediaMetrics$Key;

    .line 620
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result p0

    if-eqz p0, :cond_62

    move-object v3, v4

    .line 619
    :cond_62
    invoke-virtual {p1, v0, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 621
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public static logd(Ljava/lang/String;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static logloge(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1788
    sget-object v0, Lcom/android/server/audio/AudioService;->sSpatialLogger:Lcom/android/server/utils/EventLogger;

    const/4 v1, 0x1

    const-string v2, "AS.SpatializerHelper"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public static loglogi(Ljava/lang/String;)V
    .registers 4

    .line 1784
    sget-object v0, Lcom/android/server/audio/AudioService;->sSpatialLogger:Lcom/android/server/utils/EventLogger;

    const/4 v1, 0x0

    const-string v2, "AS.SpatializerHelper"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static spatStateString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p0, v0, :cond_17

    const/4 v0, 0x6

    if-eq p0, v0, :cond_14

    .line 1674
    const-string p0, "invalid state"

    return-object p0

    .line 1672
    :cond_14
    const-string p0, "STATE_DISABLED_AVAILABLE"

    return-object p0

    .line 1670
    :cond_17
    const-string p0, "STATE_ENABLED_AVAILABLE"

    return-object p0

    .line 1668
    :cond_1a
    const-string p0, "STATE_ENABLED_UNAVAILABLE"

    return-object p0

    .line 1666
    :cond_1d
    const-string p0, "STATE_DISABLED_UNAVAILABLE"

    return-object p0

    .line 1664
    :cond_20
    const-string p0, "STATE_NOT_SUPPORTED"

    return-object p0

    .line 1662
    :cond_23
    const-string p0, "STATE_UNINITIALIZED"

    return-object p0
.end method

.method public static spatializationLevelToSpatializerInt(B)I
    .registers 4

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    return v0

    .line 1623
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected spatializer level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return v0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static spatializerIntToHeadTrackingModeType(I)B
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_27

    if-eqz p0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v1, :cond_24

    if-ne p0, v0, :cond_d

    const/4 p0, 0x3

    return p0

    .line 1610
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected head tracking mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    return v0

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    return v1
.end method


# virtual methods
.method public declared-synchronized addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 532
    :try_start_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 533
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V
    .registers 6

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_8a

    .line 550
    :cond_8
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    const v1, 0x20000002

    if-ne v0, v1, :cond_13

    goto/16 :goto_8a

    .line 553
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCompatibleAudioDevice: dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    if-eqz p3, :cond_33

    .line 558
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->initSAState(Lcom/android/server/audio/AdiDeviceState;)V

    :cond_33
    if-eqz p2, :cond_3f

    .line 560
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result p1

    if-nez p1, :cond_3f

    .line 562
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    goto :goto_7b

    :cond_3f
    const/4 v0, 0x0

    goto :goto_7b

    .line 566
    :cond_41
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p2

    .line 567
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p3

    .line 566
    invoke-static {p2, p3}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    move-result p2

    if-nez p2, :cond_66

    .line 569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addCompatibleAudioDevice with incompatible AudioDeviceAttributes "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.SpatializerHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 573
    :cond_66
    new-instance v0, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p3

    .line 574
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p3, p1}, Lcom/android/server/audio/AdiDeviceState;-><init>(IILjava/lang/String;)V

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->initSAState(Lcom/android/server/audio/AdiDeviceState;)V

    .line 576
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    :goto_7b
    if-eqz v0, :cond_8a

    .line 580
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    .line 581
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 582
    const-string p0, "addCompatibleAudioDevice"

    invoke-static {v0, p0}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public final declared-synchronized addWirelessDeviceIfNew(Landroid/media/AudioDeviceAttributes;)V
    .registers 5

    monitor-enter p0

    .line 719
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_35

    if-nez v0, :cond_9

    .line 720
    monitor-exit p0

    return-void

    .line 722
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v0

    if-nez v0, :cond_57

    .line 724
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    .line 725
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    .line 724
    invoke-static {v0, v1}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    move-result v0

    if-nez v0, :cond_37

    .line 727
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWirelessDeviceIfNew with incompatible AudioDeviceAttributes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_35

    .line 729
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    goto :goto_59

    .line 731
    :cond_37
    :try_start_37
    new-instance v1, Lcom/android/server/audio/AdiDeviceState;

    .line 732
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    .line 733
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lcom/android/server/audio/AdiDeviceState;-><init>(IILjava/lang/String;)V

    .line 734
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->initSAState(Lcom/android/server/audio/AdiDeviceState;)V

    .line 735
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 736
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 737
    const-string p1, "addWirelessDeviceIfNew"

    invoke-static {v1, p1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_37 .. :try_end_57} :catchall_35

    .line 739
    :cond_57
    monitor-exit p0

    return-void

    :goto_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_35

    throw p1
.end method

.method public declared-synchronized canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .registers 7

    monitor-enter p0

    .line 1088
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_87

    const/4 v2, 0x1

    if-eq v0, v2, :cond_87

    const/4 v3, 0x3

    if-eq v0, v3, :cond_87

    const/4 v3, 0x4

    if-eq v0, v3, :cond_87

    .line 1101
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v2, :cond_35

    const/16 v2, 0xe

    if-eq v0, v2, :cond_35

    .line 1106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canBeSpatialized false due to usage:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->logd(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 1107
    monitor-exit p0

    return v1

    :catchall_33
    move-exception p1

    goto :goto_9f

    .line 1111
    :cond_35
    :try_start_35
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->getRoutingDevices(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canBeSpatialized got no device for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_35 .. :try_end_53} :catchall_33

    .line 1114
    monitor-exit p0

    return v1

    .line 1116
    :cond_55
    :try_start_55
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/SpatializerHelper;->canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;Ljava/util/ArrayList;)Z

    move-result v0

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canBeSpatialized usage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " format:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    invoke-virtual {p2}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returning "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1117
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->logd(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_55 .. :try_end_85} :catchall_33

    .line 1119
    monitor-exit p0

    return v0

    .line 1093
    :cond_87
    :try_start_87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "canBeSpatialized false due to state:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->logd(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_87 .. :try_end_9d} :catchall_33

    .line 1094
    monitor-exit p0

    return v1

    .line 1107
    :goto_9f
    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_33

    throw p1
.end method

.method public final declared-synchronized canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;Ljava/util/ArrayList;)Z
    .registers 6

    monitor-enter p0

    .line 806
    :try_start_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_28

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 807
    monitor-exit p0

    return v1

    .line 809
    :cond_a
    :try_start_a
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 810
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    .line 811
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/media/AudioDeviceAttributes;

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_28

    monitor-exit p0

    return p1

    :catchall_28
    move-exception p1

    goto :goto_2c

    .line 813
    :cond_2a
    monitor-exit p0

    return v1

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_28

    throw p1
.end method

.method public final checkSpatializer(Ljava/lang/String;)Z
    .registers 6

    .line 1315
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3e

    const/4 v3, 0x3

    if-eq v0, v3, :cond_15

    const/4 v3, 0x4

    if-eq v0, v3, :cond_15

    const/4 v3, 0x5

    if-eq v0, v3, :cond_15

    const/4 v3, 0x6

    if-eq v0, v3, :cond_15

    goto :goto_3d

    .line 1323
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_3d

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSpatializer(): called from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(), native spatializer should not be null in state: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.SpatializerHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postReset()V

    return v1

    :cond_3d
    :goto_3d
    return v2

    :cond_3e
    return v1
.end method

.method public final checkSpatializerForHeadTracking(Ljava/lang/String;)Z
    .registers 2

    .line 1336
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializer(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final createSpat()V
    .registers 6

    .line 1030
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_73

    .line 1031
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper-IA;)V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 1032
    invoke-static {v0}, Landroid/media/AudioSystem;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 1033
    const-string v1, "AS.SpatializerHelper"

    if-nez v0, :cond_1f

    .line 1034
    const-string v0, "createSpat(): No Spatializer found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postReset()V

    return-void

    :cond_1f
    const/4 v2, 0x0

    .line 1039
    :try_start_20
    invoke-interface {v0}, Landroid/media/ISpatializer;->getSpatializedChannelMasks()[I

    move-result-object v0

    move v3, v2

    .line 1040
    :goto_25
    array-length v4, v0

    if-ge v3, v4, :cond_35

    .line 1041
    aget v4, v0, v3

    invoke-static {v4}, Landroid/media/AudioFormat;->convertNativeChannelMaskToOutMask(I)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :catch_33
    move-exception v0

    goto :goto_44

    .line 1043
    :cond_35
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatializedChannelMasks:Ljava/util/List;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_43} :catch_33

    goto :goto_4d

    .line 1046
    :goto_44
    const-string v3, "Error calling getSpatializedChannelMasks"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1047
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatializedChannelMasks:Ljava/util/List;

    .line 1051
    :goto_4d
    :try_start_4d
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-eqz v0, :cond_73

    .line 1052
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 1053
    invoke-interface {v0}, Landroid/media/ISpatializer;->getActualHeadTrackingMode()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 1054
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    invoke-interface {v0, v3}, Landroid/media/ISpatializer;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_64} :catch_65

    goto :goto_73

    :catch_65
    move-exception v0

    .line 1057
    const-string v3, "Can\'t configure head tracking"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 1058
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 1059
    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    const/4 v0, -0x2

    .line 1060
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    :cond_73
    :goto_73
    return-void
.end method

.method public final dispatchActualHeadTrackingMode(I)V
    .registers 7

    .line 1340
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_34

    .line 1343
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackingModeCallback;

    .line 1344
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackingModeCallback;->dispatchSpatializerActualHeadTrackingModeChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_31

    :catch_15
    move-exception v2

    .line 1346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in dispatchSpatializerActualHeadTrackingModeChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1350
    :cond_34
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchDesiredHeadTrackingMode(I)V
    .registers 7

    .line 1354
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_34

    .line 1357
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackingModeCallback;

    .line 1358
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackingModeCallback;->dispatchSpatializerDesiredHeadTrackingModeChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_31

    :catch_15
    move-exception v2

    .line 1360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in dispatchSpatializerDesiredHeadTrackingModeChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1364
    :cond_34
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchHeadTrackerAvailable(Z)V
    .registers 7

    .line 1368
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_34

    .line 1371
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    .line 1372
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackerAvailableCallback;->dispatchSpatializerHeadTrackerAvailable(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_31

    :catch_15
    move-exception v2

    .line 1374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in dispatchSpatializerHeadTrackerAvailable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1378
    :cond_34
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchOutputUpdate(I)V
    .registers 7

    .line 1502
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 1505
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerOutputCallback;

    invoke-interface {v2, p1}, Landroid/media/ISpatializerOutputCallback;->dispatchSpatializerOutputChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v2

    .line 1507
    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchOutputUpdate"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1510
    :cond_20
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchPoseUpdate([F)V
    .registers 7

    .line 1397
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 1400
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    .line 1401
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback;->dispatchPoseChanged([F)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v2

    .line 1403
    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchPoseChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1406
    :cond_20
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 1628
    const-string v0, "SpatializerHelper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmSpatLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmCapableSpatLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->getSpatializedChannelMasks()Ljava/util/List;

    move-result-object v0

    .line 1633
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1634
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "none"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_61

    :cond_5a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1635
    :goto_61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1636
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->javaChannelOutMaskToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 1638
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tspatialized speaker masks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmIsHeadTrackingSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1642
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    array-length v2, v1

    const/4 v4, 0x0

    :goto_b5
    if-ge v4, v2, :cond_c6

    aget v5, v1, v4

    .line 1643
    invoke-static {v5}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 1645
    :cond_c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tsupported head tracking modes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmDesiredHeadTrackingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 1647
    invoke-static {v1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1646
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmActualHeadTrackingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 1649
    invoke-static {v1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1648
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\theadtracker available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tsupports binaural:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / transaural:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmSpatOutput:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\thas FEATURE_AUDIO_SPATIAL_HEADTRACKING_LOW_LATENCY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1655
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.audio.spatial.headtracking.low_latency"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1654
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized evaluateState(Landroid/media/AudioDeviceAttributes;)Landroid/util/Pair;
    .registers 7

    monitor-enter p0

    .line 684
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 687
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device incompatible with Spatial Audio dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-object p1

    :catchall_30
    move-exception p1

    goto/16 :goto_b4

    .line 691
    :cond_33
    :try_start_33
    sget-object v1, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_5d

    .line 694
    const-string p1, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no spatialization mode found for device type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5b
    .catchall {:try_start_33 .. :try_end_5b} :catchall_30

    monitor-exit p0

    return-object p1

    .line 697
    :cond_5d
    :try_start_5d
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v2

    if-nez v2, :cond_83

    .line 700
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no spatialization device state found for Spatial Audio device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_81
    .catchall {:try_start_5d .. :try_end_81} :catchall_30

    monitor-exit p0

    return-object p1

    .line 704
    :cond_83
    :try_start_83
    invoke-static {v0}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a1

    .line 707
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_9b

    .line 708
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_99

    goto :goto_9b

    :cond_99
    move v0, v3

    goto :goto_a1

    :cond_9b
    :goto_9b
    if-nez v1, :cond_99

    .line 709
    iget-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-eqz p1, :cond_99

    .line 715
    :cond_a1
    :goto_a1
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b2
    .catchall {:try_start_83 .. :try_end_b2} :catchall_30

    monitor-exit p0

    return-object p1

    :goto_b4
    :try_start_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_30

    throw p1
.end method

.method public final findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;
    .registers 5

    .line 664
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 666
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    move-result v1

    .line 665
    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_16

    return-object v0

    .line 671
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result p0

    if-nez p0, :cond_1d

    return-object v0

    :cond_1d
    return-object p1
.end method

.method public declared-synchronized getActualHeadTrackingMode()I
    .registers 2

    monitor-enter p0

    .line 1158
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getCapableImmersiveAudioLevel()I
    .registers 2

    monitor-enter p0

    .line 888
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getCompatibleAudioDevices()Ljava/util/List;
    .registers 5

    monitor-enter p0

    .line 522
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getImmutableDeviceInventory()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    .line 524
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0, v2}, Lcom/android/server/audio/SpatializerHelper;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 525
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_30

    goto :goto_10

    :catchall_30
    move-exception v0

    goto :goto_34

    .line 528
    :cond_32
    monitor-exit p0

    return-object v0

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_30

    throw v0
.end method

.method public declared-synchronized getDesiredHeadTrackingMode()I
    .registers 2

    monitor-enter p0

    .line 1162
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getEffectParameter(I[B)V
    .registers 6

    monitor-enter p0

    .line 1436
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_5c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    goto :goto_3d

    .line 1445
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_3d

    .line 1446
    const-string p2, "AS.SpatializerHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getParameter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): null spatializer in state: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 1447
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    goto :goto_78

    .line 1453
    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1, p2}, Landroid/media/ISpatializer;->getParameter(I[B)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_3b

    goto :goto_5a

    :catch_43
    move-exception p2

    .line 1455
    :try_start_44
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getParameter for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_3b

    .line 1457
    :goto_5a
    monitor-exit p0

    return-void

    .line 1439
    :cond_5c
    :try_start_5c
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get parameter key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without a spatializer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1457
    :goto_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_5c .. :try_end_79} :catchall_3b

    throw p1
.end method

.method public final getHeadSensorHandleUpdateTracker()I
    .registers 12

    .line 1680
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_f

    .line 1681
    const-string p0, "getHeadSensorHandleUpdateTracker: no device, no head tracker"

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    return v1

    .line 1684
    :cond_f
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 1685
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService;->getDeviceIdentityAddresses(Landroid/media/AudioDeviceAttributes;)Ljava/util/List;

    move-result-object v2

    .line 1691
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDynamicSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 1692
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :cond_2b
    move-object v5, v4

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1693
    new-instance v7, Landroid/media/AudioDeviceAttributes;

    .line 1694
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v8

    invoke-direct {v7, v8, v6}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 1693
    invoke-static {v7}, Lcom/android/server/audio/UuidUtils;->uuidFromAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;

    move-result-object v6

    .line 1696
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_49
    :goto_49
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    .line 1697
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getUuid()Ljava/util/UUID;

    move-result-object v9

    .line 1698
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_80

    .line 1700
    new-instance v5, Lcom/android/server/audio/SpatializerHelper$HeadtrackerInfo;

    invoke-direct {v5, v8}, Lcom/android/server/audio/SpatializerHelper$HeadtrackerInfo;-><init>(Landroid/hardware/Sensor;)V

    .line 1701
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v10

    invoke-static {v10}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result v10

    if-eqz v10, :cond_76

    .line 1702
    invoke-virtual {v5}, Lcom/android/server/audio/SpatializerHelper$HeadtrackerInfo;->getMajorVersion()I

    move-result v5

    const/4 v10, 0x2

    if-ne v5, v10, :cond_7f

    goto :goto_7d

    .line 1708
    :cond_76
    invoke-virtual {v5}, Lcom/android/server/audio/SpatializerHelper$HeadtrackerInfo;->getMajorVersion()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_7f

    :goto_7d
    move-object v5, v8

    goto :goto_8c

    :cond_7f
    move-object v5, v8

    :cond_80
    if-nez v5, :cond_49

    .line 1713
    sget-object v10, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    move-object v5, v8

    goto :goto_49

    :cond_8c
    :goto_8c
    if-eqz v5, :cond_2c

    .line 1719
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getUuid()Ljava/util/UUID;

    move-result-object v6

    sget-object v7, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    goto :goto_a1

    .line 1722
    :cond_9b
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setHasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v6

    if-eqz v6, :cond_2b

    :cond_a1
    :goto_a1
    if-eqz v5, :cond_a8

    .line 1729
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    move-result p0

    return p0

    :cond_a8
    return v1
.end method

.method public declared-synchronized getOutput()I
    .registers 4

    monitor-enter p0

    .line 1464
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    goto :goto_19

    .line 1473
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    if-eqz v0, :cond_2e

    .line 1481
    :goto_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->getOutput()I

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1f} :catch_23
    .catchall {:try_start_19 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return v0

    :catchall_21
    move-exception v0

    goto :goto_3f

    :catch_23
    move-exception v0

    .line 1483
    :try_start_24
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error in getOutput"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_21

    .line 1484
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 1474
    :cond_2e
    :try_start_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "null Spatializer for getOutput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get output without a spatializer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1484
    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_21

    throw v0
.end method

.method public final getRoutingDevices(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;
    .registers 5

    .line 1772
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p0

    .line 1774
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v0

    :cond_c
    if-ge v1, p1, :cond_1d

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    if-nez v2, :cond_c

    .line 1777
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1d
    return-object p0
.end method

.method public final getScreenSensorHandle()I
    .registers 2

    .line 1758
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1760
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getHandle()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public declared-synchronized getSpatializedChannelMasks()Ljava/util/List;
    .registers 2

    monitor-enter p0

    .line 1123
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatializedChannelMasks:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getSupportedHeadTrackingModes()[I
    .registers 2

    monitor-enter p0

    .line 1154
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .registers 6

    monitor-enter p0

    .line 1266
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 1267
    const-string v0, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no headtracking support, hasHeadTracker always false for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1268
    monitor-exit p0

    return v1

    :catchall_1f
    move-exception p1

    goto :goto_30

    .line 1270
    :cond_21
    :try_start_21
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1271
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result p1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_1f

    if-eqz p1, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    monitor-exit p0

    return v1

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_1f

    throw p1
.end method

.method public declared-synchronized init(Z)V
    .registers 14

    monitor-enter p0

    .line 190
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init effectExpected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_24

    .line 192
    const-string p1, "init(): setting state to STATE_NOT_SUPPORTED due to effect not expected"

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 193
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 194
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    goto/16 :goto_1e1

    .line 196
    :cond_24
    :try_start_24
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-nez p1, :cond_1c4

    .line 200
    new-instance p1, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper-IA;)V

    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 201
    invoke-static {p1}, Landroid/media/AudioSystem;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;

    move-result-object p1

    if-nez p1, :cond_3f

    .line 203
    const-string p1, "init(): No Spatializer found"

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 204
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_21

    .line 205
    monitor-exit p0

    return-void

    .line 208
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->resetCapabilities()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_21

    const/4 v1, 0x3

    .line 211
    :try_start_43
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedLevels()[B

    move-result-object v2

    if-eqz v2, :cond_19c

    .line 212
    array-length v3, v2

    if-eqz v3, :cond_19c

    array-length v3, v2

    const/4 v4, 0x0

    if-ne v3, v0, :cond_59

    aget-byte v3, v2, v4

    if-nez v3, :cond_59

    goto/16 :goto_19c

    :catchall_56
    move-exception v0

    goto/16 :goto_1c0

    .line 220
    :cond_59
    array-length v3, v2

    move v5, v4

    :goto_5b
    if-ge v5, v3, :cond_80

    aget-byte v6, v2, v5

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init(): found support for level: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    if-ne v6, v0, :cond_7d

    .line 223
    const-string v2, "init(): setting capable level to LEVEL_MULTICHANNEL"

    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 224
    iput v6, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    goto :goto_80

    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    .line 232
    :cond_80
    :goto_80
    invoke-interface {p1}, Landroid/media/ISpatializer;->isHeadTrackingSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_f7

    .line 234
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedHeadTrackingModes()[B

    move-result-object v2

    .line 235
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    array-length v6, v2

    move v7, v4

    :goto_94
    if-ge v7, v6, :cond_cc

    aget-byte v8, v2, v7

    if-eqz v8, :cond_c9

    if-eq v8, v0, :cond_c9

    if-eq v8, v3, :cond_be

    if-eq v8, v1, :cond_be

    .line 247
    const-string v9, "AS.SpatializerHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected head tracking mode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "invalid mode"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c9

    .line 244
    :cond_be
    invoke-static {v8}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    :goto_c9
    add-int/lit8 v7, v7, 0x1

    goto :goto_94

    .line 252
    :cond_cc
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    move v2, v4

    .line 253
    :goto_d5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_ec

    .line 254
    iget-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    .line 257
    :cond_ec
    invoke-interface {p1}, Landroid/media/ISpatializer;->getActualHeadTrackingMode()B

    move-result v2

    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    goto :goto_fc

    :cond_f7
    const/4 v2, -0x2

    .line 259
    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    .line 260
    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 263
    :goto_fc
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedModes()[B

    move-result-object v2

    .line 264
    array-length v5, v2

    move v6, v4

    :goto_102
    if-ge v6, v5, :cond_127

    aget-byte v7, v2, v6

    if-eqz v7, :cond_122

    if-eq v7, v0, :cond_11f

    .line 273
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init(): Spatializer reports unknown supported mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_124

    .line 270
    :cond_11f
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    goto :goto_124

    .line 267
    :cond_122
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    :goto_124
    add-int/lit8 v6, v6, 0x1

    goto :goto_102

    .line 278
    :cond_127
    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v2, :cond_136

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-nez v2, :cond_136

    .line 279
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_131} :catch_1a8
    .catchall {:try_start_43 .. :try_end_131} :catchall_56

    .line 314
    :try_start_131
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_134
    .catch Landroid/os/RemoteException; {:try_start_131 .. :try_end_134} :catch_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_21

    .line 280
    :catch_134
    monitor-exit p0

    return-void

    :cond_136
    move v2, v4

    .line 284
    :goto_137
    :try_start_137
    sget-object v5, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_15f

    .line 285
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-nez v6, :cond_149

    .line 286
    iget-boolean v7, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v7, :cond_14f

    :cond_149
    if-ne v6, v0, :cond_15c

    iget-boolean v6, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-eqz v6, :cond_15c

    .line 289
    :cond_14f
    iget-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15c
    add-int/lit8 v2, v2, 0x1

    goto :goto_137

    .line 294
    :cond_15f
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getImmutableDeviceInventory()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_169
    :goto_169
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_182

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AdiDeviceState;

    .line 295
    invoke-virtual {p0, v5}, Lcom/android/server/audio/SpatializerHelper;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v6

    if-eqz v6, :cond_169

    .line 296
    const-string/jumbo v6, "setSADeviceSettings"

    invoke-static {v5, v6}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    goto :goto_169

    .line 302
    :cond_182
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    const-string v5, ""

    invoke-direct {v2, v3, v5}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V

    .line 306
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    const-string v3, ""

    const/16 v5, 0x8

    invoke-direct {v2, v5, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V
    :try_end_198
    .catch Landroid/os/RemoteException; {:try_start_137 .. :try_end_198} :catch_1a8
    .catchall {:try_start_137 .. :try_end_198} :catchall_56

    .line 314
    :goto_198
    :try_start_198
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_19b
    .catch Landroid/os/RemoteException; {:try_start_198 .. :try_end_19b} :catch_1ac
    .catchall {:try_start_198 .. :try_end_19b} :catchall_21

    goto :goto_1ac

    .line 216
    :cond_19c
    :goto_19c
    :try_start_19c
    const-string v2, "init(): found Spatializer is useless"

    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_1a3
    .catch Landroid/os/RemoteException; {:try_start_19c .. :try_end_1a3} :catch_1a8
    .catchall {:try_start_19c .. :try_end_1a3} :catchall_56

    .line 314
    :try_start_1a3
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_1a3 .. :try_end_1a6} :catch_1a6
    .catchall {:try_start_1a3 .. :try_end_1a6} :catchall_21

    .line 218
    :catch_1a6
    monitor-exit p0

    return-void

    .line 310
    :catch_1a8
    :try_start_1a8
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->resetCapabilities()V
    :try_end_1ab
    .catchall {:try_start_1a8 .. :try_end_1ab} :catchall_56

    goto :goto_198

    .line 318
    :catch_1ac
    :goto_1ac
    :try_start_1ac
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    if-nez p1, :cond_1b4

    .line 319
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_1b2
    .catchall {:try_start_1ac .. :try_end_1b2} :catchall_21

    .line 320
    monitor-exit p0

    return-void

    .line 322
    :cond_1b4
    :try_start_1b4
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 323
    sget-object p1, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->getRoutingDevices(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;
    :try_end_1be
    .catchall {:try_start_1b4 .. :try_end_1be} :catchall_21

    .line 325
    monitor-exit p0

    return-void

    .line 314
    :goto_1c0
    :try_start_1c0
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_1c3
    .catch Landroid/os/RemoteException; {:try_start_1c0 .. :try_end_1c3} :catch_1c3
    .catchall {:try_start_1c0 .. :try_end_1c3} :catchall_21

    .line 317
    :catch_1c3
    :try_start_1c3
    throw v0

    .line 197
    :cond_1c4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() called in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :goto_1e1
    monitor-exit p0
    :try_end_1e2
    .catchall {:try_start_1c3 .. :try_end_1e2} :catchall_21

    throw p1
.end method

.method public final initSAState(Lcom/android/server/audio/AdiDeviceState;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 591
    :cond_3
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_14

    .line 594
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralEnabledDefault:Z

    goto :goto_1b

    :cond_14
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 596
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralEnabledDefault:Z

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 593
    :goto_1b
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 598
    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingEnabledDefault:Z

    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    return-void
.end method

.method public declared-synchronized isAvailable()Z
    .registers 4

    monitor-enter p0

    .line 759
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    const/4 v2, 0x4

    if-eq v0, v2, :cond_10

    .line 768
    monitor-exit p0

    return v1

    .line 764
    :cond_10
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final isAvailableForAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 796
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 797
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 798
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1c

    return p0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z
    .registers 4

    monitor-enter p0

    .line 783
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 784
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 788
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object p1

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isAvailableForAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result p1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_15

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z
    .registers 4

    .line 820
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    int-to-byte p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_13

    .line 822
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v1, :cond_19

    :cond_13
    if-ne p1, v0, :cond_1a

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-eqz p0, :cond_1a

    :cond_19
    return v0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isEnabled()Z
    .registers 4

    monitor-enter p0

    .line 745
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    const/4 v2, 0x6

    if-eq v0, v2, :cond_10

    .line 754
    monitor-exit p0

    return v1

    .line 750
    :cond_10
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized isHeadTrackerAvailable()Z
    .registers 2

    monitor-enter p0

    .line 1311
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z
    .registers 6

    monitor-enter p0

    .line 1301
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 1302
    const-string v0, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no headtracking support, isHeadTrackerEnabled always false for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1303
    monitor-exit p0

    return v1

    :catchall_1f
    move-exception p1

    goto :goto_36

    .line 1305
    :cond_21
    :try_start_21
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 1307
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result p1
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_1f

    if-eqz p1, :cond_34

    const/4 v1, 0x1

    .line 1306
    :cond_34
    monitor-exit p0

    return v1

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_1f

    throw p1
.end method

.method public isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z
    .registers 5

    .line 831
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v1

    .line 832
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v2

    .line 831
    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 833
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;

    move-result-object p1

    .line 832
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onInitSensors()V
    .registers 10

    monitor-enter p0

    .line 1520
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :catchall_d
    move-exception v0

    goto/16 :goto_14f

    :cond_10
    move v0, v1

    :goto_11
    if-eqz v0, :cond_16

    .line 1521
    const-string v3, "initializing"

    goto :goto_19

    :cond_16
    const-string/jumbo v3, "releasing"

    .line 1522
    :goto_19
    iget-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v4, :cond_39

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sensors, null spatializer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_d

    .line 1524
    monitor-exit p0

    return-void

    .line 1526
    :cond_39
    :try_start_39
    iget-boolean v4, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-nez v4, :cond_59

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sensors, spatializer doesn\'t support headtracking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_39 .. :try_end_57} :catchall_d

    .line 1528
    monitor-exit p0

    return-void

    :cond_59
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_be

    .line 1533
    :try_start_5d
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_d

    if-nez v0, :cond_8b

    .line 1535
    :try_start_61
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sensor"

    .line 1536
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1537
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper-IA;)V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    .line 1538
    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_7c} :catch_7d
    .catchall {:try_start_61 .. :try_end_7c} :catchall_d

    goto :goto_8b

    :catch_7d
    move-exception v0

    .line 1540
    :try_start_7e
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error with SensorManager, can\'t initialize sensors"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1541
    iput-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1542
    iput-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_d

    .line 1543
    monitor-exit p0

    return-void

    .line 1551
    :cond_8b
    :goto_8b
    :try_start_8b
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->getHeadSensorHandleUpdateTracker()I

    move-result v0

    .line 1552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "head tracker sensor handle initialized to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->getScreenSensorHandle()I

    move-result v4

    .line 1554
    const-string v5, "AS.SpatializerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found screen sensor handle initialized to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 1556
    :cond_be
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_cd

    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    if-eqz v5, :cond_cd

    .line 1557
    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    .line 1558
    iput-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1559
    iput-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
    :try_end_cd
    .catchall {:try_start_8b .. :try_end_cd} :catchall_d

    :cond_cd
    move v0, v3

    move v4, v0

    .line 1564
    :goto_cf
    :try_start_cf
    const-string v5, "AS.SpatializerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setScreenSensor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v5, v4}, Landroid/media/ISpatializer;->setScreenSensor(I)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_eb} :catch_ec
    .catchall {:try_start_cf .. :try_end_eb} :catchall_d

    goto :goto_103

    :catch_ec
    move-exception v5

    .line 1567
    :try_start_ed
    const-string v6, "AS.SpatializerHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error calling setScreenSensor:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_103
    .catchall {:try_start_ed .. :try_end_103} :catchall_d

    .line 1570
    :goto_103
    :try_start_103
    const-string v4, "AS.SpatializerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHeadSensor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v4, v0}, Landroid/media/ISpatializer;->setHeadSensor(I)V

    .line 1572
    iget-boolean v4, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    if-eq v0, v3, :cond_125

    move v5, v2

    goto :goto_126

    :cond_125
    move v5, v1

    :goto_126
    if-eq v4, v5, :cond_148

    if-eq v0, v3, :cond_12b

    move v1, v2

    .line 1573
    :cond_12b
    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 1574
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->dispatchHeadTrackerAvailable(Z)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_130} :catch_131
    .catchall {:try_start_103 .. :try_end_130} :catchall_d

    goto :goto_148

    :catch_131
    move-exception v1

    .line 1577
    :try_start_132
    const-string v2, "AS.SpatializerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setHeadSensor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    :cond_148
    :goto_148
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setDesiredHeadTrackingMode(I)V
    :try_end_14d
    .catchall {:try_start_132 .. :try_end_14d} :catchall_d

    .line 1580
    monitor-exit p0

    return-void

    :goto_14f
    :try_start_14f
    monitor-exit p0
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_d

    throw v0
.end method

.method public declared-synchronized onRoutingUpdated()V
    .registers 8

    monitor-enter p0

    .line 352
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_10b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10b

    .line 363
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->getRoutingDevices(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    .line 366
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    .line 367
    const-string/jumbo v0, "onRoutingUpdated: no device, no Spatial Audio"

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 370
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    goto/16 :goto_10d

    .line 372
    :cond_25
    :try_start_25
    sget-object v2, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 375
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 376
    invoke-virtual {p0, v2}, Lcom/android/server/audio/SpatializerHelper;->addWirelessDeviceIfNew(Landroid/media/AudioDeviceAttributes;)V

    .line 380
    :cond_3a
    invoke-virtual {p0, v2}, Lcom/android/server/audio/SpatializerHelper;->evaluateState(Landroid/media/AudioDeviceAttributes;)Landroid/util/Pair;

    move-result-object v4

    .line 383
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 385
    sget-object v5, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_FORMAT:Landroid/media/AudioFormat;

    sget-object v6, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/audio/SpatializerHelper;->canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;Ljava/util/ArrayList;)Z

    move-result v0

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRoutingUpdated: can spatialize media 5.1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " on device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V

    goto :goto_8f

    .line 390
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRoutingUpdated: device:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not available for Spatial Audio"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V

    move v0, v3

    .line 395
    :goto_8f
    iget-boolean v5, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    if-eqz v5, :cond_a0

    if-eqz v0, :cond_a0

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a0

    goto :goto_a1

    :cond_a0
    move v1, v3

    :goto_a1
    if-eqz v1, :cond_b8

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling Spatial Audio since enabled for media device:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    goto :goto_cc

    .line 400
    :cond_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling Spatial Audio since disabled for media device:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 403
    :goto_cc
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-eqz v0, :cond_f8

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting spatialization level to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_25 .. :try_end_e4} :catchall_22

    .line 408
    :try_start_e4
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, v1}, Landroid/media/ISpatializer;->setLevel(B)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_e9} :catch_ea
    .catchall {:try_start_e4 .. :try_end_e9} :catchall_22

    goto :goto_f8

    :catch_ea
    move-exception v0

    .line 410
    :try_start_eb
    const-string v1, "AS.SpatializerHelper"

    const-string/jumbo v2, "onRoutingUpdated() Can\'t set spatializer level"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postReset()V
    :try_end_f6
    .catchall {:try_start_eb .. :try_end_f6} :catchall_22

    .line 413
    monitor-exit p0

    return-void

    .line 417
    :cond_f8
    :goto_f8
    :try_start_f8
    const-string/jumbo v0, "onRoutingUpdated"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/SpatializerHelper;->setDispatchFeatureEnabledState(ZLjava/lang/String;)V

    .line 419
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_109

    const/4 v1, -0x1

    if-eq v0, v1, :cond_109

    .line 421
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V
    :try_end_109
    .catchall {:try_start_f8 .. :try_end_109} :catchall_22

    .line 423
    :cond_109
    monitor-exit p0

    return-void

    .line 355
    :cond_10b
    monitor-exit p0

    return-void

    .line 423
    :goto_10d
    :try_start_10d
    monitor-exit p0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_22

    throw v0
.end method

.method public final postInitSensors()V
    .registers 1

    .line 1516
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->postInitSpatializerHeadTrackingSensors()V

    return-void
.end method

.method public final postReset()V
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->postResetSpatializer()V

    return-void
.end method

.method public declared-synchronized recenterHeadTracker()V
    .registers 4

    monitor-enter p0

    .line 1180
    :try_start_1
    const-string/jumbo v0, "recenterHeadTracker"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializerForHeadTracking(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    .line 1181
    monitor-exit p0

    return-void

    .line 1184
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->recenterHeadTracker()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_1c

    :catchall_12
    move-exception v0

    goto :goto_1e

    :catch_14
    move-exception v0

    .line 1186
    :try_start_15
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error calling recenterHeadTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 1188
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_12

    throw v0
.end method

.method public declared-synchronized refreshDevice(Landroid/media/AudioDeviceAttributes;Z)V
    .registers 5

    monitor-enter p0

    .line 773
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v0

    .line 774
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->isAvailableForAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 775
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V

    .line 776
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/SpatializerHelper;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    goto :goto_1f

    :catchall_1a
    move-exception p1

    goto :goto_21

    .line 778
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1a

    .line 780
    :goto_1f
    monitor-exit p0

    return-void

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1a

    throw p1
.end method

.method public declared-synchronized registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    .registers 3

    monitor-enter p0

    .line 1388
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1389
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized registerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V
    .registers 3

    monitor-enter p0

    if-eqz p2, :cond_b

    .line 1147
    :try_start_3
    iget-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_10

    :catchall_9
    move-exception p1

    goto :goto_12

    .line 1149
    :cond_b
    iget-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_9

    .line 1151
    :goto_10
    monitor-exit p0

    return-void

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_9

    throw p1
.end method

.method public declared-synchronized registerHeadTrackingModeCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V
    .registers 3

    monitor-enter p0

    .line 1133
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1134
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    .registers 3

    monitor-enter p0

    .line 1493
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1494
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized registerStateCallback(Landroid/media/ISpatializerCallback;)V
    .registers 3

    monitor-enter p0

    .line 896
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 897
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final releaseSpat()V
    .registers 5

    .line 1069
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    .line 1070
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 1072
    :try_start_7
    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-eqz v2, :cond_11

    .line 1073
    invoke-interface {v0, v1}, Landroid/media/ISpatializer;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V

    goto :goto_11

    :catch_f
    move-exception v0

    goto :goto_1a

    :cond_11
    :goto_11
    const/4 v0, 0x0

    .line 1075
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 1076
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->release()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_f

    goto :goto_21

    .line 1078
    :goto_1a
    const-string v2, "AS.SpatializerHelper"

    const-string v3, "Can\'t set release spatializer cleanly"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    :goto_21
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    :cond_23
    return-void
.end method

.method public declared-synchronized removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 4

    monitor-enter p0

    .line 625
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_40

    const v1, 0x20000002

    if-ne v0, v1, :cond_c

    .line 626
    monitor-exit p0

    return-void

    .line 628
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeCompatibleAudioDevice: dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 631
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    .line 632
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 633
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    .line 634
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 635
    const-string/jumbo v0, "removeCompatibleAudioDevice"

    invoke-static {p1, v0}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_40

    goto :goto_42

    :catchall_40
    move-exception p1

    goto :goto_44

    .line 637
    :cond_42
    :goto_42
    monitor-exit p0

    return-void

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_40

    throw p1
.end method

.method public declared-synchronized reset(Z)V
    .registers 4

    monitor-enter p0

    .line 332
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resetting featureEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->releaseSpat()V

    const/4 v0, 0x0

    .line 334
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 335
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    const/4 v0, -0x2

    .line 336
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->init(Z)V

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 339
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public final resetCapabilities()V
    .registers 2

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 343
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 344
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 345
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    .line 346
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    return-void
.end method

.method public declared-synchronized setDesiredHeadTrackingMode(I)V
    .registers 5

    monitor-enter p0

    .line 1213
    :try_start_1
    const-string/jumbo v0, "setDesiredHeadTrackingMode"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializerForHeadTracking(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    .line 1214
    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    .line 1217
    :try_start_f
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_53

    .line 1220
    :cond_14
    :goto_14
    :try_start_14
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    if-eq v0, p1, :cond_20

    .line 1221
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 1222
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchDesiredHeadTrackingMode(I)V

    goto :goto_20

    :catch_1e
    move-exception p1

    goto :goto_4a

    .line 1224
    :cond_20
    :goto_20
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesiredHeadTrackingMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    invoke-static {p1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1224
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatializerIntToHeadTrackingModeType(I)B

    move-result p1

    invoke-interface {v0, p1}, Landroid/media/ISpatializer;->setDesiredHeadTrackingMode(B)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_49} :catch_1e
    .catchall {:try_start_14 .. :try_end_49} :catchall_12

    goto :goto_51

    .line 1228
    :goto_4a
    :try_start_4a
    const-string v0, "AS.SpatializerHelper"

    const-string v1, "Error calling setDesiredHeadTrackingMode"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_12

    .line 1230
    :goto_51
    monitor-exit p0

    return-void

    :goto_53
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_12

    throw p1
.end method

.method public final declared-synchronized setDispatchAvailableState(Z)V
    .registers 7

    monitor-enter p0

    .line 964
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_10a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10a

    const/4 v1, 0x6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_97

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_6d

    if-eq v0, v3, :cond_43

    if-eq v0, v1, :cond_16

    goto/16 :goto_9b

    :cond_16
    if-eqz p1, :cond_40

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 993
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 992
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 994
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception p1

    goto/16 :goto_123

    .line 996
    :cond_40
    :try_start_40
    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_9b

    :cond_43
    if-eqz p1, :cond_6a

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 1003
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1002
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_40 .. :try_end_68} :catchall_3d

    .line 1004
    monitor-exit p0

    return-void

    .line 1006
    :cond_6a
    :try_start_6a
    iput v4, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_9b

    :cond_6d
    if-eqz p1, :cond_72

    .line 981
    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_9b

    .line 985
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 986
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 985
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_6a .. :try_end_95} :catchall_3d

    .line 987
    monitor-exit p0

    return-void

    :cond_97
    if-eqz p1, :cond_e5

    .line 971
    :try_start_99
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 1010
    :goto_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_c4
    .catchall {:try_start_99 .. :try_end_c4} :catchall_3d

    const/4 v1, 0x0

    :goto_c5
    if-ge v1, v0, :cond_de

    .line 1014
    :try_start_c7
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerCallback;

    .line 1015
    invoke-interface {v2, p1}, Landroid/media/ISpatializerCallback;->dispatchSpatializerAvailableChanged(Z)V
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_d2} :catch_d3
    .catchall {:try_start_c7 .. :try_end_d2} :catchall_3d

    goto :goto_db

    :catch_d3
    move-exception v2

    .line 1017
    :try_start_d4
    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchSpatializerEnabledChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_db
    add-int/lit8 v1, v1, 0x1

    goto :goto_c5

    .line 1020
    :cond_de
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_e3
    .catchall {:try_start_d4 .. :try_end_e3} :catchall_3d

    .line 1021
    monitor-exit p0

    return-void

    .line 975
    :cond_e5
    :try_start_e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 976
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 975
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_108
    .catchall {:try_start_e5 .. :try_end_108} :catchall_3d

    .line 977
    monitor-exit p0

    return-void

    .line 967
    :cond_10a
    :try_start_10a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should not update available state in state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1021
    :goto_123
    monitor-exit p0
    :try_end_124
    .catchall {:try_start_10a .. :try_end_124} :catchall_3d

    throw p1
.end method

.method public final declared-synchronized setDispatchFeatureEnabledState(ZLjava/lang/String;)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz p1, :cond_66

    .line 911
    :try_start_7
    iget v4, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eq v4, v3, :cond_63

    if-eq v4, v2, :cond_36

    if-eq v4, v1, :cond_36

    if-ne v4, v0, :cond_18

    .line 916
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto/16 :goto_94

    :catchall_15
    move-exception p1

    goto/16 :goto_10b

    .line 926
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid mState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for enabled true"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 921
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchFeatureEnabledState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 923
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " src:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 921
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_15

    .line 924
    monitor-exit p0

    return-void

    .line 913
    :cond_63
    :try_start_63
    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_94

    .line 930
    :cond_66
    iget v4, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eq v4, v3, :cond_de

    if-eq v4, v2, :cond_92

    if-eq v4, v1, :cond_8f

    if-ne v4, v0, :cond_71

    goto :goto_de

    .line 945
    :cond_71
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid mState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for enabled false"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 935
    :cond_8f
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_94

    .line 932
    :cond_92
    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 949
    :goto_94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDispatchFeatureEnabledState("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") mState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 950
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 949
    invoke-static {p2}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 951
    iget-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2
    :try_end_bd
    .catchall {:try_start_63 .. :try_end_bd} :catchall_15

    const/4 v0, 0x0

    :goto_be
    if-ge v0, p2, :cond_d7

    .line 954
    :try_start_c0
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/ISpatializerCallback;

    .line 955
    invoke-interface {v1, p1}, Landroid/media/ISpatializerCallback;->dispatchSpatializerEnabledChanged(Z)V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_cb} :catch_cc
    .catchall {:try_start_c0 .. :try_end_cb} :catchall_15

    goto :goto_d4

    :catch_cc
    move-exception v1

    .line 957
    :try_start_cd
    const-string v2, "AS.SpatializerHelper"

    const-string v3, "Error in dispatchSpatializerEnabledChanged"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d4
    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    .line 960
    :cond_d7
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_dc
    .catchall {:try_start_cd .. :try_end_dc} :catchall_15

    .line 961
    monitor-exit p0

    return-void

    .line 940
    :cond_de
    :goto_de
    :try_start_de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchFeatureEnabledState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 941
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " src:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 940
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_de .. :try_end_109} :catchall_15

    .line 943
    monitor-exit p0

    return-void

    .line 945
    :goto_10b
    :try_start_10b
    monitor-exit p0
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_15

    throw p1
.end method

.method public declared-synchronized setDisplayOrientation(F)V
    .registers 4

    monitor-enter p0

    .line 1191
    :try_start_1
    const-string/jumbo v0, "setDisplayOrientation"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializer(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    .line 1192
    monitor-exit p0

    return-void

    .line 1195
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1}, Landroid/media/ISpatializer;->setDisplayOrientation(F)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_1c

    :catchall_12
    move-exception p1

    goto :goto_1e

    :catch_14
    move-exception p1

    .line 1197
    :try_start_15
    const-string v0, "AS.SpatializerHelper"

    const-string v1, "Error calling setDisplayOrientation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 1199
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_12

    throw p1
.end method

.method public declared-synchronized setEffectParameter(I[B)V
    .registers 6

    monitor-enter p0

    .line 1412
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_5d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    goto :goto_3e

    .line 1421
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_3e

    .line 1422
    const-string p2, "AS.SpatializerHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setParameter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): null spatializer in state: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 1423
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception p1

    goto :goto_79

    .line 1429
    :cond_3e
    :goto_3e
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1, p2}, Landroid/media/ISpatializer;->setParameter(I[B)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_44
    .catchall {:try_start_3e .. :try_end_43} :catchall_3c

    goto :goto_5b

    :catch_44
    move-exception p2

    .line 1431
    :try_start_45
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setParameter for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_3c

    .line 1433
    :goto_5b
    monitor-exit p0

    return-void

    .line 1415
    :cond_5d
    :try_start_5d
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set parameter key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without a spatializer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1433
    :goto_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_5d .. :try_end_7a} :catchall_3c

    throw p1
.end method

.method public declared-synchronized setFeatureEnabled(Z)V
    .registers 4

    monitor-enter p0

    .line 837
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFeatureEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") was featureEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 838
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_38

    if-ne v0, p1, :cond_26

    .line 839
    monitor-exit p0

    return-void

    .line 841
    :cond_26
    :try_start_26
    iput-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    if-eqz p1, :cond_43

    .line 843
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3a

    .line 844
    const-string p1, "AS.SpatializerHelper"

    const-string v0, "Can\'t enabled Spatial Audio, unsupported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_38

    .line 845
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    goto :goto_49

    :cond_3a
    if-nez p1, :cond_3f

    .line 848
    :try_start_3c
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->init(Z)V

    .line 850
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V

    goto :goto_47

    :cond_43
    const/4 p1, 0x0

    .line 852
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_38

    .line 854
    :goto_47
    monitor-exit p0

    return-void

    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_38

    throw p1
.end method

.method public declared-synchronized setFoldState(Z)V
    .registers 4

    monitor-enter p0

    .line 1202
    :try_start_1
    const-string/jumbo v0, "setFoldState"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializer(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    if-nez v0, :cond_c

    .line 1203
    monitor-exit p0

    return-void

    .line 1206
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1}, Landroid/media/ISpatializer;->setFoldState(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_1c

    :catchall_12
    move-exception p1

    goto :goto_1e

    :catch_14
    move-exception p1

    .line 1208
    :try_start_15
    const-string v0, "AS.SpatializerHelper"

    const-string v1, "Error calling setFoldState"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 1210
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_12

    throw p1
.end method

.method public declared-synchronized setGlobalTransform([F)V
    .registers 5

    monitor-enter p0

    .line 1166
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_22

    .line 1169
    const-string/jumbo v0, "setGlobalTransform"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializerForHeadTracking(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    if-nez v0, :cond_10

    .line 1170
    monitor-exit p0

    return-void

    .line 1173
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1}, Landroid/media/ISpatializer;->setGlobalTransform([F)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_20

    :catchall_16
    move-exception p1

    goto :goto_3a

    :catch_18
    move-exception p1

    .line 1175
    :try_start_19
    const-string v0, "AS.SpatializerHelper"

    const-string v1, "Error calling setGlobalTransform"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 1177
    :goto_20
    monitor-exit p0

    return-void

    .line 1167
    :cond_22
    :try_start_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid array size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :goto_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_16

    throw p1
.end method

.method public declared-synchronized setHasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .registers 6

    monitor-enter p0

    .line 1280
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 1281
    const-string v0, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no headtracking support, setHasHeadTracker always false for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1282
    monitor-exit p0

    return v1

    :catchall_1f
    move-exception p1

    goto :goto_66

    .line 1284
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1f

    const v2, 0x20000002

    if-ne v0, v2, :cond_2c

    .line 1285
    monitor-exit p0

    return v1

    .line 1287
    :cond_2c
    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1289
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result p1

    if-nez p1, :cond_47

    const/4 p1, 0x1

    .line 1290
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 1291
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 1292
    const-string/jumbo p1, "setHasHeadTracker"

    invoke-static {v0, p1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    .line 1294
    :cond_47
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result p1
    :try_end_4b
    .catchall {:try_start_2c .. :try_end_4b} :catchall_1f

    monitor-exit p0

    return p1

    .line 1296
    :cond_4d
    :try_start_4d
    const-string v0, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHasHeadTracker: device not found for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4d .. :try_end_64} :catchall_1f

    .line 1297
    monitor-exit p0

    return v1

    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_1f

    throw p1
.end method

.method public declared-synchronized setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    .registers 7

    monitor-enter p0

    .line 1233
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-nez v0, :cond_28

    .line 1234
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no headtracking support, ignoring setHeadTrackerEnabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :catchall_25
    move-exception p1

    goto/16 :goto_cd

    .line 1237
    :cond_28
    :goto_28
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_25

    if-nez v0, :cond_30

    .line 1238
    monitor-exit p0

    return-void

    .line 1239
    :cond_30
    :try_start_30
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1240
    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called setHeadTrackerEnabled enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " device:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on a device without headtracker"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_25

    .line 1242
    monitor-exit p0

    return-void

    .line 1244
    :cond_5b
    :try_start_5b
    const-string v1, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHeadTrackerEnabled enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 1246
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 1247
    const-string/jumbo v1, "setHeadTrackerEnabled"

    invoke-static {v0, v1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    .line 1250
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1251
    const-string/jumbo p1, "setHeadTrackerEnabled: no device, bailing"

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;
    :try_end_96
    .catchall {:try_start_5b .. :try_end_96} :catchall_25

    .line 1252
    monitor-exit p0

    return-void

    .line 1254
    :cond_98
    :try_start_98
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 1255
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    if-ne v1, v2, :cond_cb

    .line 1256
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cb

    if-eqz p1, :cond_be

    .line 1257
    iget p2, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    goto :goto_bf

    :cond_be
    const/4 p2, -0x1

    :goto_bf
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->setDesiredHeadTrackingMode(I)V

    if-eqz p1, :cond_cb

    .line 1259
    iget-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    if-nez p1, :cond_cb

    .line 1260
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V
    :try_end_cb
    .catchall {:try_start_98 .. :try_end_cb} :catchall_25

    .line 1263
    :cond_cb
    monitor-exit p0

    return-void

    :goto_cd
    :try_start_cd
    monitor-exit p0
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_25

    throw p1
.end method

.method public declared-synchronized setSpatializerEnabledInt(Z)V
    .registers 4

    monitor-enter p0

    .line 857
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_24

    goto :goto_39

    :cond_15
    if-nez p1, :cond_39

    .line 880
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->releaseSpat()V

    .line 881
    const-string/jumbo p1, "setSpatializerEnabledInt"

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/SpatializerHelper;->setDispatchFeatureEnabledState(ZLjava/lang/String;)V

    goto :goto_39

    :catchall_22
    move-exception p1

    goto :goto_43

    :cond_24
    if-eqz p1, :cond_39

    .line 871
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->createSpat()V

    .line 872
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    goto :goto_39

    :cond_2d
    if-eqz p1, :cond_39

    .line 865
    const-string p1, "AS.SpatializerHelper"

    const-string v0, "Can\'t enable when unsupported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_22

    goto :goto_39

    :cond_37
    if-nez p1, :cond_3b

    .line 885
    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    .line 860
    :cond_3b
    :try_start_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t enable when uninitialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 885
    :goto_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_22

    throw p1
.end method

.method public declared-synchronized unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    .registers 3

    monitor-enter p0

    .line 1393
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1394
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized unregisterHeadTrackingModeCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V
    .registers 3

    monitor-enter p0

    .line 1138
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1139
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    .registers 3

    monitor-enter p0

    .line 1498
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1499
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized unregisterStateCallback(Landroid/media/ISpatializerCallback;)V
    .registers 3

    monitor-enter p0

    .line 901
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 902
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method
