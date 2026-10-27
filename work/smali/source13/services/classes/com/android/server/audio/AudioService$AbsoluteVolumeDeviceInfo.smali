.class final Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AbsoluteVolumeDeviceInfo"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

.field private final mDevice:Landroid/media/AudioDeviceAttributes;

.field private final mHandlesVolumeAdjustment:Z

.field private final mVolumeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;)Landroid/media/IAudioDeviceVolumeDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;)Landroid/media/AudioDeviceAttributes;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandlesVolumeAdjustment(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mHandlesVolumeAdjustment:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetMatchingVolumeInfoForStream(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;I)Landroid/media/VolumeInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->getMatchingVolumeInfoForStream(I)Landroid/media/VolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;Z)V
    .registers 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "callback"    # Landroid/media/IAudioDeviceVolumeDispatcher;
    .param p4, "handlesVolumeAdjustment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;",
            "Landroid/media/IAudioDeviceVolumeDispatcher;",
            "Z)V"
        }
    .end annotation

    .line 721
    .local p2, "volumeInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 723
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mVolumeInfos:Ljava/util/List;

    .line 724
    iput-object p3, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

    .line 725
    iput-boolean p4, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mHandlesVolumeAdjustment:Z

    .line 726
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;ZLcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;-><init>(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;Z)V

    return-void
.end method

.method private getMatchingVolumeInfoForStream(I)Landroid/media/VolumeInfo;
    .registers 9
    .param p1, "streamType"    # I

    .line 733
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mVolumeInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeInfo;

    .line 734
    .local v1, "volumeInfo":Landroid/media/VolumeInfo;
    invoke-virtual {v1}, Landroid/media/VolumeInfo;->hasStreamType()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_22

    .line 735
    invoke-virtual {v1}, Landroid/media/VolumeInfo;->getStreamType()I

    move-result v2

    if-ne v2, p1, :cond_22

    move v2, v3

    goto :goto_23

    :cond_22
    move v2, v4

    .line 736
    .local v2, "streamTypeMatches":Z
    :goto_23
    invoke-virtual {v1}, Landroid/media/VolumeInfo;->hasVolumeGroup()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 737
    invoke-virtual {v1}, Landroid/media/VolumeInfo;->getVolumeGroup()Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo$$ExternalSyntheticLambda0;-><init>(I)V

    .line 738
    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v5

    if-eqz v5, :cond_41

    goto :goto_42

    :cond_41
    move v3, v4

    .line 739
    .local v3, "volumeGroupMatches":Z
    :goto_42
    if-nez v2, :cond_48

    if-eqz v3, :cond_47

    goto :goto_48

    .line 742
    .end local v1    # "volumeInfo":Landroid/media/VolumeInfo;
    .end local v2    # "streamTypeMatches":Z
    .end local v3    # "volumeGroupMatches":Z
    :cond_47
    goto :goto_6

    .line 740
    .restart local v1    # "volumeInfo":Landroid/media/VolumeInfo;
    .restart local v2    # "streamTypeMatches":Z
    .restart local v3    # "volumeGroupMatches":Z
    :cond_48
    :goto_48
    return-object v1

    .line 743
    .end local v1    # "volumeInfo":Landroid/media/VolumeInfo;
    .end local v2    # "streamTypeMatches":Z
    .end local v3    # "volumeGroupMatches":Z
    :cond_49
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getMatchingVolumeInfoForStream$0(II)Z
    .registers 3
    .param p0, "streamType"    # I
    .param p1, "s"    # I

    .line 738
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
