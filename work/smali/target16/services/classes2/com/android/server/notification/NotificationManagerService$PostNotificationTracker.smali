.class public Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# instance fields
.field public final mCleanupRunnables:Ljava/util/List;

.field public mOngoing:Z

.field public final mStartTime:J

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$Sj35ThxKAaMQVMJuJW7BiRrLEAE(Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->lambda$cancel$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$utPF6Nzeh5_1soUTRhYEbXDXUko(Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->lambda$finish$1()V

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .registers 4

    .line 15486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15487
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    .line 15488
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p1, 0x1

    .line 15489
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    .line 15490
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    .line 15491
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p0, :cond_20

    .line 15492
    const-string p0, "NotificationService"

    const-string p1, "PostNotification: Started"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method


# virtual methods
.method public addCleanupRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 15497
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .registers 7

    .line 15516
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->isOngoing()Z

    move-result v0

    const-string v1, "NotificationService"

    if-nez v0, :cond_e

    .line 15517
    const-string p0, "cancel() called on already-finished tracker"

    invoke-static {v1, p0}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 15520
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    .line 15521
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1d

    .line 15522
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 15524
    :cond_1d
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 15525
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_23

    .line 15527
    :cond_33
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_4f

    .line 15528
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    sub-long/2addr v2, v4

    .line 15530
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 15529
    const-string v0, "PostNotification: Abandoned after %d ms"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-void
.end method

.method public finish()J
    .registers 5

    .line 15542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    sub-long/2addr v0, v2

    .line 15543
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->isOngoing()Z

    move-result v2

    const-string v3, "NotificationService"

    if-nez v2, :cond_15

    .line 15544
    const-string p0, "finish() called on already-finished tracker"

    invoke-static {v3, p0}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_15
    const/4 v2, 0x0

    .line 15547
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    .line 15548
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_24

    .line 15549
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 15551
    :cond_24
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 15552
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_2a

    .line 15554
    :cond_3a
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p0, :cond_4f

    .line 15556
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "PostNotification: Finished in %d ms"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 15555
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 15502
    iget-wide v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    return-wide v0
.end method

.method public isOngoing()Z
    .registers 1

    .line 15507
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    return p0
.end method

.method public final synthetic lambda$cancel$0()V
    .registers 1

    .line 15522
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final synthetic lambda$finish$1()V
    .registers 1

    .line 15549
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
