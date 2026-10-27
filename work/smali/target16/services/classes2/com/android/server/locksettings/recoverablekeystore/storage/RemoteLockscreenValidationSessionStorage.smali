.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationSessionStorage.java"


# instance fields
.field final mSessionsByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public finishSession(I)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 94
    :try_start_3
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 95
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public get(I)Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 57
    :try_start_3
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public startSession(I)Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;
    .registers 7

    .line 70
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 72
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_2e

    .line 77
    :cond_13
    :goto_13
    :try_start_13
    invoke-static {}, Lcom/android/security/SecureBox;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v1
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_17} :catch_27
    .catchall {:try_start_13 .. :try_end_17} :catchall_11

    .line 82
    :try_start_17
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;Ljava/security/KeyPair;J)V

    .line 84
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->mSessionsByUserId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    monitor-exit v0

    return-object v2

    :catch_27
    move-exception p0

    .line 80
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 86
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_11

    throw p0
.end method
