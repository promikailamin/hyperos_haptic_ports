.class public Lcom/android/server/am/PendingIntentController;
.super Ljava/lang/Object;
.source "PendingIntentController.java"


# static fields
.field private static final RECENT_N:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field final mH:Landroid/os/Handler;

.field final mIntentSenderRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/am/PendingIntentRecord$Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIntentsPerUid:Landroid/util/SparseIntArray;

.field final mLock:Ljava/lang/Object;

.field private final mRecentIntentsPerUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/RingBuffer<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUserController:Lcom/android/server/am/UserController;


# direct methods
.method public static synthetic $r8$lambda$Lty4hx9MGaos-2CBai-KetCFYSs(Lcom/android/server/am/PendingIntentController;Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PendingIntentController;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ROdWOA0WWhZoFBvWn7O_C9hbWGg(Lcom/android/server/am/PendingIntentController;Landroid/os/RemoteCallbackList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/PendingIntentController;->handlePendingIntentCancelled(Landroid/os/RemoteCallbackList;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "userController"    # Lcom/android/server/am/UserController;
    .param p3, "constants"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 93
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 105
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 106
    iput-object p2, p0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    .line 107
    iput-object p3, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 108
    return-void
.end method

.method private clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;)V"
        }
    .end annotation

    .line 358
    .local p2, "pir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    .line 359
    return-void
.end method

.method private handlePendingIntentCancelled(Landroid/os/RemoteCallbackList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p1, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 343
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 345
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/IResultReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    .line 348
    goto :goto_14

    .line 346
    :catch_13
    move-exception v2

    .line 343
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 350
    .end local v1    # "i":I
    :cond_17
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 353
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 354
    return-void
.end method

.method private makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 5
    .param p1, "rec"    # Lcom/android/server/am/PendingIntentRecord;

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 331
    invoke-virtual {p1}, Lcom/android/server/am/PendingIntentRecord;->detachCancelListenersLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 332
    .local v0, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    if-eqz v0, :cond_17

    .line 333
    new-instance v1, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 335
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    .end local v1    # "m":Landroid/os/Message;
    :cond_17
    const-class v1, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerInternal;

    .line 338
    .local v1, "ami":Lcom/android/server/AlarmManagerInternal;
    new-instance v2, Landroid/app/PendingIntent;

    invoke-direct {v2, p1}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-interface {v1, v2}, Lcom/android/server/AlarmManagerInternal;->remove(Landroid/app/PendingIntent;)V

    .line 339
    return-void
.end method


# virtual methods
.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .registers 9
    .param p1, "sender"    # Landroid/content/IIntentSender;

    .line 241
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    .line 242
    return-void

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_8
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_74

    .line 247
    .local v1, "rec":Lcom/android/server/am/PendingIntentRecord;
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const-wide/32 v4, 0x10000000

    .line 248
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 247
    invoke-interface {v2, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 249
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_26} :catch_6d
    .catchall {:try_start_b .. :try_end_26} :catchall_74

    if-eqz v3, :cond_2f

    .line 258
    .end local v2    # "uid":I
    nop

    .line 259
    const/4 v2, 0x1

    :try_start_2a
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 260
    .end local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_74

    .line 261
    return-void

    .line 250
    .restart local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .restart local v2    # "uid":I
    :cond_2f
    :try_start_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: cancelIntentSender() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed to cancel package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .end local p1    # "sender":Landroid/content/IIntentSender;
    throw v4
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_6d} :catch_6d
    .catchall {:try_start_2f .. :try_end_6d} :catchall_74

    .line 256
    .end local v2    # "uid":I
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .restart local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .restart local p1    # "sender":Landroid/content/IIntentSender;
    :catch_6d
    move-exception v2

    .line 257
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6e
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .end local p1    # "sender":Landroid/content/IIntentSender;
    throw v3

    .line 260
    .end local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .restart local p1    # "sender":Landroid/content/IIntentSender;
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_74

    throw v1
.end method

.method public cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V
    .registers 7
    .param p1, "rec"    # Lcom/android/server/am/PendingIntentRecord;
    .param p2, "cleanActivity"    # Z

    .line 264
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 268
    if-eqz p2, :cond_2c

    iget-object v1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v1, :cond_2c

    .line 269
    new-instance v1, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 272
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    .end local v1    # "m":Landroid/os/Message;
    :cond_2c
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 6
    .param p1, "pir"    # Lcom/android/server/am/PendingIntentRecord;

    .line 539
    iget v0, p1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 540
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 541
    .local v1, "idx":I
    if-ltz v1, :cond_2c

    .line 542
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 544
    .local v2, "newCount":I
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    add-int/lit8 v3, v3, -0xa

    if-ne v2, v3, :cond_1f

    .line 545
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 547
    :cond_1f
    if-nez v2, :cond_27

    .line 548
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_2c

    .line 550
    :cond_27
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 553
    .end local v2    # "newCount":I
    :cond_2c
    :goto_2c
    return-void
.end method

.method public dumpPendingIntentStatsForStatsd()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/PendingIntentStats;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "pendingIntentStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntentStats;>;"
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_98

    .line 442
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 443
    .local v2, "countsByUid":Landroid/util/SparseIntArray;
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 445
    .local v3, "bundleSizesByUid":Landroid/util/SparseIntArray;
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 446
    .local v5, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v5, :cond_24

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_39

    .line 447
    goto :goto_24

    .line 449
    :cond_39
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    .line 450
    .local v6, "record":Lcom/android/server/am/PendingIntentRecord;
    iget v7, v6, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    .line 452
    .local v7, "index":I
    const/4 v8, 0x1

    if-gez v7, :cond_5b

    .line 453
    iget v9, v6, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 454
    iget v8, v6, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v9, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 455
    invoke-virtual {v9}, Landroid/content/Intent;->getExtrasTotalSize()I

    move-result v9

    .line 454
    invoke-virtual {v3, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_77

    .line 457
    :cond_5b
    iget v9, v6, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 458
    iget v8, v6, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 459
    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    iget-object v10, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v10, v10, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 460
    invoke-virtual {v10}, Landroid/content/Intent;->getExtrasTotalSize()I

    move-result v10

    add-int/2addr v9, v10

    .line 458
    invoke-virtual {v3, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 462
    .end local v5    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v6    # "record":Lcom/android/server/am/PendingIntentRecord;
    .end local v7    # "index":I
    :goto_77
    goto :goto_24

    .line 465
    :cond_78
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .local v5, "size":I
    :goto_7d
    if-ge v4, v5, :cond_98

    .line 466
    new-instance v6, Landroid/app/PendingIntentStats;

    .line 467
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 468
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 469
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    div-int/lit16 v9, v9, 0x400

    invoke-direct {v6, v7, v8, v9}, Landroid/app/PendingIntentStats;-><init>(III)V

    .line 466
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 472
    .end local v2    # "countsByUid":Landroid/util/SparseIntArray;
    .end local v3    # "bundleSizesByUid":Landroid/util/SparseIntArray;
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_98
    monitor-exit v1

    .line 473
    return-object v0

    .line 472
    :catchall_9a
    move-exception v2

    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_8 .. :try_end_9c} :catchall_9a

    throw v2
.end method

.method dumpPendingIntents(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    const/4 v1, 0x0

    .line 365
    .local v1, "printed":Z
    :try_start_4
    const-string v2, "ACTIVITY MANAGER PENDING INTENTS (dumpsys activity intents)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_f1

    .line 369
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 370
    .local v2, "byPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v3, "weakRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 372
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 373
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 374
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 375
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x0

    .line 376
    .local v6, "rec":Lcom/android/server/am/PendingIntentRecord;
    :goto_3b
    if-nez v6, :cond_41

    .line 377
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    goto :goto_25

    .line 380
    :cond_41
    if-eqz p3, :cond_4e

    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    .line 381
    goto :goto_25

    .line 383
    :cond_4e
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 384
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    if-nez v7, :cond_67

    .line 385
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 386
    iget-object v8, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_67
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    nop

    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v6    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    goto :goto_25

    .line 390
    :cond_6c
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_c7

    .line 391
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 392
    .local v6, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    const/4 v1, 0x1

    .line 393
    const-string v7, "  * "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " items"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_9a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_c4

    .line 396
    const-string v8, "    #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 397
    if-eqz p2, :cond_c1

    .line 398
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/PendingIntentRecord;

    const-string v9, "      "

    invoke-virtual {v8, p1, v9}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 395
    :cond_c1
    add-int/lit8 v7, v7, 0x1

    goto :goto_9a

    .line 390
    .end local v6    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v7    # "j":I
    :cond_c4
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 402
    .end local v5    # "i":I
    :cond_c7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f1

    .line 403
    const/4 v1, 0x1

    .line 404
    const-string v5, "  * WEAK REFS:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f1

    .line 406
    const-string v6, "    #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 405
    add-int/lit8 v5, v5, 0x1

    goto :goto_d4

    .line 411
    .end local v2    # "byPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v3    # "weakRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v5    # "i":I
    :cond_f1
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 412
    .local v2, "sizeOfIntentsPerUid":I
    if-lez v2, :cond_11b

    .line 413
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_fa
    if-ge v3, v2, :cond_11b

    .line 414
    const-string v4, "  * UID: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 416
    const-string v4, " total: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 413
    add-int/lit8 v3, v3, 0x1

    goto :goto_fa

    .line 421
    .end local v3    # "i":I
    :cond_11b
    if-nez v1, :cond_122

    .line 422
    const-string v3, "  (nothing)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    .end local v1    # "printed":Z
    .end local v2    # "sizeOfIntentsPerUid":I
    :cond_122
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_124
    move-exception v1

    monitor-exit v0
    :try_end_126
    .catchall {:try_start_4 .. :try_end_126} :catchall_124

    throw v1
.end method

.method public getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;
    .registers 35
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "intents"    # [Landroid/content/Intent;
    .param p10, "resolvedTypes"    # [Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "bOptions"    # Landroid/os/Bundle;

    .line 119
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v15, p9

    iget-object v14, v1, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 120
    :try_start_9
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_10e

    if-eqz v0, :cond_2f

    :try_start_d
    const-string v0, "ActivityManager_MU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntentSender(): uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 172
    :catchall_26
    move-exception v0

    move-object/from16 v7, p10

    move/from16 v19, p11

    move-object/from16 v21, v14

    goto/16 :goto_115

    .line 124
    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    if-eqz v15, :cond_3e

    .line 125
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    array-length v4, v15

    if-ge v3, v4, :cond_3e

    .line 126
    aget-object v4, v15, v3

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setDefusable(Z)V
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_26

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 129
    .end local v3    # "i":I
    :cond_3e
    move-object/from16 v13, p12

    :try_start_40
    invoke-static {v13, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_10e

    .line 131
    const/high16 v3, 0x20000000

    and-int v3, p11, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4c

    move v3, v0

    goto :goto_4d

    :cond_4c
    move v3, v4

    :goto_4d
    move/from16 v16, v3

    .line 132
    .local v16, "noCreate":Z
    const/high16 v3, 0x10000000

    and-int v3, p11, v3

    if-eqz v3, :cond_57

    move v3, v0

    goto :goto_58

    :cond_57
    move v3, v4

    :goto_58
    move/from16 v17, v3

    .line 133
    .local v17, "cancelCurrent":Z
    const/high16 v3, 0x8000000

    and-int v3, p11, v3

    if-eqz v3, :cond_61

    move v4, v0

    :cond_61
    move/from16 v18, v4

    .line 134
    .local v18, "updateCurrent":Z
    const v3, -0x38000001

    and-int v19, p11, v3

    .line 137
    .end local p11    # "flags":I
    .local v19, "flags":I
    :try_start_68
    new-instance v20, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 139
    invoke-static/range {p12 .. p12}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v21
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_108

    move-object/from16 v3, v20

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, v19

    move-object/from16 v13, v21

    move-object/from16 v21, v14

    move/from16 v14, p5

    :try_start_88
    invoke-direct/range {v3 .. v14}, Lcom/android/server/am/PendingIntentRecord$Key;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V

    move-object/from16 v3, v20

    .line 141
    .local v3, "key":Lcom/android/server/am/PendingIntentRecord$Key;
    iget-object v4, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 142
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    const/4 v5, 0x0

    if-eqz v4, :cond_9f

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_a0

    :cond_9f
    move-object v6, v5

    .line 143
    .local v6, "rec":Lcom/android/server/am/PendingIntentRecord;
    :goto_a0
    if-eqz v6, :cond_ed

    .line 144
    if-nez v17, :cond_df

    .line 145
    if-eqz v18, :cond_db

    .line 146
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v7, :cond_bb

    .line 147
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v15, :cond_b7

    .line 148
    array-length v8, v15

    sub-int/2addr v8, v0

    aget-object v8, v15, v8

    goto :goto_b8

    :cond_b7
    move-object v8, v5

    .line 147
    :goto_b8
    invoke-virtual {v7, v8}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 150
    :cond_bb
    if-eqz v15, :cond_d0

    .line 151
    array-length v5, v15

    sub-int/2addr v5, v0

    iget-object v0, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    aput-object v0, v15, v5

    .line 152
    iget-object v0, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v15, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 153
    iget-object v0, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;
    :try_end_cb
    .catchall {:try_start_88 .. :try_end_cb} :catchall_104

    move-object/from16 v7, p10

    :try_start_cd
    iput-object v7, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_dd

    .line 155
    :cond_d0
    move-object/from16 v7, p10

    iget-object v0, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 156
    iget-object v0, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_dd

    .line 145
    :cond_db
    move-object/from16 v7, p10

    .line 159
    :goto_dd
    monitor-exit v21

    return-object v6

    .line 161
    :cond_df
    move-object/from16 v7, p10

    invoke-direct {v1, v6}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 162
    iget-object v0, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v1, v6}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    goto :goto_ef

    .line 143
    :cond_ed
    move-object/from16 v7, p10

    .line 165
    :goto_ef
    if-eqz v16, :cond_f3

    .line 166
    monitor-exit v21

    return-object v6

    .line 168
    :cond_f3
    new-instance v0, Lcom/android/server/am/PendingIntentRecord;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/PendingIntentRecord;-><init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V

    .line 169
    .end local v6    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .local v0, "rec":Lcom/android/server/am/PendingIntentRecord;
    invoke-virtual {v1, v0}, Lcom/android/server/am/PendingIntentController;->incrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 170
    iget-object v5, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v21

    return-object v0

    .line 172
    .end local v0    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v3    # "key":Lcom/android/server/am/PendingIntentRecord$Key;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v16    # "noCreate":Z
    .end local v17    # "cancelCurrent":Z
    .end local v18    # "updateCurrent":Z
    :catchall_104
    move-exception v0

    move-object/from16 v7, p10

    goto :goto_115

    :catchall_108
    move-exception v0

    move-object/from16 v7, p10

    move-object/from16 v21, v14

    goto :goto_115

    .end local v19    # "flags":I
    .restart local p11    # "flags":I
    :catchall_10e
    move-exception v0

    move-object/from16 v7, p10

    move-object/from16 v21, v14

    move/from16 v19, p11

    .end local p11    # "flags":I
    .restart local v19    # "flags":I
    :goto_115
    monitor-exit v21
    :try_end_116
    .catchall {:try_start_cd .. :try_end_116} :catchall_117

    throw v0

    :catchall_117
    move-exception v0

    goto :goto_115
.end method

.method getPendingIntentFlags(Landroid/content/IIntentSender;)I
    .registers 5
    .param p1, "target"    # Landroid/content/IIntentSender;

    .line 320
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1f

    .line 321
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x0

    return v0

    .line 324
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_22
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    monitor-exit v0

    return v1

    .line 326
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method incrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 13
    .param p1, "pir"    # Lcom/android/server/am/PendingIntentRecord;

    .line 484
    iget v0, p1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 485
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 486
    .local v1, "idx":I
    const/4 v2, 0x1

    .line 487
    .local v2, "newCount":I
    if-ltz v1, :cond_19

    .line 488
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 489
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_1e

    .line 491
    :cond_19
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 495
    :goto_1e
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 496
    .local v3, "lowBound":I
    const/4 v5, 0x0

    .line 497
    .local v5, "recentHistory":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Ljava/lang/String;>;"
    const-string v6, "Too many PendingIntent created for uid "

    const-string v7, "ActivityManager"

    if-ne v2, v3, :cond_3c

    .line 498
    new-instance v8, Lcom/android/internal/util/RingBuffer;

    const-class v9, Ljava/lang/String;

    invoke-direct {v8, v9, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    move-object v5, v8

    .line 499
    iget-object v8, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v8, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_99

    .line 500
    :cond_3c
    if-le v2, v3, :cond_4e

    iget-object v8, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    if-gt v2, v8, :cond_4e

    .line 501
    iget-object v8, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Lcom/android/internal/util/RingBuffer;

    goto :goto_99

    .line 503
    :cond_4e
    iget-object v8, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_ERROR_THRESHOLD:I

    if-lt v2, v8, :cond_99

    .line 504
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", aborting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 505
    invoke-virtual {v9}, Lcom/android/server/am/PendingIntentRecord$Key;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 506
    .local v8, "msg":Ljava/lang/String;
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/16 v9, 0x3e8

    if-ne v0, v9, :cond_8c

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    if-ne v9, v10, :cond_8c

    .line 510
    const-string v9, "Too many PendingIntent created for system_server"

    invoke-static {v7, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 512
    :cond_8c
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4, v0, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 513
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 518
    .end local v8    # "msg":Ljava/lang/String;
    :cond_99
    :goto_99
    if-nez v5, :cond_9c

    .line 519
    return-void

    .line 522
    :cond_9c
    iget-object v8, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v8}, Lcom/android/server/am/PendingIntentRecord$Key;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 525
    iget-object v8, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    if-ne v2, v8, :cond_e0

    .line 526
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", recent "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 527
    invoke-virtual {v5}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 532
    :cond_e0
    return-void
.end method

.method onActivityManagerInternalAdded()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z
    .registers 7
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 278
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 279
    const-string v0, "ActivityManager"

    const-string/jumbo v2, "registerIntentSenderCancelListener called on non-PendingIntentRecord"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v1

    .line 284
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_11
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 286
    .local v2, "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    iget-boolean v3, v2, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 287
    .local v3, "isCancelled":Z
    if-nez v3, :cond_1d

    .line 288
    invoke-virtual {v2, p2}, Lcom/android/server/am/PendingIntentRecord;->registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 289
    monitor-exit v0

    return v1

    .line 291
    :cond_1d
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 293
    .end local v2    # "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local v3    # "isCancelled":Z
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v1
.end method

.method removePendingIntentsForPackage(Ljava/lang/String;IIZ)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "doIt"    # Z

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_f

    .line 185
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 188
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 189
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 190
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 192
    .local v3, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-nez v3, :cond_2b

    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 194
    goto :goto_19

    .line 196
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 197
    .local v4, "pir":Lcom/android/server/am/PendingIntentRecord;
    if-nez v4, :cond_37

    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 199
    goto :goto_19

    .line 201
    :cond_37
    if-nez p1, :cond_40

    .line 203
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_5e

    .line 205
    goto :goto_19

    .line 208
    :cond_40
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p3, :cond_49

    .line 210
    goto :goto_19

    .line 212
    :cond_49
    const/4 v5, -0x1

    if-eq p2, v5, :cond_53

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_53

    .line 214
    goto :goto_19

    .line 216
    :cond_53
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 218
    goto :goto_19

    .line 221
    :cond_5e
    if-nez p4, :cond_63

    .line 222
    const/4 v5, 0x1

    monitor-exit v1

    return v5

    .line 224
    :cond_63
    const/4 v0, 0x1

    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 226
    invoke-direct {p0, v4}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 227
    invoke-virtual {p0, v4}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 228
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v5, :cond_87

    .line 229
    new-instance v5, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;-><init>()V

    iget-object v6, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v7, v4, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v5, p0, v6, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 232
    .local v5, "m":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    .end local v3    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4    # "pir":Lcom/android/server/am/PendingIntentRecord;
    .end local v5    # "m":Landroid/os/Message;
    :cond_87
    goto :goto_19

    .line 235
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :cond_88
    monitor-exit v1

    .line 237
    return v0

    .line 235
    :catchall_8a
    move-exception v2

    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_4 .. :try_end_8c} :catchall_8a

    throw v2
.end method

.method setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V
    .registers 16
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "allowlistToken"    # Landroid/os/IBinder;
    .param p3, "duration"    # J
    .param p5, "type"    # I
    .param p6, "reasonCode"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 309
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1e

    .line 310
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 313
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_21
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/PendingIntentRecord;->setAllowlistDurationLocked(Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 316
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .registers 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 298
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    .line 299
    return-void

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_8
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/am/PendingIntentRecord;->unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 303
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1
.end method
