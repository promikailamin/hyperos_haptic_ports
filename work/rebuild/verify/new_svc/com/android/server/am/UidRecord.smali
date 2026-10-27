.class public final Lcom/android/server/am/UidRecord;
.super Lcom/android/server/am/psc/UidRecordInternal;
.source "UidRecord.java"


# static fields
.field public static ORIG_ENUMS:[I

.field public static PROTO_ENUMS:[I


# instance fields
.field public curProcStateSeq:J

.field public volatile hasInternetPermission:Z

.field public lastNetworkUpdatedProcStateSeq:J

.field public mLastReportedChange:I

.field public mProcRecords:Landroid/util/ArraySet;

.field public mUidIsFrozen:Z

.field public final networkStateLock:Ljava/lang/Object;

.field public final pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public volatile procStateSeqWaitingForNetwork:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x7

    .line 88
    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    .line 97
    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        -0x80000000
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;)V
    .registers 4

    if-eqz p2, :cond_5

    .line 122
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/psc/UidRecordInternal;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 42
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 73
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 108
    new-instance p1, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {p1}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UidRecord;->pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

    return-void
.end method


# virtual methods
.method public addProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public areAllProcessesFrozen()Z
    .registers 2

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    .line 177
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_21

    .line 178
    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 179
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eq p1, v2, :cond_1e

    .line 181
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_21
    return v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 13

    .line 231
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v1, 0x10500000001L

    .line 232
    iget v3, p0, Lcom/android/server/am/psc/UidRecordInternal;->mUid:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 233
    iget v1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v1

    const-wide v2, 0x10e00000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000003L

    .line 234
    iget-boolean v3, p0, Lcom/android/server/am/psc/UidRecordInternal;->mEphemeral:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000004L

    .line 235
    iget-boolean v3, p0, Lcom/android/server/am/psc/UidRecordInternal;->mHasForegroundServices:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000005L

    .line 236
    iget-boolean v3, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurAllowList:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 237
    iget-wide v3, p0, Lcom/android/server/am/psc/UidRecordInternal;->mLastBackgroundTime:J

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide v1, 0x10b00000006L

    move-object v0, p1

    .line 237
    invoke-static/range {v0 .. v6}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10800000007L

    .line 239
    iget-boolean v3, p0, Lcom/android/server/am/psc/UidRecordInternal;->mIdle:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 240
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v1, :cond_65

    int-to-long v3, v1

    .line 241
    sget-object v5, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    sget-object v6, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    const-wide v1, 0x20e00000008L

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    :cond_65
    const-wide v1, 0x10b0000000aL

    .line 245
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10300000001L

    .line 246
    iget-wide v5, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000002L

    .line 247
    iget-wide v5, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 249
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 251
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public forEachProcess(Ljava/util/function/Consumer;)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 148
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public getMinProcAdj()I
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x3e9

    :goto_a
    if-ltz v0, :cond_1e

    .line 136
    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v2

    if-ge v2, v1, :cond_1b

    move v1, v2

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1e
    return v1
.end method

.method public getNumOfProcs()I
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public getProcessInPackage(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 161
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1f

    .line 162
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;
    .registers 2

    .line 155
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public isFrozen()Z
    .registers 1

    .line 203
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    return p0
.end method

.method public removeProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFrozen(Z)V
    .registers 2

    .line 198
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    return-void
.end method

.method public setLastReportedChange(I)V
    .registers 2

    .line 222
    iput p1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    const-string v1, "UidRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    iget v2, p0, Lcom/android/server/am/psc/UidRecordInternal;->mUid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-boolean v1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mEphemeral:Z

    if-eqz v1, :cond_36

    .line 263
    const-string v1, " ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_36
    iget-boolean v1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mHasForegroundServices:Z

    if-eqz v1, :cond_3f

    .line 266
    const-string v1, " fgServices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_3f
    iget-boolean v1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurAllowList:Z

    if-eqz v1, :cond_48

    .line 269
    const-string v1, " allowlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_48
    iget-wide v1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mLastBackgroundTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5f

    .line 272
    const-string v1, " bg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/psc/UidRecordInternal;->mLastBackgroundTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 275
    :cond_5f
    iget-boolean v1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mIdle:Z

    if-eqz v1, :cond_68

    .line 276
    const-string v1, " idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_68
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v1, :cond_ea

    .line 279
    const-string v1, " change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_7e

    .line 283
    const-string v1, "gone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_7f

    :cond_7e
    const/4 v1, 0x0

    .line 285
    :goto_7f
    iget v3, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v3, v3, 0x2

    const-string/jumbo v4, "|"

    if-eqz v3, :cond_93

    if-eqz v1, :cond_8d

    .line 287
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_8d
    const-string v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 292
    :cond_93
    iget v3, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a4

    if-eqz v1, :cond_9e

    .line 294
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_9e
    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 299
    :cond_a4
    iget v3, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_b5

    if-eqz v1, :cond_af

    .line 301
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_af
    const-string v1, "cached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b6

    :cond_b5
    move v2, v1

    .line 306
    :goto_b6
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c7

    if-eqz v2, :cond_c1

    .line 308
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_c1
    const-string/jumbo v1, "uncached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_c7
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/high16 v3, -0x80000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_d9

    if-eqz v2, :cond_d3

    .line 314
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_d3
    const-string/jumbo v1, "procstate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_d9
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_ea

    if-eqz v2, :cond_e4

    .line 320
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_e4
    const-string/jumbo v1, "procadj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_ea
    const-string v1, " procs:0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, " seq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v1, " caps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurCapability:I

    invoke-static {v0, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateHasInternetPermission()V
    .registers 3

    .line 226
    const-string v0, "android.permission.INTERNET"

    iget v1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mUid:I

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    return-void
.end method
