.class public interface abstract Lcom/android/server/content/SyncManagerStub;
.super Ljava/lang/Object;
.source "SyncManagerStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/content/SyncManagerStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/content/SyncManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManagerStub;

    return-object v0
.end method


# virtual methods
.method public canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public getMasterSyncAutomatically(Landroid/accounts/Account;ILcom/android/server/content/SyncStorageEngine;)Z
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "syncStorageEngine"    # Lcom/android/server/content/SyncStorageEngine;

    .line 32
    invoke-virtual {p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v0

    return v0
.end method

.method public getSyncDelayedH(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncManager;)J
    .registers 5
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 23
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract isRestrictSync(Ljava/lang/String;I[Ljava/lang/Object;)Z
.end method

.method public abstract registerSyncSettingsObserver(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
.end method

.method public abstract wrapSyncJobInfo(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine;Landroid/app/job/JobInfo$Builder;J)V
.end method
