.class public abstract Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# static fields
.field public static final OOM_ADJ_REASON_TAGS:[Ljava/lang/String;


# instance fields
.field public mActiveUids:Lcom/android/server/am/ActiveUids;

.field public mAdjSeq:I

.field public final mCallback:Lcom/android/server/am/OomAdjuster$Callback;

.field public mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mFollowUpUpdateSet:Landroid/util/ArraySet;

.field public final mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

.field public final mInjector:Lcom/android/server/am/OomAdjuster$Injector;

.field public mLastFreeSwapPercent:D

.field public mLastReason:I

.field public final mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

.field public mNewNumAServiceProcs:I

.field public mNewNumServiceProcs:I

.field public mNextFollowUpUpdateUptimeMs:J

.field public mNextNoKillDebugMessageTime:J

.field public mNumCachedHiddenProcs:I

.field public mNumNonCachedProcs:I

.field public mNumServiceProcs:I

.field public final mNumSlots:I

.field public mOomAdjUpdateOngoing:Z

.field public mPendingFullOomAdjUpdate:Z

.field public final mPendingProcessSet:Landroid/util/ArraySet;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessGroupHandler:Landroid/os/Handler;

.field public final mProcessList:Lcom/android/server/am/ProcessList;

.field public mProcessStateCurTop:I

.field public final mProcsToOomAdj:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpBecameIdle:Ljava/util/ArrayList;

.field public final mTmpOomAdjWindowCalculator:Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;

.field public final mTmpProcessList:Ljava/util/ArrayList;

.field public final mTmpProcessSet:Landroid/util/ArraySet;

.field public final mTmpQueue:Ljava/util/ArrayDeque;

.field public final mTmpSchedGroup:[I

.field public final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public static synthetic $r8$lambda$4TDppgAe_mArQ0IN_WkPDEppPQk(I)Ljava/lang/String;
    .registers 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOomAdj_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToStringSuffix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9F-hNbXzRFxc_BBmKMXasg6rCRI(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZfPlxL_SeF3ekvJ1OHIgVGQXMb4(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$applyOomAdjLSP$2(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hCEmhMTPeeXfSVyvWah1dG5wQCw(Lcom/android/server/am/OomAdjuster;Landroid/os/Message;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$new$1(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x1b

    .line 171
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OomAdjuster;->OOM_ADJ_REASON_TAGS:[Ljava/lang/String;

    .line 173
    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/OomAdjuster$Injector;Lcom/android/server/am/OomAdjuster$Callback;)V
    .registers 12

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 292
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 293
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 294
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 300
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 306
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v1, 0x1

    .line 318
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 332
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 333
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 349
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 355
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v0, 0x2

    .line 369
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 372
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    const-wide v2, 0x7fffffffffffffffL

    .line 376
    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1092
    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1472
    new-instance v0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpOomAdjWindowCalculator:Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;

    .line 499
    iput-object p7, p0, Lcom/android/server/am/OomAdjuster;->mCallback:Lcom/android/server/am/OomAdjuster$Callback;

    .line 500
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 501
    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    .line 502
    iput-object p6, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 503
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 504
    iget-object p2, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 505
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 507
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 509
    new-instance p2, Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-direct {p2, p0, p1}, Lcom/android/server/am/OomAdjusterDebugLogger;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 511
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 518
    new-instance p1, Lcom/android/server/am/ActiveUids;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActiveUids$Observer;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 519
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object p2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p2, p2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/2addr p2, v1

    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    const/16 p1, 0xa

    .line 520
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    return-void
.end method

.method public static applyBindAboveClientToAdj(ZI)I
    .registers 2

    .line 0
    if-eqz p0, :cond_24

    if-gez p1, :cond_5

    goto :goto_24

    :cond_5
    const/16 p0, 0x64

    if-ge p1, p0, :cond_a

    return p0

    :cond_a
    const/16 p0, 0xc8

    if-ge p1, p0, :cond_f

    return p0

    :cond_f
    const/16 p0, 0xfa

    if-ge p1, p0, :cond_14

    return p0

    :cond_14
    const/16 p0, 0x1f4

    if-ge p1, p0, :cond_19

    return p0

    :cond_19
    const/16 p0, 0x384

    if-ge p1, p0, :cond_1e

    return p0

    :cond_1e
    const/16 p0, 0x3e7

    if-ge p1, p0, :cond_24

    add-int/lit8 p1, p1, 0x1

    :cond_24
    :goto_24
    return p1
.end method

.method public static createAdjusterThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 490
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, -0xa

    const/4 v2, 0x0

    const-string v3, "OomAdjuster"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 492
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    return-object v0
.end method

.method public static getCpuCapabilitiesFromClient(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/OomAdjusterImpl$Connection;)I
    .registers 10

    .line 2023
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v0

    and-int/lit16 v1, v0, 0x180

    .line 2024
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCpuTimeReasons()I

    move-result v2

    .line 2026
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurImplicitCpuTimeReasons()I

    move-result p1

    const/4 v3, 0x0

    if-eqz p2, :cond_16

    .line 2029
    invoke-interface {p2}, Lcom/android/server/am/OomAdjusterImpl$Connection;->cpuTimeTransmissionType()I

    move-result p2

    goto :goto_17

    :cond_16
    move p2, v3

    :goto_17
    if-nez p2, :cond_1a

    return v3

    :cond_1a
    and-int/lit16 v4, v0, 0x80

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v4, :cond_29

    if-ne v2, v6, :cond_24

    :goto_22
    move v2, v6

    goto :goto_2a

    :cond_24
    if-ne p2, v5, :cond_27

    goto :goto_22

    :cond_27
    move v2, v5

    goto :goto_2a

    :cond_29
    move v2, v3

    :goto_2a
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_36

    if-ne p1, v6, :cond_32

    :goto_30
    move v3, v6

    goto :goto_36

    :cond_32
    if-ne p2, v5, :cond_35

    goto :goto_30

    :cond_35
    move v3, v5

    .line 2061
    :cond_36
    :goto_36
    invoke-virtual {p0, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->addCurCpuTimeReasons(I)V

    .line 2062
    invoke-virtual {p0, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->addCurImplicitCpuTimeReasons(I)V

    return v1
.end method

.method public static getCpuCapability(Lcom/android/server/am/psc/ProcessRecordInternal;Z)I
    .registers 2

    .line 1956
    invoke-static {p0, p1}, Lcom/android/server/am/OomAdjuster;->getCpuTimeReasons(Lcom/android/server/am/psc/ProcessRecordInternal;Z)I

    move-result p1

    .line 1957
    invoke-virtual {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->addCurCpuTimeReasons(I)V

    if-eqz p1, :cond_c

    const/16 p0, 0x80

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static getCpuTimeReasons(Lcom/android/server/am/psc/ProcessRecordInternal;Z)I
    .registers 4

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getUidRecord()Lcom/android/server/am/psc/UidRecordInternal;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1926
    invoke-virtual {v0}, Lcom/android/server/am/psc/UidRecordInternal;->isCurAllowListed()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    if-eqz p1, :cond_11

    return v1

    .line 1936
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->hasExecutingServices()Z

    move-result p1

    if-eqz p1, :cond_1c

    return v1

    .line 1940
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->hasForegroundServices()Z

    move-result p1

    if-eqz p1, :cond_27

    return v1

    .line 1943
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReceivers()Lcom/android/server/am/psc/ProcessReceiverRecordInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->isReceivingBroadcast()Z

    move-result p1

    if-eqz p1, :cond_32

    return v1

    .line 1946
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->hasActiveInstrumentation()Z

    move-result p0

    if-eqz p0, :cond_39

    return v1

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public static getFreeSwapPercent()D
    .registers 2

    .line 1095
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreezePolicy(Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 1

    .line 2563
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result p0

    and-int/lit16 p0, p0, 0x180

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static oomAdjReasonToString(I)Ljava/lang/String;
    .registers 2

    .line 241
    sget-object v0, Lcom/android/server/am/OomAdjuster;->OOM_ADJ_REASON_TAGS:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static oomAdjReasonToStringSuffix(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_6a

    .line 277
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 276
    :pswitch_7
    const-string p0, "batchUpdateRequest"

    return-object p0

    .line 275
    :pswitch_a
    const-string/jumbo p0, "serviceBinderCall"

    return-object p0

    .line 274
    :pswitch_e
    const-string/jumbo p0, "reconfiguration"

    return-object p0

    .line 273
    :pswitch_12
    const-string p0, "followUp"

    return-object p0

    .line 272
    :pswitch_15
    const-string p0, "componentDisabled"

    return-object p0

    .line 271
    :pswitch_18
    const-string/jumbo p0, "restrictionChange"

    return-object p0

    .line 270
    :pswitch_1c
    const-string p0, "executingService"

    return-object p0

    .line 269
    :pswitch_1f
    const-string/jumbo p0, "stopService"

    return-object p0

    .line 268
    :pswitch_23
    const-string/jumbo p0, "uidIdle"

    return-object p0

    .line 267
    :pswitch_27
    const-string/jumbo p0, "removeTask"

    return-object p0

    .line 266
    :pswitch_2b
    const-string/jumbo p0, "shell"

    return-object p0

    .line 265
    :pswitch_2f
    const-string p0, "backup"

    return-object p0

    .line 264
    :pswitch_32
    const-string/jumbo p0, "systemInit"

    return-object p0

    .line 263
    :pswitch_36
    const-string/jumbo p0, "shortFgs"

    return-object p0

    .line 262
    :pswitch_3a
    const-string/jumbo p0, "processEnd"

    return-object p0

    .line 261
    :pswitch_3e
    const-string/jumbo p0, "processBegin"

    return-object p0

    .line 260
    :pswitch_42
    const-string p0, "allowlistChange"

    return-object p0

    .line 259
    :pswitch_45
    const-string/jumbo p0, "uiVisibility"

    return-object p0

    .line 258
    :pswitch_49
    const-string/jumbo p0, "removeProvider"

    return-object p0

    .line 257
    :pswitch_4d
    const-string p0, "getProvider"

    return-object p0

    .line 256
    :pswitch_50
    const-string/jumbo p0, "startService"

    return-object p0

    .line 255
    :pswitch_54
    const-string/jumbo p0, "unbindService"

    return-object p0

    .line 254
    :pswitch_58
    const-string p0, "bindService"

    return-object p0

    .line 253
    :pswitch_5b
    const-string/jumbo p0, "startReceiver"

    return-object p0

    .line 252
    :pswitch_5f
    const-string p0, "finishReceiver"

    return-object p0

    .line 251
    :pswitch_62
    const-string p0, "activityChange"

    return-object p0

    .line 250
    :pswitch_65
    const-string/jumbo p0, "meh"

    return-object p0

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public applyLruAdjust(Ljava/util/ArrayList;)V
    .registers 23

    move-object/from16 v0, p0

    .line 948
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 960
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 961
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v2, v3

    .line 967
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v3, v1, v3

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v3, v4

    if-le v3, v2, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    const/4 v3, 0x1

    if-lez v4, :cond_20

    .line 978
    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    goto :goto_21

    :cond_20
    move v4, v3

    :goto_21
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v4, v0

    if-ge v4, v3, :cond_27

    move v4, v3

    :cond_27
    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    .line 982
    div-int/2addr v2, v0

    if-ge v2, v3, :cond_2d

    move v2, v3

    :cond_2d
    sub-int/2addr v1, v3

    const/4 v0, -0x1

    const/16 v5, 0x64

    const/16 v7, 0x384

    const/16 v8, 0x38e

    const/16 v10, 0x389

    const/16 v11, 0x393

    move v13, v5

    move v12, v11

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/16 v14, 0x2bc

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v11, v10

    move v10, v8

    move v8, v7

    move v7, v1

    move v1, v0

    :goto_47
    if-ltz v7, :cond_122

    move-object/from16 v6, p1

    .line 992
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move/from16 v17, v1

    .line 994
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v1

    if-gt v5, v1, :cond_72

    .line 995
    sget v5, Lcom/android/server/am/ProcessList;->VISIBLE_APP_MAX_ADJ:I

    if-gt v1, v5, :cond_72

    .line 996
    invoke-virtual {v0, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurAdj(I)V

    add-int/lit8 v13, v13, 0x1

    .line 997
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    :cond_6a
    :goto_6a
    move/from16 v20, v2

    move/from16 v1, v17

    :goto_6e
    move/from16 v0, v18

    goto/16 :goto_11a

    :cond_72
    const/16 v5, 0x2bc

    if-gt v5, v1, :cond_84

    .line 998
    sget v5, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    if-gt v1, v5, :cond_84

    .line 999
    invoke-virtual {v0, v14}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurAdj(I)V

    add-int/lit8 v14, v14, 0x1

    .line 1000
    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_6a

    .line 1001
    :cond_84
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isProcessRunning()Z

    move-result v5

    if-eqz v5, :cond_6a

    const/16 v5, 0x3e9

    if-lt v1, v5, :cond_6a

    .line 1003
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1004
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v5

    move-object/from16 v19, v1

    const/16 v1, 0x3e7

    packed-switch v5, :pswitch_data_124

    if-eq v11, v12, :cond_b4

    add-int/lit8 v5, v18, 0x1

    if-lt v5, v2, :cond_b2

    add-int/lit8 v5, v12, 0xa

    move v11, v12

    const/16 v18, 0x0

    if-le v5, v1, :cond_b0

    move v12, v1

    goto :goto_b4

    :cond_b0
    move v12, v5

    goto :goto_b4

    :cond_b2
    move/from16 v18, v5

    .line 1076
    :cond_b4
    :goto_b4
    invoke-virtual {v0, v11}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(I)V

    .line 1077
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isHasAboveClient()Z

    move-result v1

    invoke-static {v1, v11}, Lcom/android/server/am/OomAdjuster;->applyBindAboveClientToAdj(ZI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurAdj(I)V

    goto :goto_6a

    .line 1011
    :pswitch_c3
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionGroup()I

    move-result v5

    if-eqz v5, :cond_e7

    .line 1013
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionImportance()I

    move-result v1

    move/from16 v20, v2

    .line 1014
    iget v2, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v15, v2, :cond_e2

    if-ne v3, v5, :cond_e2

    if-le v1, v9, :cond_e0

    if-ge v8, v10, :cond_df

    const/16 v2, 0x3e7

    if-ge v8, v2, :cond_df

    add-int/lit8 v16, v16, 0x1

    :cond_df
    move v9, v1

    :cond_e0
    const/4 v1, 0x1

    goto :goto_ea

    :cond_e2
    move v9, v1

    move v15, v2

    move v3, v5

    :goto_e5
    const/4 v1, 0x0

    goto :goto_ea

    :cond_e7
    move/from16 v20, v2

    goto :goto_e5

    :goto_ea
    if-nez v1, :cond_106

    if-eq v8, v10, :cond_106

    add-int/lit8 v1, v17, 0x1

    if-lt v1, v4, :cond_103

    add-int/lit8 v1, v10, 0xa

    const/16 v2, 0x3e7

    move v8, v10

    if-le v1, v2, :cond_fe

    const/4 v1, 0x0

    const/16 v16, 0x0

    move v10, v2

    goto :goto_108

    :cond_fe
    const/16 v16, 0x0

    move v10, v1

    const/4 v1, 0x0

    goto :goto_108

    :cond_103
    const/16 v16, 0x0

    goto :goto_108

    :cond_106
    move/from16 v1, v17

    :goto_108
    add-int v2, v8, v16

    .line 1048
    invoke-virtual {v0, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(I)V

    .line 1050
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isHasAboveClient()Z

    move-result v5

    invoke-static {v5, v2}, Lcom/android/server/am/OomAdjuster;->applyBindAboveClientToAdj(ZI)I

    move-result v2

    .line 1049
    invoke-virtual {v0, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurAdj(I)V

    goto/16 :goto_6e

    :goto_11a
    add-int/lit8 v7, v7, -0x1

    move/from16 v2, v20

    const/16 v5, 0x64

    goto/16 :goto_47

    :cond_122
    return-void

    nop

    :pswitch_data_124
    .packed-switch 0xf
        :pswitch_c3
        :pswitch_c3
        :pswitch_c3
        :pswitch_c3
    .end packed-switch
.end method

.method public applyOomAdjLSP(Lcom/android/server/am/psc/ProcessRecordInternal;ZJJIZ)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    .line 2078
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getUidRecord()Lcom/android/server/am/psc/UidRecordInternal;

    move-result-object v6

    .line 2080
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v7, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 2081
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getApplicationUid()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v7, v8, :cond_1a

    move v7, v10

    goto :goto_1b

    :cond_1a
    move v7, v9

    .line 2083
    :goto_1b
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetRawAdj()I

    move-result v11

    if-eq v8, v11, :cond_2c

    .line 2084
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSetRawAdj(I)V

    .line 2089
    :cond_2c
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v11

    if-eq v8, v11, :cond_43

    .line 2090
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mCallback:Lcom/android/server/am/OomAdjuster$Callback;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v11

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v12

    invoke-interface {v8, v11, v12, v1}, Lcom/android/server/am/OomAdjuster$Callback;->onOomAdjustChanged(IILcom/android/server/am/psc/ProcessRecordInternal;)V

    .line 2093
    :cond_43
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v8

    .line 2094
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v11

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v12

    if-eq v11, v12, :cond_bd

    if-eqz p8, :cond_5f

    .line 2095
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    if-eqz v11, :cond_5f

    .line 2096
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 2098
    :cond_5f
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v12

    iget v13, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/am/OomAdjuster$Injector;->setOomAdj(III)V

    :goto_6e
    if-eqz v7, :cond_ac

    .line 2102
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " adj "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2104
    const-string v12, "ActivityManager"

    invoke-virtual {v0, v12, v11}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    :cond_ac
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSetAdj(I)V

    if-eqz v6, :cond_b8

    .line 2108
    invoke-virtual {v6, v10}, Lcom/android/server/am/psc/UidRecordInternal;->setProcAdjChanged(Z)V

    :cond_b8
    const/16 v11, -0x2710

    .line 2110
    invoke-virtual {v1, v11}, Lcom/android/server/am/psc/ProcessRecordInternal;->setVerifiedAdj(I)V

    .line 2113
    :cond_bd
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurrentSchedulingGroup()I

    move-result v11

    .line 2114
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getWaitingToKill()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xa

    if-eqz v12, :cond_ef

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReceivers()Lcom/android/server/am/psc/ProcessReceiverRecordInternal;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->isReceivingBroadcast()Z

    move-result v12

    if-nez v12, :cond_ef

    .line 2115
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v12

    invoke-static {v12}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v12

    if-eqz v12, :cond_ef

    .line 2116
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasStartedServices()Z

    move-result v12

    if-nez v12, :cond_ef

    .line 2117
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getWaitingToKill()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x16

    invoke-virtual {v1, v11, v13, v12, v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    move v11, v9

    goto/16 :goto_1a5

    .line 2120
    :cond_ef
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetSchedGroup()I

    move-result v12

    if-eq v12, v11, :cond_1a4

    .line 2121
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetSchedGroup()I

    move-result v12

    .line 2122
    invoke-virtual {v1, v11}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSetSchedGroup(I)V

    if-eqz v7, :cond_12a

    .line 2124
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting sched group of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2126
    const-string v15, "ActivityManager"

    invoke-virtual {v0, v15, v14}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12a
    const/4 v14, 0x3

    if-eqz v11, :cond_13e

    if-eq v11, v10, :cond_13c

    const/4 v15, 0x5

    if-eq v11, v14, :cond_13f

    const/4 v13, 0x4

    if-eq v11, v13, :cond_13f

    if-eq v11, v15, :cond_139

    const/4 v15, -0x1

    goto :goto_13f

    :cond_139
    const/16 v15, 0x8

    goto :goto_13f

    :cond_13c
    const/4 v15, 0x7

    goto :goto_13f

    :cond_13e
    move v15, v9

    .line 2147
    :cond_13f
    :goto_13f
    invoke-virtual {v0, v1, v15}, Lcom/android/server/am/OomAdjuster;->setAppAndChildProcessGroup(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    .line 2149
    :try_start_142
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getRenderThreadTid()I

    move-result v13

    if-ne v11, v14, :cond_175

    if-eq v12, v14, :cond_1a4

    .line 2153
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->notifyTopProcChanged()V

    .line 2154
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->useFifoUiScheduling()Z

    move-result v11

    if-eqz v11, :cond_162

    .line 2156
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v11

    invoke-static {v11}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSavedPriority(I)V

    .line 2157
    invoke-static {v1, v10}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    goto :goto_1a4

    .line 2160
    :cond_162
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v12

    const/16 v14, -0xa

    invoke-virtual {v11, v12, v14}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_16d} :catch_1a4

    if-eqz v13, :cond_1a4

    .line 2164
    :try_start_16f
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v11, v13, v14}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V
    :try_end_174
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16f .. :try_end_174} :catch_1a4
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_174} :catch_1a4

    goto :goto_1a4

    :cond_175
    if-ne v12, v14, :cond_1a4

    if-eq v11, v14, :cond_1a4

    .line 2174
    :try_start_179
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->notifyTopProcChanged()V

    .line 2175
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->useFifoUiScheduling()Z

    move-result v11

    if-eqz v11, :cond_193

    .line 2177
    invoke-static {v1, v9}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    .line 2178
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v12

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSavedPriority()I

    move-result v14

    invoke-virtual {v11, v12, v14}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V

    goto :goto_19c

    .line 2181
    :cond_193
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V

    :goto_19c
    if-eqz v13, :cond_1a4

    .line 2185
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    const/4 v12, -0x4

    invoke-virtual {v11, v13, v12}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_1a4} :catch_1a4

    :catch_1a4
    :cond_1a4
    :goto_1a4
    move v11, v10

    .line 2194
    :goto_1a5
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasRepForegroundActivities()Z

    move-result v12

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasForegroundActivities()Z

    move-result v13

    if-eq v12, v13, :cond_1ba

    .line 2195
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasForegroundActivities()Z

    move-result v12

    invoke-virtual {v1, v12}, Lcom/android/server/am/psc/ProcessRecordInternal;->setRepForegroundActivities(Z)V

    move v13, v10

    :goto_1b7
    move/from16 v12, p7

    goto :goto_1bc

    :cond_1ba
    move v13, v9

    goto :goto_1b7

    .line 2199
    :goto_1bc
    invoke-virtual {v0, v1, v12, v9, v8}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/psc/ProcessRecordInternal;IZI)V

    .line 2201
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReportedProcState()I

    move-result v12

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v14

    if-eq v12, v14, :cond_1d7

    .line 2202
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/android/server/am/psc/ProcessRecordInternal;->setReportedProcState(I)V

    .line 2203
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReportedProcState()I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/android/server/am/psc/ProcessRecordInternal;->setProcessStateToThread(I)V

    .line 2206
    :cond_1d7
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v12

    const/16 v14, 0x14

    if-eq v12, v14, :cond_1f0

    .line 2208
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v12

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v14

    .line 2207
    invoke-static {v12, v14}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v12

    if-eqz v12, :cond_1ee

    goto :goto_1f0

    :cond_1ee
    move v12, v9

    goto :goto_1f4

    .line 2209
    :cond_1f0
    :goto_1f0
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setLastStateTime(J)V

    move v12, v10

    .line 2218
    :goto_1f4
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mCallback:Lcom/android/server/am/OomAdjuster$Callback;

    invoke-interface {v14, v1, v2, v3, v12}, Lcom/android/server/am/OomAdjuster$Callback;->onProcStateUpdated(Lcom/android/server/am/psc/ProcessRecordInternal;JZ)V

    .line 2220
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v12

    .line 2221
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v14

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v15

    if-eq v14, v15, :cond_290

    if-eqz v7, :cond_249

    .line 2223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Proc state change of "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " to "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2224
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v14

    invoke-static {v14}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " ("

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "): "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2226
    const-string v14, "ActivityManager"

    invoke-virtual {v0, v14, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    :cond_249
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v7

    const/16 v14, 0xa

    if-ge v7, v14, :cond_253

    move v7, v10

    goto :goto_254

    :cond_253
    move v7, v9

    .line 2229
    :goto_254
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v15

    if-ge v15, v14, :cond_25b

    move v9, v10

    :cond_25b
    if-eqz v7, :cond_267

    if-nez v9, :cond_267

    .line 2234
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setWhenUnimportant(J)V

    const-wide/16 v9, 0x0

    .line 2235
    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->setLastCpuTime(J)V

    .line 2239
    :cond_267
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/psc/ProcessRecordInternal;J)V

    .line 2241
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/psc/ProcessRecordInternal;J)V

    .line 2243
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSetProcState(I)V

    if-nez p2, :cond_2d0

    .line 2245
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2247
    :try_start_27d
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v1

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2248
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v9

    .line 2247
    invoke-virtual {v3, v7, v9}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 2249
    monitor-exit v2

    goto :goto_2d0

    :catchall_28d
    move-exception v0

    monitor-exit v2
    :try_end_28f
    .catchall {:try_start_27d .. :try_end_28f} :catchall_28d

    throw v0

    .line 2251
    :cond_290
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasReportedInteraction()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2b4

    .line 2252
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedCompatChange(I)Z

    move-result v2

    if-eqz v2, :cond_2a2

    .line 2255
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_2a6

    .line 2256
    :cond_2a2
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 2259
    :goto_2a6
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getInteractionEventTime()J

    move-result-wide v9

    sub-long v9, v4, v9

    cmp-long v2, v9, v2

    if-lez v2, :cond_2d0

    .line 2260
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/psc/ProcessRecordInternal;J)V

    goto :goto_2d0

    .line 2263
    :cond_2b4
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedCompatChange(I)Z

    move-result v2

    if-eqz v2, :cond_2bf

    .line 2266
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_2c3

    .line 2267
    :cond_2bf
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 2269
    :goto_2c3
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getFgInteractionTime()J

    move-result-wide v9

    sub-long v9, v4, v9

    cmp-long v2, v9, v2

    if-lez v2, :cond_2d0

    .line 2270
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/psc/ProcessRecordInternal;J)V

    .line 2274
    :cond_2d0
    :goto_2d0
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v3

    if-eq v2, v3, :cond_2ef

    .line 2275
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSetCapability(I)V

    .line 2276
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCpuTimeReasons()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSetCpuTimeReasons(I)V

    .line 2277
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurImplicitCpuTimeReasons()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSetImplicitCpuTimeReasons(I)V

    .line 2280
    :cond_2ef
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCurBoundByNonBgRestrictedApp()Z

    move-result v2

    .line 2281
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isSetBoundByNonBgRestrictedApp()Z

    move-result v3

    if-eq v2, v3, :cond_310

    .line 2282
    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSetBoundByNonBgRestrictedApp(Z)V

    if-nez v2, :cond_310

    .line 2283
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isBackgroundRestricted()Z

    move-result v2

    if-eqz v2, :cond_310

    .line 2284
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_310
    if-eqz v13, :cond_323

    .line 2296
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getApplicationUid()I

    move-result v7

    .line 2297
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasRepForegroundActivities()Z

    move-result v9

    .line 2296
    invoke-virtual {v2, v3, v7, v13, v9}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(IIIZ)V

    .line 2306
    :cond_323
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v2

    if-eqz v2, :cond_368

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isSetCached()Z

    move-result v2

    if-nez v2, :cond_368

    .line 2311
    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setLastCachedTime(J)V

    .line 2312
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v4, 0x3a

    if-nez v3, :cond_342

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 2313
    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_368

    .line 2314
    :cond_342
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v2

    if-eqz v2, :cond_35d

    .line 2315
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 2316
    invoke-virtual {v6}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 2315
    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/android/server/am/OomAdjusterDebugLogger;->logScheduleUidIdle2(IIJ)V

    .line 2319
    :cond_35d
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2323
    :cond_368
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSetCached(Z)V

    .line 2324
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v2

    if-ne v12, v2, :cond_37b

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v2

    if-eq v8, v2, :cond_3a6

    :cond_37b
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 2325
    invoke-virtual {v2, v3}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v2

    if-eqz v2, :cond_3a6

    .line 2326
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v2, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v3

    .line 2327
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v4

    .line 2328
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v1

    move-object/from16 p0, v0

    move/from16 p5, v1

    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p6, v8

    move/from16 p4, v12

    .line 2326
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/OomAdjusterDebugLogger;->logProcStateChanged(IIIIII)V

    :cond_3a6
    return v11
.end method

.method public final checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3

    .line 827
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_f

    .line 831
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 833
    :cond_f
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    :goto_11
    return v0
.end method

.method public abstract collectReachableProcessesLSP(Ljava/util/ArrayList;)V
.end method

.method public abstract computeProviderHostOomAdjLSP(Lcom/android/server/am/psc/ContentProviderConnectionInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Z)Z
.end method

.method public abstract computeServiceHostOomAdjLSP(Lcom/android/server/am/psc/ConnectionRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;JZ)Z
.end method

.method public dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2552
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2551
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5

    const-wide v0, 0x10500000031L

    .line 2534
    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2535
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v0

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000033L

    .line 2536
    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000035L

    .line 2538
    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000036L

    .line 2539
    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 803
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result v0

    if-lez v0, :cond_d

    .line 804
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public enqueuePendingTopAppIfNecessaryLSP()I
    .registers 3

    .line 653
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->getTopProcessState()I

    move-result v0

    .line 654
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    .line 655
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->getTopProcessState()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 659
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    :cond_14
    return v1
.end method

.method public final evaluateConnectionPrelude(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_1c

    if-nez p2, :cond_6

    goto :goto_1c

    .line 2769
    :cond_6
    iget-boolean p1, p2, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-nez p1, :cond_1c

    iget-boolean p1, p2, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-nez p1, :cond_1c

    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result p1

    if-nez p1, :cond_1c

    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :cond_1c
    :goto_1c
    return p0
.end method

.method public evaluateProviderConnectionAdd(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 6

    .line 2717
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2722
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v2

    if-le v0, v2, :cond_13

    goto :goto_39

    .line 2724
    :cond_13
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v2

    if-le v0, v2, :cond_1e

    goto :goto_39

    .line 2726
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_39

    .line 2729
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    and-int/lit16 v0, v0, 0x180

    if-eqz v0, :cond_3f

    :goto_39
    const/4 v0, 0x0

    .line 2736
    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/psc/ContentProviderConnectionInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Z)Z

    move-result p0

    return p0

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public evaluateProviderConnectionRemoval(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 5

    .line 2744
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    .line 2748
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v1

    if-lt p0, v1, :cond_13

    return v0

    .line 2750
    :cond_13
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v1

    if-lt p0, v1, :cond_1e

    return v0

    .line 2752
    :cond_1e
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result p0

    if-eqz p0, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result p0

    if-eqz p0, :cond_2b

    return v0

    .line 2756
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result p1

    and-int/2addr p0, p1

    and-int/lit16 p0, p0, 0x180

    if-eqz p0, :cond_39

    return v0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public evaluateServiceConnectionAdd(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/ConnectionRecord;)Z
    .registers 12

    .line 2647
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 2652
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v1

    if-le v0, v1, :cond_13

    goto :goto_5d

    .line 2655
    :cond_13
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v1

    if-le v0, v1, :cond_1e

    goto :goto_5d

    :cond_1e
    const-wide v0, 0x100001000L

    .line 2658
    invoke-virtual {p3, v0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(J)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2660
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v1

    and-int/2addr v0, v1

    .line 2661
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v1

    if-eq v0, v1, :cond_39

    goto :goto_5d

    .line 2665
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x180

    if-eqz v0, :cond_48

    goto :goto_5d

    :cond_48
    const/16 v0, 0x30

    .line 2669
    invoke-virtual {p3, v0}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_5d

    .line 2672
    :cond_51
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 2680
    :goto_5d
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/psc/ConnectionRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;JZ)Z

    move-result p0

    return p0

    :cond_6d
    const/4 p0, 0x0

    return p0
.end method

.method public evaluateServiceConnectionRemoval(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/ConnectionRecord;)Z
    .registers 7

    .line 2689
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    .line 2693
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v1

    if-lt p0, v1, :cond_13

    return v0

    .line 2695
    :cond_13
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v1

    if-lt p0, v1, :cond_1e

    return v0

    :cond_1e
    const-wide v1, 0x100001000L

    .line 2697
    invoke-virtual {p3, v1, v2}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(J)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 2699
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v1

    and-int/2addr p0, v1

    if-eqz p0, :cond_35

    return v0

    :cond_35
    const/16 p0, 0x30

    .line 2702
    invoke-virtual {p3, p0}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result p0

    if-eqz p0, :cond_3e

    return v0

    .line 2704
    :cond_3e
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result p0

    if-eqz p0, :cond_4b

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result p0

    if-eqz p0, :cond_4b

    return v0

    .line 2708
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result p1

    and-int/2addr p0, p1

    and-int/lit16 p0, p0, 0x180

    if-eqz p0, :cond_59

    return v0

    :cond_59
    const/4 p0, 0x0

    return p0
.end method

.method public getBfslCapabilityFromClient(Lcom/android/server/am/psc/ProcessRecordInternal;)I
    .registers 4

    .line 1977
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x10

    if-ge p0, v0, :cond_a

    return v1

    .line 2015
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result p0

    and-int/2addr p0, v1

    return p0
.end method

.method public getDefaultCapability(Lcom/android/server/am/psc/ProcessRecordInternal;I)I
    .registers 5

    .line 1886
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    move-result p0

    if-eqz p2, :cond_28

    const/4 v0, 0x1

    if-eq p2, v0, :cond_28

    const/4 v0, 0x2

    if-eq p2, v0, :cond_28

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1c

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_14

    goto :goto_2a

    .line 1903
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->hasActiveInstrumentation()Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 v1, 0x6

    goto :goto_2a

    .line 1895
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->hasActiveInstrumentation()Z

    move-result p1

    if-eqz p1, :cond_25

    const/16 v1, 0x16

    goto :goto_2a

    :cond_25
    const/16 v1, 0x10

    goto :goto_2a

    :cond_28
    const/16 v1, 0x1ff

    :cond_2a
    :goto_2a
    or-int/2addr p0, v1

    return p0
.end method

.method public getImplicitCpuCapability(Lcom/android/server/am/psc/ProcessRecordInternal;I)I
    .registers 4

    .line 1963
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    if-lt p2, v0, :cond_13

    .line 1964
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    if-ge p2, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 1965
    invoke-virtual {p1, p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->addCurImplicitCpuTimeReasons(I)V

    const/16 p0, 0x100

    return p0
.end method

.method public getTopProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 1766
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    invoke-interface {p0}, Lcom/android/server/am/OomAdjuster$GlobalState;->getTopProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object p0

    return-object p0
.end method

.method public getTopProcessState()I
    .registers 1

    .line 1742
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    invoke-interface {p0}, Lcom/android/server/am/OomAdjuster$GlobalState;->getTopProcessState()I

    move-result p0

    return p0
.end method

.method public idleUidsLocked()V
    .registers 21

    move-object/from16 v0, p0

    .line 2459
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    .line 2460
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz v1, :cond_15

    goto/16 :goto_eb

    .line 2464
    :cond_15
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v4

    .line 2465
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v6, v4, v6

    .line 2467
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_2a

    .line 2468
    invoke-virtual {v2}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_2a
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move v13, v8

    move-wide v11, v9

    :goto_31
    if-ltz v1, :cond_97

    .line 2472
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v14, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v14

    .line 2473
    invoke-virtual {v14}, Lcom/android/server/am/psc/UidRecordInternal;->getLastBackgroundTime()J

    move-result-wide v15

    .line 2474
    invoke-virtual {v14}, Lcom/android/server/am/psc/UidRecordInternal;->getLastIdleTimeIfStillIdle()J

    move-result-wide v17

    cmp-long v19, v15, v9

    if-lez v19, :cond_93

    .line 2475
    invoke-virtual {v14}, Lcom/android/server/am/psc/UidRecordInternal;->isIdle()Z

    move-result v19

    if-eqz v19, :cond_4f

    cmp-long v17, v17, v9

    if-nez v17, :cond_93

    :cond_4f
    cmp-long v17, v15, v6

    if-gtz v17, :cond_7d

    .line 2477
    invoke-virtual {v14}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v15

    invoke-static {v15}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 2478
    iget-object v15, v0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v15

    .line 2479
    :try_start_60
    invoke-virtual {v14, v2}, Lcom/android/server/am/psc/UidRecordInternal;->setIdle(Z)V

    .line 2480
    invoke-virtual {v14, v2}, Lcom/android/server/am/psc/UidRecordInternal;->setSetIdle(Z)V

    .line 2481
    invoke-virtual {v14, v4, v5}, Lcom/android/server/am/psc/UidRecordInternal;->setLastIdleTime(J)V

    .line 2482
    monitor-exit v15
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_77

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2483
    iget-object v15, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v2

    invoke-virtual {v15, v2, v14}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_93

    :catchall_77
    move-exception v0

    .line 2482
    :try_start_78
    monitor-exit v15
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_7d
    cmp-long v2, v11, v9

    if-eqz v2, :cond_85

    cmp-long v2, v11, v15

    if-lez v2, :cond_86

    :cond_85
    move-wide v11, v15

    .line 2488
    :cond_86
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v14}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v2

    if-eqz v2, :cond_93

    const/4 v13, 0x1

    :cond_93
    :goto_93
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    goto :goto_31

    .line 2494
    :cond_97
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_a0

    .line 2495
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 2500
    :cond_a0
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    if-eqz v1, :cond_d3

    .line 2501
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 2502
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_b0
    if-ge v8, v2, :cond_d3

    .line 2504
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2505
    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 2504
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v6

    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v14, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long/2addr v6, v14

    cmp-long v14, v6, v9

    if-lez v14, :cond_d0

    cmp-long v14, v11, v9

    if-eqz v14, :cond_cf

    cmp-long v14, v11, v6

    if-lez v14, :cond_d0

    :cond_cf
    move-wide v11, v6

    :cond_d0
    add-int/lit8 v8, v8, 0x1

    goto :goto_b0

    :cond_d3
    cmp-long v1, v11, v9

    if-lez v1, :cond_eb

    .line 2512
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v11, v1

    sub-long/2addr v11, v4

    if-eqz v13, :cond_e4

    .line 2514
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v1, v11, v12}, Lcom/android/server/am/OomAdjusterDebugLogger;->logScheduleUidIdle3(J)V

    .line 2516
    :cond_e4
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v3, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_eb
    :goto_eb
    return-void
.end method

.method public isBackupProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 3

    .line 1714
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    iget v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-interface {p0, v0}, Lcom/android/server/am/OomAdjuster$GlobalState;->getBackupTarget(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .registers 4

    .line 484
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster$Injector;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public isDeviceFullyAwake()Z
    .registers 1

    .line 1702
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    invoke-interface {p0}, Lcom/android/server/am/OomAdjuster$GlobalState;->isAwake()Z

    move-result p0

    return p0
.end method

.method public isHeavyWeightProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 2

    .line 1782
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    invoke-interface {p0}, Lcom/android/server/am/OomAdjuster$GlobalState;->getHeavyWeightProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object p0

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isHomeProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 2

    .line 1774
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    invoke-interface {p0}, Lcom/android/server/am/OomAdjuster$GlobalState;->getHomeProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object p0

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isLastMemoryLevelNormal()Z
    .registers 1

    .line 1726
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    invoke-interface {p0}, Lcom/android/server/am/OomAdjuster$GlobalState;->isLastMemoryLevelNormal()Z

    move-result p0

    return p0
.end method

.method public isPreviousProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 2

    .line 1798
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    invoke-interface {p0}, Lcom/android/server/am/OomAdjuster$GlobalState;->getPreviousProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object p0

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isReceivingBroadcast(Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 2

    .line 1734
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReceivers()Lcom/android/server/am/psc/ProcessReceiverRecordInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->isReceivingBroadcast()Z

    move-result p0

    return p0
.end method

.method public isScreenOnOrAnimatingLocked(Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 2

    .line 1709
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->isDeviceFullyAwake()Z

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isRunningRemoteAnimation()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isVisibleDozeUiProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 2

    .line 1790
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    invoke-interface {p0}, Lcom/android/server/am/OomAdjuster$GlobalState;->getShowingUiWhileDozingProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object p0

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$applyOomAdjLSP$2(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 4

    .line 2285
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2286
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 2287
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 2286
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 2288
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$new$1(Landroid/os/Message;)Z
    .registers 5

    .line 512
    iget v0, p1, Landroid/os/Message;->what:I

    .line 513
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 514
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/OomAdjuster;->setProcessGroup(IILjava/lang/String;)V

    .line 515
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/PhantomProcessList;->setProcessGroupForPhantomProcessOfApp(Lcom/android/server/am/ProcessRecord;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/psc/ProcessRecordInternal;JJ)V
    .registers 7

    cmp-long v0, p2, p4

    if-gtz v0, :cond_5

    return-void

    .line 2784
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2785
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setFollowupUpdateUptimeMs(J)V

    .line 2787
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/am/OomAdjuster;->scheduleFollowUpOomAdjusterUpdateLocked(JJ)V

    return-void
.end method

.method public final maybeUpdateLastTopTime(Lcom/android/server/am/psc/ProcessRecordInternal;J)V
    .registers 5

    .line 2447
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_10

    .line 2448
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result p0

    if-le p0, v0, :cond_10

    .line 2449
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setLastTopTime(J)V

    :cond_10
    return-void
.end method

.method public maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .registers 6

    .line 2384
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2385
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_18

    .line 2386
    :try_start_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/psc/ProcessRecordInternal;J)V

    .line 2387
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_1a

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2388
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_20

    :catchall_1a
    move-exception p0

    .line 2387
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2388
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final maybeUpdateUsageStatsLSP(Lcom/android/server/am/psc/ProcessRecordInternal;J)V
    .registers 15

    .line 2398
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_8

    goto/16 :goto_93

    :cond_8
    const/4 v0, 0x2

    .line 2401
    invoke-virtual {p1, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedCompatChange(I)Z

    move-result v0

    .line 2407
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_20

    .line 2409
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setFgInteractionTime(J)V

    goto :goto_54

    .line 2410
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v1

    const/4 v7, 0x4

    if-gt v1, v7, :cond_49

    .line 2411
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getFgInteractionTime()J

    move-result-wide v7

    cmp-long v1, v7, v4

    if-nez v1, :cond_34

    .line 2412
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setFgInteractionTime(J)V

    :cond_32
    move v6, v3

    goto :goto_54

    :cond_34
    if-eqz v0, :cond_3b

    .line 2416
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_3f

    .line 2417
    :cond_3b
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 2418
    :goto_3f
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getFgInteractionTime()J

    move-result-wide v9

    add-long/2addr v9, v7

    cmp-long v1, p2, v9

    if-lez v1, :cond_32

    goto :goto_54

    .line 2422
    :cond_49
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v1

    if-gt v1, v2, :cond_50

    goto :goto_51

    :cond_50
    move v6, v3

    .line 2423
    :goto_51
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setFgInteractionTime(J)V

    :goto_54
    if-eqz v0, :cond_5b

    .line 2426
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_5f

    .line 2427
    :cond_5b
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_5f
    if-eqz v6, :cond_8b

    .line 2429
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasReportedInteraction()Z

    move-result v7

    if-eqz v7, :cond_71

    .line 2430
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getInteractionEventTime()J

    move-result-wide v7

    sub-long v7, p2, v7

    cmp-long v0, v7, v0

    if-lez v0, :cond_8b

    .line 2431
    :cond_71
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setInteractionEventTime(J)V

    .line 2432
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getProcessPackageNames()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 2434
    :goto_7a
    array-length p3, p2

    if-ge v3, p3, :cond_8b

    .line 2435
    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v0, p2, v3

    iget v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {p3, v0, v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    .line 2440
    :cond_8b
    invoke-virtual {p1, v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasReportedInteraction(Z)V

    if-nez v6, :cond_93

    .line 2442
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setInteractionEventTime(J)V

    :cond_93
    :goto_93
    return-void
.end method

.method public abstract onProcessEndLocked(Lcom/android/server/am/psc/ProcessRecordInternal;)V
.end method

.method public abstract onProcessOomAdjChanged(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
.end method

.method public abstract onProcessStateChanged(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
.end method

.method public abstract performUpdateOomAdjLSP(I)V
.end method

.method public abstract performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
.end method

.method public abstract performUpdateOomAdjPendingTargetsLocked(I)V
.end method

.method public populateAllReachableProcessesLocked(Lcom/android/server/am/psc/ProcessRecordInternal;Ljava/util/ArrayList;)V
    .registers 3

    .line 2610
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2611
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p1

    .line 2612
    :try_start_9
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLSP(Ljava/util/ArrayList;)V

    .line 2613
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V
    .registers 19

    const/4 v1, 0x0

    .line 910
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 911
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    move-object v0, p0

    move v7, p1

    move-wide v1, p3

    move-wide v3, p5

    move-wide/from16 v5, p7

    move/from16 v8, p9

    .line 913
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLSP(JJJIZ)V

    .line 914
    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 916
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v2, :cond_21

    .line 919
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v2, "always-finish"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 922
    :cond_21
    invoke-virtual {p0, p2, p5, p6}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 924
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 925
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v2

    .line 926
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 927
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v6, v4, v7}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c

    :catchall_4a
    move-exception v0

    goto :goto_57

    .line 932
    :cond_4c
    :goto_4c
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 933
    monitor-exit v1

    return-void

    :goto_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_2b .. :try_end_58} :catchall_4a

    throw v0
.end method

.method public prewarmServicesIfNecessary()V
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 3

    if-eqz p1, :cond_12

    .line 811
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_12

    .line 813
    invoke-static {}, Lcom/android/server/am/psc/PlatformCompatCache;->getInstance()Lcom/android/server/am/psc/PlatformCompatCache;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/psc/PlatformCompatCache;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    :cond_12
    return-void
.end method

.method public reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2069
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    return-void
.end method

.method public abstract resetInternal()V
.end method

.method public final scheduleFollowUpOomAdjusterUpdateLocked(JJ)V
    .registers 11

    .line 2794
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    add-long v2, p1, v0

    iget-wide v4, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_d

    return-void

    :cond_d
    add-long v2, p3, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_15

    add-long p1, p3, v0

    .line 2807
    :cond_15
    iput-wide p1, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 2808
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 p3, 0x56

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public setAppAndChildProcessGroup(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 3

    .line 548
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAttachingProcessStatesLSP(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 10

    .line 2340
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    .line 2341
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v1

    .line 2344
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasForegroundActivities()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x13

    if-eqz v2, :cond_5a

    .line 2349
    :try_start_12
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->notifyTopProcChanged()V

    .line 2350
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->useFifoUiScheduling()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2351
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v2

    invoke-static {v2, v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    goto :goto_30

    :catch_23
    move-exception v2

    goto :goto_3c

    .line 2353
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v6

    const/16 v7, -0xa

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V

    .line 2355
    :goto_30
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->isScreenOnOrAnimatingLocked(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_34} :catch_23

    if-eqz v2, :cond_39

    const/4 v2, 0x3

    move v5, v4

    move v4, v2

    :cond_39
    const/16 v2, 0x1ff

    goto :goto_5c

    .line 2361
    :goto_3c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to pre-set top priority to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "OomAdjuster"

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    const/16 v2, 0x180

    .line 2365
    :goto_5c
    invoke-virtual {p1, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurrentSchedulingGroup(I)V

    .line 2366
    invoke-virtual {p1, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurProcState(I)V

    .line 2367
    invoke-virtual {p1, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawProcState(I)V

    .line 2368
    invoke-virtual {p1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurCapability(I)V

    .line 2369
    invoke-virtual {p1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->addCurCpuTimeReasons(I)V

    .line 2370
    invoke-virtual {p1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->addCurImplicitCpuTimeReasons(I)V

    const/4 v2, 0x0

    .line 2372
    invoke-virtual {p1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurAdj(I)V

    .line 2373
    invoke-virtual {p1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(I)V

    const/4 v3, 0x0

    .line 2374
    invoke-virtual {p1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setForcingToImportant(Ljava/lang/Object;)V

    .line 2375
    invoke-virtual {p1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasShownUi(Z)V

    .line 2377
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OomAdjuster;->onProcessStateChanged(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    .line 2378
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/OomAdjuster;->onProcessOomAdjChanged(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    return-void
.end method

.method public setIntermediateAdjLSP(Lcom/android/server/am/psc/ProcessRecordInternal;II)I
    .registers 4

    .line 1809
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(I)V

    .line 1811
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isHasAboveClient()Z

    move-result p0

    invoke-static {p0, p2}, Lcom/android/server/am/OomAdjuster;->applyBindAboveClientToAdj(ZI)I

    move-result p0

    .line 1812
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result p2

    if-le p0, p2, :cond_1e

    .line 1813
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result p0

    const/16 p2, 0xfa

    if-gt p0, p2, :cond_1e

    const/4 p3, 0x2

    .line 1819
    :cond_1e
    invoke-virtual {p1, p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurAdj(I)V

    return p3
.end method

.method public setIntermediateProcStateLSP(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 3

    .line 1851
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurProcState(I)V

    .line 1852
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawProcState(I)V

    return-void
.end method

.method public setIntermediateSchedGroupLSP(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 5

    .line 1859
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_17

    .line 1860
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->isDeviceFullyAwake()Z

    move-result p0

    if-nez p0, :cond_17

    .line 1861
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getScheduleLikeTopApp()Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    if-le p2, p0, :cond_17

    move p2, p0

    .line 1867
    :cond_17
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method public setProcessGroup(IILjava/lang/String;)V
    .registers 8

    .line 525
    sget p0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p1, p0, :cond_5

    goto :goto_3f

    :cond_5
    const-wide/16 v0, 0x40

    .line 529
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProcessGroup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v1, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 535
    :cond_2a
    :try_start_2a
    invoke-static {p1, p2}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_3a
    .catchall {:try_start_2a .. :try_end_2d} :catchall_33

    if-eqz p0, :cond_3f

    .line 542
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_33
    move-exception p1

    if-eqz p0, :cond_39

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 544
    :cond_39
    throw p1

    :catch_3a
    if-eqz p0, :cond_3f

    .line 542
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public setUidTempAllowlistStateLSP(IZ)V
    .registers 4

    .line 2522
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 2523
    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->isCurAllowListed()Z

    move-result v0

    if-eq v0, p2, :cond_28

    .line 2524
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/UidRecordInternal;->setCurAllowListed(Z)V

    .line 2525
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_17
    if-ltz p2, :cond_23

    .line 2526
    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_17

    :cond_23
    const/16 p1, 0xa

    .line 2528
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    :cond_28
    return-void
.end method

.method public final shouldKillExcessiveProcesses(J)Z
    .registers 9

    .line 1457
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getLastUserUnlockingUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_15

    .line 1461
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    xor-int/2addr p0, v3

    return p0

    .line 1463
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    add-long/2addr v0, v4

    cmp-long p0, v0, p1

    if-lez p0, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    return v3
.end method

.method public final updateAndTrimProcessLSP(JJJIZ)V
    .registers 43

    move-object/from16 v0, p0

    .line 1102
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v9

    .line 1103
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1105
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->shouldKillExcessiveProcesses(J)Z

    move-result v10

    if-nez v10, :cond_25

    .line 1107
    iget-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_25

    .line 1108
    const-string v2, "OomAdjuster"

    const-string v3, "Not killing cached processes"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1388

    add-long v2, p1, v2

    .line 1109
    iput-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    :cond_25
    const v2, 0x7fffffff

    if-eqz v10, :cond_30

    .line 1113
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    move v11, v3

    goto :goto_31

    :cond_30
    move v11, v2

    :goto_31
    if-eqz v10, :cond_38

    .line 1115
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v2, v11

    :cond_38
    move v12, v2

    .line 1123
    sget-boolean v13, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 1124
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    float-to-double v14, v2

    if-eqz v13, :cond_45

    .line 1125
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->getFreeSwapPercent()D

    move-result-wide v2

    goto :goto_47

    :cond_45
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_47
    const/4 v4, 0x1

    sub-int/2addr v1, v4

    const/16 v16, 0x0

    const/4 v5, 0x0

    move/from16 v6, v16

    move v7, v6

    move/from16 v17, v7

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    :goto_57
    if-ltz v1, :cond_204

    .line 1129
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v21

    check-cast v22, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 1130
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v21

    if-nez v21, :cond_1dd

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/psc/ProcessRecordInternal;->isProcessRunning()Z

    move-result v21

    if-eqz v21, :cond_1dd

    .line 1133
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCompletedAdjSeq()I

    move-result v4

    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v4, v8, :cond_96

    const/4 v8, 0x1

    move/from16 v33, v1

    move-wide/from16 v31, v2

    move-object/from16 v28, v9

    move/from16 v21, v13

    move-wide/from16 v29, v14

    move/from16 v14, v20

    move-object/from16 v1, v22

    const/4 v15, 0x1

    move-wide/from16 v3, p1

    move/from16 v2, p8

    move-object v9, v5

    move v13, v7

    move/from16 v20, v10

    move/from16 v7, p7

    move v10, v6

    move-wide/from16 v5, p3

    .line 1134
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/psc/ProcessRecordInternal;ZJJIZ)Z

    goto :goto_aa

    :cond_96
    move/from16 v33, v1

    move-wide/from16 v31, v2

    move-object/from16 v28, v9

    move/from16 v21, v13

    move-wide/from16 v29, v14

    move/from16 v14, v20

    move-object/from16 v1, v22

    const/4 v15, 0x1

    move-object v9, v5

    move v13, v7

    move/from16 v20, v10

    move v10, v6

    .line 1138
    :goto_aa
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isPendingFinishAttach()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 1142
    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    goto/16 :goto_1ef

    .line 1146
    :cond_b5
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;

    move-result-object v2

    .line 1148
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v3

    const/16 v4, 0x10

    const/16 v5, 0x11

    if-eq v3, v4, :cond_140

    if-eq v3, v5, :cond_140

    const/16 v4, 0x13

    if-eq v3, v4, :cond_d1

    .line 1201
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v3, v15

    iput v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    move-object/from16 v22, v1

    goto :goto_10d

    .line 1179
    :cond_d1
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v10, v3, :cond_114

    .line 1180
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastActivityTime()J

    move-result-wide v3

    cmp-long v3, v3, p5

    if-gez v3, :cond_114

    .line 1181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastActivityTime()J

    move-result-wide v6

    sub-long v6, p1, v6

    const-wide/16 v22, 0x3e8

    div-long v6, v6, v22

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x4

    const/16 v27, 0x1

    .line 1181
    const-string v24, "empty for too long"

    const/16 v25, 0xd

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v27}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :goto_10d
    move v6, v10

    :cond_10e
    :goto_10e
    move v7, v13

    move v8, v14

    move-object/from16 v3, v22

    goto/16 :goto_194

    :cond_114
    move-object/from16 v22, v1

    add-int/lit8 v6, v10, 0x1

    if-le v6, v11, :cond_138

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x3

    const/16 v27, 0x1

    const-string/jumbo v24, "too many empty"

    const/16 v25, 0xd

    invoke-virtual/range {v22 .. v27}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_10e

    :cond_138
    if-eqz v21, :cond_10e

    move v7, v13

    move v8, v14

    move-object/from16 v3, v22

    move-object v9, v3

    goto :goto_194

    :cond_140
    move-object/from16 v22, v1

    .line 1151
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v1, v15

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v1, v17, 0x1

    .line 1153
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionGroup()I

    move-result v8

    if-eqz v8, :cond_161

    .line 1155
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/psc/ProcessRecordInternal;->getApplicationUid()I

    move-result v3

    if-ne v13, v3, :cond_15c

    if-ne v14, v8, :cond_15c

    add-int/lit8 v19, v19, 0x1

    move v7, v13

    move v8, v14

    goto :goto_164

    .line 1162
    :cond_15c
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/psc/ProcessRecordInternal;->getApplicationUid()I

    move-result v7

    goto :goto_164

    :cond_161
    move/from16 v7, v16

    move v8, v7

    :goto_164
    sub-int v3, v1, v19

    if-le v3, v12, :cond_188

    .line 1169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x2

    const/16 v27, 0x1

    const-string/jumbo v24, "too many cached"

    const/16 v25, 0xd

    invoke-virtual/range {v22 .. v27}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    move-object/from16 v3, v22

    goto :goto_191

    :cond_188
    move-object/from16 v3, v22

    if-eqz v21, :cond_191

    move/from16 v17, v1

    move-object v9, v3

    :goto_18f
    move v6, v10

    goto :goto_194

    :cond_191
    :goto_191
    move/from16 v17, v1

    goto :goto_18f

    .line 1207
    :goto_194
    iget-boolean v1, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-eqz v1, :cond_1ad

    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->numberOfRunningServices()I

    move-result v1

    if-gtz v1, :cond_1ad

    .line 1208
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1ad

    .line 1216
    const-string/jumbo v1, "isolated not needed"

    const/16 v2, 0xd

    invoke-virtual {v3, v1, v2, v5, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_1cb

    .line 1218
    :cond_1ad
    iget-boolean v1, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz v1, :cond_1c8

    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->numberOfRunningServices()I

    move-result v1

    if-gtz v1, :cond_1c8

    .line 1219
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->hasActiveInstrumentation()Z

    move-result v1

    if-nez v1, :cond_1c8

    .line 1223
    const-string/jumbo v1, "sandbox not needed"

    const/16 v2, 0x1c

    const/16 v4, 0xd

    invoke-virtual {v3, v1, v4, v2, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_1cb

    .line 1227
    :cond_1c8
    invoke-virtual {v0, v3}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    .line 1230
    :goto_1cb
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1db

    .line 1231
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_1db

    add-int/lit8 v18, v18, 0x1

    :cond_1db
    move-object v5, v9

    goto :goto_1f3

    :cond_1dd
    move/from16 v33, v1

    move-wide/from16 v31, v2

    move-object/from16 v28, v9

    move/from16 v21, v13

    move-wide/from16 v29, v14

    move/from16 v14, v20

    move v15, v4

    move-object v9, v5

    move v13, v7

    move/from16 v20, v10

    move v10, v6

    :goto_1ef
    move-object v5, v9

    move v6, v10

    move v7, v13

    move v8, v14

    :goto_1f3
    add-int/lit8 v1, v33, -0x1

    move v4, v15

    move/from16 v10, v20

    move/from16 v13, v21

    move-object/from16 v9, v28

    move-wide/from16 v14, v29

    move-wide/from16 v2, v31

    move/from16 v20, v8

    goto/16 :goto_57

    :cond_204
    move-wide/from16 v31, v2

    move-object v9, v5

    move/from16 v20, v10

    move/from16 v21, v13

    move-wide/from16 v29, v14

    move v15, v4

    move v10, v6

    .line 1250
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_223

    .line 1251
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OomAdjuster$Injector;->batchSetOomAdj(Ljava/util/ArrayList;)V

    .line 1252
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_223
    if-eqz v21, :cond_23f

    if-eqz v20, :cond_23f

    move-wide/from16 v2, v31

    cmpg-double v1, v2, v29

    if-gez v1, :cond_241

    if-eqz v9, :cond_241

    .line 1255
    iget-wide v4, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_241

    .line 1261
    const-string/jumbo v1, "swap low and too many cached"

    const/4 v4, 0x2

    const/16 v5, 0xd

    invoke-virtual {v9, v1, v5, v4, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_241

    :cond_23f
    move-wide/from16 v2, v31

    .line 1267
    :cond_241
    :goto_241
    iput-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1269
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move-wide/from16 p7, p1

    move-object/from16 p3, v0

    move/from16 p5, v10

    move/from16 p4, v17

    move/from16 p6, v18

    invoke-virtual/range {p3 .. p8}, Lcom/android/server/am/AppProfiler;->updateLowMemStateLSP(IIIJ)V

    return-void
.end method

.method public updateAppFreezeStateLSP(Lcom/android/server/am/psc/ProcessRecordInternal;IZI)V
    .registers 12

    .line 2593
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->getFreezePolicy(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v2

    .line 2594
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreezeAdjSeq()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_d
    move v6, v0

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 2595
    :goto_11
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCallback:Lcom/android/server/am/OomAdjuster$Callback;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster$Callback;->onProcessFreezabilityChanged(Lcom/android/server/am/psc/ProcessRecordInternal;ZIZIZ)V

    return-void
.end method

.method public updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 1274
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isProcessRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1275
    iget-boolean v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getServices()Lcom/android/server/am/ProcessServiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_21

    .line 1276
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_24

    .line 1280
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public final updateAppUidRecLSP(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 4

    .line 1287
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getUidRecord()Lcom/android/server/am/psc/UidRecordInternal;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 1289
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isInstantApp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/UidRecordInternal;->setEphemeral(Z)V

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v1

    if-le v0, v1, :cond_1e

    .line 1291
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/UidRecordInternal;->setCurProcState(I)V

    .line 1293
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->hasForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 1294
    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/UidRecordInternal;->setHasForegroundServices(Z)V

    .line 1296
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result p1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/psc/UidRecordInternal;->setCurCapability(I)V

    :cond_38
    return-void
.end method

.method public final updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 563
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 565
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    .line 566
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_39

    .line 567
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 575
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 576
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->numberOfRunningServices()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2a
    if-ltz p1, :cond_39

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getRunningServiceAt(I)Lcom/android/server/am/psc/ServiceRecordInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/psc/ServiceRecordInternal;->updateKeepWarmLocked()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2a

    :cond_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_39
    return-void
.end method

.method public updateOomAdjFollowUpTargetsLocked()V
    .registers 12

    .line 872
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    .line 874
    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 875
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-wide v5, v2

    :goto_16
    if-ltz v4, :cond_54

    .line 876
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 877
    invoke-virtual {v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->getFollowupUpdateUptimeMs()J

    move-result-wide v8

    .line 879
    invoke-virtual {v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v10

    if-eqz v10, :cond_30

    .line 881
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_51

    :cond_30
    cmp-long v10, v8, v0

    if-gtz v10, :cond_42

    .line 884
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setFollowupUpdateUptimeMs(J)V

    .line 886
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_51

    :cond_42
    cmp-long v7, v8, v5

    if-gez v7, :cond_48

    move-wide v5, v8

    goto :goto_51

    :cond_48
    cmp-long v7, v8, v2

    if-nez v7, :cond_51

    .line 892
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_51
    :goto_51
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    :cond_54
    cmp-long v2, v5, v2

    if-eqz v2, :cond_5b

    .line 898
    invoke-virtual {p0, v5, v6, v0, v1}, Lcom/android/server/am/OomAdjuster;->scheduleFollowUpOomAdjusterUpdateLocked(JJ)V

    :cond_5b
    const/16 v0, 0x17

    .line 901
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void
.end method

.method public final updateOomAdjLSP(I)V
    .registers 4

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 598
    :try_start_a
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(I)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_15

    .line 602
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 603
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_15
    move-exception v0

    .line 602
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 603
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 604
    throw v0
.end method

.method public final updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 627
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v1, :cond_a

    goto :goto_25

    .line 632
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    const/4 v1, 0x0

    .line 638
    :try_start_12
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    .line 642
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 643
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return p1

    :catchall_1e
    move-exception p1

    .line 642
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 643
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 644
    throw p1

    .line 628
    :cond_25
    :goto_25
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    return v0
.end method

.method public updateOomAdjLocked(I)V
    .registers 3

    .line 586
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 587
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    .line 588
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 4

    .line 620
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 621
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :catchall_f
    move-exception p0

    .line 622
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public updateOomAdjPendingTargetsLocked(I)V
    .registers 4

    .line 845
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 846
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 847
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(I)V

    return-void

    .line 851
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1d

    .line 855
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-eqz v0, :cond_1e

    :goto_1d
    return-void

    :cond_1e
    const/4 v0, 0x1

    .line 861
    :try_start_1f
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 862
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(I)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2a

    .line 865
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_2a
    move-exception v0

    .line 865
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 867
    throw v0
.end method

.method public updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 1305
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    .line 1307
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 1308
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1311
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_19

    .line 1312
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 1314
    :cond_19
    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_1f
    if-ltz v5, :cond_1ef

    .line 1315
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v7

    .line 1316
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v8

    const/16 v9, 0x14

    if-eq v8, v9, :cond_1e0

    .line 1317
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v10

    if-ne v8, v10, :cond_51

    .line 1318
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetCapability()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result v10

    if-ne v8, v10, :cond_51

    .line 1319
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->isSetAllowListed()Z

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->isCurAllowListed()Z

    move-result v10

    if-ne v8, v10, :cond_51

    .line 1320
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getProcAdjChanged()Z

    move-result v8

    if-eqz v8, :cond_1e0

    .line 1322
    :cond_51
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v8

    .line 1332
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v10

    invoke-static {v10}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v10

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    if-eqz v10, :cond_d7

    .line 1333
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->isCurAllowListed()Z

    move-result v10

    if-nez v10, :cond_d7

    .line 1339
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v10

    invoke-static {v10}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v10

    if-eqz v10, :cond_86

    .line 1340
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->isSetAllowListed()Z

    move-result v10

    if-nez v10, :cond_86

    .line 1341
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getLastBackgroundTime()J

    move-result-wide v14

    cmp-long v10, v14, v11

    if-nez v10, :cond_be

    .line 1342
    :cond_86
    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/psc/UidRecordInternal;->setLastBackgroundTime(J)V

    if-eqz v8, :cond_94

    .line 1344
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v11

    invoke-virtual {v10, v11, v2, v3}, Lcom/android/server/am/OomAdjusterDebugLogger;->logSetLastBackgroundTime(IJ)V

    .line 1346
    :cond_94
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v10, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v12, 0x3a

    if-nez v11, :cond_a4

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 1347
    invoke-virtual {v10, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_be

    :cond_a4
    if-eqz v8, :cond_b3

    .line 1353
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v11

    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v14, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v10, v11, v14, v15}, Lcom/android/server/am/OomAdjusterDebugLogger;->logScheduleUidIdle1(IJ)V

    .line 1356
    :cond_b3
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v11, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v10, v12, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1360
    :cond_be
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->isIdle()Z

    move-result v10

    if-eqz v10, :cond_d5

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->isSetIdle()Z

    move-result v10

    if-nez v10, :cond_d5

    .line 1362
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v10

    if-eq v10, v9, :cond_d3

    .line 1364
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d3
    const/4 v10, 0x2

    goto :goto_fb

    :cond_d5
    move v10, v13

    goto :goto_fb

    .line 1368
    :cond_d7
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->isIdle()Z

    move-result v10

    if-eqz v10, :cond_e9

    .line 1370
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 1371
    invoke-virtual {v7, v13}, Lcom/android/server/am/psc/UidRecordInternal;->setIdle(Z)V

    const/4 v10, 0x4

    goto :goto_ea

    :cond_e9
    move v10, v13

    .line 1373
    :goto_ea
    invoke-virtual {v7, v11, v12}, Lcom/android/server/am/psc/UidRecordInternal;->setLastBackgroundTime(J)V

    .line 1374
    invoke-virtual {v7, v11, v12}, Lcom/android/server/am/psc/UidRecordInternal;->setLastIdleTime(J)V

    if-eqz v8, :cond_fb

    .line 1376
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/OomAdjusterDebugLogger;->logClearLastBackgroundTime(I)V

    .line 1379
    :cond_fb
    :goto_fb
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v11

    const/16 v12, 0xb

    if-le v11, v12, :cond_105

    move v11, v6

    goto :goto_106

    :cond_105
    move v11, v13

    .line 1381
    :goto_106
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v14

    if-le v14, v12, :cond_10e

    move v12, v6

    goto :goto_10f

    :cond_10e
    move v12, v13

    :goto_10f
    if-ne v11, v12, :cond_117

    .line 1384
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v11

    if-ne v11, v9, :cond_11f

    :cond_117
    if-eqz v12, :cond_11c

    const/16 v9, 0x8

    goto :goto_11e

    :cond_11c
    const/16 v9, 0x10

    :goto_11e
    or-int/2addr v10, v9

    .line 1388
    :cond_11f
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetCapability()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result v11

    if-eq v9, v11, :cond_12b

    or-int/lit8 v10, v10, 0x20

    .line 1391
    :cond_12b
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v11

    const/high16 v12, -0x80000000

    if-eq v9, v11, :cond_138

    or-int/2addr v10, v12

    .line 1394
    :cond_138
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getProcAdjChanged()Z

    move-result v9

    if-eqz v9, :cond_140

    or-int/lit8 v10, v10, 0x40

    .line 1397
    :cond_140
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v9

    .line 1398
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetCapability()I

    move-result v11

    .line 1399
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/server/am/psc/UidRecordInternal;->setSetProcState(I)V

    .line 1400
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/server/am/psc/UidRecordInternal;->setSetCapability(I)V

    .line 1401
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->isCurAllowListed()Z

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/server/am/psc/UidRecordInternal;->setSetAllowListed(Z)V

    .line 1402
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->isIdle()Z

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/server/am/psc/UidRecordInternal;->setSetIdle(Z)V

    .line 1403
    invoke-virtual {v7, v13}, Lcom/android/server/am/psc/UidRecordInternal;->setProcAdjChanged(Z)V

    if-eqz v8, :cond_18e

    .line 1405
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v8

    if-ne v8, v9, :cond_175

    .line 1406
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetCapability()I

    move-result v8

    if-eq v8, v11, :cond_18e

    .line 1408
    :cond_175
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->isSetAllowListed()Z

    move-result v20

    .line 1411
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v15

    .line 1412
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v16

    .line 1413
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetCapability()I

    move-result v18

    move/from16 v17, v9

    move/from16 v19, v11

    .line 1411
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/OomAdjusterDebugLogger;->logUidStateChanged(IIIIII)V

    :cond_18e
    and-int v8, v10, v12

    if-nez v8, :cond_196

    and-int/lit8 v9, v10, 0x20

    if-eqz v9, :cond_1a5

    .line 1418
    :cond_196
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1419
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v11

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v12

    .line 1418
    invoke-virtual {v9, v11, v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    :cond_1a5
    if-eqz v10, :cond_1ad

    .line 1422
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, -0x1

    invoke-virtual {v9, v7, v11, v10}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    :cond_1ad
    if-nez v8, :cond_1b3

    and-int/lit8 v9, v10, 0x20

    if-eqz v9, :cond_1c4

    .line 1426
    :cond_1b3
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v10

    .line 1427
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v11

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result v12

    .line 1426
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    :cond_1c4
    if-eqz v8, :cond_1d3

    .line 1430
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 1432
    :cond_1d3
    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getHasForegroundServices()Z

    move-result v8

    if-eqz v8, :cond_1e0

    .line 1433
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    .line 1437
    :cond_1e0
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v7}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v7

    invoke-virtual {v8, v7, v2, v3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1f

    .line 1439
    :cond_1ef
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_1f8

    .line 1440
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 1443
    :cond_1f8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_215

    sub-int/2addr v1, v6

    :goto_1ff
    if-ltz v1, :cond_215

    .line 1448
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/psc/UidRecordInternal;

    invoke-virtual {v3}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1ff

    :cond_215
    return-void
.end method

.method public useTopSchedGroupForTopProcess()Z
    .registers 3

    .line 1750
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    invoke-interface {v0}, Lcom/android/server/am/OomAdjuster$GlobalState;->isUnlocking()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1754
    :cond_a
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    invoke-interface {p0}, Lcom/android/server/am/OomAdjuster$GlobalState;->hasExpandedNotificationShade()Z

    move-result p0

    if-eqz p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x1

    return p0
.end method
