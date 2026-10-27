.class public final Lcom/android/server/job/controllers/BatteryController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BatteryController$PowerTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Battery"


# instance fields
.field private final mChangedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerTracker:Lcom/android/server/job/controllers/BatteryController$PowerTracker;

.field private final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mmaybeReportNewChargingStateLocked(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 51
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 52
    const-string v1, "JobScheduler.Battery"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/RestrictingController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 54
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    .line 72
    new-instance v0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BatteryController$PowerTracker;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mPowerTracker:Lcom/android/server/job/controllers/BatteryController$PowerTracker;

    .line 73
    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->startTracking()V

    .line 74
    return-void
.end method

.method private hasTopExemptionLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 163
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 164
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 163
    :goto_1a
    return v0
.end method

.method private maybeReportNewChargingStateLocked()V
    .registers 10

    .line 169
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mPowerTracker:Lcom/android/server/job/controllers/BatteryController$PowerTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->isPowerConnected()Z

    move-result v0

    .line 170
    .local v0, "powerConnected":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 171
    .local v1, "stablePower":Z
    :goto_1a
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v3

    .line 172
    .local v3, "batteryNotLow":Z
    sget-boolean v4, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    if-eqz v4, :cond_4f

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "maybeReportNewChargingStateLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler.Battery"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_4f
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 177
    .local v4, "nowElapsed":J
    iget-object v6, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "i":I
    :goto_5c
    if-ltz v6, :cond_a5

    .line 178
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 179
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v7

    if-eqz v7, :cond_91

    .line 180
    invoke-direct {p0, v2}, Lcom/android/server/job/controllers/BatteryController;->hasTopExemptionLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 181
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v7

    const/16 v8, 0x12c

    if-lt v7, v8, :cond_86

    .line 188
    invoke-virtual {v2, v4, v5, v0}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 189
    iget-object v7, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 191
    :cond_86
    invoke-virtual {v2, v4, v5, v1}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 192
    iget-object v7, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_91
    :goto_91
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 196
    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(JZ)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 197
    iget-object v7, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_a2
    add-int/lit8 v6, v6, -0x1

    goto :goto_5c

    .line 200
    .end local v6    # "i":I
    :cond_a5
    if-nez v1, :cond_ba

    if-eqz v3, :cond_aa

    goto :goto_ba

    .line 203
    :cond_aa
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_c0

    .line 206
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object v6, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-interface {v2, v6}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_c0

    .line 202
    :cond_ba
    :goto_ba
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 208
    :cond_c0
    :goto_c0
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 209
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mPowerTracker:Lcom/android/server/job/controllers/BatteryController$PowerTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->isPowerConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stable power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_62
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_93

    .line 275
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 276
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 277
    goto :goto_90

    .line 279
    :cond_79
    const-string v2, "#"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 281
    const-string v2, " from "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 283
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 274
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 285
    .end local v0    # "i":I
    :cond_93
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 290
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 291
    .local v0, "token":J
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 293
    .local v2, "mToken":J
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 294
    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    .line 293
    :goto_20
    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 295
    const-wide v4, 0x10800000002L

    iget-object v6, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 296
    invoke-virtual {v6}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v6

    .line 295
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 298
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_71

    .line 299
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 300
    .local v5, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 301
    goto :goto_6e

    .line 303
    :cond_4e
    const-wide v6, 0x20b00000005L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 304
    .local v6, "jsToken":J
    const-wide v8, 0x10b00000001L

    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 305
    const-wide v8, 0x10500000002L

    .line 306
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    .line 305
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 307
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 298
    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "jsToken":J
    :goto_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 310
    .end local v4    # "i":I
    :cond_71
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 312
    return-void
.end method

.method synthetic lambda$onBatteryStateChangedLocked$0$com-android-server-job-controllers-BatteryController()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 78
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 79
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 80
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 82
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/BatteryController;->hasTopExemptionLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 84
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mPowerTracker:Lcom/android/server/job/controllers/BatteryController$PowerTracker;

    .line 85
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->isPowerConnected()Z

    move-result v2

    .line 84
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    goto :goto_40

    .line 87
    :cond_2b
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 88
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    .line 87
    :goto_3d
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    .line 91
    :cond_40
    :goto_40
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(JZ)Z

    .line 93
    .end local v0    # "nowElapsed":J
    :cond_49
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 130
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 133
    :cond_11
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .registers 3

    .line 146
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/BatteryController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/BatteryController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public onUidBiasChangedLocked(III)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "prevBias"    # I
    .param p3, "newBias"    # I

    .line 156
    const/16 v0, 0x28

    if-eq p2, v0, :cond_6

    if-ne p3, v0, :cond_9

    .line 157
    :cond_6
    invoke-direct {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    .line 159
    :cond_9
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 103
    sget-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    const-string v1, "JobScheduler.Battery"

    if-eqz v0, :cond_20

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_20
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isTrackedBy(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 108
    return-void

    .line 112
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 113
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_57

    .line 114
    if-eqz v0, :cond_52

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is top started job"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_52
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_57
    return-void
.end method

.method public startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/BatteryController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 98
    return-void
.end method

.method public stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 137
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result v0

    if-nez v0, :cond_b

    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/BatteryController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 140
    :cond_b
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 124
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method
