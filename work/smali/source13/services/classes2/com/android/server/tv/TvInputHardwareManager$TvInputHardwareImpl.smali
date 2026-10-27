.class Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvInputHardwareImpl"
.end annotation


# instance fields
.field private mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field private final mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field private mAudioPatch:Landroid/media/AudioPatch;

.field private mAudioSink:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:Landroid/media/AudioDevicePort;

.field private mCommittedVolume:F

.field private mDesiredChannelMask:I

.field private mDesiredFormat:I

.field private mDesiredSamplingRate:I

.field private final mImplLock:Ljava/lang/Object;

.field private final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mOverrideAudioAddress:Ljava/lang/String;

.field private mOverrideAudioType:I

.field private mReleased:Z

.field private mSourceVolume:F

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioPatch(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Landroid/media/AudioPatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioSink(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImplLock(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAudioPatch(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAudioSource(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAudioSinkUpdated(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->handleAudioSinkUpdated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartCapture(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopCapture(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->stopCapture(Landroid/media/tv/TvStreamConfig;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateAudioConfigLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 7
    .param p2, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 860
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 816
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 818
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 844
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 845
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 847
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 848
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 851
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 852
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 854
    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 856
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 857
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 858
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 861
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 862
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 863
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    if-eqz p1, :cond_58

    .line 864
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 865
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    .line 867
    :cond_58
    return-void
.end method

.method private findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .registers 8
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 885
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 886
    return-object v0

    .line 888
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 889
    .local v1, "devicePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v2

    if-eqz v2, :cond_15

    .line 890
    return-object v0

    .line 892
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDevicePort;

    .line 893
    .local v3, "port":Landroid/media/AudioDevicePort;
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    if-ne v4, p1, :cond_36

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 894
    return-object v3

    .line 896
    .end local v3    # "port":Landroid/media/AudioDevicePort;
    :cond_36
    goto :goto_19

    .line 897
    :cond_37
    return-object v0
.end method

.method private findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    .line 870
    .local p1, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDevicePort;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v0, "devicePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 873
    return-void

    .line 875
    :cond_14
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    .line 876
    .local v1, "sinkDevice":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDevicePort;

    .line 877
    .local v3, "port":Landroid/media/AudioDevicePort;
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_42

    .line 878
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-nez v4, :cond_42

    .line 879
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    .end local v3    # "port":Landroid/media/AudioDevicePort;
    :cond_42
    goto :goto_23

    .line 882
    :cond_43
    return-void
.end method

.method private handleAudioSinkUpdated()V
    .registers 3

    .line 1174
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1175
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1176
    monitor-exit v0

    .line 1177
    return-void

    .line 1176
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    .line 1109
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1111
    monitor-exit v0

    return v2

    .line 1113
    :cond_a
    if-eqz p1, :cond_2d

    if-nez p2, :cond_f

    goto :goto_2d

    .line 1116
    :cond_f
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_18

    .line 1117
    monitor-exit v0

    return v2

    .line 1120
    :cond_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result v1

    .line 1121
    .local v1, "result":I
    if-nez v1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    monitor-exit v0

    return v2

    .line 1114
    .end local v1    # "result":I
    :cond_2d
    :goto_2d
    monitor-exit v0

    return v2

    .line 1122
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private stopCapture(Landroid/media/tv/TvStreamConfig;)Z
    .registers 6
    .param p1, "config"    # Landroid/media/tv/TvStreamConfig;

    .line 1126
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1127
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1128
    monitor-exit v0

    return v2

    .line 1130
    :cond_a
    if-nez p1, :cond_e

    .line 1131
    monitor-exit v0

    return v2

    .line 1134
    :cond_e
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v1

    .line 1135
    .local v1, "result":I
    if-nez v1, :cond_21

    const/4 v2, 0x1

    :cond_21
    monitor-exit v0

    return v2

    .line 1136
    .end local v1    # "result":I
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private updateAudioConfigLocked()V
    .registers 20

    .line 961
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSinkLocked()Z

    move-result v1

    .line 962
    .local v1, "sinkUpdated":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSourceLocked()Z

    move-result v2

    .line 966
    .local v2, "sourceUpdated":Z
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    if-eqz v3, :cond_1fa

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1fa

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-nez v3, :cond_1c

    goto/16 :goto_1fa

    .line 974
    :cond_1c
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$mupdateVolume(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 975
    iget v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$mgetMediaStreamVolume(Lcom/android/server/tv/TvInputHardwareManager;)F

    move-result v5

    mul-float/2addr v3, v5

    .line 976
    .local v3, "volume":F
    const/4 v5, 0x0

    .line 977
    .local v5, "sourceGainConfig":Landroid/media/AudioGainConfig;
    iget-object v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_98

    iget v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_98

    .line 978
    const/4 v6, 0x0

    .line 979
    .local v6, "sourceGain":Landroid/media/AudioGain;
    iget-object v9, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v9}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v9

    array-length v10, v9

    move v11, v8

    :goto_45
    if-ge v11, v10, :cond_55

    aget-object v12, v9, v11

    .line 980
    .local v12, "gain":Landroid/media/AudioGain;
    invoke-virtual {v12}, Landroid/media/AudioGain;->mode()I

    move-result v13

    and-int/2addr v13, v7

    if-eqz v13, :cond_52

    .line 981
    move-object v6, v12

    .line 982
    goto :goto_55

    .line 979
    .end local v12    # "gain":Landroid/media/AudioGain;
    :cond_52
    add-int/lit8 v11, v11, 0x1

    goto :goto_45

    .line 986
    :cond_55
    :goto_55
    if-eqz v6, :cond_8f

    .line 987
    invoke-virtual {v6}, Landroid/media/AudioGain;->maxValue()I

    move-result v9

    invoke-virtual {v6}, Landroid/media/AudioGain;->minValue()I

    move-result v10

    sub-int/2addr v9, v10

    .line 988
    invoke-virtual {v6}, Landroid/media/AudioGain;->stepValue()I

    move-result v10

    div-int/2addr v9, v10

    .line 989
    .local v9, "steps":I
    invoke-virtual {v6}, Landroid/media/AudioGain;->minValue()I

    move-result v10

    .line 990
    .local v10, "gainValue":I
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v3, v11

    if-gez v11, :cond_7d

    .line 991
    invoke-virtual {v6}, Landroid/media/AudioGain;->stepValue()I

    move-result v11

    int-to-float v12, v9

    mul-float/2addr v12, v3

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v12, v12

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    goto :goto_81

    .line 993
    :cond_7d
    invoke-virtual {v6}, Landroid/media/AudioGain;->maxValue()I

    move-result v10

    .line 996
    :goto_81
    new-array v11, v7, [I

    aput v10, v11, v8

    .line 997
    .local v11, "gainValues":[I
    nop

    .line 998
    invoke-virtual {v6}, Landroid/media/AudioGain;->channelMask()I

    move-result v12

    .line 997
    invoke-virtual {v6, v7, v12, v11, v8}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v5

    .line 999
    .end local v9    # "steps":I
    .end local v10    # "gainValue":I
    .end local v11    # "gainValues":[I
    goto :goto_98

    .line 1000
    :cond_8f
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    const-string v10, "No audio source gain with MODE_JOINT support exists."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v6    # "sourceGain":Landroid/media/AudioGain;
    :cond_98
    :goto_98
    iget-object v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v6

    .line 1005
    .local v6, "sourceConfig":Landroid/media/AudioPortConfig;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v9, "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    new-array v10, v7, [Landroid/media/AudioPatch;

    iget-object v11, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    aput-object v11, v10, v8

    .line 1007
    .local v10, "audioPatchArray":[Landroid/media/AudioPatch;
    if-nez v2, :cond_b2

    if-nez v1, :cond_b2

    if-nez v11, :cond_b0

    goto :goto_b2

    :cond_b0
    move v11, v8

    goto :goto_b3

    :cond_b2
    :goto_b2
    move v11, v7

    .line 1009
    .local v11, "shouldRecreateAudioPatch":Z
    :goto_b3
    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_135

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioDevicePort;

    .line 1010
    .local v13, "audioSink":Landroid/media/AudioDevicePort;
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v14

    .line 1011
    .local v14, "sinkConfig":Landroid/media/AudioPortConfig;
    iget v15, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 1012
    .local v15, "sinkSamplingRate":I
    iget v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 1013
    .local v4, "sinkChannelMask":I
    iget v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 1016
    .local v8, "sinkFormat":I
    if-eqz v14, :cond_e3

    .line 1017
    if-nez v15, :cond_d7

    .line 1018
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v15

    .line 1020
    :cond_d7
    if-ne v4, v7, :cond_dd

    .line 1021
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v4

    .line 1023
    :cond_dd
    if-ne v8, v7, :cond_e3

    .line 1024
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->format()I

    move-result v8

    .line 1028
    :cond_e3
    if-eqz v14, :cond_f7

    .line 1029
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v7

    if-ne v7, v15, :cond_f7

    .line 1030
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v7

    if-ne v7, v4, :cond_f7

    .line 1031
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->format()I

    move-result v7

    if-eq v7, v8, :cond_12f

    .line 1033
    :cond_f7
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    invoke-static {v7, v15}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains([II)Z

    move-result v7

    if-nez v7, :cond_111

    .line 1034
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_111

    .line 1035
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    const/16 v16, 0x0

    aget v7, v7, v16

    move v15, v7

    .line 1037
    :cond_111
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains([II)Z

    move-result v7

    if-nez v7, :cond_11c

    .line 1038
    const/4 v4, 0x1

    .line 1040
    :cond_11c
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains([II)Z

    move-result v7

    if-nez v7, :cond_128

    .line 1041
    const/4 v7, 0x1

    move v8, v7

    .line 1043
    :cond_128
    const/4 v7, 0x0

    invoke-virtual {v13, v15, v4, v8, v7}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v14

    .line 1045
    const/4 v7, 0x1

    move v11, v7

    .line 1047
    :cond_12f
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    .end local v4    # "sinkChannelMask":I
    .end local v8    # "sinkFormat":I
    .end local v13    # "audioSink":Landroid/media/AudioDevicePort;
    .end local v14    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v15    # "sinkSamplingRate":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_b9

    .line 1051
    :cond_135
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Landroid/media/AudioPortConfig;

    .line 1052
    .local v4, "sinkConfig":Landroid/media/AudioPortConfig;
    if-eqz v6, :cond_141

    if-eqz v5, :cond_1b2

    .line 1053
    :cond_141
    const/4 v7, 0x0

    .line 1054
    .local v7, "sourceSamplingRate":I
    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v8

    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v12

    invoke-static {v8, v12}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains([II)Z

    move-result v8

    if-eqz v8, :cond_157

    .line 1055
    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v7

    goto :goto_169

    .line 1056
    :cond_157
    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_169

    .line 1058
    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v8

    const/4 v12, 0x0

    aget v7, v8, v12

    .line 1060
    :cond_169
    :goto_169
    const/4 v8, 0x1

    .line 1061
    .local v8, "sourceChannelMask":I
    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v12}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_172
    if-ge v14, v13, :cond_191

    aget v15, v12, v14

    .line 1062
    .local v15, "inChannelMask":I
    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v17

    move-object/from16 v18, v6

    .end local v6    # "sourceConfig":Landroid/media/AudioPortConfig;
    .local v18, "sourceConfig":Landroid/media/AudioPortConfig;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v6

    .line 1063
    move/from16 v17, v8

    .end local v8    # "sourceChannelMask":I
    .local v17, "sourceChannelMask":I
    invoke-static {v15}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v8

    if-ne v6, v8, :cond_18a

    .line 1064
    move v8, v15

    .line 1065
    .end local v17    # "sourceChannelMask":I
    .restart local v8    # "sourceChannelMask":I
    goto :goto_195

    .line 1061
    .end local v8    # "sourceChannelMask":I
    .end local v15    # "inChannelMask":I
    .restart local v17    # "sourceChannelMask":I
    :cond_18a
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v17

    move-object/from16 v6, v18

    goto :goto_172

    .end local v17    # "sourceChannelMask":I
    .end local v18    # "sourceConfig":Landroid/media/AudioPortConfig;
    .restart local v6    # "sourceConfig":Landroid/media/AudioPortConfig;
    .restart local v8    # "sourceChannelMask":I
    :cond_191
    move-object/from16 v18, v6

    move/from16 v17, v8

    .line 1068
    .end local v6    # "sourceConfig":Landroid/media/AudioPortConfig;
    .restart local v18    # "sourceConfig":Landroid/media/AudioPortConfig;
    :goto_195
    const/4 v6, 0x1

    .line 1069
    .local v6, "sourceFormat":I
    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v12}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v12

    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->format()I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains([II)Z

    move-result v12

    if-eqz v12, :cond_1aa

    .line 1070
    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->format()I

    move-result v6

    .line 1072
    :cond_1aa
    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v12, v7, v8, v6, v5}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v12

    .line 1074
    .end local v18    # "sourceConfig":Landroid/media/AudioPortConfig;
    .local v12, "sourceConfig":Landroid/media/AudioPortConfig;
    const/4 v11, 0x1

    move-object v6, v12

    .line 1076
    .end local v7    # "sourceSamplingRate":I
    .end local v8    # "sourceChannelMask":I
    .end local v12    # "sourceConfig":Landroid/media/AudioPortConfig;
    .local v6, "sourceConfig":Landroid/media/AudioPortConfig;
    :cond_1b2
    if-eqz v11, :cond_1ed

    .line 1077
    iput v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 1079
    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v7, :cond_1be

    if-nez v1, :cond_1be

    if-eqz v2, :cond_1ed

    .line 1080
    :cond_1be
    if-eqz v7, :cond_1cf

    .line 1081
    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v7}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v7}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 1082
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v7, v10, v8

    goto :goto_1d0

    .line 1080
    :cond_1cf
    const/4 v8, 0x0

    .line 1084
    :goto_1d0
    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v7}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/media/AudioPortConfig;

    aput-object v6, v7, v8

    .line 1087
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/media/AudioPortConfig;

    invoke-interface {v9, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/media/AudioPortConfig;

    .line 1084
    invoke-static {v10, v7, v12}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    .line 1088
    aget-object v7, v10, v8

    iput-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 1092
    :cond_1ed
    if-eqz v5, :cond_1f9

    .line 1093
    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v7}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-static {v7, v5}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    .line 1095
    :cond_1f9
    return-void

    .line 967
    .end local v3    # "volume":F
    .end local v4    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v5    # "sourceGainConfig":Landroid/media/AudioGainConfig;
    .end local v6    # "sourceConfig":Landroid/media/AudioPortConfig;
    .end local v9    # "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    .end local v10    # "audioPatchArray":[Landroid/media/AudioPatch;
    .end local v11    # "shouldRecreateAudioPatch":Z
    :cond_1fa
    :goto_1fa
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v3, :cond_20b

    .line 968
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v3}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 969
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 971
    :cond_20b
    return-void
.end method

.method private updateAudioSinkLocked()Z
    .registers 5

    .line 1150
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    if-nez v0, :cond_a

    .line 1151
    const/4 v0, 0x0

    return v0

    .line 1153
    :cond_a
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 1154
    .local v0, "previousSink":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDevicePort;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 1155
    iget v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    if-nez v2, :cond_1b

    .line 1156
    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    goto :goto_28

    .line 1158
    :cond_1b
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 1159
    invoke-direct {p0, v2, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v1

    .line 1160
    .local v1, "audioSink":Landroid/media/AudioDevicePort;
    if-eqz v1, :cond_28

    .line 1161
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    .end local v1    # "audioSink":Landroid/media/AudioDevicePort;
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_36

    .line 1167
    return v3

    .line 1169
    :cond_36
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1170
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    return v1
.end method

.method private updateAudioSourceLocked()Z
    .registers 5

    .line 1140
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1141
    return v1

    .line 1143
    :cond_a
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1144
    .local v0, "previousSource":Landroid/media/AudioDevicePort;
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1145
    const/4 v3, 0x1

    if-nez v2, :cond_25

    if-eqz v0, :cond_2c

    move v1, v3

    goto :goto_2c

    .line 1146
    :cond_25
    invoke-virtual {v2, v0}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    move v1, v3

    .line 1145
    :cond_2c
    :goto_2c
    return v1
.end method


# virtual methods
.method public onMediaStreamVolumeChanged()V
    .registers 3

    .line 1195
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1196
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1197
    monitor-exit v0

    .line 1198
    return-void

    .line 1197
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .registers 8
    .param p1, "audioType"    # I
    .param p2, "audioAddress"    # Ljava/lang/String;
    .param p3, "samplingRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "format"    # I

    .line 1182
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1183
    :try_start_3
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 1184
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 1186
    iput p3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 1187
    iput p4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 1188
    iput p5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 1190
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1191
    monitor-exit v0

    .line 1192
    return-void

    .line 1191
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public release()V
    .registers 4

    .line 901
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 903
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_1f

    .line 904
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 905
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 907
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 908
    monitor-exit v0

    .line 909
    return-void

    .line 908
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setStreamVolume(F)V
    .registers 5
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1100
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_e

    .line 1103
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 1104
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1105
    monitor-exit v0

    .line 1106
    return-void

    .line 1101
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Device already released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local p1    # "volume":F
    throw v1

    .line 1105
    .restart local p0    # "this":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .restart local p1    # "volume":F
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 11
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 918
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_6e

    .line 922
    const/4 v1, 0x0

    .line 923
    .local v1, "result":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_29

    .line 925
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v5, :cond_27

    .line 926
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v6}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v5

    move v1, v5

    .line 927
    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_65

    .line 930
    :cond_27
    monitor-exit v0

    return v3

    .line 934
    :cond_29
    if-nez p2, :cond_2d

    .line 935
    monitor-exit v0

    return v4

    .line 938
    :cond_2d
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v5, :cond_4e

    invoke-virtual {p2, v5}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 939
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v6}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v5

    move v1, v5

    .line 940
    if-eqz v1, :cond_4e

    .line 941
    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 945
    :cond_4e
    if-nez v1, :cond_65

    .line 946
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    invoke-virtual {v2, v5, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result v2

    move v1, v2

    .line 947
    if-nez v1, :cond_65

    .line 948
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 952
    :cond_65
    :goto_65
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 953
    if-nez v1, :cond_6b

    goto :goto_6c

    :cond_6b
    move v3, v4

    :goto_6c
    monitor-exit v0

    return v3

    .line 919
    .end local v1    # "result":I
    :cond_6e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Device already released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    .end local p2    # "config":Landroid/media/tv/TvStreamConfig;
    throw v1

    .line 954
    .restart local p0    # "this":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    .restart local p2    # "config":Landroid/media/tv/TvStreamConfig;
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v1
.end method
