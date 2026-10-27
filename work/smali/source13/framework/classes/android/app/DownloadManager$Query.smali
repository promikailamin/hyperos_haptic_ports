.class public Landroid/app/DownloadManager$Query;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# static fields
.field public static final greylist-max-o ORDER_ASCENDING:I = 0x1

.field public static final greylist-max-o ORDER_DESCENDING:I = 0x2


# instance fields
.field private blacklist mAppendedClause:Ljava/lang/String;

.field private blacklist mColumnAppData:Ljava/lang/String;

.field private blacklist mColumnNotificationPackage:Ljava/lang/String;

.field private greylist-max-o mFilterString:Ljava/lang/String;

.field private greylist-max-o mIds:[J

.field private greylist-max-o mOnlyIncludeVisibleInDownloadsUi:Z

.field private greylist-max-o mOrderByColumn:Ljava/lang/String;

.field private greylist-max-o mOrderDirection:I

.field private greylist-max-o mStatusFlags:Ljava/lang/Integer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    .line 1363
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    .line 1364
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    .line 1365
    const-string v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 1366
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    .line 1367
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    return-void
.end method

.method private greylist-max-o joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 7
    .param p1, "joiner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1535
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1536
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1537
    .local v1, "first":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1538
    .local v3, "part":Ljava/lang/String;
    if-nez v1, :cond_1b

    .line 1539
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    :cond_1b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    const/4 v1, 0x0

    .line 1543
    .end local v3    # "part":Ljava/lang/String;
    goto :goto_a

    .line 1544
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist addExtraSelectionParts(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1574
    .local p1, "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mColumnAppData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "%s=\'%s\'"

    if-nez v0, :cond_1e

    .line 1575
    new-array v0, v3, [Ljava/lang/Object;

    const-string v5, "entity"

    aput-object v5, v0, v2

    iget-object v5, p0, Landroid/app/DownloadManager$Query;->mColumnAppData:Ljava/lang/String;

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    :cond_1e
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mColumnNotificationPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1578
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "notificationpackage"

    aput-object v3, v0, v2

    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mColumnNotificationPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    :cond_38
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mAppendedClause:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1582
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mAppendedClause:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    :cond_45
    return-void
.end method

.method public greylist-max-p orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;
    .registers 6
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .line 1439
    const/4 v0, 0x1

    if-eq p2, v0, :cond_20

    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    goto :goto_20

    .line 1440
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_20
    :goto_20
    invoke-static {}, Landroid/app/DownloadManager;->isInternationalVersion()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1444
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1445
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 1446
    iput p2, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    .line 1447
    return-object p0

    .line 1451
    :cond_33
    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1452
    const-string v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    goto :goto_4e

    .line 1453
    :cond_40
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1454
    const-string/jumbo v0, "total_bytes"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 1458
    :goto_4e
    iput p2, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    .line 1459
    return-object p0

    .line 1456
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 16
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "baseUri"    # Landroid/net/Uri;

    .line 1468
    move-object v1, p3

    .line 1469
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 1470
    .local v6, "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1472
    .local v0, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    if-nez v2, :cond_e

    const/4 v3, 0x0

    goto :goto_f

    :cond_e
    array-length v3, v2

    .line 1473
    .local v3, "whereArgsCount":I
    :goto_f
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    if-nez v4, :cond_15

    move v4, v3

    goto :goto_17

    :cond_15
    add-int/lit8 v4, v3, 0x1

    :goto_17
    move v7, v4

    .line 1474
    .end local v3    # "whereArgsCount":I
    .local v7, "whereArgsCount":I
    new-array v8, v7, [Ljava/lang/String;

    .line 1476
    .end local v0    # "selectionArgs":[Ljava/lang/String;
    .local v8, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x1

    if-lez v7, :cond_52

    .line 1477
    if-eqz v2, :cond_2b

    .line 1478
    invoke-static {v2}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    invoke-static {v2, v8}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    .line 1482
    :cond_2b
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    if-eqz v2, :cond_52

    .line 1483
    const-string/jumbo v2, "title LIKE ?"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    array-length v2, v8

    sub-int/2addr v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 1488
    :cond_52
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    const-string v3, " AND "

    if-eqz v2, :cond_11b

    .line 1489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    .local v2, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, v0

    const-string v5, "="

    if-eqz v4, :cond_71

    .line 1491
    const/16 v4, 0xbe

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    :cond_71
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_84

    .line 1494
    const/16 v4, 0xc0

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    :cond_84
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_c1

    .line 1497
    const/16 v4, 0xc1

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    const/16 v4, 0xc2

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    const/16 v4, 0xc3

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    const/16 v4, 0xc4

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    invoke-static {}, Landroid/app/DownloadManager;->isInternationalVersion()Z

    move-result v4

    if-nez v4, :cond_c1

    .line 1503
    const/16 v4, 0xc6

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    :cond_c1
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_d4

    .line 1508
    const/16 v4, 0xc8

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    :cond_d4
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_112

    .line 1511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x190

    const-string v9, ">="

    invoke-direct {p0, v9, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x258

    .line 1512
    const-string v9, "<"

    invoke-direct {p0, v9, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1511
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    :cond_112
    const-string v4, " OR "

    invoke-direct {p0, v4, v2}, Landroid/app/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    .end local v2    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11b
    iget-boolean v2, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    if-eqz v2, :cond_124

    .line 1518
    const-string v2, "is_visible_in_downloads_ui != \'0\'"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    :cond_124
    invoke-virtual {p0, v6}, Landroid/app/DownloadManager$Query;->addExtraSelectionParts(Ljava/util/List;)V

    .line 1525
    const-string v2, "deleted != \'1\'"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    invoke-direct {p0, v3, v6}, Landroid/app/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    .line 1528
    .local v9, "selection":Ljava/lang/String;
    iget v2, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    if-ne v2, v0, :cond_137

    const-string v0, "ASC"

    goto :goto_139

    :cond_137
    const-string v0, "DESC"

    :goto_139
    move-object v10, v0

    .line 1529
    .local v10, "orderDirection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1531
    .local v11, "orderBy":Ljava/lang/String;
    move-object v0, p1

    move-object v2, p2

    move-object v3, v9

    move-object v4, v8

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setFilterByAppData(Ljava/lang/String;)Landroid/app/DownloadManager$Query;
    .registers 2
    .param p1, "appData"    # Ljava/lang/String;

    .line 1558
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mColumnAppData:Ljava/lang/String;

    .line 1559
    return-object p0
.end method

.method public blacklist setFilterByAppendedClause(Ljava/lang/String;)Landroid/app/DownloadManager$Query;
    .registers 2
    .param p1, "appendedClause"    # Ljava/lang/String;

    .line 1569
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mAppendedClause:Ljava/lang/String;

    .line 1570
    return-object p0
.end method

.method public varargs whitelist setFilterById([J)Landroid/app/DownloadManager$Query;
    .registers 2
    .param p1, "ids"    # [J

    .line 1379
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    .line 1380
    return-object p0
.end method

.method public blacklist setFilterByNotificationPackage(Ljava/lang/String;)Landroid/app/DownloadManager$Query;
    .registers 2
    .param p1, "notificationPackage"    # Ljava/lang/String;

    .line 1410
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mColumnNotificationPackage:Ljava/lang/String;

    .line 1411
    return-object p0
.end method

.method public whitelist setFilterByStatus(I)Landroid/app/DownloadManager$Query;
    .registers 3
    .param p1, "flags"    # I

    .line 1400
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    .line 1401
    return-object p0
.end method

.method public greylist-max-o setFilterByString(Ljava/lang/String;)Landroid/app/DownloadManager$Query;
    .registers 2
    .param p1, "filter"    # Ljava/lang/String;

    .line 1390
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    .line 1391
    return-object p0
.end method

.method public greylist setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;
    .registers 2
    .param p1, "value"    # Z

    .line 1423
    iput-boolean p1, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    .line 1424
    return-object p0
.end method
