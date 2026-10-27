.class public Landroid/database/sqlite/SQLiteDebug$DbStats;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbStats"
.end annotation


# instance fields
.field public final blacklist arePoolStats:Z

.field public blacklist cacheHits:I

.field public blacklist cacheMisses:I

.field public blacklist cacheSize:I

.field public greylist dbName:Ljava/lang/String;

.field public greylist dbSize:J

.field public greylist lookaside:I

.field public greylist pageSize:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;JJIIIIZ)V
    .registers 15

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    .line 197
    const-wide/16 v0, 0x400

    div-long v2, p4, v0

    iput-wide v2, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    .line 198
    mul-long/2addr p2, p4

    div-long/2addr p2, v0

    iput-wide p2, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    .line 199
    iput p6, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    .line 200
    iput p7, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    .line 201
    iput p8, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    .line 202
    iput p9, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    .line 203
    iput-boolean p10, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->arePoolStats:Z

    .line 204
    return-void
.end method


# virtual methods
.method blacklist addCacheStatsFrom(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 4

    .line 207
    iget v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getPreparedStatementCacheHitCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    .line 208
    iget v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getPreparedStatementCacheMissCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    .line 209
    iget v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getPreparedStatementCacheSize()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    .line 210
    return-void
.end method
