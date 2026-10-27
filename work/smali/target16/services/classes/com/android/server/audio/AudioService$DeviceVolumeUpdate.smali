.class public final Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;
.super Ljava/lang/Object;
.source "AudioService.java"


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mDevice:I

.field public final mStreamType:I

.field public final mVssVolIndex:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .registers 5

    .line 10903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10904
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    .line 10905
    iput p2, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    .line 10906
    iput p3, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 10907
    iput-object p4, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 10912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10913
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    const/16 p1, -0x801

    .line 10914
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    .line 10915
    iput p2, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 10916
    iput-object p3, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVolumeIndex()I
    .registers 3

    .line 10924
    iget v0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    const/16 v1, -0x801

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 10925
    iget p0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    return p0
.end method

.method public hasVolumeIndex()Z
    .registers 2

    .line 10920
    iget p0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    const/16 v0, -0x801

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
