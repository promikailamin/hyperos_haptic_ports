.class public interface abstract Lcom/android/server/content/SyncStorageEngineStub;
.super Ljava/lang/Object;
.source "SyncStorageEngineStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/content/SyncStorageEngineStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/content/SyncStorageEngineStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngineStub;

    return-object v0
.end method


# virtual methods
.method public abstract clearAndReadAndWriteLocked()V
.end method

.method public abstract doDatabaseCleanupLocked([Landroid/accounts/Account;I)V
.end method

.method public getMiSyncPauseLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncPause;
    .registers 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiSyncPauseToTimeLocked(Landroid/accounts/Account;I)J
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 28
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMiSyncStrategyLocked(Landroid/accounts/Account;I)I
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getMiSyncStrategyLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncStrategy;
    .registers 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract initAndReadAndWriteLocked(Ljava/io/File;)V
.end method

.method public abstract setMiSyncPauseToTimeLocked(Landroid/accounts/Account;JI)V
.end method

.method public abstract setMiSyncStrategyLocked(Landroid/accounts/Account;II)V
.end method

.method public abstract updateResultStatusLocked(Landroid/content/SyncStatusInfo;Ljava/lang/String;Landroid/content/SyncResult;)V
.end method
