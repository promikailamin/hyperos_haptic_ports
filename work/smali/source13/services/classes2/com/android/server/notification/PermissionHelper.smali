.class public final Lcom/android/server/notification/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/PermissionHelper$PackagePermission;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_PERMISSION:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"

.field private static final TAG:Ljava/lang/String; = "PermissionHelper"


# instance fields
.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPermManager:Landroid/permission/IPermissionManager;

.field private final mPmi:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/pm/IPackageManager;Landroid/permission/IPermissionManager;)V
    .registers 4
    .param p1, "pmi"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p3, "permManager"    # Landroid/permission/IPermissionManager;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/notification/PermissionHelper;->mPmi:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 61
    iput-object p2, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 62
    iput-object p3, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 63
    return-void
.end method

.method private getInstalledPackages(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v2, 0x1000

    invoke-interface {v1, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 108
    goto :goto_13

    .line 106
    :catch_b
    move-exception v1

    .line 107
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PermissionHelper"

    const-string v3, "Could not reach system server"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    if-nez v0, :cond_1a

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 112
    :cond_1a
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private packageRequestsNotificationPermission(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x1000

    invoke-interface {v0, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 261
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_13

    .line 262
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 263
    .local v1, "permissions":[Ljava/lang/String;
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v2

    .line 267
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_13
    goto :goto_1c

    .line 265
    :catch_14
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PermissionHelper"

    const-string v2, "Could not reach system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method getAppsGrantedPermission(I)Ljava/util/Set;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 121
    .local v0, "granted":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 123
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :try_start_6
    iget-object v2, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_16

    move-object v1, v2

    .line 127
    goto :goto_1e

    .line 125
    :catch_16
    move-exception v2

    .line 126
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PermissionHelper"

    const-string v4, "Could not reach system server"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1e
    if-nez v1, :cond_21

    .line 129
    return-object v0

    .line 131
    :cond_21
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 132
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_29

    .line 134
    :cond_48
    return-object v0
.end method

.method getAppsRequestingPermission(I)Ljava/util/Set;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v0, "requested":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-direct {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 89
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v4, :cond_1e

    .line 90
    goto :goto_d

    .line 92
    :cond_1e
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v5, :cond_44

    aget-object v7, v4, v6

    .line 93
    .local v7, "perm":Ljava/lang/String;
    const-string v8, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 94
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_44

    .line 92
    .end local v7    # "perm":Ljava/lang/String;
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 98
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_44
    :goto_44
    goto :goto_d

    .line 99
    :cond_45
    return-object v0
.end method

.method public getNotificationPermissionValues(I)Landroid/util/ArrayMap;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 141
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 142
    .local v0, "notifPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getAppsRequestingPermission(I)Ljava/util/Set;

    move-result-object v1

    .line 143
    .local v1, "allRequestingUids":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getAppsGrantedPermission(I)Ljava/util/Set;

    move-result-object v2

    .line 144
    .local v2, "allApprovedUids":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 145
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v5, Landroid/util/Pair;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 146
    invoke-virtual {p0, v7, p1}, Lcom/android/server/notification/PermissionHelper;->isPermissionUserSet(Ljava/lang/String;I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_11

    .line 148
    :cond_3a
    return-object v0
.end method

.method public hasPermission(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 72
    .local v0, "callingId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/PermissionHelper;->mPmi:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v2, p1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_15

    if-nez v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 74
    :goto_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    return v2

    .line 74
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    throw v2
.end method

.method public isPermissionFixed(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 210
    .local v0, "callingId":J
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v3, p1, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1c
    .catchall {:try_start_5 .. :try_end_d} :catchall_1a

    .line 212
    .local v3, "flags":I
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_15

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_16

    :cond_15
    const/4 v2, 0x1

    .line 219
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    return v2

    .line 219
    .end local v3    # "flags":I
    :catchall_1a
    move-exception v2

    goto :goto_29

    .line 214
    :catch_1c
    move-exception v3

    .line 215
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v4, "PermissionHelper"

    const-string v5, "Could not reach system server"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 217
    nop

    .line 219
    .end local v3    # "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    return v2

    .line 219
    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    throw v2
.end method

.method isPermissionGrantedByDefaultOrRole(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 244
    .local v0, "callingId":J
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v3, p1, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1a
    .catchall {:try_start_5 .. :try_end_d} :catchall_18

    .line 246
    .local v3, "flags":I
    const v4, 0x8020

    and-int/2addr v4, v3

    if-eqz v4, :cond_14

    const/4 v2, 0x1

    .line 253
    :cond_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    return v2

    .line 253
    .end local v3    # "flags":I
    :catchall_18
    move-exception v2

    goto :goto_27

    .line 248
    :catch_1a
    move-exception v3

    .line 249
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1b
    const-string v4, "PermissionHelper"

    const-string v5, "Could not reach system server"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    .line 251
    nop

    .line 253
    .end local v3    # "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    return v2

    .line 253
    :goto_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    throw v2
.end method

.method isPermissionUserSet(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 227
    .local v0, "callingId":J
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v3, p1, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_18
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    .line 229
    .local v3, "flags":I
    and-int/lit8 v4, v3, 0x3

    if-eqz v4, :cond_12

    const/4 v2, 0x1

    .line 236
    :cond_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    return v2

    .line 236
    .end local v3    # "flags":I
    :catchall_16
    move-exception v2

    goto :goto_25

    .line 231
    :catch_18
    move-exception v3

    .line 232
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "PermissionHelper"

    const-string v5, "Could not reach system server"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 234
    nop

    .line 236
    .end local v3    # "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    return v2

    .line 236
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    throw v2
.end method

.method public setNotificationPermission(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V
    .registers 6
    .param p1, "pkgPerm"    # Lcom/android/server/notification/PermissionHelper$PackagePermission;

    .line 197
    if-eqz p1, :cond_1c

    iget-object v0, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_1c

    .line 200
    :cond_7
    iget-object v0, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 201
    iget-object v0, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    iget-boolean v2, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V

    .line 204
    :cond_1b
    return-void

    .line 198
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setNotificationPermission(Ljava/lang/String;IZZ)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "grant"    # Z
    .param p4, "userSet"    # Z

    .line 159
    move-object v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    const-string v11, "PermissionHelper"

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 164
    .local v12, "callingId":J
    :try_start_d
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->packageRequestsNotificationPermission(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 165
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_62

    .line 166
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionGrantedByDefaultOrRole(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    if-nez p4, :cond_22

    goto :goto_62

    .line 170
    :cond_22
    iget-object v2, v1, Lcom/android/server/notification/PermissionHelper;->mPmi:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v2, v9, v0, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    move v14, v2

    .line 172
    .local v14, "currentlyGranted":Z
    if-eqz p3, :cond_39

    if-nez v14, :cond_39

    .line 173
    iget-object v2, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, v9, v0, v10}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_42

    .line 174
    :cond_39
    if-nez p3, :cond_42

    if-eqz v14, :cond_42

    .line 175
    iget-object v2, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, v9, v0, v10, v11}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    :cond_42
    :goto_42
    if-eqz p4, :cond_53

    .line 179
    iget-object v2, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move/from16 v8, p2

    invoke-interface/range {v2 .. v8}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    goto :goto_61

    .line 182
    :cond_53
    iget-object v2, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move/from16 v8, p2

    invoke-interface/range {v2 .. v8}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_61} :catch_68
    .catchall {:try_start_d .. :try_end_61} :catchall_66

    .line 188
    .end local v14    # "currentlyGranted":Z
    :goto_61
    goto :goto_6f

    :cond_62
    :goto_62
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    return-void

    .line 188
    :catchall_66
    move-exception v0

    goto :goto_74

    .line 185
    :catch_68
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_69
    const-string v2, "Could not reach system server"

    invoke-static {v11, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_66

    .line 188
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6f
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :goto_74
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    throw v0
.end method
