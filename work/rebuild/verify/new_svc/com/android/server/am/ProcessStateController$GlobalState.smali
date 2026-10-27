.class public Lcom/android/server/am/ProcessStateController$GlobalState;
.super Ljava/lang/Object;
.source "ProcessStateController.java"

# interfaces
.implements Lcom/android/server/am/OomAdjuster$GlobalState;


# instance fields
.field public final mBackupTargets:Landroid/util/SparseArray;

.field public mExpandedNotificationShade:Z

.field public mHeavyWeightProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

.field public mHomeProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

.field public mIsAwake:Z

.field public mIsLastMemoryLevelNormal:Z

.field public mPreviousProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

.field public mShowingUiWhileDozingProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

.field public mTopProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

.field public mTopProcessState:I

.field public mUnlocking:Z

.field public volatile mUnlockingStaged:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBackupTargets(Lcom/android/server/am/ProcessStateController$GlobalState;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mBackupTargets:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopProcess(Lcom/android/server/am/ProcessStateController$GlobalState;)Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mTopProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmExpandedNotificationShade(Lcom/android/server/am/ProcessStateController$GlobalState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mExpandedNotificationShade:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHeavyWeightProcess(Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mHeavyWeightProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHomeProcess(Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mHomeProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsAwake(Lcom/android/server/am/ProcessStateController$GlobalState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mIsAwake:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsLastMemoryLevelNormal(Lcom/android/server/am/ProcessStateController$GlobalState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mIsLastMemoryLevelNormal:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPreviousProcess(Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mPreviousProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShowingUiWhileDozingProcess(Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mShowingUiWhileDozingProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTopProcess(Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mTopProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTopProcessState(Lcom/android/server/am/ProcessStateController$GlobalState;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mTopProcessState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUnlockingStaged(Lcom/android/server/am/ProcessStateController$GlobalState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mUnlockingStaged:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcommitStagedState(Lcom/android/server/am/ProcessStateController$GlobalState;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$GlobalState;->commitStagedState()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mIsAwake:Z

    .line 265
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mBackupTargets:Landroid/util/SparseArray;

    .line 266
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mIsLastMemoryLevelNormal:Z

    const/4 v0, 0x2

    .line 268
    iput v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mTopProcessState:I

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mUnlockingStaged:Z

    .line 272
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mUnlocking:Z

    .line 273
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mExpandedNotificationShade:Z

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mTopProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 275
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mHomeProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 276
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mHeavyWeightProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 277
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mShowingUiWhileDozingProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 278
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mPreviousProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ProcessStateController-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ProcessStateController$GlobalState;-><init>()V

    return-void
.end method


# virtual methods
.method public final commitStagedState()V
    .registers 2

    .line 281
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mUnlockingStaged:Z

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mUnlocking:Z

    return-void
.end method

.method public getBackupTarget(I)Lcom/android/server/am/ProcessRecord;
    .registers 2

    .line 289
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mBackupTargets:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public getHeavyWeightProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 321
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mHeavyWeightProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-object p0
.end method

.method public getHomeProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 316
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mHomeProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-object p0
.end method

.method public getPreviousProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 331
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mPreviousProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-object p0
.end method

.method public getShowingUiWhileDozingProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 326
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mShowingUiWhileDozingProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-object p0
.end method

.method public getTopProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mTopProcess:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-object p0
.end method

.method public getTopProcessState()I
    .registers 1

    .line 298
    iget p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mTopProcessState:I

    return p0
.end method

.method public hasExpandedNotificationShade()Z
    .registers 1

    .line 306
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mExpandedNotificationShade:Z

    return p0
.end method

.method public isAwake()Z
    .registers 1

    .line 285
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mIsAwake:Z

    return p0
.end method

.method public isLastMemoryLevelNormal()Z
    .registers 1

    .line 293
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mIsLastMemoryLevelNormal:Z

    return p0
.end method

.method public isUnlocking()Z
    .registers 1

    .line 302
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->mUnlocking:Z

    return p0
.end method
