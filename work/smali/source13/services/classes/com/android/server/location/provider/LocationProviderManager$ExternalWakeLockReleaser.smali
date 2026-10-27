.class Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;
.super Landroid/os/IRemoteCallback$Stub;
.source "LocationProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalWakeLockReleaser"
.end annotation


# instance fields
.field private final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/PowerManager$WakeLock;)V
    .registers 4
    .param p1, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p2, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .line 3085
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 3086
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 3087
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3088
    return-void
.end method

.method static synthetic lambda$sendResult$0(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 3105
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "data"    # Landroid/os/Bundle;

    .line 3092
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3094
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 3110
    :goto_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3111
    goto :goto_34

    .line 3110
    :catchall_d
    move-exception v2

    goto :goto_43

    .line 3095
    :catch_f
    move-exception v2

    .line 3098
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/RuntimeException;

    if-ne v3, v4, :cond_35

    .line 3099
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wakelock over-released by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 3112
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_34
    return-void

    .line 3104
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    :cond_35
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3107
    nop

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;
    .end local p1    # "data":Landroid/os/Bundle;
    throw v2
    :try_end_43
    .catchall {:try_start_10 .. :try_end_43} :catchall_d

    .line 3110
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;
    .restart local p1    # "data":Landroid/os/Bundle;
    :goto_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3111
    throw v2
.end method
