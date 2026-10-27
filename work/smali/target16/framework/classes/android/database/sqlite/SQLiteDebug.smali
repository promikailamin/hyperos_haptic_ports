.class public final Landroid/database/sqlite/SQLiteDebug;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;,
        Landroid/database/sqlite/SQLiteDebug$PagerStats;,
        Landroid/database/sqlite/SQLiteDebug$DbStats;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static greylist-max-o dump(Landroid/util/Printer;[Ljava/lang/String;)V
    .registers 3

    .line 231
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;Z)V

    .line 232
    return-void
.end method

.method public static blacklist dump(Landroid/util/Printer;[Ljava/lang/String;Z)V
    .registers 8

    .line 236
    nop

    .line 237
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v1, v0, :cond_14

    aget-object v3, p1, v1

    .line 238
    const-string v4, "-v"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 239
    const/4 v2, 0x1

    .line 237
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 243
    :cond_14
    invoke-static {p0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->dumpAll(Landroid/util/Printer;ZZ)V

    .line 244
    return-void
.end method

.method public static greylist getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .registers 2

    .line 219
    new-instance v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDebug$PagerStats;-><init>()V

    .line 220
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDebug;->nativeGetPagerStats(Landroid/database/sqlite/SQLiteDebug$PagerStats;)V

    .line 221
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getDbStats()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    .line 222
    return-object v0
.end method

.method private static native greylist-max-o nativeGetPagerStats(Landroid/database/sqlite/SQLiteDebug$PagerStats;)V
.end method

.method public static greylist-max-o shouldLogSlowQuery(J)Z
    .registers 5

    .line 115
    nop

    .line 116
    const-string v0, "db.log.slow_query_threshold"

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->-$$Nest$sfgetSLOW_QUERY_THRESHOLD_UID_PROP()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    int-to-long v0, v0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method
