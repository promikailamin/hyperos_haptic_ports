.class public Landroid/hardware/camera2/impl/CaptureResultExtras;
.super Ljava/lang/Object;
.source "CaptureResultExtras.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o afTriggerId:I

.field private blacklist errorPhysicalCameraId:Ljava/lang/String;

.field private greylist-max-o errorStreamId:I

.field private greylist-max-o frameNumber:J

.field private blacklist hasReadoutTimestamp:Z

.field private blacklist lastCompletedRegularFrameNumber:J

.field private blacklist lastCompletedReprocessFrameNumber:J

.field private blacklist lastCompletedZslFrameNumber:J

.field private greylist-max-o partialResultCount:I

.field private greylist-max-o precaptureTriggerId:I

.field private blacklist readoutTimestamp:J

.field private greylist-max-o requestId:I

.field private greylist-max-o subsequenceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/hardware/camera2/impl/CaptureResultExtras$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CaptureResultExtras$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIJIILjava/lang/String;JJJ)V
    .registers 35

    .line 85
    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    invoke-direct/range {v0 .. v18}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJIILjava/lang/String;JJJZJ)V

    .line 90
    return-void
.end method

.method public constructor blacklist <init>(IIIIJIILjava/lang/String;JJJZJ)V
    .registers 19

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    .line 64
    iput p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    .line 65
    iput p3, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    .line 66
    iput p4, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    .line 67
    iput-wide p5, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    .line 68
    iput p7, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    .line 69
    iput p8, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    .line 70
    iput-object p9, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    .line 71
    iput-wide p10, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    .line 72
    iput-wide p12, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    .line 73
    iput-wide p14, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    .line 74
    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    .line 75
    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    .line 76
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/impl/CaptureResultExtras-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAfTriggerId()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    return v0
.end method

.method public blacklist getErrorPhysicalCameraId()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getErrorStreamId()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    return v0
.end method

.method public greylist-max-o getFrameNumber()J
    .registers 3

    .line 163
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedRegularFrameNumber()J
    .registers 3

    .line 175
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedReprocessFrameNumber()J
    .registers 3

    .line 179
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedZslFrameNumber()J
    .registers 3

    .line 183
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    return-wide v0
.end method

.method public greylist-max-o getPartialResultCount()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    return v0
.end method

.method public greylist-max-o getPrecaptureTriggerId()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    return v0
.end method

.method public blacklist getReadoutTimestamp()J
    .registers 3

    .line 191
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getRequestId()I
    .registers 2

    .line 147
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    return v0
.end method

.method public greylist-max-o getSubsequenceId()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    return v0
.end method

.method public blacklist hasReadoutTimestamp()Z
    .registers 2

    .line 187
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 130
    if-eqz v0, :cond_36

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    .line 133
    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    .line 137
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    if-eqz v0, :cond_58

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    .line 140
    :cond_58
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 99
    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    if-eqz p2, :cond_39

    iget-object p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_39

    .line 107
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    iget-object p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3d

    .line 110
    :cond_39
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 112
    :goto_3d
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-boolean p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 116
    iget-boolean p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    if-eqz p2, :cond_5a

    .line 117
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    :cond_5a
    return-void
.end method
