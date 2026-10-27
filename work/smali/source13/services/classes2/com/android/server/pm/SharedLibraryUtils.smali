.class final Lcom/android/server/pm/SharedLibraryUtils;
.super Ljava/lang/Object;
.source "SharedLibraryUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSharedLibraryToPackageVersionMap(Ljava/util/Map;Landroid/content/pm/SharedLibraryInfo;)Z
    .registers 8
    .param p1, "library"    # Landroid/content/pm/SharedLibraryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;",
            "Landroid/content/pm/SharedLibraryInfo;",
            ")Z"
        }
    .end annotation

    .line 41
    .local p0, "target":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 43
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_13

    .line 45
    return v3

    .line 46
    :cond_13
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/server/utils/WatchedLongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_2c

    .line 48
    return v3

    .line 51
    :cond_24
    new-instance v1, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedLongSparseArray;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2c
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/utils/WatchedLongSparseArray;->put(JLjava/lang/Object;)V

    .line 54
    const/4 v1, 0x1

    return v1
.end method

.method public static findSharedLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;
    .registers 5
    .param p0, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "retValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 82
    .local v1, "collectedNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    .line 83
    .local v3, "info":Landroid/content/pm/SharedLibraryInfo;
    invoke-static {v3, v0, v1}, Lcom/android/server/pm/SharedLibraryUtils;->findSharedLibrariesRecursive(Landroid/content/pm/SharedLibraryInfo;Ljava/util/ArrayList;Ljava/util/Set;)V

    .line 84
    .end local v3    # "info":Landroid/content/pm/SharedLibraryInfo;
    goto :goto_24

    .line 85
    :cond_34
    return-object v0

    .line 87
    .end local v0    # "retValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v1    # "collectedNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static findSharedLibrariesRecursive(Landroid/content/pm/SharedLibraryInfo;Ljava/util/ArrayList;Ljava/util/Set;)V
    .registers 5
    .param p0, "info"    # Landroid/content/pm/SharedLibraryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    .local p2, "collectedNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 94
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 98
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    .line 99
    .local v1, "dep":Landroid/content/pm/SharedLibraryInfo;
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/SharedLibraryUtils;->findSharedLibrariesRecursive(Landroid/content/pm/SharedLibraryInfo;Ljava/util/ArrayList;Ljava/util/Set;)V

    .line 100
    .end local v1    # "dep":Landroid/content/pm/SharedLibraryInfo;
    goto :goto_22

    .line 103
    :cond_32
    return-void
.end method

.method public static getSharedLibraryInfo(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;)Landroid/content/pm/SharedLibraryInfo;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;)",
            "Landroid/content/pm/SharedLibraryInfo;"
        }
    .end annotation

    .line 61
    .local p3, "existingLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .local p4, "newLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    if-eqz p4, :cond_15

    .line 62
    invoke-interface {p4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 63
    .local v0, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    const/4 v1, 0x0

    .line 64
    .local v1, "info":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v0, :cond_12

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    .line 67
    :cond_12
    if-eqz v1, :cond_15

    .line 68
    return-object v1

    .line 71
    .end local v0    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v1    # "info":Landroid/content/pm/SharedLibraryInfo;
    :cond_15
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 72
    .restart local v0    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v0, :cond_1f

    .line 73
    const/4 v1, 0x0

    return-object v1

    .line 75
    :cond_1f
    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    return-object v1
.end method
