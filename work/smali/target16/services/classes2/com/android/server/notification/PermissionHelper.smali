.class public final Lcom/android/server/notification/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPermManager:Landroid/permission/IPermissionManager;


# direct methods
.method public static synthetic $r8$lambda$ujfEcEaO8KtQKpKwTI2OrrAIhFM(Lcom/android/server/uri/UriGrantsManagerInternal;ILandroid/net/Uri;)V
    .registers 9

    .line 314
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 316
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    .line 313
    invoke-interface/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/permission/IPermissionManager;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/notification/PermissionHelper;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 70
    iput-object p3, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    return-void
.end method

.method public static grantUriPermission(Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/net/Uri;I)V
    .registers 5

    if-eqz p1, :cond_17

    .line 309
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 311
    :cond_f
    new-instance v0, Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;ILandroid/net/Uri;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public getAppsGrantedPermission(I)Ljava/util/Set;
    .registers 6

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 155
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_1d

    :catch_14
    move-exception p0

    .line 158
    const-string p1, "PermissionHelper"

    const-string v1, "Could not reach system server"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1d
    if-nez p0, :cond_20

    goto :goto_47

    .line 163
    :cond_20
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 164
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_47
    :goto_47
    return-object v0
.end method

.method public getAppsRequestingPermission(I)Ljava/util/Set;
    .registers 8

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 121
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_1e

    goto :goto_d

    .line 124
    :cond_1e
    array-length v2, v1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_d

    aget-object v4, v1, v3

    .line 125
    const-string v5, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 126
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_42
    return-object v0
.end method

.method public final getInstalledPackages(I)Ljava/util/List;
    .registers 4

    .line 137
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v0, 0x1000

    invoke-interface {p0, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception p0

    .line 139
    const-string p1, "PermissionHelper"

    const-string v0, "Could not reach system server"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_12
    if-nez p0, :cond_17

    .line 142
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 144
    :cond_17
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationPermissionValues(I)Landroid/util/ArrayMap;
    .registers 9

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getAppsRequestingPermission(I)Ljava/util/Set;

    move-result-object v1

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getAppsGrantedPermission(I)Ljava/util/Set;

    move-result-object v2

    .line 176
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 177
    new-instance v4, Landroid/util/Pair;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 178
    invoke-virtual {p0, v6, p1}, Lcom/android/server/notification/PermissionHelper;->isPermissionUserSet(Ljava/lang/String;I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_3a
    return-object v0
.end method

.method public hasPermission(I)Z
    .registers 6

    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 80
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_16

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    .line 82
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    throw p0
.end method

.method public hasRequestedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 93
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v3, 0x1000

    invoke-interface {p0, p2, v3, v4, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 94
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_14

    goto :goto_30

    .line 97
    :cond_14
    array-length p2, p0

    move p3, v2

    :goto_16
    if-ge p3, p2, :cond_2c

    aget-object v3, p0, p3

    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1e} :catch_2a
    .catchall {:try_start_5 .. :try_end_1e} :catchall_28

    if-eqz v3, :cond_25

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_25
    add-int/lit8 p3, p3, 0x1

    goto :goto_16

    :catchall_28
    move-exception p0

    goto :goto_3d

    :catch_2a
    move-exception p0

    goto :goto_34

    :cond_2c
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3c

    :cond_30
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 103
    :goto_34
    :try_start_34
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_28

    goto :goto_2c

    :goto_3c
    return v2

    .line 105
    :goto_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    throw p0
.end method

.method public isPermissionFixed(Ljava/lang/String;I)Z
    .registers 8

    .line 243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 246
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    invoke-interface {p0, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_1e
    .catchall {:try_start_5 .. :try_end_f} :catchall_1c

    and-int/lit8 p1, p0, 0x10

    if-nez p1, :cond_17

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_18

    :cond_17
    const/4 v2, 0x1

    .line 255
    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_1c
    move-exception p0

    goto :goto_2a

    :catch_1e
    move-exception p0

    .line 251
    :try_start_1f
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 255
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    throw p0
.end method

.method public isPermissionGrantedByDefaultOrRole(Ljava/lang/String;I)Z
    .registers 8

    .line 277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 280
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    invoke-interface {p0, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_1c
    .catchall {:try_start_5 .. :try_end_f} :catchall_1a

    const p1, 0x8020

    and-int/2addr p0, p1

    if-eqz p0, :cond_16

    const/4 v2, 0x1

    .line 289
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_1a
    move-exception p0

    goto :goto_28

    :catch_1c
    move-exception p0

    .line 285
    :try_start_1d
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    throw p0
.end method

.method public isPermissionUserSet(Ljava/lang/String;I)Z
    .registers 8

    .line 260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 263
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    invoke-interface {p0, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_1a
    .catchall {:try_start_5 .. :try_end_f} :catchall_18

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_14

    const/4 v2, 0x1

    .line 272
    :cond_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_18
    move-exception p0

    goto :goto_26

    :catch_1a
    move-exception p0

    .line 268
    :try_start_1b
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    .line 272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    throw p0
.end method

.method public final packageRequestsNotificationPermission(Ljava/lang/String;I)Z
    .registers 5

    .line 296
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v0, 0x1000

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 298
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 299
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    :catch_13
    move-exception p0

    .line 302
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public setNotificationPermission(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V
    .registers 5

    if-eqz p1, :cond_19

    .line 233
    iget-object v0, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_19

    .line 236
    :cond_7
    iget v1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 237
    iget-object v0, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    iget-boolean p1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V

    :cond_19
    :goto_19
    return-void
.end method

.method public setNotificationPermission(Ljava/lang/String;IZZ)V
    .registers 15

    .line 191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 196
    :try_start_4
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->packageRequestsNotificationPermission(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 197
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 198
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionGrantedByDefaultOrRole(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_19

    if-nez p4, :cond_19

    goto :goto_6a

    .line 202
    :cond_19
    iget-object v2, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v3, 0x0

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v2

    if-eqz p3, :cond_37

    if-nez v2, :cond_37

    .line 205
    iget-object v2, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_48

    :catchall_33
    move-exception v0

    goto :goto_79

    :catch_35
    move-exception v0

    goto :goto_6e

    :cond_37
    if-nez p3, :cond_48

    if-eqz v2, :cond_48

    .line 208
    iget-object v1, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    const-string v6, "PermissionHelper"

    move-object v2, p1

    move v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_48
    :goto_48
    const/4 v3, 0x3

    if-eqz p4, :cond_59

    .line 213
    iget-object v0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const-string v6, "default:0"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move v7, p2

    invoke-interface/range {v0 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V

    goto :goto_66

    .line 217
    :cond_59
    iget-object v0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const-string v6, "default:0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move v7, p2

    invoke-interface/range {v0 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_66} :catch_35
    .catchall {:try_start_4 .. :try_end_66} :catchall_33

    .line 224
    :goto_66
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6a
    :goto_6a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 222
    :goto_6e
    :try_start_6e
    const-string v1, "PermissionHelper"

    const-string v2, "Could not reach system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_33

    .line 224
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_79
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    throw v0
.end method
