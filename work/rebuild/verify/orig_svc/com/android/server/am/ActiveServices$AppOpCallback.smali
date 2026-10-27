.class public final Lcom/android/server/am/ActiveServices$AppOpCallback;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# static fields
.field public static final LOGGED_AP_OPS:[I


# instance fields
.field public final mAcceptedOps:Landroid/util/SparseIntArray;

.field public final mAppOpModes:Landroid/util/SparseIntArray;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCounterLock:Ljava/lang/Object;

.field public mDestroyed:Z

.field public mNumFgs:I

.field public final mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedInternalListener;

.field public final mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

.field public final mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field public final mRejectedOps:Landroid/util/SparseIntArray;


# direct methods
.method public static bridge synthetic -$$Nest$mincrementOpCountIfNeeded(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices$AppOpCallback;->incrementOpCountIfNeeded(III)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x1b

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3405
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V
    .registers 9

    .line 3447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3415
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    .line 3418
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    .line 3422
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    .line 3428
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 3434
    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    .line 3442
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    .line 3456
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$1;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedInternalListener;

    .line 3465
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$2;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    .line 3448
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 3449
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3450
    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    array-length v2, v1

    :goto_39
    if-ge v0, v2, :cond_4f

    aget v3, v1, v0

    .line 3451
    iget v4, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4, v5}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 3452
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4f
    return-void
.end method

.method public static modeToEnum(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_e

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    const/4 p0, 0x2

    return p0

    :cond_e
    return v0
.end method


# virtual methods
.method public final incrementOpCount(IZ)V
    .registers 5

    .line 3486
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_a

    .line 3487
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    goto :goto_c

    :catchall_8
    move-exception p0

    goto :goto_21

    :cond_a
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    .line 3488
    :goto_c
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    const/4 v1, 0x1

    if-gez p2, :cond_17

    .line 3490
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1f

    .line 3492
    :cond_17
    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 3494
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_8

    throw p0
.end method

.method public final incrementOpCountIfNeeded(III)V
    .registers 5

    .line 3476
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne p2, v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isNotTop()Z

    move-result p2

    if-eqz p2, :cond_14

    if-nez p3, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    .line 3477
    :goto_11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices$AppOpCallback;->incrementOpCount(IZ)V

    :cond_14
    return-void
.end method

.method public final isNotTop()Z
    .registers 2

    .line 3482
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isObsoleteLocked()Z
    .registers 1

    .line 3524
    iget-boolean p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    return p0
.end method

.method public final logFinalValues()V
    .registers 11

    .line 3528
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3529
    :try_start_3
    sget-object v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_34

    aget v6, v0, v3

    .line 3530
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 3531
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-gtz v8, :cond_1b

    if-lez v9, :cond_2e

    .line 3533
    :cond_1b
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v5, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    .line 3536
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ActiveServices$AppOpCallback;->modeToEnum(I)I

    move-result v7

    const/16 v4, 0x100

    .line 3533
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catchall_31
    move-exception v0

    move-object p0, v0

    goto :goto_36

    .line 3541
    :cond_34
    monitor-exit v1

    return-void

    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_31

    throw p0
.end method

.method public registerLocked()V
    .registers 4

    .line 3498
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isObsoleteLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3499
    const-string p0, "ActivityManager"

    const-string v0, "Trying to register on a stale AppOpCallback."

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3502
    :cond_e
    iget v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    if-ne v0, v1, :cond_26

    .line 3504
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedInternalListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 3505
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-virtual {v0, v1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    :cond_26
    return-void
.end method

.method public unregisterLocked()V
    .registers 3

    .line 3510
    iget v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    if-gtz v0, :cond_1b

    .line 3512
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    .line 3513
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->logFinalValues()V

    .line 3514
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedInternalListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 3515
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    :cond_1b
    return-void
.end method
