.class public final Lcom/android/server/job/controllers/BackgroundJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "BackgroundJobsController.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageStoppedState:Landroid/util/SparseArrayMap;

.field public final mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;


# direct methods
.method public static synthetic $r8$lambda$RWtzo_6p8GUe3TNtxmH0UJG13vc(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->lambda$dumpControllerStateLocked$1(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z6pz3eqxw7lk4VJOX7BpNtK64F8(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    .line 204
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 205
    const-string p1, ":"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 207
    const-string p1, "="

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fTLCaXNJppl0gWUjiU1nDjaOmfA(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->lambda$dumpControllerStateLocked$2(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageStoppedState(Lcom/android/server/job/controllers/BackgroundJobsController;)Landroid/util/SparseArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateAllJobRestrictionsLocked(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateAllJobRestrictionsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateJobRestrictionsForUidLocked(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsForUidLocked(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateJobRestrictionsLocked(Lcom/android/server/job/controllers/BackgroundJobsController;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 67
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const-string v0, "JobScheduler.Background"

    const/4 v1, 0x3

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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
    sput-boolean v0, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 79
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 82
    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/BackgroundJobsController-IA;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    .line 84
    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 423
    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$2;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$2;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 129
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 130
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 129
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 131
    const-class p1, Lcom/android/server/AppStateTracker;

    .line 132
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppStateTracker;

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/AppStateTrackerImpl;

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 133
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 5

    .line 190
    const-string v0, "Aconfig flags:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 192
    const-string v0, "android.content.pm.stay_stopped"

    .line 193
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 194
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 195
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 196
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 198
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 199
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 201
    const-string v0, "Stopped packages:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 203
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 210
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 212
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 10

    .line 244
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 245
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 247
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 250
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v0, p4, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 275
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 276
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 162
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 165
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    :cond_10
    return-void
.end method

.method public final isPackageStoppedLocked(Ljava/lang/String;I)Z
    .registers 7

    .line 319
    const-string v0, "JobScheduler.Background"

    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 320
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 324
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isPackageStopped(Ljava/lang/String;I)Z

    move-result v1

    .line 325
    sget-boolean v2, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    if-eqz v2, :cond_45

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulled stopped state of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_45
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p2, p1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_4e} :catch_4f

    return v1

    .line 332
    :catch_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t determine stopped state for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$dumpControllerStateLocked$1(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 213
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 214
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, "#"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 217
    const-string v2, " from "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 218
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 219
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, " active"

    goto :goto_25

    :cond_23
    const-string v2, " idle"

    :goto_25
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidPowerSaveExempt(I)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 221
    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidTempPowerSaveExempt(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 222
    :cond_38
    const-string v2, ", exempted"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 224
    :cond_3d
    const-string v2, ": "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 227
    const-string v2, " [RUN_ANY_IN_BACKGROUND "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_55

    .line 229
    const-string p0, "allowed]"

    goto :goto_57

    :cond_55
    const-string p0, "disallowed]"

    .line 228
    :goto_57
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget p0, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 p2, 0x400000

    and-int/2addr p0, p2

    if-eqz p0, :cond_67

    .line 233
    const-string p0, " RUNNABLE"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 235
    :cond_67
    const-string p0, " WAITING"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$dumpControllerStateLocked$2(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 12

    const-wide v0, 0x20b00000002L

    .line 252
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    .line 254
    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 255
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const-wide v3, 0x10500000002L

    .line 256
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 257
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000003L

    .line 258
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v4

    const-wide v5, 0x10800000004L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 261
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 262
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->isUidPowerSaveExempt(I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_4c

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 263
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->isUidTempPowerSaveExempt(I)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto :goto_4c

    :cond_4a
    move v4, v6

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v4, v5

    :goto_4d
    const-wide v7, 0x10800000005L

    .line 261
    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 265
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 266
    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result p0

    const-wide v2, 0x10800000006L

    .line 265
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 268
    iget p0, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 p2, 0x400000

    and-int/2addr p0, p2

    if-eqz p0, :cond_6b

    goto :goto_6c

    :cond_6b
    move v5, v6

    :goto_6c
    const-wide v2, 0x10800000007L

    invoke-virtual {p1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 272
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 151
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 3

    .line 172
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 179
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 180
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 181
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public startTrackingLocked()V
    .registers 9

    .line 139
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 140
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v0, "android.intent.action.PACKAGE_UNSTOPPED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "package"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final updateAllJobRestrictionsLocked()V
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 281
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    return-void
.end method

.method public final updateJobRestrictionsForUidLocked(IZ)V
    .registers 3

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x2

    .line 286
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    return-void
.end method

.method public final updateJobRestrictionsLocked(II)V
    .registers 9

    .line 291
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-virtual {v0, p2}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->prepare(I)V

    .line 293
    sget-boolean p2, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    goto :goto_11

    :cond_10
    move-wide v2, v0

    .line 295
    :goto_11
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v4

    if-lez p1, :cond_1f

    .line 297
    iget-object v5, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    goto :goto_24

    .line 299
    :cond_1f
    iget-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    :goto_24
    if-eqz p2, :cond_2b

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    sub-long/2addr v0, v2

    :cond_2b
    if-eqz p2, :cond_53

    .line 304
    iget-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget p1, p1, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget p2, p2, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 304
    const-string p2, "Job status updated: %d/%d checked/total jobs, %d us"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler.Background"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_53
    iget-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget-object p1, p1, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_66

    .line 313
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-interface {p1, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_66
    return-void
.end method

.method public updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z
    .registers 13

    .line 340
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 341
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/controllers/BackgroundJobsController;->isPackageStoppedLocked(Ljava/lang/String;I)Z

    move-result v2

    .line 346
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v3

    if-nez v3, :cond_1c

    move v3, v2

    goto :goto_28

    .line 350
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getCallingPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/job/controllers/BackgroundJobsController;->isPackageStoppedLocked(Ljava/lang/String;I)Z

    move-result v3

    :goto_28
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_31

    if-eqz v2, :cond_2f

    goto :goto_31

    :cond_2f
    move v2, v4

    goto :goto_32

    :cond_31
    :goto_31
    move v2, v5

    :goto_32
    if-nez v2, :cond_47

    .line 354
    iget-object v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 355
    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v3

    if-nez v3, :cond_45

    iget-object v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 356
    invoke-virtual {v3, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_47

    :cond_45
    move v3, v4

    goto :goto_48

    :cond_47
    :goto_47
    move v3, v5

    .line 373
    :goto_48
    iget-boolean v6, p1, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    if-eqz v6, :cond_59

    if-eqz v3, :cond_59

    iget-object v6, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 375
    invoke-virtual {v6, v0}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_59

    move v6, v5

    goto :goto_5a

    :cond_59
    move v6, v4

    :goto_5a
    if-nez v2, :cond_6c

    if-nez v6, :cond_6c

    .line 378
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 380
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->canRunInBatterySaver()Z

    move-result v6

    .line 379
    invoke-virtual {v2, v0, v1, v6}, Lcom/android/server/AppStateTrackerImpl;->areJobsRestricted(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6c

    move v1, v5

    goto :goto_6d

    :cond_6c
    move v1, v4

    :goto_6d
    if-nez p4, :cond_76

    .line 384
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result p0

    goto :goto_7a

    :cond_76
    if-ne p4, v5, :cond_79

    move v4, v5

    :cond_79
    move p0, v4

    :goto_7a
    if-eqz p0, :cond_86

    .line 388
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result p4

    const/4 v0, 0x4

    if-ne p4, v0, :cond_86

    .line 389
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->maybeLogBucketMismatch()V

    .line 392
    :cond_86
    invoke-virtual {p1, p2, p3, v1, v3}, Lcom/android/server/job/controllers/JobStatus;->setBackgroundNotRestrictedConstraintSatisfied(JZZ)Z

    move-result p2

    .line 394
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->setUidActive(Z)Z

    move-result p0

    or-int/2addr p0, p2

    return p0
.end method
