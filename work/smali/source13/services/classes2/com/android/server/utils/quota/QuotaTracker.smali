.class abstract Lcom/android/server/utils/quota/QuotaTracker;
.super Ljava/lang/Object;
.source "QuotaTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;,
        Lcom/android/server/utils/quota/QuotaTracker$Injector;
    }
.end annotation


# static fields
.field private static final ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

.field private static final DEBUG:Z = false

.field static final MAX_WINDOW_SIZE_MS:J = 0x9a7ec800L

.field static final MIN_WINDOW_SIZE_MS:J = 0x4e20L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mCategorizer:Lcom/android/server/utils/quota/Categorizer;

.field protected final mContext:Landroid/content/Context;

.field private final mFreeQuota:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

.field protected final mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

.field private mIsEnabled:Z

.field private mIsQuotaFree:Z

.field final mLock:Ljava/lang/Object;

.field private final mQuotaChangeListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/utils/quota/QuotaChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$monUserRemovedLocked(Lcom/android/server/utils/quota/QuotaTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->onUserRemovedLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetALARM_TAG_QUOTA_CHECK()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 68
    const-class v0, Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".quota_check*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/quota/QuotaTracker;->ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "categorizer"    # Lcom/android/server/utils/quota/Categorizer;
    .param p3, "injector"    # Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    .line 96
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 113
    new-instance v0, Lcom/android/server/utils/quota/QuotaTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker$1;-><init>(Lcom/android/server/utils/quota/QuotaTracker;)V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mCategorizer:Lcom/android/server/utils/quota/Categorizer;

    .line 162
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mContext:Landroid/content/Context;

    .line 163
    iput-object p3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 164
    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 166
    new-instance v1, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;-><init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue-IA;)V

    iput-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v1

    .line 169
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "package"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 171
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 172
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 171
    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 173
    new-instance v4, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, "userFilter":Landroid/content/IntentFilter;
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 175
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 174
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method private onUserRemovedLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 383
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->removeAlarmsForUserId(I)V

    .line 384
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->handleRemovedUserLocked(I)V

    .line 387
    return-void
.end method


# virtual methods
.method cancelAlarm(Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 332
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.method cancelScheduledStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    new-instance v1, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 451
    return-void
.end method

.method public clear()V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->removeAllAlarms()V

    .line 184
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->dropEverythingLocked()V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method abstract dropEverythingLocked()V
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 482
    const-string v0, "QuotaTracker:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 485
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is global quota free: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current elapsed time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 491
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 492
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 494
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 495
    const-string v1, "Per-app free quota:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 497
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_6e
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_a9

    .line 498
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    .line 499
    .local v2, "userId":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_7d
    iget-object v4, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_a6

    .line 500
    iget-object v4, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 502
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 503
    const-string v5, ": "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 504
    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 499
    .end local v4    # "pkgName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 497
    .end local v2    # "userId":I
    .end local v3    # "p":I
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 507
    .end local v1    # "u":I
    :cond_a9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 508
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_b .. :try_end_ad} :catchall_b1

    .line 510
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 511
    return-void

    .line 508
    :catchall_b1
    move-exception v1

    :try_start_b2
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v1
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 520
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 522
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 523
    const-wide v3, 0x10800000001L

    :try_start_c
    iget-boolean v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 524
    const-wide v3, 0x10800000002L

    iget-boolean v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 525
    const-wide v3, 0x10300000003L

    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v5}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 526
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2e

    .line 528
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 529
    return-void

    .line 526
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v3
.end method

.method abstract getHandler()Landroid/os/Handler;
.end method

.method abstract getInQuotaTimeElapsedLocked(ILjava/lang/String;Ljava/lang/String;)J
.end method

.method abstract handleRemovedAppLocked(ILjava/lang/String;)V
.end method

.method abstract handleRemovedUserLocked(I)V
.end method

.method isEnabledLocked()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    return v0
.end method

.method isIndividualQuotaFreeLocked(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isQuotaFreeLocked()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    return v0
.end method

.method isQuotaFreeLocked(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 284
    iget-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 197
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method abstract isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method synthetic lambda$cancelAlarm$1$com-android-server-utils-quota-QuotaTracker(Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 333
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->isAlarmManagerReady()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 334
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_15

    .line 336
    :cond_e
    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    const-string v1, "Alarm not cancelled because boot isn\'t completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_15
    return-void
.end method

.method synthetic lambda$postQuotaStatusChanged$3$com-android-server-utils-quota-QuotaTracker(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    .line 400
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 399
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 401
    .local v1, "listeners":[Lcom/android/server/utils/quota/QuotaChangeListener;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 402
    array-length v0, v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_1e

    aget-object v3, v1, v2

    .line 403
    .local v3, "listener":Lcom/android/server/utils/quota/QuotaChangeListener;
    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaChangeListener;->onQuotaStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 402
    .end local v3    # "listener":Lcom/android/server/utils/quota/QuotaChangeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 405
    :cond_1e
    return-void

    .line 401
    .end local v1    # "listeners":[Lcom/android/server/utils/quota/QuotaChangeListener;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method synthetic lambda$scheduleAlarm$0$com-android-server-utils-quota-QuotaTracker(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 319
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->isAlarmManagerReady()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 320
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->getHandler()Landroid/os/Handler;

    move-result-object v7

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_1d

    .line 322
    :cond_16
    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    const-string v1, "Alarm not scheduled because boot isn\'t completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_1d
    return-void
.end method

.method synthetic lambda$scheduleQuotaCheck$2$com-android-server-utils-quota-QuotaTracker()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 355
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->maybeUpdateAllQuotaStatusLocked()V

    .line 357
    :cond_e
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method maybeScheduleStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 427
    return-void

    .line 430
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "pkgString":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 438
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    new-instance v2, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 439
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void

    .line 443
    :cond_21
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    new-instance v2, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->getInQuotaTimeElapsedLocked(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 443
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    .line 445
    return-void
.end method

.method abstract maybeUpdateAllQuotaStatusLocked()V
.end method

.method abstract maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method onAppRemovedLocked(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 366
    if-nez p2, :cond_a

    .line 367
    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    const-string v1, "Told app removed but given null package name."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 371
    :cond_a
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->removeAlarms(ILjava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker;->handleRemovedAppLocked(ILjava/lang/String;)V

    .line 376
    return-void
.end method

.method abstract onQuotaFreeChangedLocked(ILjava/lang/String;Z)V
.end method

.method abstract onQuotaFreeChangedLocked(Z)V
.end method

.method postQuotaStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 395
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/utils/quota/QuotaTracker;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method public registerQuotaChangeListener(Lcom/android/server/utils/quota/QuotaChangeListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 235
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 237
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->scheduleQuotaCheck()V

    .line 239
    :cond_17
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method scheduleAlarm(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 318
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/utils/quota/QuotaTracker;IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    return-void
.end method

.method scheduleQuotaCheck()V
    .registers 3

    .line 352
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/QuotaTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 256
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    if-ne v1, p1, :cond_9

    .line 258
    monitor-exit v0

    return-void

    .line 260
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 262
    if-nez p1, :cond_10

    .line 263
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->clear()V

    .line 265
    :cond_10
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setQuotaFree(ILjava/lang/String;Z)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isFree"    # Z

    .line 206
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 208
    .local v1, "wasFree":Z
    if-eq v1, p3, :cond_1f

    .line 209
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->onQuotaFreeChangedLocked(ILjava/lang/String;Z)V

    .line 212
    .end local v1    # "wasFree":Z
    :cond_1f
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public setQuotaFree(Z)V
    .registers 4
    .param p1, "isFree"    # Z

    .line 217
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    if-ne v1, p1, :cond_9

    .line 219
    monitor-exit v0

    return-void

    .line 221
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    .line 223
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    if-nez v1, :cond_11

    .line 224
    monitor-exit v0

    return-void

    .line 226
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->onQuotaFreeChangedLocked(Z)V

    .line 227
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 228
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->scheduleQuotaCheck()V

    .line 229
    return-void

    .line 227
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public unregisterQuotaChangeListener(Lcom/android/server/utils/quota/QuotaChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 244
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
