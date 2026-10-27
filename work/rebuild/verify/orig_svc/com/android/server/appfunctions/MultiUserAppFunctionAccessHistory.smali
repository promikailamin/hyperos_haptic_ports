.class public Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;
.super Ljava/lang/Object;
.source "MultiUserAppFunctionAccessHistory.java"


# static fields
.field public static sInstance:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

.field public final mUserAccessHistoryFactory:Ljava/util/function/Function;

.field public final mUserAccessHistoryMap:Landroid/util/SparseArray;

.field public final mUserPeriodicCleanUpFutures:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$JNbOwVi0fKOgOHxjxiJd4RHkvJE(Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->lambda$schedulePeriodicAccessHistoryCleanUpJob$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/appfunctions/ServiceConfig;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/function/Function;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserAccessHistoryMap:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserPeriodicCleanUpFutures:Landroid/util/SparseArray;

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/appfunctions/ServiceConfig;

    iput-object p1, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 60
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Ljava/util/function/Function;

    iput-object p3, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserAccessHistoryFactory:Ljava/util/function/Function;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;
    .registers 6

    const-class v0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    monitor-enter v0

    .line 166
    :try_start_3
    sget-object v1, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->sInstance:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    if-nez v1, :cond_1d

    .line 167
    new-instance v1, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    new-instance v2, Lcom/android/server/appfunctions/ServiceConfigImpl;

    invoke-direct {v2}, Lcom/android/server/appfunctions/ServiceConfigImpl;-><init>()V

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->SCHEDULED_EXECUTOR_SERVICE:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory$1;

    invoke-direct {v4, p0}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;-><init>(Lcom/android/server/appfunctions/ServiceConfig;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/function/Function;)V

    sput-object v1, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->sInstance:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_21

    .line 183
    :cond_1d
    :goto_1d
    sget-object p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->sInstance:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1b

    monitor-exit v0

    return-object p0

    :goto_21
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1b

    throw p0
.end method


# virtual methods
.method public asUser(I)Lcom/android/server/appfunctions/AppFunctionAccessHistory;
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-object p0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserAccessHistoryMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appfunctions/AppFunctionAccessHistory;

    if-eqz p0, :cond_11

    .line 159
    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_2d

    .line 157
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not unlocked yet"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_f

    throw p0
.end method

.method public final cancelScheduledCleanUpJob(Landroid/os/UserHandle;)V
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserPeriodicCleanUpFutures:Landroid/util/SparseArray;

    .line 140
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_12

    const/4 p1, 0x1

    .line 142
    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_12
    return-void
.end method

.method public final synthetic lambda$schedulePeriodicAccessHistoryCleanUpJob$0(I)V
    .registers 5

    .line 118
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->asUser(I)Lcom/android/server/appfunctions/AppFunctionAccessHistory;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 121
    invoke-interface {p0}, Lcom/android/server/appfunctions/ServiceConfig;->getAppFunctionAccessHistoryRetentionMillis()J

    move-result-wide v1

    .line 119
    invoke-interface {v0, v1, v2}, Lcom/android/server/appfunctions/AppFunctionAccessHistory;->deleteExpiredAppFunctionAccessHistories(J)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to delete expired AppFunction access history for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiUserAppFunctionAccess"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6

    .line 86
    iget-object v0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserAccessHistoryMap:Landroid/util/SparseArray;

    .line 88
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appfunctions/AppFunctionAccessHistory;

    if-eqz v1, :cond_39

    .line 90
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->cancelScheduledCleanUpJob(Landroid/os/UserHandle;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    .line 92
    :try_start_18
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1e
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_39

    :catchall_1c
    move-exception p0

    goto :goto_3b

    :catch_1e
    move-exception p0

    .line 94
    :try_start_1f
    const-string v1, "MultiUserAppFunctionAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to close database for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_1c

    throw p0
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7

    .line 70
    iget-object v0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserAccessHistoryMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 72
    iget-object v1, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserAccessHistoryMap:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserAccessHistoryFactory:Ljava/util/function/Function;

    .line 74
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appfunctions/AppFunctionAccessHistory;

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_30

    .line 76
    :cond_27
    :goto_27
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->schedulePeriodicAccessHistoryCleanUpJob(I)V

    .line 77
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_25

    throw p0
.end method

.method public final schedulePeriodicAccessHistoryCleanUpJob(I)V
    .registers 11

    .line 102
    iget-object v0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    const-string v1, "MultiUserAppFunctionAccess"

    if-eqz v0, :cond_10

    .line 103
    const-string p0, "Scheduled executor service is shut down."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_10
    iget-object v0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserPeriodicCleanUpFutures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Periodic history clean up job for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already scheduled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_32
    iget-object v2, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;I)V

    iget-object v0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 132
    invoke-interface {v0}, Lcom/android/server/appfunctions/ServiceConfig;->getAppFunctionExpiredAccessHistoryDeletionIntervalMillis()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    .line 115
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 134
    iget-object p0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->mUserPeriodicCleanUpFutures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
