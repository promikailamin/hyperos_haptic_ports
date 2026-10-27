.class public Landroid/content/SyncStatusInfo;
.super Ljava/lang/Object;
.source "SyncStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncStatusInfo$Stats;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_EVENT_COUNT:I = 0xa

.field private static final greylist-max-o SOURCE_COUNT:I = 0x6

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Sync"

.field static final greylist-max-o VERSION:I = 0x6


# instance fields
.field public final greylist authorityId:I

.field public greylist initialFailureTime:J

.field public greylist initialize:Z

.field public greylist lastFailureMesg:Ljava/lang/String;

.field public greylist lastFailureSource:I

.field public greylist lastFailureTime:J

.field public greylist lastSuccessSource:I

.field public greylist lastSuccessTime:J

.field public greylist-max-o lastTodayResetTime:J

.field private final greylist-max-o mLastEventTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLastEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist miSyncStatusInfo:Landroid/content/MiSyncStatusInfo;

.field public greylist pending:Z

.field public final greylist-max-o perSourceLastFailureTimes:[J

.field public final greylist-max-o perSourceLastSuccessTimes:[J

.field private greylist periodicSyncTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist-max-o todayStats:Landroid/content/SyncStatusInfo$Stats;

.field public final greylist-max-o totalStats:Landroid/content/SyncStatusInfo$Stats;

.field public final greylist-max-o yesterdayStats:Landroid/content/SyncStatusInfo$Stats;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 460
    new-instance v0, Landroid/content/SyncStatusInfo$1;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$1;-><init>()V

    sput-object v0, Landroid/content/SyncStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 4
    .param p1, "authorityId"    # I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 122
    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 123
    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 142
    new-instance v0, Landroid/content/MiSyncStatusInfo;

    invoke-direct {v0}, Landroid/content/MiSyncStatusInfo;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->miSyncStatusInfo:Landroid/content/MiSyncStatusInfo;

    .line 144
    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    .line 145
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    .line 157
    iput p1, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 158
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/SyncStatusInfo;)V
    .registers 5
    .param p1, "authorityId"    # I
    .param p2, "other"    # Landroid/content/SyncStatusInfo;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 122
    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 123
    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 142
    new-instance v0, Landroid/content/MiSyncStatusInfo;

    invoke-direct {v0}, Landroid/content/MiSyncStatusInfo;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->miSyncStatusInfo:Landroid/content/MiSyncStatusInfo;

    .line 144
    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    .line 145
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    .line 321
    iput p1, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 322
    invoke-direct {p0, p2}, Landroid/content/SyncStatusInfo;->copyFrom(Landroid/content/SyncStatusInfo;)V

    .line 323
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/SyncStatusInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/content/SyncStatusInfo;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 122
    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 123
    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 142
    new-instance v0, Landroid/content/MiSyncStatusInfo;

    invoke-direct {v0}, Landroid/content/MiSyncStatusInfo;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->miSyncStatusInfo:Landroid/content/MiSyncStatusInfo;

    .line 144
    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    .line 145
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    .line 310
    iget v0, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 311
    invoke-direct {p0, p1}, Landroid/content/SyncStatusInfo;->copyFrom(Landroid/content/SyncStatusInfo;)V

    .line 312
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 122
    new-instance v1, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v1}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 123
    new-instance v1, Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v1}, Landroid/content/SyncStatusInfo$Stats;-><init>()V

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 142
    new-instance v1, Landroid/content/MiSyncStatusInfo;

    invoke-direct {v1}, Landroid/content/MiSyncStatusInfo;-><init>()V

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->miSyncStatusInfo:Landroid/content/MiSyncStatusInfo;

    .line 144
    const/4 v1, 0x6

    new-array v2, v1, [J

    iput-object v2, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    .line 145
    new-array v2, v1, [J

    iput-object v2, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .local v2, "version":I
    const/4 v3, 0x1

    if-eq v2, v1, :cond_57

    if-eq v2, v3, :cond_57

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SyncStatusInfo"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_ae

    move v0, v3

    goto :goto_af

    :cond_ae
    move v0, v4

    :goto_af
    iput-boolean v0, p0, Landroid/content/SyncStatusInfo;->pending:Z

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b9

    move v0, v3

    goto :goto_ba

    :cond_b9
    move v0, v4

    :goto_ba
    iput-boolean v0, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 252
    const/4 v0, 0x0

    if-ne v2, v3, :cond_c2

    .line 253
    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    goto :goto_112

    .line 255
    :cond_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .local v3, "count":I
    if-gez v3, :cond_cb

    .line 257
    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    goto :goto_e5

    .line 259
    :cond_cb
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d3
    if-ge v0, v3, :cond_e5

    .line 261
    iget-object v5, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_d3

    .line 264
    .end local v0    # "i":I
    :cond_e5
    :goto_e5
    const/4 v0, 0x3

    if-lt v2, v0, :cond_112

    .line 265
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    .local v0, "nEvents":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f7
    if-ge v5, v0, :cond_112

    .line 269
    iget-object v6, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v6, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v5, v5, 0x1

    goto :goto_f7

    .line 274
    .end local v0    # "nEvents":I
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_112
    :goto_112
    const/4 v0, 0x4

    if-ge v2, v0, :cond_13a

    .line 276
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iget-object v5, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v5, v5, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v5, v5, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v5, v5, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v5, v5, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 280
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    if-gez v0, :cond_142

    .line 281
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iput v4, v0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    goto :goto_142

    .line 284
    :cond_13a
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 286
    :cond_142
    :goto_142
    const/4 v0, 0x5

    if-lt v2, v0, :cond_16d

    .line 287
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 288
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 289
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    .line 293
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, p1}, Landroid/content/SyncStatusInfo$Stats;->readFromParcel(Landroid/os/Parcel;)V

    .line 294
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, p1}, Landroid/content/SyncStatusInfo$Stats;->readFromParcel(Landroid/os/Parcel;)V

    .line 296
    :cond_16d
    if-lt v2, v1, :cond_179

    .line 297
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 298
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 301
    :cond_179
    new-instance v0, Landroid/content/MiSyncStatusInfo;

    invoke-direct {v0, p1}, Landroid/content/MiSyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->miSyncStatusInfo:Landroid/content/MiSyncStatusInfo;

    .line 302
    return-void
.end method

.method private static greylist-max-o areSameDates(JJ)Z
    .registers 9
    .param p0, "time1"    # J
    .param p2, "time2"    # J

    .line 511
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 512
    .local v0, "c1":Ljava/util/Calendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 514
    .local v1, "c2":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 515
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 517
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_27

    .line 518
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    .line 517
    :goto_28
    return v2
.end method

.method private static greylist-max-o copy([J[J)V
    .registers 4
    .param p0, "to"    # [J
    .param p1, "from"    # [J

    .line 353
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    return-void
.end method

.method private blacklist copyFrom(Landroid/content/SyncStatusInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/content/SyncStatusInfo;

    .line 326
    iget-object v0, p1, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo$Stats;->copyTo(Landroid/content/SyncStatusInfo$Stats;)V

    .line 327
    iget-object v0, p1, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo$Stats;->copyTo(Landroid/content/SyncStatusInfo$Stats;)V

    .line 328
    iget-object v0, p1, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    iget-object v1, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo$Stats;->copyTo(Landroid/content/SyncStatusInfo$Stats;)V

    .line 330
    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    .line 332
    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 333
    iget v0, p1, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 334
    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 335
    iget v0, p1, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    iput v0, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 336
    iget-object v0, p1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 337
    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 338
    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->pending:Z

    iput-boolean v0, p0, Landroid/content/SyncStatusInfo;->pending:Z

    .line 339
    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->initialize:Z

    iput-boolean v0, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 340
    iget-object v0, p1, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 343
    :cond_46
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 346
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    invoke-static {v0, v1}, Landroid/content/SyncStatusInfo;->copy([J[J)V

    .line 347
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    invoke-static {v0, v1}, Landroid/content/SyncStatusInfo;->copy([J[J)V

    .line 349
    new-instance v0, Landroid/content/MiSyncStatusInfo;

    iget-object v1, p1, Landroid/content/SyncStatusInfo;->miSyncStatusInfo:Landroid/content/MiSyncStatusInfo;

    invoke-direct {v0, v1}, Landroid/content/MiSyncStatusInfo;-><init>(Landroid/content/MiSyncStatusInfo;)V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->miSyncStatusInfo:Landroid/content/MiSyncStatusInfo;

    .line 350
    return-void
.end method

.method private greylist ensurePeriodicSyncTimeSize(I)V
    .registers 7
    .param p1, "index"    # I

    .line 472
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 476
    :cond_c
    add-int/lit8 v0, p1, 0x1

    .line 477
    .local v0, "requiredSize":I
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_2c

    .line 478
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_2c

    .line 479
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 482
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method


# virtual methods
.method public greylist-max-o addEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 408
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_16

    .line 409
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 412
    :cond_16
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 413
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 414
    return-void
.end method

.method public blacklist addPeriodicSyncTime(J)V
    .registers 5
    .param p1, "time"    # J

    .line 361
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 362
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getEvent(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 428
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getEventCount()I
    .registers 2

    .line 418
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getEventTime(I)J
    .registers 4
    .param p1, "i"    # I

    .line 423
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getLastFailureMesgAsInt(I)I
    .registers 5
    .param p1, "def"    # I

    .line 162
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ContentResolver;->syncErrorStringToInt(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, "i":I
    if-lez v0, :cond_9

    .line 164
    return v0

    .line 166
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown lastFailureMesg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sync"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return p1
.end method

.method public greylist getPeriodicSyncTime(I)J
    .registers 4
    .param p1, "index"    # I

    .line 374
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 375
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 377
    :cond_17
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getPeriodicSyncTimesSize()I
    .registers 2

    .line 357
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public greylist-max-o maybeResetTodayStats(ZZ)V
    .registers 7
    .param p1, "clockValid"    # Z
    .param p2, "force"    # Z

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 490
    .local v0, "now":J
    if-nez p2, :cond_18

    .line 492
    iget-wide v2, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    invoke-static {v0, v1, v2, v3}, Landroid/content/SyncStatusInfo;->areSameDates(JJ)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 493
    return-void

    .line 499
    :cond_f
    iget-wide v2, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_18

    if-nez p1, :cond_18

    .line 500
    return-void

    .line 504
    :cond_18
    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    .line 506
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v2, v3}, Landroid/content/SyncStatusInfo$Stats;->copyTo(Landroid/content/SyncStatusInfo$Stats;)V

    .line 507
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v2}, Landroid/content/SyncStatusInfo$Stats;->clear()V

    .line 508
    return-void
.end method

.method public blacklist populateLastEventsInformation(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 396
    .local p1, "lastEventInformation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 397
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 398
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 399
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_2c

    .line 400
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 401
    .local v2, "lastEventInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .end local v2    # "lastEventInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 404
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method

.method public greylist removePeriodicSyncTime(I)V
    .registers 3
    .param p1, "index"    # I

    .line 383
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 384
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 386
    :cond_f
    return-void
.end method

.method public greylist-max-o setLastFailure(IJLjava/lang/String;)V
    .registers 9
    .param p1, "source"    # I
    .param p2, "lastSyncTime"    # J
    .param p4, "failureMessage"    # Ljava/lang/String;

    .line 447
    iput-wide p2, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 448
    iput p1, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 449
    iput-object p4, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 450
    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 451
    iput-wide p2, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 454
    :cond_10
    if-ltz p1, :cond_19

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    array-length v1, v0

    if-ge p1, v1, :cond_19

    .line 455
    aput-wide p2, v0, p1

    .line 457
    :cond_19
    return-void
.end method

.method public greylist-max-o setLastSuccess(IJ)V
    .registers 7
    .param p1, "source"    # I
    .param p2, "lastSyncTime"    # J

    .line 433
    iput-wide p2, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 434
    iput p1, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 435
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 436
    const/4 v2, -0x1

    iput v2, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 437
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 438
    iput-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 440
    if-ltz p1, :cond_19

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    array-length v1, v0

    if-ge p1, v1, :cond_19

    .line 441
    aput-wide p2, v0, p1

    .line 443
    :cond_19
    return-void
.end method

.method public greylist setPeriodicSyncTime(IJ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "when"    # J

    .line 368
    invoke-direct {p0, p1}, Landroid/content/SyncStatusInfo;->ensurePeriodicSyncTimeSize(I)V

    .line 369
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 176
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-wide v0, v0, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget v0, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    iget-boolean v0, p0, Landroid/content/SyncStatusInfo;->pending:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-boolean v0, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_81

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 198
    .local v1, "periodicSyncTime":J
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    .end local v1    # "periodicSyncTime":J
    goto :goto_6c

    :cond_80
    goto :goto_85

    .line 201
    :cond_81
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    :goto_85
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8f
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b4

    .line 205
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 209
    .end local v0    # "i":I
    :cond_b4
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, p1}, Landroid/content/SyncStatusInfo$Stats;->writeToParcel(Landroid/os/Parcel;)V

    .line 219
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {v0, p1}, Landroid/content/SyncStatusInfo$Stats;->writeToParcel(Landroid/os/Parcel;)V

    .line 222
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 223
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 225
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->miSyncStatusInfo:Landroid/content/MiSyncStatusInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/MiSyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    return-void
.end method
