.class public Lcom/android/server/locksettings/RebootEscrowManager;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# static fields
.field public static final REBOOT_ESCROW_ARMED_KEY:Ljava/lang/String; = "reboot_escrow_armed_count"


# instance fields
.field public final mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

.field public final mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

.field public final mKeyGenerationLock:Ljava/lang/Object;

.field public final mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

.field public mLoadEscrowDataErrorCode:I

.field public mLoadEscrowDataWithRetry:Z

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

.field public mRebootEscrowListener:Lcom/android/server/locksettings/RebootEscrowListener;

.field public mRebootEscrowReady:Z

.field public mRebootEscrowTimedOut:Z

.field public mRebootEscrowWanted:Z

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$Q-CnLr-XKfdjc7iQEyOLjKkHmAI(Lcom/android/server/locksettings/RebootEscrowManager;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$setRebootEscrowReady$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$f8WdwaS1Kogx-iVAdeEKFEkwF28(Lcom/android/server/locksettings/RebootEscrowManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$loadRebootEscrowDataIfAvailable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hOBfdfn-GwwJRsbr8BMi0NbwkA4(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$scheduleLoadRebootEscrowDataOrFail$3(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$odHzlpU08jQ5XJFnb676M8RWte4(Lcom/android/server/locksettings/RebootEscrowManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$setLoadEscrowDataErrorCode$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s13DP6Opd_6Aslp-C7d-8wPbeOU(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$loadRebootEscrowDataIfAvailable$2(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLoadEscrowDataWithRetry(Lcom/android/server/locksettings/RebootEscrowManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataWithRetry:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLoadEscrowDataWithRetry(Lcom/android/server/locksettings/RebootEscrowManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataWithRetry:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcompareAndSetLoadEscrowDataErrorCode(Lcom/android/server/locksettings/RebootEscrowManager;IILandroid/os/Handler;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monGetRebootEscrowKeyFailed(Lcom/android/server/locksettings/RebootEscrowManager;Ljava/util/List;ILandroid/os/Handler;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;Lcom/android/server/pm/UserManagerInternal;)V
    .registers 7

    .line 413
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-direct {v0, p1, p3, p5}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/pm/UserManagerInternal;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;)V
    .registers 6

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 181
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    .line 187
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataWithRetry:Z

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 419
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 420
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    .line 421
    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 422
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    .line 423
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getEventLog()Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 424
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getKeyStoreManager()Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 425
    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public armRebootEscrowIfNeeded()I
    .registers 9

    .line 890
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    const/4 v1, 0x2

    if-nez v0, :cond_6

    return v1

    .line 894
    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 896
    const-string v0, "RebootEscrowManager"

    const-string v1, "Not storing escrow key, RebootEscrowProvider is unavailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x3

    return p0

    .line 901
    :cond_1a
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v2

    .line 904
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v3

    if-eq v2, v3, :cond_4e

    .line 906
    const-string v0, "RebootEscrowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expect reboot escrow provider "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but the RoR is prepared with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Please prepare the RoR again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x4

    return p0

    .line 914
    :cond_4e
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 915
    :try_start_51
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 916
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_c6

    if-nez v4, :cond_62

    .line 919
    const-string v0, "RebootEscrowManager"

    const-string v1, "Escrow key is null, but escrow was marked as ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x5

    return p0

    .line 925
    :cond_62
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    if-nez v2, :cond_76

    .line 927
    const-string v0, "RebootEscrowManager"

    const-string v1, "Failed to get encryption key from keystore."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x6

    return p0

    .line 935
    :cond_76
    invoke-interface {v0, v4, v2}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z

    move-result v0

    if-nez v0, :cond_7e

    const/4 p0, 0x7

    return p0

    .line 940
    :cond_7e
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_armed_count"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getBootCount()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    .line 941
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_stored_timestamp"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    .line 944
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_vbmeta_digest"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 946
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_other_vbmeta_digest"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    const/4 v6, 0x1

    .line 947
    invoke-virtual {v4, v6}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v4

    .line 946
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 948
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_provider"

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    .line 949
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return v5

    :catchall_c6
    move-exception p0

    .line 916
    :try_start_c7
    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw p0
.end method

.method public callToRebootEscrowIfNeeded(IB[B)V
    .registers 7

    .line 808
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    if-nez v0, :cond_5

    return-void

    .line 812
    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    const-string v1, "RebootEscrowManager"

    if-nez v0, :cond_15

    .line 813
    const-string p0, "Not storing escrow data, RebootEscrowProvider is unavailable"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 817
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->generateEscrowKeyIfNeeded()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v0

    if-nez v0, :cond_21

    .line 819
    const-string p0, "Could not generate escrow key"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 823
    :cond_21
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->generateKeyStoreEncryptionKeyIfNeeded()Ljavax/crypto/SecretKey;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 825
    const-string p0, "Failed to generate encryption key from keystore."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 831
    :cond_2f
    :try_start_2f
    invoke-static {v0, p2, p3, v2}, Lcom/android/server/locksettings/RebootEscrowData;->fromSyntheticPassword(Lcom/android/server/locksettings/RebootEscrowKey;B[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object p2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_47

    .line 839
    iget-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowData;->getBlob()[B

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeRebootEscrow(I[B)V

    .line 840
    iget-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 p3, 0x6

    invoke-virtual {p2, p3, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(II)V

    const/4 p1, 0x1

    .line 842
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    return-void

    :catch_47
    move-exception p1

    const/4 p2, 0x0

    .line 834
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 835
    const-string p0, "Could not escrow reboot data"

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final clearMetricsStorage()V
    .registers 4

    .line 658
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_armed_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 659
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_stored_timestamp"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 660
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_vbmeta_digest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 661
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_other_vbmeta_digest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 662
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v0, "reboot_escrow_key_provider"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    return-void
.end method

.method public clearRebootEscrow()Z
    .registers 1

    .line 974
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x1

    return p0
.end method

.method public final clearRebootEscrowIfNeeded()V
    .registers 4

    const/4 v0, 0x0

    .line 865
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 866
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 870
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 871
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_16

    .line 873
    const-string v0, "RebootEscrowManager"

    const-string v1, "RebootEscrowProvider is unavailable for clear request"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 875
    :cond_16
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->clearRebootEscrowKey()V

    .line 878
    :goto_19
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->clearRebootEscrowProvider()V

    .line 879
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    .line 881
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 882
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 883
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    goto :goto_2b

    .line 886
    :cond_3f
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return-void
.end method

.method public final compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V
    .registers 5

    .line 442
    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-ne p1, v0, :cond_7

    .line 443
    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    :cond_7
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 1076
    const-string v0, "mRebootEscrowWanted="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1079
    const-string v0, "mRebootEscrowReady="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1082
    const-string v0, "mRebootEscrowListener="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/server/locksettings/RebootEscrowListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1085
    const-string v0, "mLoadEscrowDataErrorCode="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1086
    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1089
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1090
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    .line 1091
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_83

    .line 1093
    const-string v0, "mPendingRebootEscrowKey is "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_3e

    .line 1094
    const-string/jumbo v0, "set"

    goto :goto_41

    :cond_3e
    const-string/jumbo v0, "not set"

    :goto_41
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_50

    .line 1097
    const-string/jumbo v0, "null"

    goto :goto_58

    :cond_50
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1098
    :goto_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RebootEscrowProvider type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1101
    const-string v0, "Event log:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1103
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1104
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1105
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_83
    move-exception p0

    .line 1091
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw p0
.end method

.method public final generateEscrowKeyIfNeeded()Lcom/android/server/locksettings/RebootEscrowKey;
    .registers 3

    .line 846
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v1, :cond_b

    .line 848
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_1d

    .line 853
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKey;->generate()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_13
    .catchall {:try_start_b .. :try_end_f} :catchall_9

    .line 859
    :try_start_f
    iput-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 860
    monitor-exit v0

    return-object v1

    .line 855
    :catch_13
    const-string p0, "RebootEscrowManager"

    const-string v1, "Could not generate reboot escrow key"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 861
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_9

    throw p0
.end method

.method public final getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;Landroid/os/Handler;)Lcom/android/server/locksettings/RebootEscrowKey;
    .registers 7

    .line 758
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 759
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 761
    const-string p1, "RebootEscrowManager"

    const-string v0, "Had reboot escrow data for users, but RebootEscrowProvider is unavailable"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 764
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    return-object v1

    .line 769
    :cond_15
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    if-nez p1, :cond_23

    const/4 p1, 0x7

    .line 771
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    return-object v1

    .line 776
    :cond_23
    invoke-interface {v0, p1}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 778
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    :cond_2f
    return-object p1
.end method

.method public final getUsersToUnlock(Ljava/util/List;)Ljava/util/List;
    .registers 8

    .line 459
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->isUserSecure(I)Z

    move-result v0

    const-string v2, "RebootEscrowManager"

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 460
    const-string p0, "No reboot escrow data found for system user"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 464
    :cond_1b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 466
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->isUserSecure(I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 467
    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v4

    if-nez v4, :cond_24

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No reboot escrow data found for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 473
    :cond_62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 474
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6b
    :goto_6b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 476
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v4}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->isUserSecure(I)Z

    move-result v3

    if-nez v3, :cond_82

    goto :goto_6b

    .line 480
    :cond_82
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 481
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 483
    invoke-virtual {v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 482
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    goto :goto_6b

    .line 486
    :cond_a3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_a7
    return-object v1
.end method

.method public final getVbmetaDigestStatusOnRestoreComplete()I
    .registers 6

    .line 666
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v0

    .line 667
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v3, "reboot_escrow_key_vbmeta_digest"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 669
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v3, "reboot_escrow_key_other_vbmeta_digest"

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 673
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2a

    .line 674
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v1

    :cond_29
    return v4

    .line 683
    :cond_2a
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    return v1

    .line 686
    :cond_31
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 p0, 0x1

    return p0

    :cond_39
    return v4
.end method

.method public final synthetic lambda$loadRebootEscrowDataIfAvailable$1()V
    .registers 2

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    return-void
.end method

.method public final synthetic lambda$loadRebootEscrowDataIfAvailable$2(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 519
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataOnInternet(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$scheduleLoadRebootEscrowDataOrFail$3(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .registers 5

    .line 534
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$setLoadEscrowDataErrorCode$0(I)V
    .registers 2

    .line 433
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    return-void
.end method

.method public final synthetic lambda$setRebootEscrowReady$4(Z)V
    .registers 2

    .line 956
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/server/locksettings/RebootEscrowListener;

    invoke-interface {p0, p1}, Lcom/android/server/locksettings/RebootEscrowListener;->onPreparedForReboot(Z)V

    return-void
.end method

.method public loadRebootEscrowDataIfAvailable(Landroid/os/Handler;)V
    .registers 8

    .line 492
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 493
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->getUsersToUnlock(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 495
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 496
    const-string p1, "RebootEscrowManager"

    const-string v0, "No reboot escrow data found for users, skipping loading escrow data"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    return-void

    .line 503
    :cond_1b
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_35

    const/4 v3, 0x0

    .line 505
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 506
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getWakeLockTimeoutMillis()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 510
    :cond_35
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v3, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;)V

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 515
    invoke-virtual {v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowTimeoutMillis()I

    move-result v4

    int-to-long v4, v4

    .line 510
    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 517
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v3, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadRebootEscrowDataOnInternet(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .registers 7

    .line 555
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 556
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void

    .line 561
    :cond_d
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager$1;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 598
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2, v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->requestNetworkWithInternet(Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 600
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    :cond_1f
    return-void
.end method

.method public loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .registers 10

    .line 613
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 614
    const-string v1, "RebootEscrowManager"

    if-nez v0, :cond_f

    .line 615
    const-string v2, "Failed to load the key for resume on reboot from key store."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v2, 0x1

    .line 620
    :try_start_10
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;Landroid/os/Handler;)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_64

    const/4 v3, 0x0

    if-nez v1, :cond_3b

    .line 629
    iget p4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-nez p4, :cond_36

    .line 631
    iget-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result p4

    .line 634
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_provider"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v0

    if-eq p4, v0, :cond_32

    const/4 p4, 0x6

    .line 635
    invoke-virtual {p0, p4, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    goto :goto_36

    :cond_32
    const/4 p4, 0x3

    .line 637
    invoke-virtual {p0, p4, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    :cond_36
    :goto_36
    add-int/2addr p2, v2

    .line 640
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    return-void

    .line 644
    :cond_3b
    iget-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p3, v2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    .line 647
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move p4, v2

    :goto_45
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 648
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4, v1, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->restoreRebootEscrowForUser(ILcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z

    move-result v4

    and-int/2addr p4, v4

    goto :goto_45

    :cond_59
    if-nez p4, :cond_5f

    const/4 p3, 0x5

    .line 652
    invoke-virtual {p0, v3, p3, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V

    :cond_5f
    add-int/2addr p2, v2

    .line 654
    invoke-virtual {p0, p4, p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZILandroid/os/Handler;)V

    return-void

    :catch_64
    move-exception v0

    .line 622
    const-string v3, "Failed to load escrow key, scheduling retry."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/2addr p2, v2

    .line 623
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->scheduleLoadRebootEscrowDataOrFail(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final onEscrowRestoreComplete(ZILandroid/os/Handler;)V
    .registers 8

    .line 735
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const-string/jumbo v2, "reboot_escrow_armed_count"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v0

    .line 737
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getBootCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-nez p1, :cond_19

    if-eq v0, v3, :cond_1c

    const/4 v0, 0x5

    if-gt v1, v0, :cond_1c

    .line 739
    :cond_19
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->reportMetricOnRestoreComplete(ZILandroid/os/Handler;)V

    .line 742
    :cond_1c
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->clearKeyStoreEncryptionKey()V

    .line 744
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->clearRebootEscrowProvider()V

    .line 745
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    .line 747
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p1, :cond_32

    .line 748
    iget-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->stopRequestingNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 751
    :cond_32
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_39

    .line 752
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_39
    return-void
.end method

.method public final onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V
    .registers 6

    .line 449
    const-string v0, "RebootEscrowManager"

    const-string v1, "Had reboot escrow data for users, but no key; removing escrow storage."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 451
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    goto :goto_b

    :cond_1f
    const/4 p1, 0x0

    .line 454
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZILandroid/os/Handler;)V

    return-void
.end method

.method public prepareRebootEscrow()Z
    .registers 3

    .line 962
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 963
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_14

    .line 964
    const-string p0, "RebootEscrowManager"

    const-string v0, "No reboot escrow provider, skipping resume on reboot preparation."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 v0, 0x1

    .line 968
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 969
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return v0
.end method

.method public final reportMetricOnRestoreComplete(ZILandroid/os/Handler;)V
    .registers 15

    .line 696
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    move v5, v0

    goto :goto_d

    :cond_c
    move v5, v1

    .line 700
    :goto_d
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_stored_timestamp"

    const-wide/16 v3, -0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v3, v4, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    .line 703
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getCurrentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v3

    if-eqz v0, :cond_2d

    cmp-long v0, v8, v6

    if-lez v0, :cond_2d

    sub-long/2addr v8, v6

    long-to-int v0, v8

    .line 705
    div-int/lit16 v0, v0, 0x3e8

    :goto_2b
    move v7, v0

    goto :goto_2f

    :cond_2d
    const/4 v0, -0x1

    goto :goto_2b

    .line 708
    :goto_2f
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->getVbmetaDigestStatusOnRestoreComplete()I

    move-result v8

    if-nez p1, :cond_38

    .line 710
    invoke-virtual {p0, v10, v1, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V

    .line 713
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting RoR recovery metrics, success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", service type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RebootEscrowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iget v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    const/4 v9, -0x1

    move v3, p1

    move v6, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->reportMetric(ZIIIIII)V

    .line 731
    invoke-virtual {p0, v10, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    return-void
.end method

.method public final restoreRebootEscrowForUser(ILcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .registers 8

    .line 785
    const-string v0, "RebootEscrowManager"

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 790
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readRebootEscrow(I)[B

    move-result-object v1

    .line 791
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    .line 793
    invoke-static {p2, v1, p3}, Lcom/android/server/locksettings/RebootEscrowData;->fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object p2

    .line 795
    iget-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowData;->getSpVersion()B

    move-result v1

    .line 796
    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowData;->getSyntheticPassword()[B

    move-result-object p2

    .line 795
    invoke-interface {p3, v1, p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->onRebootEscrowRestored(B[BI)V

    .line 797
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Restored reboot escrow data for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(II)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_42} :catch_44

    const/4 p0, 0x1

    return p0

    :catch_44
    move-exception p0

    .line 801
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not load reboot escrow data for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public scheduleLoadRebootEscrowDataOrFail(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .registers 13

    .line 527
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowDataRetryLimit()I

    move-result v0

    .line 530
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowDataRetryIntervalSeconds()I

    move-result v1

    .line 532
    const-string v2, "RebootEscrowManager"

    if-ge p2, v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    if-nez v0, :cond_3e

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling loadRebootEscrowData retry number: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v2, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long p0, v1

    invoke-virtual {v0, v4, v2, p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-void

    :cond_3e
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    .line 540
    iget-boolean p0, v3, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_52

    .line 541
    const-string p0, "Failed to load reboot escrow data within timeout"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x9

    .line 542
    invoke-virtual {v3, p1, p0, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V

    goto :goto_6f

    .line 544
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to load reboot escrow data after "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " attempts"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    .line 545
    invoke-virtual {v3, p1, p0, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V

    .line 548
    :goto_6f
    invoke-virtual {v3, v6, v5, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    return-void
.end method

.method public final setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V
    .registers 5

    .line 430
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v1, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;I)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRebootEscrowListener(Lcom/android/server/locksettings/RebootEscrowListener;)V
    .registers 2

    .line 979
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/server/locksettings/RebootEscrowListener;

    return-void
.end method

.method public final setRebootEscrowReady(Z)V
    .registers 4

    .line 955
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    if-eq v0, p1, :cond_e

    .line 956
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 958
    :cond_e
    iput-boolean p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    return-void
.end method
