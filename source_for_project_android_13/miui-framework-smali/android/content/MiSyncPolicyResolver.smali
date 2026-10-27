.class public Landroid/content/MiSyncPolicyResolver;
.super Ljava/lang/Object;
.source "MiSyncPolicyResolver.java"


# static fields
.field public static final blacklist MI_SYNC_STRATEGY_MI_OPTIMIZED:I = 0x1

.field public static final blacklist MI_SYNC_STRATEGY_OFFICIAL:I = 0x0

.field public static final blacklist SYNC_ERROR_MI_CANCELED:Ljava/lang/String; = "mi_canceled"

.field public static final blacklist SYNC_EXTRAS_MICLOUD_FORCE:Ljava/lang/String; = "micloud_force"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMiSyncPauseToTime(Landroid/accounts/Account;)J
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;

    .line 57
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/IContentService;->getMiSyncPauseToTime(Landroid/accounts/Account;I)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 58
    :catch_d
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist getMiSyncStrategy(Landroid/accounts/Account;)I
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;

    .line 101
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/IContentService;->getMiSyncStrategy(Landroid/accounts/Account;I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 102
    :catch_d
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist setMiSyncPauseToTime(Landroid/accounts/Account;J)V
    .registers 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "pauseTimeMillis"    # J

    .line 31
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p0, p1, p2, v1}, Landroid/content/IContentService;->setMiSyncPauseToTime(Landroid/accounts/Account;JI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 35
    goto :goto_d

    .line 32
    :catch_c
    move-exception v0

    .line 36
    :goto_d
    return-void
.end method

.method public static blacklist setMiSyncResume(Landroid/accounts/Account;)V
    .registers 3
    .param p0, "account"    # Landroid/accounts/Account;

    .line 45
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Landroid/content/MiSyncPolicyResolver;->setMiSyncPauseToTime(Landroid/accounts/Account;J)V

    .line 46
    return-void
.end method

.method public static blacklist setMiSyncStrategy(Landroid/accounts/Account;I)V
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "strategy"    # I

    .line 85
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->setMiSyncStrategy(Landroid/accounts/Account;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 89
    goto :goto_d

    .line 86
    :catch_c
    move-exception v0

    .line 90
    :goto_d
    return-void
.end method
