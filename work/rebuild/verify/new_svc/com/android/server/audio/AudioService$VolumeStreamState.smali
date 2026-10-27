.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# instance fields
.field public final mIndexMap:Landroid/util/SparseIntArray;

.field public mIndexMax:I

.field public mIndexMin:I

.field public mIndexMinNoPerm:I

.field public mIndexStepFactor:F

.field public mIsMuted:Z

.field public mIsMutedInternally:Z

.field public mObservedDeviceSet:Ljava/util/Set;

.field public final mStreamDevicesChanged:Landroid/content/Intent;

.field public final mStreamDevicesChangedOptions:Landroid/os/Bundle;

.field public final mStreamType:I

.field public final mVolumeChanged:Landroid/content/Intent;

.field public final mVolumeChangedOptions:Landroid/os/Bundle;

.field public mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

.field public mVolumeIndexSettingName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIndexMap(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIndexMax(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIndexMin(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMuted(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeGroupState(Lcom/android/server/audio/AudioService$VolumeStreamState;)Lcom/android/server/audio/AudioService$VolumeGroupState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsMuted(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetVolumePersistenceUserId(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getVolumePersistenceUserId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasValidSettingsName(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misMutable(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isMutable()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 7

    .line 10031
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 9970
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9985
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    const/4 p1, 0x0

    .line 9987
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 9988
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    .line 9990
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 9992
    new-instance p1, Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 10032
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 10034
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10035
    sget-object p1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget p1, p1, p3

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 10036
    sget-object p1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget p1, p1, p3

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 10038
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateIndexFactors()V

    .line 10039
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 10041
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 10042
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    .line 10043
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10044
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v1, 0x1

    .line 10047
    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 10049
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 10048
    invoke-virtual {p1, p2, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    const/4 p2, 0x2

    .line 10050
    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 10051
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChangedOptions:Landroid/os/Bundle;

    .line 10053
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 10054
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10055
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 10056
    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 10058
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 10057
    invoke-virtual {p1, v2, p3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 10059
    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 10061
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChangedOptions:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;Z)Z
    .registers 6

    .line 10394
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public applyAllVolumes()V
    .registers 14

    .line 10349
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 10353
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_86

    .line 10354
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    if-eq v9, v5, :cond_81

    .line 10356
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v4

    if-eqz v4, :cond_25

    move v10, v3

    move v3, v0

    goto :goto_67

    .line 10358
    :cond_25
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v9}, Lcom/android/server/audio/AudioService;->-$$Nest$misHdmiAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3a

    .line 10362
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    :goto_34
    move v10, v5

    goto :goto_67

    :catchall_36
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9b

    .line 10363
    :cond_3a
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v9}, Lcom/android/server/audio/AudioService;->-$$Nest$misFullVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 10364
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    :goto_48
    move v10, v3

    move v3, v4

    goto :goto_67

    .line 10365
    :cond_4b
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v9}, Lcom/android/server/audio/AudioService;->-$$Nest$misAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 10367
    invoke-virtual {p0, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    goto :goto_34

    .line 10369
    :cond_5c
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    goto :goto_48

    .line 10372
    :goto_67
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7b

    .line 10373
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/16 v7, 0x3ee

    move-object v11, p0

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_7c

    :cond_7b
    move-object v11, p0

    .line 10378
    :goto_7c
    invoke-virtual {v11, v3, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    move v3, v10

    goto :goto_82

    :cond_81
    move-object v11, p0

    :goto_82
    add-int/lit8 v2, v2, 0x1

    move-object p0, v11

    goto :goto_a

    :cond_86
    move-object v11, p0

    .line 10383
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result p0

    if-eqz p0, :cond_8e

    goto :goto_96

    .line 10386
    :cond_8e
    invoke-virtual {v11, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x5

    div-int/lit8 v0, p0, 0xa

    .line 10388
    :goto_96
    invoke-virtual {v11, v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 10389
    monitor-exit v1

    return-void

    :goto_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_a .. :try_end_9c} :catchall_36

    throw p0
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .registers 3

    .line 10334
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_39

    .line 10336
    :cond_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misHdmiAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misFullVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_33

    .line 10339
    :cond_19
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 10340
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_39

    .line 10342
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_39

    .line 10338
    :cond_33
    :goto_33
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 10345
    :goto_39
    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    return-void
.end method

.method public checkFixedVolumeDevices()V
    .registers 6

    .line 10801
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10803
    :try_start_7
    sget-object v1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_49

    const/4 v1, 0x0

    .line 10804
    :goto_13
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 10805
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 10806
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 10807
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$misFullVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-nez v4, :cond_3c

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 10808
    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$misFixedVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-eqz v4, :cond_43

    if-eqz v3, :cond_43

    goto :goto_3c

    :catchall_3a
    move-exception p0

    goto :goto_4b

    .line 10809
    :cond_3c
    :goto_3c
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 10811
    :cond_43
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 10814
    :cond_49
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_3a

    throw p0
.end method

.method public doMute()V
    .registers 10

    .line 10780
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 10782
    :try_start_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateVolumeGroupIndex(IZ)V

    .line 10787
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v7, p0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10793
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_25

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 10829
    const-string v0, "   Muted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10830
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 10831
    const-string v0, "   Muted Internally: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10832
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 10833
    const-string v0, "   Min: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10834
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10835
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    if-eq v0, v1, :cond_37

    .line 10836
    const-string v0, " w/o perm:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10837
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_3a

    .line 10839
    :cond_37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 10841
    :goto_3a
    const-string v0, "   Max: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10842
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 10843
    const-string v0, "   streamVolume:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 10844
    const-string v0, "   Current: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10845
    :goto_5e
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_ad

    if-lez v0, :cond_6d

    .line 10847
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10849
    :cond_6d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 10850
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_81

    .line 10851
    const-string v1, "default"

    goto :goto_85

    .line 10852
    :cond_81
    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 10853
    :goto_85
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_98

    .line 10854
    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10855
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10856
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10858
    :cond_98
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10859
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    .line 10860
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 10862
    :cond_ad
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 10863
    const-string v0, "   Devices: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10864
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceSetForStream(I)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->deviceSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10865
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 10866
    const-string v0, "   Volume Group: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10867
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz p0, :cond_d5

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_d8

    :cond_d5
    const-string/jumbo p0, "n/a"

    :goto_d8
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getIndex(I)I
    .registers 5

    .line 10552
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10553
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v2, :cond_1b

    .line 10556
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 10558
    :cond_1b
    :goto_1b
    monitor-exit v0

    return p1

    .line 10559
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public getIndexStepFactor()F
    .registers 1

    .line 10164
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    return p0
.end method

.method public getMaxIndex()I
    .registers 1

    .line 10586
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p0
.end method

.method public getMinIndex()I
    .registers 1

    .line 10593
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return p0
.end method

.method public getMinIndex(Z)I
    .registers 2

    if-eqz p1, :cond_5

    .line 10602
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return p0

    :cond_5
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    return p0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 3

    .line 10231
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 10234
    :cond_8
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p1

    .line 10235
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 10236
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p0

    .line 10238
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStreamType()I
    .registers 1

    .line 10797
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return p0
.end method

.method public final getValidIndex(IZ)I
    .registers 3

    if-eqz p2, :cond_5

    .line 10818
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    goto :goto_7

    :cond_5
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :goto_7
    if-ge p1, p2, :cond_a

    return p2

    .line 10821
    :cond_a
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result p2

    if-nez p2, :cond_18

    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, p2, :cond_17

    goto :goto_18

    :cond_17
    return p1

    .line 10822
    :cond_18
    :goto_18
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p0
.end method

.method public final getVolumePersistenceUserId()I
    .registers 3

    .line 10607
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    const/4 p0, -0x2

    return p0
.end method

.method public hasIndexForDevice(I)Z
    .registers 4

    .line 10580
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10581
    :try_start_7
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 10582
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final hasValidSettingsName()Z
    .registers 1

    .line 10242
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isFullyMuted()Z
    .registers 2

    .line 10727
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final isMutable()Z
    .registers 3

    .line 10732
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-eqz v0, :cond_16

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10733
    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$smisCallStream(I)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public mute(ZLjava/lang/String;)Z
    .registers 5

    .line 10694
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 10695
    :try_start_8
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(ZZLjava/lang/String;)Z

    move-result p2

    .line 10696
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_17

    if-eqz p2, :cond_16

    .line 10698
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mbroadcastMuteSetting(Lcom/android/server/audio/AudioService;IZ)V

    :cond_16
    return p2

    :catchall_17
    move-exception p0

    .line 10696
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public mute(ZZLjava/lang/String;)Z
    .registers 10

    .line 10746
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10747
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    const/4 v2, 0x0

    if-eq p1, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    if-eqz v1, :cond_6b

    .line 10749
    sget-object v3, Lcom/android/server/audio/AudioService;->sMuteLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v4, v5, p1, p3}, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;-><init>(IZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    if-nez p1, :cond_64

    .line 10752
    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {p3, v4}, Lcom/android/server/audio/AudioService;->-$$Nest$misStreamMutedByRingerOrZenMode(Lcom/android/server/audio/AudioService;I)Z

    move-result p3

    if-eqz p3, :cond_64

    .line 10753
    const-string p1, "AS.AudioService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to unmute stream "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " despite ringer-zen muted stream 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/android/server/audio/AudioService;->sRingerAndZenModeMutedStreams:I

    .line 10755
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    .line 10753
    invoke-static {p1, p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10757
    new-instance p1, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    sget p2, Lcom/android/server/audio/AudioService;->sRingerAndZenModeMutedStreams:I

    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;-><init>(II)V

    invoke-virtual {v3, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 10760
    monitor-exit v0

    return v2

    :catchall_62
    move-exception p0

    goto :goto_7f

    .line 10762
    :cond_64
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz p2, :cond_6b

    .line 10764
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->doMute()V

    .line 10767
    :cond_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_7 .. :try_end_6c} :catchall_62

    if-eqz v1, :cond_7e

    .line 10770
    sget-boolean p0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p0, :cond_79

    .line 10771
    const-string p0, "AS.AudioService"

    const-string p1, "Clear volume cache after changing mute state"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10773
    :cond_79
    const-string p0, "getStreamVolume"

    invoke-static {p0}, Landroid/media/AudioManager;->clearVolumeCache(Ljava/lang/String;)V

    :cond_7e
    return v1

    .line 10767
    :goto_7f
    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_62

    throw p0
.end method

.method public muteInternally(Z)Z
    .registers 6

    .line 10710
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10711
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eq p1, v1, :cond_14

    .line 10713
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    .line 10715
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    const/4 v1, 0x1

    goto :goto_15

    :catchall_12
    move-exception p0

    goto :goto_27

    :cond_14
    const/4 v1, 0x0

    .line 10717
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_12

    if-eqz v1, :cond_26

    .line 10719
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v3, 0x9

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v2, v3, p0, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIZ)V

    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_26
    return v1

    .line 10717
    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_12

    throw p0
.end method

.method public observeDevicesForStream_syncVSS(Z)Ljava/util/Set;
    .registers 9

    .line 10195
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSystemServer(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_f

    .line 10196
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 10198
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetDeviceSetForStreamDirect(Lcom/android/server/audio/AudioService;I)Ljava/util/Set;

    move-result-object v0

    .line 10199
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 10200
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    return-object p0

    .line 10205
    :cond_22
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v4

    .line 10206
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v3

    .line 10208
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    if-eqz p1, :cond_37

    .line 10211
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams(I)V

    .line 10214
    :cond_37
    sget-object p1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne p1, v0, :cond_47

    .line 10215
    invoke-static {v0, v3, v4}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 10219
    :cond_47
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v5

    .line 10220
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    iput-object p1, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 10221
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChangedOptions:Landroid/os/Bundle;

    iput-object p1, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 10222
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/16 v1, 0x20

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10227
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    return-object p0
.end method

.method public readSettings()V
    .registers 12

    .line 10257
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10259
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1d

    .line 10260
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 10261
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    goto/16 :goto_92

    .line 10266
    :cond_1d
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_77

    const/4 v4, 0x7

    if-ne v1, v4, :cond_26

    goto :goto_77

    .line 10276
    :cond_26
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v2, :cond_46

    .line 10282
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v7

    goto :goto_47

    :cond_46
    move v6, v5

    .line 10284
    :goto_47
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_66

    .line 10287
    :cond_4e
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v7

    .line 10288
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v9

    .line 10289
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getVolumePersistenceUserId()I

    move-result v10

    .line 10288
    invoke-virtual {v8, v9, v7, v6, v10}, Lcom/android/server/audio/SettingsAdapter;->getSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    :goto_66
    if-ne v6, v5, :cond_69

    goto :goto_2c

    .line 10295
    :cond_69
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v6, v6, 0xa

    invoke-virtual {p0, v6, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(IZ)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2c

    .line 10298
    :cond_75
    monitor-exit v0

    return-void

    .line 10268
    :cond_77
    :goto_77
    sget-object v3, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0xa

    .line 10269
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmCameraSoundForced(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 10270
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 10272
    :cond_8b
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 10273
    monitor-exit v0

    return-void

    .line 10298
    :goto_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_7 .. :try_end_93} :catchall_1a

    throw p0
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .registers 9

    if-eqz p1, :cond_50

    .line 10622
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_9

    goto :goto_50

    .line 10625
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 10628
    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 10629
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$mrescaleIndex(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 10630
    :goto_1d
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 10631
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 10634
    :cond_31
    iget-object p1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 10635
    :goto_33
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_50

    .line 10636
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 10637
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 10638
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4, v3, v0, v5}, Lcom/android/server/audio/AudioService;->-$$Nest$mrescaleIndex(Lcom/android/server/audio/AudioService;III)I

    move-result v3

    const/4 v4, 0x1

    .line 10640
    invoke-virtual {p0, v3, v1, p2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_50
    :goto_50
    return-void
.end method

.method public setAllIndexesToMax()V
    .registers 5

    const/4 v0, 0x0

    .line 10647
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 10648
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public setIndex(IILjava/lang/String;Z)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 10403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 10404
    iget-object v5, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 10405
    :try_start_14
    iget-object v6, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_216

    .line 10406
    :try_start_1b
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    move/from16 v8, p1

    .line 10407
    invoke-virtual {v0, v8, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(IZ)I

    move-result v8

    .line 10410
    iget v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_3c

    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmCameraSoundForced(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    .line 10411
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 10412
    iget v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_3d

    :catchall_39
    move-exception v0

    goto/16 :goto_218

    :cond_3c
    move v9, v8

    .line 10414
    :goto_3d
    iget-object v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v11, 0x1

    if-eq v7, v9, :cond_47

    move v12, v11

    goto :goto_48

    :cond_47
    const/4 v12, 0x0

    .line 10422
    :goto_48
    iget-object v13, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v14, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v13, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v13

    if-ne v1, v13, :cond_54

    move v13, v11

    goto :goto_55

    :cond_54
    const/4 v13, 0x0

    .line 10423
    :goto_55
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    sub-int/2addr v14, v11

    :goto_5a
    const/4 v11, -0x1

    if-ltz v14, :cond_bc

    .line 10425
    iget-object v15, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v15, v14}, Lcom/android/server/audio/AudioService;->getVssForStream(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v15

    if-eqz v15, :cond_7c

    .line 10426
    iget v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v14, v10, :cond_7c

    sget-object v10, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    .line 10427
    invoke-virtual {v10, v14, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    iget v11, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v10, v11, :cond_7c

    if-nez v12, :cond_7f

    .line 10428
    invoke-virtual {v15, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v10

    if-nez v10, :cond_7c

    goto :goto_7f

    :cond_7c
    move/from16 v16, v7

    goto :goto_b7

    .line 10430
    :cond_7f
    :goto_7f
    iget-object v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v11, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10431
    invoke-static {v10, v8, v11, v14}, Lcom/android/server/audio/AudioService;->-$$Nest$mrescaleIndex(Lcom/android/server/audio/AudioService;III)I

    move-result v10

    .line 10432
    invoke-virtual {v15, v10, v1, v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result v11

    if-eqz v13, :cond_9b

    move/from16 v16, v7

    .line 10435
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 10436
    invoke-virtual {v7, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 10435
    invoke-virtual {v15, v10, v7, v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result v7

    or-int/2addr v11, v7

    goto :goto_9d

    :cond_9b
    move/from16 v16, v7

    :goto_9d
    if-eqz v11, :cond_b7

    .line 10440
    invoke-static {v14}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    .line 10441
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x5

    div-int/lit8 v10, v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b7
    :goto_b7
    add-int/lit8 v14, v14, -0x1

    move/from16 v7, v16

    goto :goto_5a

    :cond_bc
    move/from16 v16, v7

    if-eqz v12, :cond_213

    .line 10448
    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_ea

    if-ne v1, v7, :cond_ea

    const/4 v3, 0x0

    .line 10450
    :goto_c8
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_ea

    .line 10451
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 10452
    sget-object v8, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 10453
    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    :cond_e7
    add-int/lit8 v3, v3, 0x1

    goto :goto_c8

    :cond_ea
    const v3, 0x20000002

    const/high16 v7, 0x20000000

    if-ne v1, v7, :cond_f7

    .line 10459
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_fe

    :cond_f7
    if-ne v1, v3, :cond_fe

    .line 10461
    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 10465
    :cond_fe
    :goto_fe
    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/16 v7, 0xb

    if-ne v3, v7, :cond_149

    const/4 v3, 0x0

    .line 10466
    :goto_105
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_149

    .line 10467
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 10468
    sget-object v8, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12b

    sget-object v10, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 10469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_141

    :cond_12b
    sget-object v10, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 10471
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 10470
    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_146

    .line 10472
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 10471
    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    .line 10473
    :cond_141
    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    :cond_146
    add-int/lit8 v3, v3, 0x1

    goto :goto_105

    :cond_149
    const/4 v3, 0x0

    .line 10479
    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateVolumeGroupIndex(IZ)V

    add-int/lit8 v7, v16, 0x5

    .line 10481
    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v9, v9, 0x5

    .line 10482
    div-int/lit8 v9, v9, 0xa

    .line 10484
    sget-object v1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v3, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v1, v3, :cond_178

    if-nez v2, :cond_16f

    .line 10487
    const-string v1, "AS.AudioService"

    const-string v3, "No caller for volume_changed event"

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10489
    :cond_16f
    iget v1, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v3, v3, 0xa

    invoke-static {v1, v7, v9, v3, v2}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    :cond_178
    if-eq v9, v7, :cond_213

    if-eqz v13, :cond_213

    .line 10498
    sget-object v1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10499
    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 10500
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmIsSingleVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_190

    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v1, v2, :cond_213

    .line 10501
    :cond_190
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10503
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v3, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10505
    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10507
    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$misStreamBluetoothSco(Lcom/android/server/audio/AudioService;I)Z

    move-result v3

    if-eqz v3, :cond_1b2

    .line 10508
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v8, 0x6

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move v2, v8

    goto :goto_1bb

    .line 10512
    :cond_1b2
    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v8, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10515
    :goto_1bb
    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v8, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10518
    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v1, :cond_1f7

    .line 10519
    const-string v1, ""

    .line 10520
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1df

    .line 10521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " aliased streams: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10524
    :cond_1df
    sget-object v3, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$VolChangedBroadcastEvent;

    invoke-direct {v4, v2, v1, v9, v7}, Lcom/android/server/audio/AudioServiceEvents$VolChangedBroadcastEvent;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 10527
    iget v4, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v2, v4, :cond_1f7

    .line 10528
    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$VolChangedBroadcastEvent;

    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v4, v8, v1, v9, v7}, Lcom/android/server/audio/AudioServiceEvents$VolChangedBroadcastEvent;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 10533
    :cond_1f7
    iget-object v1, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChangedOptions:Landroid/os/Bundle;

    invoke-static {v1, v3, v4}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToAll(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 10534
    iget v1, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v2, v1, :cond_213

    .line 10537
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10541
    iget-object v1, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToAll(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 10546
    :cond_213
    monitor-exit v6
    :try_end_214
    .catchall {:try_start_1b .. :try_end_214} :catchall_39

    :try_start_214
    monitor-exit v5
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_216

    return v12

    :catchall_216
    move-exception v0

    goto :goto_21a

    .line 10547
    :goto_218
    :try_start_218
    monitor-exit v6
    :try_end_219
    .catchall {:try_start_218 .. :try_end_219} :catchall_39

    :try_start_219
    throw v0

    .line 10548
    :goto_21a
    monitor-exit v5
    :try_end_21b
    .catchall {:try_start_219 .. :try_end_21b} :catchall_216

    throw v0
.end method

.method public setSettingName(Ljava/lang/String;)V
    .registers 2

    .line 10246
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 10247
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz p0, :cond_9

    .line 10248
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setSettingName(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final setStreamVolumeIndex(II)V
    .registers 6

    .line 10313
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$misStreamBluetoothSco(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 p1, 0x1

    :cond_13
    if-eqz p1, :cond_28

    .line 10318
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    int-to-float v1, v0

    mul-int/lit8 p1, p1, 0xa

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexStepFactor()F

    move-result v0

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    const/high16 p1, 0x40a00000    # 5.0f

    add-float/2addr v1, p1

    float-to-int p1, v1

    div-int/lit8 p1, p1, 0xa

    .line 10323
    :cond_28
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    .line 10324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStreamVolumeIndexAS(streamType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", muted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.AudioService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10327
    :cond_63
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setStreamVolumeIndexAS(IIZI)I

    return-void
.end method

.method public setVolumeGroupState(Lcom/android/server/audio/AudioService$VolumeGroupState;)V
    .registers 2

    .line 10157
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz p1, :cond_9

    .line 10159
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setSettingName(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public updateIndexFactors()V
    .registers 9

    .line 10066
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    .line 10067
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v2, v1

    .line 10068
    monitor-enter p0

    .line 10069
    :try_start_b
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_b2

    .line 10070
    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v6, 0x6

    aget v7, v5, v6

    aget v5, v5, v2

    if-le v7, v5, :cond_22

    mul-int/lit8 v7, v7, 0xa

    .line 10072
    iput v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_22

    :catchall_1f
    move-exception v0

    goto/16 :goto_14c

    .line 10082
    :cond_22
    :goto_22
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 10083
    invoke-static {v5, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$misStreamBluetoothComm(Lcom/android/server/audio/AudioService;I)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 10084
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmBtCommDeviceActive(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v2, v4, :cond_47

    .line 10088
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v0, v0, v6

    mul-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 10090
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v6

    .line 10091
    iput v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    goto :goto_a3

    :cond_47
    const/16 v7, 0x8

    if-eq v2, v7, :cond_73

    const/4 v7, 0x2

    if-eq v2, v7, :cond_73

    const/4 v7, 0x4

    if-ne v2, v7, :cond_52

    goto :goto_73

    .line 10102
    :cond_52
    const-string v5, "AS.AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index factor not supported for BT comm device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 10104
    sget-object v2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    goto :goto_a3

    .line 10098
    :cond_73
    :goto_73
    sget-object v1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 10099
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v6

    .line 10100
    iput v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    goto :goto_a3

    .line 10107
    :cond_84
    sget-object v2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 10108
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0xa

    sget-object v7, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v6, v7, v6

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v2, v5

    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    .line 10113
    :goto_a3
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz v2, :cond_ae

    .line 10114
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v5, v5, 0xa

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->-$$Nest$fputmIndexMin(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V

    .line 10117
    :cond_ae
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 10119
    :cond_b2
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_b .. :try_end_b3} :catchall_1f

    .line 10120
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-nez v2, :cond_c7

    .line 10121
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_c2

    .line 10122
    const-string v2, "AS.AudioService"

    const-string v5, "Clear min volume cache from updateIndexFactors"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10124
    :cond_c2
    const-string v2, "getStreamMinVolume"

    invoke-static {v2}, Landroid/media/AudioManager;->clearVolumeCache(Ljava/lang/String;)V

    .line 10133
    :cond_c7
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    move-result v0

    if-eqz v0, :cond_f0

    .line 10136
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed initStreamVolume with status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v5, "AS.AudioService"

    .line 10137
    invoke-virtual {v2, v4, v5}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 10136
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 10140
    :cond_f0
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateIndexFactors() stream:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " index min/max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " indexStepFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioService"

    .line 10143
    invoke-virtual {v2, v3, v4}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 10140
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    if-eqz v0, :cond_14b

    .line 10145
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const-string/jumbo v5, "updateIndexFactors()"

    const/16 v6, 0x7d0

    const/16 v1, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_14b
    return-void

    .line 10119
    :goto_14c
    :try_start_14c
    monitor-exit p0
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_1f

    throw v0
.end method

.method public updateNoPermMinIndex(I)V
    .registers 5

    mul-int/lit8 p1, p1, 0xa

    .line 10172
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    if-eq p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 10173
    :goto_9
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 10174
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    const-string v2, "AS.AudioService"

    if-ge p1, v1, :cond_2b

    .line 10175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mIndexMinNoPerm for stream "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10176
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :cond_2b
    if-eqz v0, :cond_3b

    .line 10179
    sget-boolean p0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p0, :cond_36

    .line 10180
    const-string p0, "Clear min volume cache from updateNoPermMinIndex"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10182
    :cond_36
    const-string p0, "getStreamMinVolume"

    invoke-static {p0}, Landroid/media/AudioManager;->clearVolumeCache(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public final updateVolumeGroupIndex(IZ)V
    .registers 9

    .line 10657
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10658
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_9c

    .line 10659
    :try_start_e
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz v2, :cond_b9

    .line 10660
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    .line 10661
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v3, :cond_84

    .line 10662
    const-string v3, "AS.AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVolumeGroupIndex for stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", muted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10664
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Muted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 10665
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", forceMuteState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10662
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :catchall_82
    move-exception p0

    goto :goto_bc

    .line 10668
    :cond_84
    :goto_84
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->updateVolumeIndex(II)V

    .line 10670
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 10671
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    if-eq p1, v3, :cond_9e

    .line 10673
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_e .. :try_end_9a} :catchall_82

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9c

    return-void

    :catchall_9c
    move-exception p0

    goto :goto_be

    .line 10677
    :cond_9e
    :try_start_9e
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz p2, :cond_a5

    .line 10678
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    goto :goto_b6

    :cond_a5
    if-nez v2, :cond_af

    .line 10680
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10679
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$smisCallStream(I)Z

    move-result p2

    if-eqz p2, :cond_b3

    :cond_af
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz p0, :cond_b5

    :cond_b3
    const/4 p0, 0x1

    goto :goto_b6

    :cond_b5
    const/4 p0, 0x0

    .line 10677
    :goto_b6
    invoke-virtual {p1, p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->mute(Z)Z

    .line 10683
    :cond_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_9e .. :try_end_ba} :catchall_82

    .line 10684
    :try_start_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_9c

    return-void

    .line 10683
    :goto_bc
    :try_start_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_82

    :try_start_bd
    throw p0

    .line 10684
    :goto_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_bd .. :try_end_bf} :catchall_9c

    throw p0
.end method
