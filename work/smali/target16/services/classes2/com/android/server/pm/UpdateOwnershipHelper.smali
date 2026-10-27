.class public Lcom/android/server/pm/UpdateOwnershipHelper;
.super Ljava/lang/Object;
.source "UpdateOwnershipHelper.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z
    .registers 3

    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 57
    :cond_12
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object p0

    const-string v1, "android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "android.permission.INSTALL_PACKAGES"

    const-string v1, "android.permission.INSTALL_PACKAGE_UPDATES"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {v0, p0}, Lcom/android/server/pm/UpdateOwnershipHelper;->usesAnyPermission(Lcom/android/server/pm/pkg/AndroidPackage;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs usesAnyPermission(Lcom/android/server/pm/pkg/AndroidPackage;[Ljava/lang/String;)Z
    .registers 6

    .line 67
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissionMapping()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 68
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 69
    :goto_19
    array-length v2, p1

    if-ge v1, v2, :cond_c

    .line 70
    aget-object v2, p1, v1

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2d
    return v1
.end method


# virtual methods
.method public addToUpdateOwnerDenyList(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 9

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 135
    :goto_4
    :try_start_4
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 136
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    iget-object v3, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArraySet;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_29

    .line 140
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_2e

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 143
    :cond_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_27

    throw p0
.end method

.method public isUpdateOwnershipDenyListProvider(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 177
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_f
    if-ltz v2, :cond_26

    .line 179
    iget-object v4, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 180
    monitor-exit v1

    return v3

    :catchall_21
    move-exception p0

    goto :goto_28

    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 183
    :cond_26
    monitor-exit v1

    return v0

    .line 184
    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_21

    throw p0
.end method

.method public isUpdateOwnershipDenylisted(Ljava/lang/String;)Z
    .registers 2

    .line 167
    iget-object p0, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public readUpdateOwnerDenyList(Lcom/android/server/pm/PackageSetting;)Landroid/util/ArraySet;
    .registers 21

    .line 83
    const-string v1, "PackageManager"

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/UpdateOwnershipHelper;->hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    return-object v2

    .line 86
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_11

    return-object v2

    .line 90
    :cond_11
    new-instance v3, Landroid/util/ArraySet;

    const/16 v4, 0x1f4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 92
    :try_start_18
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v5

    const-string v6, "android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManager$Property;

    .line 93
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$Property;->getResourceId()I

    move-result v5

    .line 94
    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 95
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v7

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    sget-object v15, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v7 .. v18}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v6

    .line 99
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4c} :catch_a6

    .line 100
    :cond_4c
    :try_start_4c
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a2

    .line 101
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4c

    .line 102
    const-string v6, "deny-ownership"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 103
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 104
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4c

    .line 105
    invoke-virtual {v6}, Ljava/lang/String;->isBlank()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 106
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-le v6, v4, :cond_4c

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deny list defined by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was trucated to maximum size of "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_4c .. :try_end_9e} :catchall_9f

    goto :goto_a2

    :catchall_9f
    move-exception v0

    move-object v3, v0

    goto :goto_a8

    .line 117
    :cond_a2
    :goto_a2
    :try_start_a2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_a6

    return-object v3

    :catch_a6
    move-exception v0

    goto :goto_b3

    :goto_a8
    if-eqz v5, :cond_b2

    .line 99
    :try_start_aa
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception v0

    :try_start_af
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b2
    :goto_b2
    throw v3
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b3} :catch_a6

    .line 119
    :goto_b3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse update owner list for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public removeUpdateOwnerDenyList(Ljava/lang/String;)V
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_30

    .line 153
    iget-object v2, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    .line 154
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 155
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 156
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 157
    iget-object v2, p0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_32

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 160
    :cond_30
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_2b

    throw p0
.end method
