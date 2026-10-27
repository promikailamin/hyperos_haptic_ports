.class public Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "TvInputHardwareManager.java"


# instance fields
.field public mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field public final mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field public mAudioPatch:Landroid/media/AudioPatch;

.field public mAudioSink:Ljava/util/List;

.field public mAudioSource:Landroid/media/AudioDevicePort;

.field public mCommittedVolume:F

.field public mDesiredChannelMask:I

.field public mDesiredFormat:I

.field public mDesiredSamplingRate:I

.field public final mImplLock:Ljava/lang/Object;

.field public final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field public mOverrideAudioAddress:Ljava/lang/String;

.field public mOverrideAudioType:I

.field public mReleased:Z

.field public mSourceVolume:F

.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAudioPatch(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Landroid/media/AudioPatch;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioSink(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImplLock(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmActiveConfig(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAudioPatch(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAudioSource(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAudioSinkUpdated(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->handleAudioSinkUpdated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartCapture(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstopCapture(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->stopCapture(Landroid/media/tv/TvStreamConfig;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateAudioConfigLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 8

    .line 1039
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    .line 982
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 984
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    const/4 v2, 0x0

    .line 1010
    iput-boolean v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 1012
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 1014
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 1018
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    const/4 v3, 0x0

    .line 1020
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    const/high16 v4, -0x40800000    # -1.0f

    .line 1024
    iput v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    const/4 v4, 0x0

    .line 1026
    iput v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 1029
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 1032
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    const/4 v2, 0x1

    .line 1034
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 1036
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 1040
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 1041
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 1042
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    if-eqz p1, :cond_5e

    .line 1043
    monitor-enter v0

    .line 1045
    :try_start_46
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1046
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    .line 1047
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_5b

    throw p0

    :cond_5e
    return-void
.end method


# virtual methods
.method public final findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1070
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result p0

    if-eqz p0, :cond_15

    return-object v0

    .line 1074
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x0

    :cond_1a
    if-ge v2, p0, :cond_35

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/media/AudioDevicePort;

    .line 1075
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    if-ne v4, p1, :cond_1a

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_35
    return-object v0
.end method

.method public final findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .registers 7

    .line 1052
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_43

    .line 1057
    :cond_14
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result p0

    .line 1058
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_24
    :goto_24
    if-ge v2, v1, :cond_43

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/media/AudioDevicePort;

    .line 1059
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    and-int/2addr v4, p0

    if-eqz v4, :cond_24

    .line 1060
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v4

    if-nez v4, :cond_24

    .line 1061
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_43
    :goto_43
    return-void
.end method

.method public final handleAudioSinkUpdated()V
    .registers 2

    .line 1359
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1361
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public onMediaStreamVolumeChanged()V
    .registers 2

    .line 1380
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1381
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1382
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .registers 7

    .line 1367
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1368
    :try_start_3
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 1369
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 1371
    iput p3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 1372
    iput p4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 1373
    iput p5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 1375
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1376
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public release()V
    .registers 4

    .line 1083
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1084
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 1085
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_22

    .line 1086
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const/4 v1, 0x0

    .line 1087
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_27

    :cond_22
    :goto_22
    const/4 v1, 0x1

    .line 1089
    iput-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 1090
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_20

    throw p0
.end method

.method public setStreamVolume(F)V
    .registers 4

    .line 1282
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_10

    .line 1286
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1288
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_18

    .line 1284
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Device already released."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1288
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_e

    throw p0
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 10

    .line 1099
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1100
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_70

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_29

    .line 1107
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz p1, :cond_27

    .line 1108
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result p2

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {p1, p2, v4}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result p1

    .line 1109
    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_67

    :catchall_25
    move-exception p0

    goto :goto_78

    .line 1112
    :cond_27
    monitor-exit v0

    return v1

    :cond_29
    if-nez p2, :cond_2d

    .line 1117
    monitor-exit v0

    return v3

    .line 1120
    :cond_2d
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v4, :cond_4e

    invoke-virtual {p2, v4}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 1121
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v4

    if-eqz v4, :cond_4f

    .line 1123
    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_4f

    :cond_4e
    move v4, v3

    :cond_4f
    :goto_4f
    if-nez v4, :cond_66

    .line 1128
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v2, v4, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result p1

    if-nez p1, :cond_67

    .line 1130
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_67

    :cond_66
    move p1, v4

    .line 1134
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    if-nez p1, :cond_6d

    goto :goto_6e

    :cond_6d
    move v1, v3

    .line 1135
    :goto_6e
    monitor-exit v0

    return v1

    .line 1101
    :cond_70
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Device already released."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1136
    :goto_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_25

    throw p0
.end method

.method public final startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 7

    .line 1292
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1293
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 1294
    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_31

    :cond_c
    if-eqz p1, :cond_2f

    if-nez p2, :cond_11

    goto :goto_2f

    .line 1299
    :cond_11
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1a

    .line 1300
    monitor-exit v0

    return v2

    .line 1303
    :cond_1a
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result p0

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result p0

    if-nez p0, :cond_2d

    const/4 v2, 0x1

    .line 1304
    :cond_2d
    monitor-exit v0

    return v2

    .line 1297
    :cond_2f
    :goto_2f
    monitor-exit v0

    return v2

    .line 1305
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_a

    throw p0
.end method

.method public final stopCapture(Landroid/media/tv/TvStreamConfig;)Z
    .registers 5

    .line 1309
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 1311
    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_25

    :cond_c
    if-nez p1, :cond_10

    .line 1314
    monitor-exit v0

    return v2

    .line 1317
    :cond_10
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result p0

    invoke-virtual {v1, p0, p1}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result p0

    if-nez p0, :cond_23

    const/4 v2, 0x1

    .line 1318
    :cond_23
    monitor-exit v0

    return v2

    .line 1319
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_a

    throw p0
.end method

.method public final updateAudioConfigLocked()V
    .registers 19

    move-object/from16 v0, p0

    .line 1144
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSinkLocked()Z

    move-result v1

    .line 1145
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSourceLocked()Z

    move-result v2

    .line 1149
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    if-eqz v3, :cond_1ed

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1ed

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-nez v3, :cond_1c

    goto/16 :goto_1ed

    .line 1157
    :cond_1c
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$mupdateVolume(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 1158
    iget v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$mgetMediaStreamVolume(Lcom/android/server/tv/TvInputHardwareManager;)F

    move-result v5

    mul-float/2addr v3, v5

    .line 1160
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_95

    iget v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_95

    .line 1162
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v5

    array-length v8, v5

    move v9, v6

    :goto_43
    if-ge v9, v8, :cond_52

    aget-object v10, v5, v9

    .line 1163
    invoke-virtual {v10}, Landroid/media/AudioGain;->mode()I

    move-result v11

    and-int/2addr v11, v7

    if-eqz v11, :cond_4f

    goto :goto_53

    :cond_4f
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    :cond_52
    const/4 v10, 0x0

    :goto_53
    if-eqz v10, :cond_8c

    .line 1170
    invoke-virtual {v10}, Landroid/media/AudioGain;->maxValue()I

    move-result v5

    invoke-virtual {v10}, Landroid/media/AudioGain;->minValue()I

    move-result v8

    sub-int/2addr v5, v8

    .line 1171
    invoke-virtual {v10}, Landroid/media/AudioGain;->stepValue()I

    move-result v8

    div-int/2addr v5, v8

    .line 1172
    invoke-virtual {v10}, Landroid/media/AudioGain;->minValue()I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v3, v9

    if-gez v9, :cond_7b

    .line 1174
    invoke-virtual {v10}, Landroid/media/AudioGain;->stepValue()I

    move-result v9

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-double v11, v5

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-int v5, v11

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    goto :goto_7f

    .line 1176
    :cond_7b
    invoke-virtual {v10}, Landroid/media/AudioGain;->maxValue()I

    move-result v8

    .line 1179
    :goto_7f
    filled-new-array {v8}, [I

    move-result-object v5

    .line 1181
    invoke-virtual {v10}, Landroid/media/AudioGain;->channelMask()I

    move-result v8

    .line 1180
    invoke-virtual {v10, v7, v8, v5, v6}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v5

    goto :goto_96

    .line 1183
    :cond_8c
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v8, "No audio source gain with MODE_JOINT support exists."

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    const/4 v5, 0x0

    .line 1187
    :goto_96
    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v8

    .line 1188
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    new-array v10, v7, [Landroid/media/AudioPatch;

    iget-object v11, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    aput-object v11, v10, v6

    if-nez v2, :cond_b0

    if-nez v1, :cond_b0

    if-nez v11, :cond_ae

    goto :goto_b0

    :cond_ae
    move v11, v6

    goto :goto_b1

    :cond_b0
    :goto_b0
    move v11, v7

    .line 1192
    :goto_b1
    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_131

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioDevicePort;

    .line 1193
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v14

    .line 1194
    iget v15, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    move/from16 v16, v6

    .line 1195
    iget v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 1196
    iget v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    if-eqz v14, :cond_e3

    if-nez v15, :cond_d7

    .line 1201
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v15

    :cond_d7
    if-ne v6, v7, :cond_dd

    .line 1204
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v6

    :cond_dd
    if-ne v4, v7, :cond_e3

    .line 1207
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->format()I

    move-result v4

    :cond_e3
    if-eqz v14, :cond_f7

    .line 1212
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v7

    if-ne v7, v15, :cond_f7

    .line 1213
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v7

    if-ne v7, v6, :cond_f7

    .line 1214
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->format()I

    move-result v7

    if-eq v7, v4, :cond_12a

    .line 1216
    :cond_f7
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    invoke-static {v7, v15}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains([II)Z

    move-result v7

    if-nez v7, :cond_10e

    .line 1217
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_10e

    .line 1218
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    aget v15, v7, v16

    .line 1220
    :cond_10e
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains([II)Z

    move-result v7

    if-nez v7, :cond_119

    const/4 v6, 0x1

    .line 1223
    :cond_119
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains([II)Z

    move-result v7

    if-nez v7, :cond_124

    const/4 v4, 0x1

    :cond_124
    const/4 v7, 0x0

    .line 1226
    invoke-virtual {v13, v15, v6, v4, v7}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v14

    const/4 v11, 0x1

    .line 1230
    :cond_12a
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v6, v16

    const/4 v7, 0x1

    goto :goto_b7

    :cond_131
    move v4, v6

    .line 1234
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPortConfig;

    if-eqz v8, :cond_13c

    if-eqz v5, :cond_1a2

    .line 1237
    :cond_13c
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v4

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_151

    .line 1238
    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v4

    goto :goto_166

    .line 1239
    :cond_151
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_165

    .line 1241
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v4

    const/16 v16, 0x0

    aget v4, v4, v16

    goto :goto_166

    :cond_165
    const/4 v4, 0x0

    .line 1244
    :goto_166
    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v7

    array-length v8, v7

    const/4 v11, 0x0

    :goto_16e
    if-ge v11, v8, :cond_184

    aget v12, v7, v11

    .line 1245
    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v13

    invoke-static {v13}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v13

    .line 1246
    invoke-static {v12}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v14

    if-ne v13, v14, :cond_181

    goto :goto_185

    :cond_181
    add-int/lit8 v11, v11, 0x1

    goto :goto_16e

    :cond_184
    const/4 v12, 0x1

    .line 1252
    :goto_185
    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v7

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->format()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains([II)Z

    move-result v7

    if-eqz v7, :cond_19a

    .line 1253
    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->format()I

    move-result v6

    goto :goto_19b

    :cond_19a
    const/4 v6, 0x1

    .line 1255
    :goto_19b
    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v7, v4, v12, v6, v5}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v8

    const/4 v11, 0x1

    :cond_1a2
    if-eqz v11, :cond_1e0

    .line 1260
    iput v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 1262
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v3, :cond_1ae

    if-nez v1, :cond_1ae

    if-eqz v2, :cond_1e0

    :cond_1ae
    if-eqz v3, :cond_1c1

    .line 1264
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1265
    aput-object v17, v10, v16

    goto :goto_1c3

    :cond_1c1
    const/16 v16, 0x0

    .line 1267
    :goto_1c3
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/AudioPortConfig;

    aput-object v8, v1, v16

    .line 1270
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/media/AudioPortConfig;

    invoke-interface {v9, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioPortConfig;

    .line 1267
    invoke-static {v10, v1, v2}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    .line 1271
    aget-object v1, v10, v16

    iput-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    :cond_1e0
    if-eqz v5, :cond_1fe

    .line 1276
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-static {v0, v5}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    return-void

    .line 1150
    :cond_1ed
    :goto_1ed
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_1fe

    .line 1151
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const/4 v7, 0x0

    .line 1152
    iput-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    :cond_1fe
    return-void
.end method

.method public final updateAudioSinkLocked()Z
    .registers 5

    .line 1335
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1338
    :cond_a
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 1339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 1340
    iget v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    if-nez v2, :cond_1b

    .line 1341
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    goto :goto_28

    .line 1343
    :cond_1b
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 1344
    invoke-virtual {p0, v2, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1346
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1351
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_36

    return v3

    .line 1354
    :cond_36
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1355
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method public final updateAudioSourceLocked()Z
    .registers 5

    .line 1324
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1327
    :cond_a
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1328
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    const/4 p0, 0x1

    if-nez v2, :cond_25

    if-eqz v0, :cond_24

    return p0

    :cond_24
    return v1

    .line 1330
    :cond_25
    invoke-virtual {v2, v0}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    return p0

    :cond_2c
    return v1
.end method
