.class public final Lcom/android/server/am/PackageList;
.super Ljava/lang/Object;
.source "PackageList.java"


# instance fields
.field public final mPkgList:Landroid/util/ArrayMap;

.field public final mProcess:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 42
    iput-object p1, p0, Lcom/android/server/am/PackageList;->mProcess:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 55
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->clearPackageList()V

    .line 56
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 66
    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    .line 68
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "packageList={"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p2, :cond_2b

    if-lez v0, :cond_1d

    .line 159
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d

    :catchall_1b
    move-exception p1

    goto :goto_33

    .line 160
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 162
    :cond_2b
    const-string/jumbo p2, "}"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    monitor-exit p0

    return-void

    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_1b

    throw p1
.end method

.method public forEachPackage(Ljava/util/function/BiConsumer;)V
    .registers 6

    .line 86
    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_22

    .line 88
    iget-object v2, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_20
    move-exception p1

    goto :goto_24

    .line 90
    :cond_22
    monitor-exit p0

    return-void

    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_20

    throw p1
.end method

.method public forEachPackage(Ljava/util/function/Consumer;)V
    .registers 5

    .line 78
    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 80
    iget-object v2, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_18
    move-exception p1

    goto :goto_1c

    .line 82
    :cond_1a
    monitor-exit p0

    return-void

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_18

    throw p1
.end method

.method public forEachPackageProcessStats(Ljava/util/function/Consumer;)V
    .registers 5

    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 117
    iget-object v2, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_18
    move-exception p1

    goto :goto_1c

    .line 119
    :cond_1a
    monitor-exit p0

    return-void

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_18

    throw p1
.end method

.method public get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .registers 3

    .line 72
    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    .line 74
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public getPackageListLocked()Landroid/util/ArrayMap;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getPackageListWithVersionCode()Ljava/util/List;
    .registers 8

    .line 142
    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 145
    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    goto :goto_35

    .line 147
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_33

    .line 149
    new-instance v3, Landroid/content/pm/VersionedPackage;

    iget-object v4, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    invoke-direct {v3, v4, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 151
    :cond_33
    monitor-exit p0

    return-object v1

    .line 152
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_c

    throw v0
.end method

.method public getPackageNames()[Ljava/lang/String;
    .registers 5

    .line 128
    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 131
    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    goto :goto_22

    .line 133
    :cond_e
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_20

    .line 135
    iget-object v3, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 137
    :cond_20
    monitor-exit p0

    return-object v1

    .line 138
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_c

    throw v0
.end method

.method public put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .registers 4

    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->addPackage(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    monitor-exit p0

    return-object p1

    :catchall_14
    move-exception p1

    .line 49
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 5

    .line 103
    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1f

    .line 105
    iget-object v2, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 107
    monitor-exit p0

    return-object v2

    :catchall_1a
    move-exception p1

    goto :goto_22

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 110
    :cond_1f
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_1a

    throw p1
.end method

.method public size()I
    .registers 2

    .line 60
    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    .line 62
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method
