.class public Lcom/android/server/appop/AppOpMigrationHelperImpl;
.super Ljava/lang/Object;
.source "AppOpMigrationHelperImpl.java"

# interfaces
.implements Lcom/android/server/appop/AppOpMigrationHelper;


# instance fields
.field public mAppIdAppOpModes:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mPackageAppOpModes:Landroid/util/SparseArray;

.field public mVersionAtBoot:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    .line 41
    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAppIdAppOpModes(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 8

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3c

    .line 103
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 104
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 105
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_24

    .line 107
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 108
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    :cond_24
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 112
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getAppOpModesForOpName(Landroid/util/SparseIntArray;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3c
    return-object v0
.end method

.method public final getAppOpModesForOpName(Landroid/util/SparseIntArray;)Ljava/util/Map;
    .registers 6

    .line 147
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p0, :cond_22

    .line 151
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 152
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 153
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_22
    return-object v0
.end method

.method public getLegacyAppIdAppOpModes(I)Ljava/util/Map;
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    if-nez v1, :cond_d

    .line 52
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->readLegacyAppOpState()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_19

    .line 54
    :cond_d
    :goto_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    .line 55
    iget-object p0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 54
    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_b

    throw p0
.end method

.method public getLegacyAppOpVersion()I
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    if-nez v1, :cond_11

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_15

    .line 162
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->readLegacyAppOpState()V

    .line 164
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    .line 165
    iget p0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    return p0

    .line 164
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_c

    throw p0
.end method

.method public getLegacyPackageAppOpModes(I)Ljava/util/Map;
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    if-nez v1, :cond_d

    .line 64
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->readLegacyAppOpState()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_19

    .line 66
    :cond_d
    :goto_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    .line 67
    iget-object p0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 66
    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_b

    throw p0
.end method

.method public final getPackageAppOpModes(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 12

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_47

    .line 123
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 124
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_21

    .line 126
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 127
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    :cond_21
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 133
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v2

    :goto_2c
    if-ge v7, v6, :cond_44

    .line 135
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 136
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseIntArray;

    .line 137
    invoke-virtual {p0, v9}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getAppOpModesForOpName(Landroid/util/SparseIntArray;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_47
    return-object v0
.end method

.method public hasLegacyAppOpState()Z
    .registers 2

    .line 170
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getLegacyAppOpVersion()I

    move-result p0

    const/4 v0, -0x1

    if-le p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final readLegacyAppOpState()V
    .registers 6

    .line 72
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "appops.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 76
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 79
    new-instance v3, Lcom/android/server/appop/LegacyAppOpStateParser;

    invoke-direct {v3}, Lcom/android/server/appop/LegacyAppOpStateParser;-><init>()V

    .line 80
    invoke-virtual {v3, v1, v0, v2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readState(Landroid/util/AtomicFile;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v1

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eq v1, v3, :cond_30

    if-eq v1, v4, :cond_2c

    .line 91
    iput v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    goto :goto_32

    :cond_2c
    const/4 v1, 0x0

    .line 88
    iput v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    goto :goto_32

    .line 85
    :cond_30
    iput v4, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    .line 93
    :goto_32
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getAppIdAppOpModes(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getPackageAppOpModes(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    return-void
.end method
