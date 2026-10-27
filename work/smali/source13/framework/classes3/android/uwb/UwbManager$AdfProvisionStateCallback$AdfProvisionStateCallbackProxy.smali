.class Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;
.super Landroid/uwb/IUwbAdfProvisionStateCallbacks$Stub;
.source "UwbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/UwbManager$AdfProvisionStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdfProvisionStateCallbackProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/uwb/UwbManager$AdfProvisionStateCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 231
    invoke-direct {p0}, Landroid/uwb/IUwbAdfProvisionStateCallbacks$Stub;-><init>()V

    .line 223
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mLock:Ljava/lang/Object;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mCallback:Landroid/uwb/UwbManager$AdfProvisionStateCallback;

    .line 233
    iput-object v0, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 234
    return-void
.end method

.method static synthetic blacklist lambda$onProfileAdfsProvisionFailed$1(Landroid/uwb/UwbManager$AdfProvisionStateCallback;ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p0, "callback"    # Landroid/uwb/UwbManager$AdfProvisionStateCallback;
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 283
    invoke-virtual {p0, p1, p2}, Landroid/uwb/UwbManager$AdfProvisionStateCallback;->onProfileAdfsProvisionFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onProfileAdfsProvisioned$0(Landroid/uwb/UwbManager$AdfProvisionStateCallback;Landroid/os/PersistableBundle;)V
    .registers 2
    .param p0, "callback"    # Landroid/uwb/UwbManager$AdfProvisionStateCallback;
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 264
    invoke-virtual {p0, p1}, Landroid/uwb/UwbManager$AdfProvisionStateCallback;->onProfileAdfsProvisioned(Landroid/os/PersistableBundle;)V

    return-void
.end method


# virtual methods
.method blacklist cleanUpProxy()V
    .registers 3

    .line 245
    iget-object v0, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 247
    iput-object v1, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mCallback:Landroid/uwb/UwbManager$AdfProvisionStateCallback;

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method blacklist initProxy(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdfProvisionStateCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/UwbManager$AdfProvisionStateCallback;

    .line 238
    iget-object v0, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iput-object p1, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 240
    iput-object p2, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mCallback:Landroid/uwb/UwbManager$AdfProvisionStateCallback;

    .line 241
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public blacklist onProfileAdfsProvisionFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 271
    const-string v0, "UwbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdfProvisionStateCallbackProxy: onProfileAdfsProvisionFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_25
    iget-object v1, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 277
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mCallback:Landroid/uwb/UwbManager$AdfProvisionStateCallback;

    .line 278
    .local v2, "callback":Landroid/uwb/UwbManager$AdfProvisionStateCallback;
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_3f

    .line 279
    if-eqz v2, :cond_3e

    if-nez v1, :cond_2f

    goto :goto_3e

    .line 282
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 283
    new-instance v0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2, p1, p2}, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/uwb/UwbManager$AdfProvisionStateCallback;ILandroid/os/PersistableBundle;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 284
    invoke-virtual {p0}, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->cleanUpProxy()V

    .line 285
    return-void

    .line 280
    :cond_3e
    :goto_3e
    return-void

    .line 278
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/uwb/UwbManager$AdfProvisionStateCallback;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public blacklist onProfileAdfsProvisioned(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 253
    const-string v0, "UwbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdfProvisionStateCallbackProxy: onProfileAdfsProvisioned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_1b
    iget-object v1, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 258
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->mCallback:Landroid/uwb/UwbManager$AdfProvisionStateCallback;

    .line 259
    .local v2, "callback":Landroid/uwb/UwbManager$AdfProvisionStateCallback;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_35

    .line 260
    if-eqz v2, :cond_34

    if-nez v1, :cond_25

    goto :goto_34

    .line 263
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 264
    new-instance v0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/uwb/UwbManager$AdfProvisionStateCallback;Landroid/os/PersistableBundle;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {p0}, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->cleanUpProxy()V

    .line 266
    return-void

    .line 261
    :cond_34
    :goto_34
    return-void

    .line 259
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/uwb/UwbManager$AdfProvisionStateCallback;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method
