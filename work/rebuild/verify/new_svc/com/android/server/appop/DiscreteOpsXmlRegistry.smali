.class public Lcom/android/server/appop/DiscreteOpsXmlRegistry;
.super Lcom/android/server/appop/DiscreteOpsRegistry;
.source "DiscreteOpsXmlRegistry.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DiscreteOpsXmlRegistry"


# instance fields
.field public mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

.field public mDiscreteAccessDir:Ljava/io/File;

.field public mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

.field public final mInMemoryLock:Ljava/lang/Object;

.field public final mOnDiskLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smstableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 138
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getDiscreteOpsDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;-><init>(Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/io/File;)V
    .registers 5

    .line 142
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 143
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 144
    monitor-enter v0

    .line 145
    :try_start_10
    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 146
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->createDiscreteAccessDirLocked()V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->readLargestChainIdFromDiskLocked()I

    move-result p2

    .line 148
    monitor-enter p1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_24

    .line 149
    :try_start_1a
    new-instance v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-direct {v1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 150
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_26

    .line 151
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception p0

    goto :goto_29

    :catchall_26
    move-exception p0

    .line 150
    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw p0

    .line 151
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_24

    throw p0
.end method

.method public static getDiscreteOpsDir()Ljava/io/File;
    .registers 4

    .line 155
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "discrete"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11

    .line 1379
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1380
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1383
    new-instance v2, Ljava/util/ArrayList;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-lt v3, v0, :cond_17

    if-ge v4, v1, :cond_16

    goto :goto_17

    :cond_16
    return-object v2

    :cond_17
    :goto_17
    if-ne v3, v0, :cond_26

    add-int/lit8 v5, v4, 0x1

    .line 1386
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_24
    move v4, v5

    goto :goto_11

    :cond_26
    if-ne v4, v1, :cond_35

    add-int/lit8 v5, v3, 0x1

    .line 1388
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_33
    move v3, v5

    goto :goto_11

    .line 1389
    :cond_35
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v5, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v7, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_55

    add-int/lit8 v5, v3, 0x1

    .line 1390
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_55
    add-int/lit8 v5, v4, 0x1

    .line 1392
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method


# virtual methods
.method public final createDiscreteAccessDirLocked()V
    .registers 3

    .line 781
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 782
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_17

    .line 783
    sget-object v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_17
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1f9

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_23
    return-void
.end method

.method public deleteDiscreteOpsDir()Z
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 363
    :try_start_4
    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 364
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 365
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .registers 6

    .line 416
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    .line 418
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 419
    :try_start_9
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_21

    .line 420
    :try_start_c
    iget-object v4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-virtual {v0, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 421
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_2a

    .line 422
    :try_start_12
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    if-nez v3, :cond_23

    .line 423
    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-direct {v3, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 424
    invoke-virtual {p0, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_2d

    .line 426
    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-virtual {v0, p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 427
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_21

    return-object v0

    :catchall_2a
    move-exception p0

    .line 421
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw p0

    .line 428
    :goto_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_21

    throw p0
.end method

.method public final readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .registers 11

    .line 330
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 334
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 335
    array-length v3, p0

    if-lez v3, :cond_52

    .line 336
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_21
    if-ge v5, v3, :cond_52

    aget-object v6, p0, v5

    .line 337
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 338
    const-string/jumbo v8, "tl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_33

    goto :goto_4d

    .line 342
    :cond_33
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    .line 341
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_4a

    goto :goto_4d

    .line 346
    :cond_4a
    invoke-static {p1, v6, v1, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/File;J)V

    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :catchall_50
    move-exception p0

    goto :goto_54

    .line 349
    :cond_52
    monitor-exit v0

    return-void

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_50

    throw p0
.end method

.method public readLargestChainIdFromDiskLocked()I
    .registers 12

    .line 234
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5e

    .line 235
    array-length v1, p0

    if-lez v1, :cond_5e

    .line 238
    array-length v1, p0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v0

    move-object v6, v2

    :goto_12
    if-ge v5, v1, :cond_3f

    aget-object v7, p0, v5

    .line 239
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 240
    const-string/jumbo v9, "tl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_24

    goto :goto_3c

    .line 244
    :cond_24
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    .line 243
    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-gez v10, :cond_3c

    move-object v6, v7

    move-wide v3, v8

    :cond_3c
    :goto_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_3f
    if-nez v6, :cond_42

    return v0

    .line 255
    :cond_42
    :try_start_42
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_47} :catch_5e

    .line 260
    :try_start_47
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 261
    const-string v3, "h"

    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v3, "lc"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_5b

    .line 269
    :try_start_57
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5a

    :catch_5a
    return v0

    :catchall_5b
    :try_start_5b
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5e

    :catch_5e
    :cond_5e
    return v0
.end method
