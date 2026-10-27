.class public final Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

.field public final mDevice:Landroid/media/AudioDeviceAttributes;

.field public mDeviceVolumeBehavior:I

.field public final mHandlesVolumeAdjustment:Z

.field public final mParent:Lcom/android/server/audio/AudioService;

.field public final mVolumeInfos:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$ud8TCBCkZeXC-SnqV9wjro1irKg(II)Z
    .registers 2

    .line 1071
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;)Landroid/media/IAudioDeviceVolumeDispatcher;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;)Landroid/media/AudioDeviceAttributes;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceVolumeBehavior(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDeviceVolumeBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandlesVolumeAdjustment(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mHandlesVolumeAdjustment:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetMatchingVolumeInfoForStream(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;I)Landroid/media/VolumeInfo;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->getMatchingVolumeInfoForStream(I)Landroid/media/VolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;ZI)V
    .registers 7

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mParent:Lcom/android/server/audio/AudioService;

    .line 1046
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 1047
    iput-object p3, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mVolumeInfos:Ljava/util/List;

    .line 1048
    iput-object p4, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

    .line 1049
    iput-boolean p5, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mHandlesVolumeAdjustment:Z

    .line 1050
    iput p6, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDeviceVolumeBehavior:I

    .line 1053
    :try_start_f
    invoke-interface {p4}, Landroid/media/IAudioDeviceVolumeDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    .line 1056
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nCannot listen to callback binder death for device "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;ZILcom/android/server/audio/AudioService-IA;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;ZI)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1081
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mParent:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mremoveFromAbsoluteVolumeDevices(Lcom/android/server/audio/AudioService;Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1082
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mParent:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mdispatchDeviceVolumeBehavior(Lcom/android/server/audio/AudioService;Landroid/media/AudioDeviceAttributes;I)V

    :cond_12
    return-void
.end method

.method public final getMatchingVolumeInfoForStream(I)Landroid/media/VolumeInfo;
    .registers 8

    .line 1066
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mVolumeInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeInfo;

    .line 1067
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->hasStreamType()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_22

    .line 1068
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getStreamType()I

    move-result v1

    if-ne v1, p1, :cond_22

    move v1, v3

    goto :goto_23

    :cond_22
    move v1, v2

    .line 1069
    :goto_23
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->hasVolumeGroup()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1070
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getVolumeGroup()Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1071
    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v4

    if-eqz v4, :cond_41

    move v2, v3

    :cond_41
    if-nez v1, :cond_45

    if-eqz v2, :cond_6

    :cond_45
    return-object v0

    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method

.method public unlinkToDeath()V
    .registers 4

    .line 1088
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

    invoke-interface {v0}, Landroid/media/IAudioDeviceVolumeDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nCannot unlink to death, null binder object for device "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.AudioService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
