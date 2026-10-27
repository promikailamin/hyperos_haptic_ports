.class public Lcom/miui/xspace/XSpaceManagerImpl;
.super Lcom/miui/xspace/XSpaceManagerStub;
.source "XSpaceManagerImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "XSpaceManagerImpl"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/miui/xspace/XSpaceManagerStub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist belongToCrossXSpaceSecureSettings(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "setting"    # Ljava/lang/String;

    .line 54
    invoke-static {p2, p1}, Landroid/provider/MiuiSettings$XSpace;->belongToCrossXSpaceSecureSettings(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist belongToCrossXSpaceSettings(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "setting"    # Ljava/lang/String;

    .line 58
    invoke-static {p2, p1}, Landroid/provider/MiuiSettings$System;->belongToCrossXSpaceSettings(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist canCrossUser(II)Z
    .registers 4
    .param p1, "callingUserId"    # I
    .param p2, "toUserId"    # I

    .line 85
    invoke-static {p1, p2}, Lmiui/securityspace/XSpaceUserHandle;->canCrossUser(II)Z

    move-result v0

    return v0
.end method

.method public blacklist checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;

    .line 89
    invoke-static {p1, p2, p3}, Lmiui/securityspace/XSpaceResolverActivityHelper;->checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z

    move-result v0

    return v0
.end method

.method public blacklist getXSpaceIconMaskId()I
    .registers 2

    .line 42
    const v0, 0x110800f5

    return v0
.end method

.method public blacklist getXSpaceUserFlag()I
    .registers 2

    .line 50
    const/high16 v0, 0x800000

    return v0
.end method

.method public blacklist getXSpaceUserId()I
    .registers 2

    .line 46
    const/16 v0, 0x3e7

    return v0
.end method

.method public blacklist hookGetStorageVolume(Landroid/content/Context;Ljava/io/File;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .line 97
    if-nez p3, :cond_2f

    if-nez p2, :cond_5

    goto :goto_2f

    .line 101
    :cond_5
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 102
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/securityspace/XSpaceUtils;->isXSpaceExternalPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 103
    const/16 v1, 0x3e7

    invoke-static {p2, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    move-result-object p3

    .line 106
    :cond_1d
    if-nez p3, :cond_2e

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getSecondSpaceId()I

    move-result v2

    if-ne v1, v2, :cond_2e

    .line 107
    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    move-result-object p3

    .line 110
    :cond_2e
    return-object p3

    .line 98
    .end local v0    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_2f
    :goto_2f
    return-object p3
.end method

.method public blacklist isCrossUserIncomingUri(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_c

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCrossUserService(Landroid/content/pm/ServiceInfo;I)Z
    .registers 6
    .param p1, "sInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "userId"    # I

    .line 70
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 71
    return v0

    .line 76
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_d} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    .line 80
    goto :goto_f

    .line 79
    :catch_e
    move-exception v0

    .line 81
    :goto_f
    const/4 v0, 0x0

    return v0

    .line 77
    :catch_11
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/SecurityException;
    return v0
.end method

.method public blacklist isUidBelongtoXSpace(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 38
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isXSpaceMatch(JZI)Z
    .registers 9
    .param p1, "flags"    # J
    .param p3, "isInstalled"    # Z
    .param p4, "userId"    # I

    .line 93
    invoke-virtual {p0, p4}, Lcom/miui/xspace/XSpaceManagerImpl;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    if-nez p3, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public blacklist isXSpaceUserHandle(Landroid/os/UserHandle;)Z
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 34
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public blacklist isXSpaceUserId(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 30
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method
