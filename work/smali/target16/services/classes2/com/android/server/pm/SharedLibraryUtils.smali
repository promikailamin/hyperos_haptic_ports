.class public abstract Lcom/android/server/pm/SharedLibraryUtils;
.super Ljava/lang/Object;
.source "SharedLibraryUtils.java"


# direct methods
.method public static addSharedLibraryToPackageVersionMap(Ljava/util/Map;Landroid/content/pm/SharedLibraryInfo;)Z
    .registers 8

    .line 42
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 44
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_13

    return v3

    .line 47
    :cond_13
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/server/utils/WatchedLongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_2c

    return v3

    .line 52
    :cond_24
    new-instance v1, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedLongSparseArray;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2c
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/utils/WatchedLongSparseArray;->put(JLjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static getSharedLibraryInfo(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;)Landroid/content/pm/SharedLibraryInfo;
    .registers 6

    const/4 v0, 0x0

    if-eqz p4, :cond_16

    .line 63
    invoke-interface {p4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/utils/WatchedLongSparseArray;

    if-eqz p4, :cond_12

    .line 66
    invoke-virtual {p4, p1, p2}, Lcom/android/server/utils/WatchedLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/SharedLibraryInfo;

    goto :goto_13

    :cond_12
    move-object p4, v0

    :goto_13
    if-eqz p4, :cond_16

    return-object p4

    .line 72
    :cond_16
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez p0, :cond_1f

    return-object v0

    .line 76
    :cond_1f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SharedLibraryInfo;

    return-object p0
.end method
