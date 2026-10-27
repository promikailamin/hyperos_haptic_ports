.class Lcom/android/server/tare/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Agent$AgentHandler;,
        Lcom/android/server/tare/Agent$ActionAffordabilityNote;,
        Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;,
        Lcom/android/server/tare/Agent$Package;,
        Lcom/android/server/tare/Agent$OngoingEventUpdater;,
        Lcom/android/server/tare/Agent$OngoingEvent;,
        Lcom/android/server/tare/Agent$TrendCalculator;,
        Lcom/android/server/tare/Agent$TotalDeltaCalculator;
    }
.end annotation


# static fields
.field private static final ALARM_TAG_AFFORDABILITY_CHECK:Ljava/lang/String; = "*tare.affordability_check*"

.field private static final DEBUG:Z

.field private static final MSG_CHECK_ALL_AFFORDABILITY:I = 0x0

.field private static final MSG_CHECK_INDIVIDUAL_AFFORDABILITY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionAffordabilityNotes:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/Agent$ActionAffordabilityNote;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAnalyst:Lcom/android/server/tare/Analyst;

.field private final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field private final mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

.field private final mCurrentOngoingEvents:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Agent$OngoingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mIrs:Lcom/android/server/tare/InternalResourceService;

.field private final mLock:Ljava/lang/Object;

.field private final mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

.field private final mScribe:Lcom/android/server/tare/Scribe;

.field private final mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

.field private final mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionAffordabilityNotes(Lcom/android/server/tare/Agent;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/tare/Agent;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIrs(Lcom/android/server/tare/Agent;)Lcom/android/server/tare/InternalResourceService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tare/Agent;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetActualDeltaLocked(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/tare/Agent;->getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAffordableLocked(Lcom/android/server/tare/Agent;JJJ)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnoteOngoingEventLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JZ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAnythingChangedLocked(Lcom/android/server/tare/Agent;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tare/Agent;->onAnythingChangedLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleBalanceCheckLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopOngoingActionLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JJZZ)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/tare/Agent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    .line 69
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_29

    const/4 v1, 0x3

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    sput-boolean v0, Lcom/android/server/tare/Agent;->DEBUG:Z

    .line 69
    return-void
.end method

.method constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Scribe;Lcom/android/server/tare/Analyst;)V
    .registers 8
    .param p1, "irs"    # Lcom/android/server/tare/InternalResourceService;
    .param p2, "scribe"    # Lcom/android/server/tare/Scribe;
    .param p3, "analyst"    # Lcom/android/server/tare/Analyst;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 94
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 144
    new-instance v0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;-><init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$TotalDeltaCalculator-IA;)V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    .line 865
    new-instance v0, Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-direct {v0}, Lcom/android/server/tare/Agent$TrendCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    .line 984
    new-instance v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/Agent$OngoingEventUpdater;-><init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEventUpdater-IA;)V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    .line 115
    invoke-virtual {p1}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mLock:Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 117
    iput-object p2, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 118
    iput-object p3, p0, Lcom/android/server/tare/Agent;->mAnalyst:Lcom/android/server/tare/Analyst;

    .line 119
    new-instance v0, Lcom/android/server/tare/Agent$AgentHandler;

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tare/TareHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/tare/Agent$AgentHandler;-><init>(Lcom/android/server/tare/Agent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    .line 120
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 121
    new-instance v0, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    .line 122
    invoke-virtual {p1}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/tare/TareHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;-><init>(Lcom/android/server/tare/Agent;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue-IA;)V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    .line 123
    return-void
.end method

.method private getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;
    .registers 24
    .param p1, "ongoingEvent"    # Lcom/android/server/tare/Agent$OngoingEvent;
    .param p2, "ledger"    # Lcom/android/server/tare/Ledger;
    .param p3, "nowElapsed"    # J
    .param p5, "now"    # J

    .line 430
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    .line 431
    .local v1, "startElapsed":J
    sub-long v3, p3, v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 432
    .local v3, "durationSecs":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v5

    mul-long/2addr v5, v3

    .line 433
    .local v5, "computedDelta":J
    iget-object v7, v0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    if-nez v7, :cond_1d

    .line 434
    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Cost;

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v8

    mul-long/2addr v8, v3

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    .line 434
    return-object v7

    .line 437
    :cond_1d
    iget v7, v0, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    move-object/from16 v8, p2

    move-wide/from16 v9, p5

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/server/tare/Ledger;->get24HourSum(IJ)J

    move-result-wide v11

    .line 438
    .local v11, "rewardSum":J
    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Cost;

    iget-object v13, v0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    iget-wide v13, v13, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    sub-long/2addr v13, v11

    .line 440
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 439
    move-wide v15, v1

    .end local v1    # "startElapsed":J
    .local v15, "startElapsed":J
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-direct {v7, v0, v1, v13, v14}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    .line 438
    return-object v7
.end method

.method private isAffordableLocked(JJJ)Z
    .registers 9
    .param p1, "balance"    # J
    .param p3, "price"    # J
    .param p5, "ctp"    # J

    .line 166
    cmp-long v0, p1, p3

    if-ltz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v0

    cmp-long v0, v0, p5

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V
    .registers 24
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "startElapsed"    # J
    .param p7, "updateBalanceCheck"    # Z

    .line 220
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v3, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 222
    return-void

    .line 225
    :cond_13
    iget-object v3, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 226
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArrayMap;

    .line 227
    .local v3, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    if-nez v3, :cond_2a

    .line 228
    new-instance v4, Landroid/util/SparseArrayMap;

    invoke-direct {v4}, Landroid/util/SparseArrayMap;-><init>()V

    move-object v3, v4

    .line 229
    iget-object v4, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v11, v3

    goto :goto_2b

    .line 227
    :cond_2a
    move-object v11, v3

    .line 231
    .end local v3    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v11, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    :goto_2b
    invoke-virtual {v11, v9, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/server/tare/Agent$OngoingEvent;

    .line 233
    .local v12, "ongoingEvent":Lcom/android/server/tare/Agent$OngoingEvent;
    iget-object v3, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v13

    .line 234
    .local v13, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    invoke-static/range {p3 .. p3}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v14

    .line 235
    .local v14, "eventType":I
    sparse-switch v14, :sswitch_data_9e

    .line 261
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported event type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 237
    :sswitch_58
    nop

    .line 238
    invoke-virtual {v13, v9, v1, v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v15

    .line 240
    .local v15, "actionCost":Lcom/android/server/tare/EconomicPolicy$Cost;
    if-nez v12, :cond_71

    .line 241
    new-instance v8, Lcom/android/server/tare/Agent$OngoingEvent;

    move-object v3, v8

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object v0, v8

    move-object v8, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/tare/Agent$OngoingEvent;-><init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Cost;)V

    invoke-virtual {v11, v9, v10, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_97

    .line 244
    :cond_71
    iget v0, v12, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v12, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    .line 246
    goto :goto_97

    .line 249
    .end local v15    # "actionCost":Lcom/android/server/tare/EconomicPolicy$Cost;
    :sswitch_78
    invoke-virtual {v13, v9}, Lcom/android/server/tare/CompleteEconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v0

    .line 250
    .local v0, "reward":Lcom/android/server/tare/EconomicPolicy$Reward;
    if-eqz v0, :cond_97

    .line 251
    if-nez v12, :cond_91

    .line 252
    new-instance v15, Lcom/android/server/tare/Agent$OngoingEvent;

    move-object v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/tare/Agent$OngoingEvent;-><init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Reward;)V

    invoke-virtual {v11, v9, v10, v15}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_97

    .line 255
    :cond_91
    iget v3, v12, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v12, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    .line 264
    .end local v0    # "reward":Lcom/android/server/tare/EconomicPolicy$Reward;
    :cond_97
    :goto_97
    if-eqz p7, :cond_9c

    .line 265
    invoke-direct/range {p0 .. p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    .line 267
    :cond_9c
    return-void

    nop

    :sswitch_data_9e
    .sparse-switch
        -0x80000000 -> :sswitch_78
        0x40000000 -> :sswitch_58
    .end sparse-switch
.end method

.method private onAnythingChangedLocked(Z)V
    .registers 27
    .param p1, "updateOngoingEvents"    # Z

    .line 317
    move-object/from16 v7, p0

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 318
    .local v8, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 319
    .local v10, "nowElapsed":J
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v12

    .line 321
    .local v12, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v13, v0

    .local v13, "uIdx":I
    :goto_19
    if-ltz v13, :cond_6b

    .line 322
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v14

    .line 324
    .local v14, "userId":I
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v15, v0

    .local v15, "pIdx":I
    :goto_2a
    if-ltz v15, :cond_66

    .line 326
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 328
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 329
    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/util/SparseArrayMap;

    .line 330
    .local v6, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    if-eqz v6, :cond_5d

    .line 331
    if-eqz p1, :cond_55

    .line 332
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    move v1, v14

    move-object v2, v5

    move-wide v3, v8

    move-wide/from16 v16, v8

    move-object v8, v5

    move-object v9, v6

    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v8, "pkgName":Ljava/lang/String;
    .local v9, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v16, "now":J
    move-wide v5, v10

    invoke-static/range {v0 .. v6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->-$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V

    .line 333
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-virtual {v9, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_59

    .line 331
    .end local v9    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .end local v16    # "now":J
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v8, "now":J
    :cond_55
    move-wide/from16 v16, v8

    move-object v8, v5

    move-object v9, v6

    .line 335
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v8, "pkgName":Ljava/lang/String;
    .restart local v9    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .restart local v16    # "now":J
    :goto_59
    invoke-direct {v7, v14, v8}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    goto :goto_61

    .line 330
    .end local v9    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .end local v16    # "now":J
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v8, "now":J
    :cond_5d
    move-wide/from16 v16, v8

    move-object v8, v5

    move-object v9, v6

    .line 325
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .end local v8    # "now":J
    .restart local v16    # "now":J
    :goto_61
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v8, v16

    goto :goto_2a

    .line 324
    .end local v16    # "now":J
    .restart local v8    # "now":J
    :cond_66
    move-wide/from16 v16, v8

    .line 321
    .end local v8    # "now":J
    .end local v14    # "userId":I
    .end local v15    # "pIdx":I
    .restart local v16    # "now":J
    add-int/lit8 v13, v13, -0x1

    goto :goto_19

    .end local v16    # "now":J
    .restart local v8    # "now":J
    :cond_6b
    move-wide/from16 v16, v8

    .line 339
    .end local v8    # "now":J
    .end local v13    # "uIdx":I
    .restart local v16    # "now":J
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    .local v8, "uIdx":I
    :goto_76
    if-ltz v8, :cond_f0

    .line 340
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v9

    .line 342
    .local v9, "userId":I
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v13, v0

    .local v13, "pIdx":I
    :goto_87
    if-ltz v13, :cond_ed

    .line 344
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, v13}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 346
    .local v14, "pkgName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 347
    invoke-virtual {v0, v8, v13}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/util/ArraySet;

    .line 349
    .local v15, "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    if-eqz v15, :cond_ea

    .line 350
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 351
    .local v5, "size":I
    invoke-virtual {v7, v9, v14}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v18

    .line 352
    .local v18, "newBalance":J
    const/4 v0, 0x0

    move v6, v0

    .local v6, "n":I
    :goto_a7
    if-ge v6, v5, :cond_e6

    .line 353
    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 354
    .local v3, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    invoke-virtual {v3, v12, v9, v14}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    .line 355
    nop

    .line 357
    invoke-static {v3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v20

    invoke-static {v3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v22

    .line 356
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v24, v3

    .end local v3    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .local v24, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    move-wide/from16 v3, v20

    move/from16 v20, v5

    move/from16 v21, v6

    .end local v5    # "size":I
    .end local v6    # "n":I
    .local v20, "size":I
    .local v21, "n":I
    move-wide/from16 v5, v22

    invoke-direct/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    .line 358
    .local v0, "isAffordable":Z
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_df

    .line 359
    move-object/from16 v1, v24

    .end local v24    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .local v1, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 360
    iget-object v2, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2, v9, v14, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    goto :goto_e1

    .line 358
    .end local v1    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .restart local v24    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    :cond_df
    move-object/from16 v1, v24

    .line 352
    .end local v0    # "isAffordable":Z
    .end local v24    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    :goto_e1
    add-int/lit8 v6, v21, 0x1

    move/from16 v5, v20

    .end local v21    # "n":I
    .restart local v6    # "n":I
    goto :goto_a7

    .end local v20    # "size":I
    .restart local v5    # "size":I
    :cond_e6
    move/from16 v20, v5

    move/from16 v21, v6

    .line 343
    .end local v5    # "size":I
    .end local v6    # "n":I
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .end local v18    # "newBalance":J
    :cond_ea
    add-int/lit8 v13, v13, -0x1

    goto :goto_87

    .line 339
    .end local v9    # "userId":I
    .end local v13    # "pIdx":I
    :cond_ed
    add-int/lit8 v8, v8, -0x1

    goto :goto_76

    .line 366
    .end local v8    # "uIdx":I
    :cond_f0
    return-void
.end method

.method private reclaimAssetsLocked(ILjava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 728
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v0

    .line 729
    .local v0, "ledger":Lcom/android/server/tare/Ledger;
    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1a

    .line 730
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    .line 732
    :cond_1a
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tare/Scribe;->discardLedgerLocked(ILjava/lang/String;)V

    .line 733
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 734
    return-void
.end method

.method private reclaimAssetsLocked(ILjava/util/List;)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 744
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 745
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/server/tare/Agent;->reclaimAssetsLocked(ILjava/lang/String;)V

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 747
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private scheduleBalanceCheckLocked(ILjava/lang/String;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 870
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 871
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArrayMap;

    .line 872
    .local v0, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    if-nez v0, :cond_15

    .line 874
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v2, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v2, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 875
    return-void

    .line 877
    :cond_15
    iget-object v3, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 878
    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v6

    iget-object v1, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 879
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/util/ArraySet;

    .line 877
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/tare/Agent$TrendCalculator;->reset(JJLandroid/util/ArraySet;)V

    .line 880
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 881
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v1}, Lcom/android/server/tare/Agent$TrendCalculator;->getTimeToCrossLowerThresholdMs()J

    move-result-wide v1

    .line 882
    .local v1, "lowerTimeMs":J
    iget-object v3, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v3}, Lcom/android/server/tare/Agent$TrendCalculator;->getTimeToCrossUpperThresholdMs()J

    move-result-wide v3

    .line 884
    .local v3, "upperTimeMs":J
    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-nez v7, :cond_55

    .line 885
    cmp-long v5, v3, v5

    if-nez v5, :cond_53

    .line 887
    iget-object v5, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v6, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v6, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 888
    return-void

    .line 890
    :cond_53
    move-wide v5, v3

    .local v5, "timeToThresholdMs":J
    goto :goto_5f

    .line 892
    .end local v5    # "timeToThresholdMs":J
    :cond_55
    cmp-long v5, v3, v5

    if-nez v5, :cond_5b

    .line 893
    move-wide v5, v1

    goto :goto_5f

    :cond_5b
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 895
    .restart local v5    # "timeToThresholdMs":J
    :goto_5f
    iget-object v7, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v8, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v8, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    .line 896
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long/2addr v9, v5

    .line 895
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    .line 897
    return-void
.end method

.method private shouldGiveCredits(Landroid/content/pm/PackageInfo;)Z
    .registers 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 610
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 612
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasCode()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1e

    .line 615
    :cond_b
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 617
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 613
    .end local v1    # "userId":I
    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    return v1
.end method

.method private stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V
    .registers 39
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "nowElapsed"    # J
    .param p7, "now"    # J
    .param p9, "updateBalanceCheck"    # Z
    .param p10, "notifyOnAffordabilityChange"    # Z

    .line 384
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v15, p3

    move-object/from16 v13, p4

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 386
    return-void

    .line 389
    :cond_13
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v21

    .line 391
    .local v21, "ledger":Lcom/android/server/tare/Ledger;
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 392
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/SparseArrayMap;

    .line 393
    .local v14, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    if-nez v14, :cond_41

    .line 396
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ongoing transactions for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 399
    :cond_41
    invoke-virtual {v14, v15, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/tare/Agent$OngoingEvent;

    .line 400
    .local v11, "ongoingEvent":Lcom/android/server/tare/Agent$OngoingEvent;
    if-nez v11, :cond_97

    .line 403
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nonexistent ongoing transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    invoke-static/range {p3 .. p3}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v13, :cond_64

    const-string v2, ""

    goto :goto_77

    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 408
    :cond_97
    iget v0, v11, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v11, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    .line 409
    iget v0, v11, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    if-gtz v0, :cond_e6

    .line 410
    iget-wide v5, v11, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    .line 411
    .local v5, "startElapsed":J
    sub-long v0, p5, v5

    sub-long v22, p7, v0

    .line 412
    .local v22, "startTime":J
    nop

    .line 413
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v21

    move-wide/from16 v3, p5

    move-wide/from16 v24, v5

    .end local v5    # "startElapsed":J
    .local v24, "startElapsed":J
    move-wide/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/tare/Agent;->getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v6

    .line 414
    .local v6, "actualDelta":Lcom/android/server/tare/EconomicPolicy$Cost;
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v0, v6, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget-wide v2, v6, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    move-object v10, v4

    move-object/from16 v26, v11

    .end local v11    # "ongoingEvent":Lcom/android/server/tare/Agent$OngoingEvent;
    .local v26, "ongoingEvent":Lcom/android/server/tare/Agent$OngoingEvent;
    move-wide/from16 v11, v22

    move-object/from16 v27, v6

    move-object v5, v13

    move-object v6, v14

    .end local v14    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v6, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v27, "actualDelta":Lcom/android/server/tare/EconomicPolicy$Cost;
    move-wide/from16 v13, p7

    move v7, v15

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    invoke-direct/range {v10 .. v20}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move-object v10, v5

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    .line 419
    invoke-virtual {v6, v7, v10}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_eb

    .line 409
    .end local v6    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .end local v22    # "startTime":J
    .end local v24    # "startElapsed":J
    .end local v26    # "ongoingEvent":Lcom/android/server/tare/Agent$OngoingEvent;
    .end local v27    # "actualDelta":Lcom/android/server/tare/EconomicPolicy$Cost;
    .restart local v11    # "ongoingEvent":Lcom/android/server/tare/Agent$OngoingEvent;
    .restart local v14    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    :cond_e6
    move-object/from16 v26, v11

    move-object v10, v13

    move-object v6, v14

    move v7, v15

    .line 421
    .end local v11    # "ongoingEvent":Lcom/android/server/tare/Agent$OngoingEvent;
    .end local v14    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .restart local v6    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .restart local v26    # "ongoingEvent":Lcom/android/server/tare/Agent$OngoingEvent;
    :goto_eb
    if-eqz p9, :cond_f0

    .line 422
    invoke-direct/range {p0 .. p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    .line 424
    :cond_f0
    return-void
.end method


# virtual methods
.method distributeBasicIncomeLocked(I)V
    .registers 33
    .param p1, "batteryLevel"    # I

    .line 626
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages()Ljava/util/List;

    move-result-object v7

    .line 628
    .local v7, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v19

    .line 629
    .local v19, "now":J
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_81

    .line 630
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 631
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {v6, v4}, Lcom/android/server/tare/Agent;->shouldGiveCredits(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 632
    move v12, v5

    goto/16 :goto_7e

    .line 634
    :cond_24
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 635
    .local v3, "userId":I
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 636
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v21

    .line 637
    .local v21, "ledger":Lcom/android/server/tare/Ledger;
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v22

    .line 638
    .local v22, "minBalance":J
    move/from16 v1, p1

    int-to-double v8, v1

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double v24, v8, v10

    .line 640
    .local v24, "perc":D
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v8

    sub-long v14, v22, v8

    .line 641
    .local v14, "shortfall":J
    const-wide/16 v8, 0x0

    cmp-long v0, v14, v8

    if-lez v0, :cond_78

    .line 642
    new-instance v26, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v13, 0x0

    const/4 v0, 0x0

    long-to-double v8, v14

    mul-double v8, v8, v24

    double-to-long v11, v8

    const-wide/16 v17, 0x0

    move-object/from16 v8, v26

    move-wide/from16 v9, v19

    move-wide/from16 v27, v11

    move-wide/from16 v11, v19

    move-wide/from16 v29, v14

    .end local v14    # "shortfall":J
    .local v29, "shortfall":J
    move-object v14, v0

    move-wide/from16 v15, v27

    invoke-direct/range {v8 .. v18}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move v1, v3

    move-object v9, v2

    .end local v2    # "pkgName":Ljava/lang/String;
    .local v9, "pkgName":Ljava/lang/String;
    move v10, v3

    .end local v3    # "userId":I
    .local v10, "userId":I
    move-object/from16 v3, v21

    move-object v11, v4

    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .local v11, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v4, v26

    move v12, v5

    .end local v5    # "i":I
    .local v12, "i":I
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_7e

    .line 641
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "userId":I
    .end local v11    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "i":I
    .end local v29    # "shortfall":J
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "userId":I
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "i":I
    .restart local v14    # "shortfall":J
    :cond_78
    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move v12, v5

    move-wide/from16 v29, v14

    .line 629
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "userId":I
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "i":I
    .end local v14    # "shortfall":J
    .end local v21    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v22    # "minBalance":J
    .end local v24    # "perc":D
    .restart local v12    # "i":I
    :goto_7e
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "i":I
    .restart local v5    # "i":I
    goto :goto_e

    .line 647
    .end local v5    # "i":I
    :cond_81
    return-void
.end method

.method dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 21
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 1228
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1229
    iget-object v2, v0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1232
    const-string v2, "Ongoing events:"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1233
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1234
    const/4 v2, 0x0

    .line 1235
    .local v2, "printedEvents":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1236
    .local v3, "nowElapsed":J
    iget-object v5, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "u":I
    :goto_24
    if-ltz v5, :cond_f6

    .line 1237
    iget-object v6, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v6

    .line 1238
    .local v6, "userId":I
    iget-object v7, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "p":I
    :goto_34
    if-ltz v7, :cond_f0

    .line 1239
    iget-object v8, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v5, v7}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1240
    .local v8, "pkgName":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 1241
    invoke-virtual {v9, v6, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArrayMap;

    .line 1243
    .local v9, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    const/4 v10, 0x0

    .line 1245
    .local v10, "printedApp":Z
    invoke-virtual {v9}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .local v11, "e":I
    :goto_4d
    if-ltz v11, :cond_e2

    .line 1246
    invoke-virtual {v9, v11}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v12

    .line 1247
    .local v12, "eventId":I
    invoke-virtual {v9, v12}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .local v13, "t":I
    :goto_59
    if-ltz v13, :cond_d9

    .line 1248
    if-nez v10, :cond_68

    .line 1249
    const/4 v10, 0x1

    .line 1250
    invoke-static {v6, v8}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1253
    :cond_68
    const/4 v2, 0x1

    .line 1255
    invoke-virtual {v9, v11, v13}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/tare/Agent$OngoingEvent;

    .line 1257
    .local v14, "ongoingEvent":Lcom/android/server/tare/Agent$OngoingEvent;
    iget v15, v14, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    invoke-static {v15}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1258
    iget-object v15, v14, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    if-eqz v15, :cond_8b

    .line 1259
    const-string v15, "("

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1260
    iget-object v15, v14, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1261
    const-string v15, ")"

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1263
    :cond_8b
    const-string v15, " runtime="

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    move-object v15, v8

    move-object/from16 v16, v9

    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v15, "pkgName":Ljava/lang/String;
    .local v16, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    iget-wide v8, v14, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    sub-long v8, v3, v8

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1265
    const-string v8, " delta/sec="

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v14}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v14}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v8

    .line 1268
    .local v8, "ctp":J
    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-eqz v17, :cond_c4

    .line 1269
    const-string v0, " ctp/sec="

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v14}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1272
    :cond_c4
    const-string v0, " refCount="

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1273
    iget v0, v14, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1274
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1247
    .end local v8    # "ctp":J
    .end local v14    # "ongoingEvent":Lcom/android/server/tare/Agent$OngoingEvent;
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    move-object v8, v15

    move-object/from16 v9, v16

    goto :goto_59

    .end local v15    # "pkgName":Ljava/lang/String;
    .end local v16    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v8, "pkgName":Ljava/lang/String;
    .restart local v9    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    :cond_d9
    move-object v15, v8

    move-object/from16 v16, v9

    .line 1245
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .end local v12    # "eventId":I
    .end local v13    # "t":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    .restart local v16    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_4d

    .end local v15    # "pkgName":Ljava/lang/String;
    .end local v16    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v9    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    :cond_e2
    move-object v15, v8

    move-object/from16 v16, v9

    .line 1278
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .end local v11    # "e":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    .restart local v16    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    if-eqz v10, :cond_ea

    .line 1279
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1238
    .end local v10    # "printedApp":Z
    .end local v15    # "pkgName":Ljava/lang/String;
    .end local v16    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    :cond_ea
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_34

    .line 1236
    .end local v6    # "userId":I
    .end local v7    # "p":I
    :cond_f0
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_24

    .line 1283
    .end local v5    # "u":I
    :cond_f6
    if-nez v2, :cond_fd

    .line 1284
    const-string v0, "N/A"

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    :cond_fd
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1287
    return-void
.end method

.method getBalanceLocked(ILjava/lang/String;)J
    .registers 20
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 150
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 151
    .local v3, "ledger":Lcom/android/server/tare/Ledger;
    invoke-virtual {v3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v10

    .line 152
    .local v10, "balance":J
    iget-object v4, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 153
    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/util/SparseArrayMap;

    .line 154
    .local v12, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    if-eqz v12, :cond_37

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 156
    .local v13, "nowElapsed":J
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v15

    .line 157
    .local v15, "now":J
    iget-object v4, v0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    move-object v5, v3

    move-wide v6, v13

    move-wide v8, v15

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->reset(Lcom/android/server/tare/Ledger;JJ)V

    .line 158
    iget-object v4, v0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-virtual {v12, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 159
    iget-object v4, v0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-static {v4}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->-$$Nest$fgetmTotal(Lcom/android/server/tare/Agent$TotalDeltaCalculator;)J

    move-result-wide v4

    add-long/2addr v10, v4

    .line 161
    .end local v13    # "nowElapsed":J
    .end local v15    # "now":J
    :cond_37
    return-wide v10
.end method

.method grantBirthrightLocked(ILjava/lang/String;)V
    .registers 26
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 687
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v9

    .line 688
    .local v9, "ledger":Lcom/android/server/tare/Ledger;
    invoke-virtual {v9}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    .line 689
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " had credits as soon as it was installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void

    .line 694
    :cond_35
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v21

    .line 696
    .local v21, "now":J
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 698
    invoke-virtual {v0, v7, v8}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    move-object v10, v4

    move-wide/from16 v11, v21

    move-wide/from16 v13, v21

    invoke-direct/range {v10 .. v20}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    .line 696
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    .line 699
    return-void
.end method

.method grantBirthrightsLocked()V
    .registers 6

    .line 652
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 653
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 654
    .local v0, "userManagerInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 655
    .local v1, "userIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_18

    aget v4, v1, v3

    .line 656
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/tare/Agent;->grantBirthrightsLocked(I)V

    .line 655
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 658
    :cond_18
    return-void
.end method

.method grantBirthrightsLocked(I)V
    .registers 26
    .param p1, "userId"    # I

    .line 662
    move-object/from16 v6, p0

    move/from16 v7, p1

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v7}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    .line 663
    .local v8, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v20

    .line 665
    .local v20, "now":J
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_80

    .line 666
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 667
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {v6, v4}, Lcom/android/server/tare/Agent;->shouldGiveCredits(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 668
    move v12, v5

    goto :goto_7d

    .line 670
    :cond_25
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 671
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v7, v3}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v22

    .line 672
    .local v22, "ledger":Lcom/android/server/tare/Ledger;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-lez v0, :cond_57

    .line 674
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " had credits before economy was set up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    move v12, v5

    goto :goto_7d

    .line 678
    :cond_57
    new-instance v23, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 680
    invoke-virtual {v0, v7, v3}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object/from16 v9, v23

    move-wide/from16 v10, v20

    move-wide/from16 v12, v20

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v9, 0x1

    .line 678
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v3

    move-object v10, v3

    .end local v3    # "pkgName":Ljava/lang/String;
    .local v10, "pkgName":Ljava/lang/String;
    move-object/from16 v3, v22

    move-object v11, v4

    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v4, v23

    move v12, v5

    .end local v5    # "i":I
    .local v12, "i":I
    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    .line 665
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v22    # "ledger":Lcom/android/server/tare/Ledger;
    :goto_7d
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "i":I
    .restart local v5    # "i":I
    goto :goto_10

    .line 683
    .end local v5    # "i":I
    :cond_80
    return-void
.end method

.method noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V
    .registers 33
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 172
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v5, p3

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 174
    return-void

    .line 177
    :cond_11
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 178
    .local v3, "now":J
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v2

    .line 179
    .local v2, "ledger":Lcom/android/server/tare/Ledger;
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 181
    .local v1, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    invoke-static/range {p3 .. p3}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v0

    .line 182
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_d2

    .line 205
    move v10, v0

    move-object/from16 v27, v1

    move-object/from16 v26, v2

    move-wide/from16 v24, v3

    .end local v0    # "eventType":I
    .end local v1    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .end local v2    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v3    # "now":J
    .local v10, "eventType":I
    .local v24, "now":J
    .local v26, "ledger":Lcom/android/server/tare/Ledger;
    .local v27, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ce

    .line 184
    .end local v10    # "eventType":I
    .end local v24    # "now":J
    .end local v26    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v27    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v0    # "eventType":I
    .restart local v1    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v2    # "ledger":Lcom/android/server/tare/Ledger;
    .restart local v3    # "now":J
    :sswitch_49
    nop

    .line 185
    invoke-virtual {v1, v5, v7, v8}, Lcom/android/server/tare/CompleteEconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v15

    .line 187
    .local v15, "actionCost":Lcom/android/server/tare/EconomicPolicy$Cost;
    new-instance v20, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v9, v15, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    neg-long v12, v9

    iget-wide v10, v15, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    move-object/from16 v9, v20

    move-wide/from16 v18, v10

    move-wide v10, v3

    move-wide/from16 v16, v12

    move-wide v12, v3

    move/from16 v14, p3

    move-object/from16 v21, v15

    .end local v15    # "actionCost":Lcom/android/server/tare/EconomicPolicy$Cost;
    .local v21, "actionCost":Lcom/android/server/tare/EconomicPolicy$Cost;
    move-object/from16 v15, p4

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v9, 0x1

    move v15, v0

    .end local v0    # "eventType":I
    .local v15, "eventType":I
    move-object/from16 v0, p0

    move-object v14, v1

    .end local v1    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .local v14, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    move/from16 v1, p1

    move-object v12, v2

    .end local v2    # "ledger":Lcom/android/server/tare/Ledger;
    .local v12, "ledger":Lcom/android/server/tare/Ledger;
    move-object/from16 v2, p2

    .end local v3    # "now":J
    .local v10, "now":J
    move-object v3, v12

    move-object/from16 v4, v20

    move v13, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    .line 191
    move-wide/from16 v24, v10

    move-object/from16 v26, v12

    move-object/from16 v27, v14

    move v10, v15

    goto :goto_ce

    .line 194
    .end local v10    # "now":J
    .end local v12    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v14    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .end local v15    # "eventType":I
    .end local v21    # "actionCost":Lcom/android/server/tare/EconomicPolicy$Cost;
    .restart local v0    # "eventType":I
    .restart local v1    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v2    # "ledger":Lcom/android/server/tare/Ledger;
    .restart local v3    # "now":J
    :sswitch_80
    move v15, v0

    move-object v14, v1

    move-object v12, v2

    move-wide v10, v3

    move v13, v5

    .end local v0    # "eventType":I
    .end local v1    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .end local v2    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v3    # "now":J
    .restart local v10    # "now":J
    .restart local v12    # "ledger":Lcom/android/server/tare/Ledger;
    .restart local v14    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v15    # "eventType":I
    invoke-virtual {v14, v13}, Lcom/android/server/tare/CompleteEconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v5

    .line 195
    .local v5, "reward":Lcom/android/server/tare/EconomicPolicy$Reward;
    if-eqz v5, :cond_c6

    .line 196
    invoke-virtual {v12, v13, v10, v11}, Lcom/android/server/tare/Ledger;->get24HourSum(IJ)J

    move-result-wide v20

    .line 197
    .local v20, "rewardSum":J
    iget-wide v2, v5, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    sub-long v2, v2, v20

    iget-wide v0, v5, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    .line 198
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 197
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    .line 199
    .local v22, "rewardVal":J
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const-wide/16 v18, 0x0

    move-object v9, v4

    move-wide/from16 v24, v10

    .end local v10    # "now":J
    .restart local v24    # "now":J
    move-object/from16 v26, v12

    .end local v12    # "ledger":Lcom/android/server/tare/Ledger;
    .restart local v26    # "ledger":Lcom/android/server/tare/Ledger;
    move-wide/from16 v12, v24

    move-object/from16 v27, v14

    .end local v14    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v27    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    move/from16 v14, p3

    move v3, v15

    .end local v15    # "eventType":I
    .local v3, "eventType":I
    move-object/from16 v15, p4

    move-wide/from16 v16, v22

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    .end local v3    # "eventType":I
    .local v10, "eventType":I
    move-object/from16 v3, v26

    move-object v11, v5

    .end local v5    # "reward":Lcom/android/server/tare/EconomicPolicy$Reward;
    .local v11, "reward":Lcom/android/server/tare/EconomicPolicy$Reward;
    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    .line 201
    .end local v20    # "rewardSum":J
    .end local v22    # "rewardVal":J
    goto :goto_ce

    .line 195
    .end local v11    # "reward":Lcom/android/server/tare/EconomicPolicy$Reward;
    .end local v24    # "now":J
    .end local v26    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v27    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v5    # "reward":Lcom/android/server/tare/EconomicPolicy$Reward;
    .local v10, "now":J
    .restart local v12    # "ledger":Lcom/android/server/tare/Ledger;
    .restart local v14    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v15    # "eventType":I
    :cond_c6
    move-wide/from16 v24, v10

    move-object/from16 v26, v12

    move-object/from16 v27, v14

    move v10, v15

    move-object v11, v5

    .line 207
    .end local v5    # "reward":Lcom/android/server/tare/EconomicPolicy$Reward;
    .end local v12    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v14    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .end local v15    # "eventType":I
    .local v10, "eventType":I
    .restart local v24    # "now":J
    .restart local v26    # "ledger":Lcom/android/server/tare/Ledger;
    .restart local v27    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    :goto_ce
    invoke-direct/range {p0 .. p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    .line 208
    return-void

    :sswitch_data_d2
    .sparse-switch
        -0x80000000 -> :sswitch_80
        0x40000000 -> :sswitch_49
    .end sparse-switch
.end method

.method noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;J)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "startElapsed"    # J

    .line 213
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V

    .line 214
    return-void
.end method

.method onAppExemptedLocked(ILjava/lang/String;)V
    .registers 30
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 703
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v9

    .line 704
    .local v9, "minBalance":J
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v0

    sub-long v22, v9, v0

    .line 705
    .local v22, "missing":J
    const-wide/16 v0, 0x0

    cmp-long v0, v22, v0

    if-gtz v0, :cond_19

    .line 706
    return-void

    .line 709
    :cond_19
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v24

    .line 710
    .local v24, "ledger":Lcom/android/server/tare/Ledger;
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v25

    .line 712
    .local v25, "now":J
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const/16 v16, 0x3

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    move-object v11, v4

    move-wide/from16 v12, v25

    move-wide/from16 v14, v25

    move-wide/from16 v18, v22

    invoke-direct/range {v11 .. v21}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v24

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    .line 714
    return-void
.end method

.method onAppStatesChangedLocked(ILandroid/util/ArraySet;)V
    .registers 29
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p2, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move/from16 v8, p1

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v9

    .line 282
    .local v9, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 283
    .local v11, "nowElapsed":J
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v13

    .line 285
    .local v13, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v14, v0, :cond_b6

    .line 286
    move-object/from16 v15, p2

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 287
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 288
    invoke-virtual {v0, v8, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/util/SparseArrayMap;

    .line 289
    .local v6, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    if-eqz v6, :cond_ac

    .line 290
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    move/from16 v1, p1

    move-object v2, v5

    move-wide v3, v9

    move-wide/from16 v16, v9

    move-object v9, v5

    move-object v10, v6

    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v9, "pkgName":Ljava/lang/String;
    .local v10, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v16, "now":J
    move-wide v5, v11

    invoke-static/range {v0 .. v6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->-$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V

    .line 291
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-virtual {v10, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 292
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 293
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/ArraySet;

    .line 294
    .local v5, "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    if-eqz v5, :cond_a6

    .line 295
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 296
    .local v6, "size":I
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 297
    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v18

    .line 298
    .local v18, "newBalance":J
    const/4 v0, 0x0

    move v3, v0

    .local v3, "n":I
    :goto_5c
    if-ge v3, v6, :cond_9f

    .line 299
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 300
    .local v4, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    invoke-virtual {v4, v13, v8, v9}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    .line 301
    nop

    .line 303
    invoke-static {v4}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v20

    invoke-static {v4}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v22

    .line 302
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v24, v3

    move-object/from16 v25, v4

    .end local v3    # "n":I
    .end local v4    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .local v24, "n":I
    .local v25, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    move-wide/from16 v3, v20

    move-object/from16 v20, v5

    move/from16 v21, v6

    .end local v5    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .end local v6    # "size":I
    .local v20, "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .local v21, "size":I
    move-wide/from16 v5, v22

    invoke-direct/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    .line 304
    .local v0, "isAffordable":Z
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_96

    .line 305
    move-object/from16 v1, v25

    .end local v25    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .local v1, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 306
    iget-object v2, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2, v8, v9, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    goto :goto_98

    .line 304
    .end local v1    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .restart local v25    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    :cond_96
    move-object/from16 v1, v25

    .line 298
    .end local v0    # "isAffordable":Z
    .end local v25    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    :goto_98
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v5, v20

    move/from16 v6, v21

    .end local v24    # "n":I
    .restart local v3    # "n":I
    goto :goto_5c

    .end local v20    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .end local v21    # "size":I
    .restart local v5    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .restart local v6    # "size":I
    :cond_9f
    move/from16 v24, v3

    move-object/from16 v20, v5

    move/from16 v21, v6

    .end local v3    # "n":I
    .end local v5    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .end local v6    # "size":I
    .restart local v20    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .restart local v21    # "size":I
    .restart local v24    # "n":I
    goto :goto_a8

    .line 294
    .end local v18    # "newBalance":J
    .end local v20    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .end local v21    # "size":I
    .end local v24    # "n":I
    .restart local v5    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    :cond_a6
    move-object/from16 v20, v5

    .line 310
    .end local v5    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .restart local v20    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    :goto_a8
    invoke-direct {v7, v8, v9}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    goto :goto_b0

    .line 289
    .end local v10    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .end local v16    # "now":J
    .end local v20    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .local v5, "pkgName":Ljava/lang/String;
    .local v6, "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .local v9, "now":J
    :cond_ac
    move-wide/from16 v16, v9

    move-object v9, v5

    move-object v10, v6

    .line 285
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "ongoingEvents":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Agent$OngoingEvent;>;"
    .end local v9    # "now":J
    .restart local v16    # "now":J
    :goto_b0
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v9, v16

    goto/16 :goto_14

    .line 313
    .end local v14    # "i":I
    .end local v16    # "now":J
    .restart local v9    # "now":J
    :cond_b6
    return-void
.end method

.method onAppUnexemptedLocked(ILjava/lang/String;)V
    .registers 36
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 570
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v9

    .line 571
    .local v9, "curBalance":J
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v11

    .line 572
    .local v11, "minBalance":J
    cmp-long v0, v9, v11

    if-gtz v0, :cond_15

    .line 573
    return-void

    .line 577
    :cond_15
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 578
    invoke-interface {v0, v8, v7}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastUsedByUser(Ljava/lang/String;I)J

    move-result-wide v13

    .line 583
    .local v13, "timeSinceLastUsedMs":J
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v13, v0

    if-gez v0, :cond_26

    .line 584
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    move-wide v15, v0

    .local v0, "percentageToReclaim":D
    goto :goto_3f

    .line 585
    .end local v0    # "percentageToReclaim":D
    :cond_26
    const-wide/32 v0, 0xa4cb800

    cmp-long v0, v13, v0

    if-gez v0, :cond_31

    .line 586
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    move-wide v15, v0

    .restart local v0    # "percentageToReclaim":D
    goto :goto_3f

    .line 587
    .end local v0    # "percentageToReclaim":D
    :cond_31
    const-wide/32 v0, 0xf731400

    cmp-long v0, v13, v0

    if-gez v0, :cond_3c

    .line 588
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    move-wide v15, v0

    .restart local v0    # "percentageToReclaim":D
    goto :goto_3f

    .line 590
    .end local v0    # "percentageToReclaim":D
    :cond_3c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide v15, v0

    .line 592
    .local v15, "percentageToReclaim":D
    :goto_3f
    sub-long v4, v9, v11

    .line 593
    .local v4, "overage":J
    long-to-double v0, v4

    mul-double/2addr v0, v15

    double-to-long v2, v0

    .line 594
    .local v2, "toReclaim":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_a6

    .line 595
    sget-boolean v0, Lcom/android/server/tare/Agent;->DEBUG:Z

    if-eqz v0, :cond_77

    .line 596
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v17, v4

    .end local v4    # "overage":J
    .local v17, "overage":J
    const-string v4, "Reclaiming bonus wealth! Taking "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 597
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 595
    .end local v17    # "overage":J
    .restart local v4    # "overage":J
    :cond_77
    move-wide/from16 v17, v4

    .line 600
    .end local v4    # "overage":J
    .restart local v17    # "overage":J
    :goto_79
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v30

    .line 601
    .local v30, "now":J
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v32

    .line 602
    .local v32, "ledger":Lcom/android/server/tare/Ledger;
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const/16 v24, 0x4

    const/16 v25, 0x0

    neg-long v0, v2

    const-wide/16 v28, 0x0

    move-object/from16 v19, v4

    move-wide/from16 v20, v30

    move-wide/from16 v22, v30

    move-wide/from16 v26, v0

    invoke-direct/range {v19 .. v29}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v19, v2

    .end local v2    # "toReclaim":J
    .local v19, "toReclaim":J
    move-object/from16 v2, p2

    move-object/from16 v3, v32

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_aa

    .line 594
    .end local v17    # "overage":J
    .end local v19    # "toReclaim":J
    .end local v30    # "now":J
    .end local v32    # "ledger":Lcom/android/server/tare/Ledger;
    .restart local v2    # "toReclaim":J
    .restart local v4    # "overage":J
    :cond_a6
    move-wide/from16 v19, v2

    move-wide/from16 v17, v4

    .line 606
    .end local v2    # "toReclaim":J
    .end local v4    # "overage":J
    .restart local v17    # "overage":J
    .restart local v19    # "toReclaim":J
    :goto_aa
    return-void
.end method

.method onCreditSupplyChanged()V
    .registers 3

    .line 621
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 622
    return-void
.end method

.method onDeviceStateChangedLocked()V
    .registers 1

    .line 271
    invoke-virtual {p0}, Lcom/android/server/tare/Agent;->onPricingChangedLocked()V

    .line 272
    return-void
.end method

.method onPackageRemovedLocked(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 718
    invoke-direct {p0, p1, p2}, Lcom/android/server/tare/Agent;->reclaimAssetsLocked(ILjava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v1, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v1, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 720
    return-void
.end method

.method onPricingChangedLocked()V
    .registers 2

    .line 276
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/tare/Agent;->onAnythingChangedLocked(Z)V

    .line 277
    return-void
.end method

.method onUserRemovedLocked(ILjava/util/List;)V
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 738
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/tare/Agent;->reclaimAssetsLocked(ILjava/util/List;)V

    .line 739
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;->removeAlarmsForUserId(I)V

    .line 740
    return-void
.end method

.method reclaimUnusedAssetsLocked(DJZ)V
    .registers 38
    .param p1, "percentage"    # D
    .param p3, "minUnusedTimeMs"    # J
    .param p5, "scaleMinBalance"    # Z

    .line 519
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v7

    .line 520
    .local v7, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getLedgersLocked()Landroid/util/SparseArrayMap;

    move-result-object v8

    .line 521
    .local v8, "ledgers":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/tare/Ledger;>;"
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v20

    .line 522
    .local v20, "now":J
    const/4 v0, 0x0

    move v5, v0

    .local v5, "u":I
    :goto_14
    invoke-virtual {v8}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    if-ge v5, v0, :cond_e4

    .line 523
    invoke-virtual {v8, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    .line 524
    .local v4, "userId":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "p":I
    :goto_20
    invoke-virtual {v8, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    if-ge v3, v0, :cond_dd

    .line 525
    invoke-virtual {v8, v5, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/server/tare/Ledger;

    .line 526
    .local v22, "ledger":Lcom/android/server/tare/Ledger;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v1

    .line 527
    .local v1, "curBalance":J
    const-wide/16 v9, 0x0

    cmp-long v0, v1, v9

    if-gtz v0, :cond_3d

    .line 528
    move v13, v3

    move v14, v4

    move v15, v5

    goto/16 :goto_d7

    .line 530
    :cond_3d
    invoke-virtual {v8, v5, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v11, v6, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 534
    invoke-interface {v11, v0, v4}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastUsedByUser(Ljava/lang/String;I)J

    move-result-wide v23

    .line 535
    .local v23, "timeSinceLastUsedMs":J
    cmp-long v11, v23, p3

    if-ltz v11, :cond_d2

    .line 537
    if-nez p5, :cond_56

    .line 539
    invoke-virtual {v7, v4, v0}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedBalance(ILjava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v25, v11

    .local v11, "minBalance":J
    goto :goto_5e

    .line 541
    .end local v11    # "minBalance":J
    :cond_56
    iget-object v11, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v11, v4, v0}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v25, v11

    .line 543
    .local v25, "minBalance":J
    :goto_5e
    long-to-double v11, v1

    mul-double v11, v11, p1

    double-to-long v11, v11

    .line 544
    .local v11, "toReclaim":J
    sub-long v13, v1, v11

    cmp-long v13, v13, v25

    if-gez v13, :cond_6c

    .line 545
    sub-long v11, v1, v25

    move-wide v14, v11

    goto :goto_6d

    .line 544
    :cond_6c
    move-wide v14, v11

    .line 547
    .end local v11    # "toReclaim":J
    .local v14, "toReclaim":J
    :goto_6d
    cmp-long v9, v14, v9

    if-lez v9, :cond_ca

    .line 548
    sget-boolean v9, Lcom/android/server/tare/Agent;->DEBUG:Z

    if-eqz v9, :cond_9b

    .line 549
    sget-object v9, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reclaiming unused wealth! Taking "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 550
    invoke-static {v4, v0}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 549
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_9b
    new-instance v27, Lcom/android/server/tare/Ledger$Transaction;

    const/16 v16, 0x2

    const/16 v17, 0x0

    neg-long v12, v14

    const-wide/16 v18, 0x0

    move-object/from16 v9, v27

    move-wide/from16 v10, v20

    move-wide/from16 v28, v12

    move-wide/from16 v12, v20

    move-wide/from16 v30, v14

    .end local v14    # "toReclaim":J
    .local v30, "toReclaim":J
    move/from16 v14, v16

    move-object/from16 v15, v17

    move-wide/from16 v16, v28

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v9, 0x1

    move-object v10, v0

    .end local v0    # "pkgName":Ljava/lang/String;
    .local v10, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide v11, v1

    .end local v1    # "curBalance":J
    .local v11, "curBalance":J
    move v1, v4

    move-object v2, v10

    move v13, v3

    .end local v3    # "p":I
    .local v13, "p":I
    move-object/from16 v3, v22

    move v14, v4

    .end local v4    # "userId":I
    .local v14, "userId":I
    move-object/from16 v4, v27

    move v15, v5

    .end local v5    # "u":I
    .local v15, "u":I
    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_d7

    .line 547
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "curBalance":J
    .end local v13    # "p":I
    .end local v15    # "u":I
    .end local v30    # "toReclaim":J
    .restart local v0    # "pkgName":Ljava/lang/String;
    .restart local v1    # "curBalance":J
    .restart local v3    # "p":I
    .restart local v4    # "userId":I
    .restart local v5    # "u":I
    .local v14, "toReclaim":J
    :cond_ca
    move-object v10, v0

    move-wide v11, v1

    move v13, v3

    move-wide/from16 v30, v14

    move v14, v4

    move v15, v5

    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "curBalance":J
    .end local v3    # "p":I
    .end local v4    # "userId":I
    .end local v5    # "u":I
    .restart local v10    # "pkgName":Ljava/lang/String;
    .restart local v11    # "curBalance":J
    .restart local v13    # "p":I
    .local v14, "userId":I
    .restart local v15    # "u":I
    .restart local v30    # "toReclaim":J
    goto :goto_d7

    .line 535
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "curBalance":J
    .end local v13    # "p":I
    .end local v14    # "userId":I
    .end local v15    # "u":I
    .end local v25    # "minBalance":J
    .end local v30    # "toReclaim":J
    .restart local v0    # "pkgName":Ljava/lang/String;
    .restart local v1    # "curBalance":J
    .restart local v3    # "p":I
    .restart local v4    # "userId":I
    .restart local v5    # "u":I
    :cond_d2
    move-object v10, v0

    move-wide v11, v1

    move v13, v3

    move v14, v4

    move v15, v5

    .line 524
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "curBalance":J
    .end local v3    # "p":I
    .end local v4    # "userId":I
    .end local v5    # "u":I
    .end local v22    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v23    # "timeSinceLastUsedMs":J
    .restart local v13    # "p":I
    .restart local v14    # "userId":I
    .restart local v15    # "u":I
    :goto_d7
    add-int/lit8 v3, v13, 0x1

    move v4, v14

    move v5, v15

    .end local v13    # "p":I
    .restart local v3    # "p":I
    goto/16 :goto_20

    .end local v14    # "userId":I
    .end local v15    # "u":I
    .restart local v4    # "userId":I
    .restart local v5    # "u":I
    :cond_dd
    move v13, v3

    move v14, v4

    move v15, v5

    .line 522
    .end local v3    # "p":I
    .end local v4    # "userId":I
    .end local v5    # "u":I
    .restart local v15    # "u":I
    add-int/lit8 v5, v15, 0x1

    .end local v15    # "u":I
    .restart local v5    # "u":I
    goto/16 :goto_14

    .line 561
    .end local v5    # "u":I
    :cond_e4
    return-void
.end method

.method recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V
    .registers 35
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "ledger"    # Lcom/android/server/tare/Ledger;
    .param p4, "transaction"    # Lcom/android/server/tare/Ledger$Transaction;
    .param p5, "notifyOnAffordabilityChange"    # Z

    .line 448
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p4

    sget-boolean v1, Lcom/android/server/tare/Agent;->DEBUG:Z

    const-wide/16 v10, 0x0

    if-nez v1, :cond_15

    iget-wide v1, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_15

    .line 450
    return-void

    .line 452
    :cond_15
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 453
    sget-object v1, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to adjust system balance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 454
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-static {v1, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void

    .line 457
    :cond_3a
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v12

    .line 458
    .local v12, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v13

    .line 459
    .local v13, "originalBalance":J
    iget-wide v1, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long v1, v1, v10

    if-lez v1, :cond_e5

    iget-wide v1, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v1, v13

    .line 460
    invoke-virtual {v12}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedBalance()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_e0

    .line 463
    nop

    .line 464
    invoke-virtual {v12}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedBalance()J

    move-result-wide v1

    sub-long/2addr v1, v13

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 465
    .local v1, "newDelta":J
    sget-object v3, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Would result in becoming too rich. Decreasing transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    .line 466
    invoke-static {v5}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 467
    iget-object v5, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    if-nez v5, :cond_7d

    const-string v5, ""

    goto :goto_92

    :cond_7d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 468
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    sub-long/2addr v5, v1

    .line 469
    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 465
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v3, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v4, v0, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    iget-wide v10, v0, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    iget v6, v0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    iget-object v15, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    move-object/from16 v26, v12

    move-wide/from16 v27, v13

    .end local v12    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .end local v13    # "originalBalance":J
    .local v26, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .local v27, "originalBalance":J
    iget-wide v12, v0, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    move-object v14, v15

    move-object v15, v3

    move-wide/from16 v16, v4

    move-wide/from16 v18, v10

    move/from16 v20, v6

    move-object/from16 v21, v14

    move-wide/from16 v22, v1

    move-wide/from16 v24, v12

    invoke-direct/range {v15 .. v25}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    move-object v0, v3

    move-object v10, v0

    .end local p4    # "transaction":Lcom/android/server/tare/Ledger$Transaction;
    .local v0, "transaction":Lcom/android/server/tare/Ledger$Transaction;
    goto :goto_ea

    .line 460
    .end local v0    # "transaction":Lcom/android/server/tare/Ledger$Transaction;
    .end local v1    # "newDelta":J
    .end local v26    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .end local v27    # "originalBalance":J
    .restart local v12    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v13    # "originalBalance":J
    .restart local p4    # "transaction":Lcom/android/server/tare/Ledger$Transaction;
    :cond_e0
    move-object/from16 v26, v12

    move-wide/from16 v27, v13

    .end local v12    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .end local v13    # "originalBalance":J
    .restart local v26    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v27    # "originalBalance":J
    goto :goto_e9

    .line 459
    .end local v26    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .end local v27    # "originalBalance":J
    .restart local v12    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v13    # "originalBalance":J
    :cond_e5
    move-object/from16 v26, v12

    move-wide/from16 v27, v13

    .line 474
    .end local v12    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .end local v13    # "originalBalance":J
    .restart local v26    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .restart local v27    # "originalBalance":J
    :goto_e9
    move-object v10, v0

    .end local p4    # "transaction":Lcom/android/server/tare/Ledger$Transaction;
    .local v10, "transaction":Lcom/android/server/tare/Ledger$Transaction;
    :goto_ea
    move-object/from16 v11, p3

    invoke-virtual {v11, v10}, Lcom/android/server/tare/Ledger;->recordTransaction(Lcom/android/server/tare/Ledger$Transaction;)V

    .line 475
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    iget-wide v1, v10, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    .line 476
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v0, v10}, Lcom/android/server/tare/Analyst;->noteTransaction(Lcom/android/server/tare/Ledger$Transaction;)V

    .line 477
    iget-wide v0, v10, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14e

    if-eqz p5, :cond_14e

    .line 478
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 479
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/ArraySet;

    .line 480
    .local v12, "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    if-eqz v12, :cond_14e

    .line 481
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v13

    .line 482
    .local v13, "newBalance":J
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_117
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v15, v0, :cond_14e

    .line 483
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 484
    .local v5, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    nop

    .line 486
    invoke-static {v5}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v3

    invoke-static {v5}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v16

    .line 485
    move-object/from16 v0, p0

    move-wide v1, v13

    move-object/from16 p4, v5

    .end local v5    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .local p4, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    move-wide/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    .line 487
    .local v0, "isAffordable":Z
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_149

    .line 488
    move-object/from16 v1, p4

    .end local p4    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .local v1, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 489
    iget-object v2, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2, v8, v9, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    goto :goto_14b

    .line 487
    .end local v1    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .restart local p4    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    :cond_149
    move-object/from16 v1, p4

    .line 482
    .end local v0    # "isAffordable":Z
    .end local p4    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    :goto_14b
    add-int/lit8 v15, v15, 0x1

    goto :goto_117

    .line 494
    .end local v12    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    .end local v13    # "newBalance":J
    .end local v15    # "i":I
    :cond_14e
    iget-wide v0, v10, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_161

    .line 495
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 496
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->maybePerformQuantitativeEasingLocked()V

    .line 498
    :cond_161
    return-void
.end method

.method public registerAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .param p4, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 1048
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 1049
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1050
    .local v0, "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    if-nez v0, :cond_15

    .line 1051
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1052
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1054
    :cond_15
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 1055
    .local v1, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    new-instance v2, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-direct {v2, p4, p3, v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;-><init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V

    .line 1057
    .local v2, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1058
    iget-object v3, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3}, Lcom/android/server/tare/InternalResourceService;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_33

    .line 1062
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 1063
    return-void

    .line 1065
    :cond_33
    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    .line 1066
    nop

    .line 1067
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v5

    .line 1068
    invoke-static {v2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v7

    invoke-static {v2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v9

    .line 1067
    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v3

    .line 1066
    invoke-static {v2, v3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 1069
    iget-object v3, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    .line 1071
    invoke-direct {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    .line 1073
    :cond_53
    return-void
.end method

.method stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJ)V
    .registers 20
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "nowElapsed"    # J
    .param p7, "now"    # J

    .line 371
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V

    .line 372
    return-void
.end method

.method tearDownLocked()V
    .registers 2

    .line 901
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 902
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;->removeAllAlarms()V

    .line 903
    return-void
.end method

.method public unregisterAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .param p4, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 1079
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 1080
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1081
    .local v0, "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    if-eqz v0, :cond_1e

    .line 1082
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 1083
    .local v1, "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    new-instance v2, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-direct {v2, p4, p3, v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;-><init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V

    .line 1085
    .local v2, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1087
    invoke-direct {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    .line 1090
    .end local v1    # "economicPolicy":Lcom/android/server/tare/CompleteEconomicPolicy;
    .end local v2    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    :cond_1e
    return-void
.end method
