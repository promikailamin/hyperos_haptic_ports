.class public Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;
.super Landroid/os/IRemoteCallback$Stub;
.source "LocationProviderManager.java"


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$41z9UhXZibwPQ8l3P_c8tZE_MBc(Ljava/lang/RuntimeException;)V
    .registers 2

    .line 3108
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/PowerManager$WakeLock;)V
    .registers 3

    .line 3088
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 3089
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 3090
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/PowerManager$WakeLock;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 7

    .line 3095
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3097
    :try_start_4
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 3113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    goto :goto_42

    :catch_f
    move-exception p1

    .line 3101
    :try_start_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/RuntimeException;

    if-ne v2, v3, :cond_35

    .line 3102
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wakelock over-released by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_d

    .line 3113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3107
    :cond_35
    :try_start_35
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3110
    throw p1
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_d

    .line 3113
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3114
    throw p0
.end method
