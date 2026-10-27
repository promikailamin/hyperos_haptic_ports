.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final greylist-max-o mAccessFilename:Z

.field private final greylist-max-o mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2485
    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;
    .param p3, "accessFilename"    # Z

    .line 2490
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2491
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 2492
    iput-boolean p3, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    .line 2493
    return-void
.end method

.method private greylist-max-o getErrorCode(I)J
    .registers 4
    .param p1, "status"    # I

    .line 2581
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x258

    if-ge p1, v0, :cond_12

    .line 2584
    :cond_10
    int-to-long v0, p1

    return-wide v0

    .line 2587
    :cond_12
    sparse-switch p1, :sswitch_data_30

    .line 2614
    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 2599
    :sswitch_18
    const-wide/16 v0, 0x3ed

    return-wide v0

    .line 2596
    :sswitch_1b
    const-wide/16 v0, 0x3ec

    return-wide v0

    .line 2593
    :sswitch_1e
    const-wide/16 v0, 0x3ea

    return-wide v0

    .line 2589
    :sswitch_21
    const-wide/16 v0, 0x3e9

    return-wide v0

    .line 2608
    :sswitch_24
    const-wide/16 v0, 0x3f0

    return-wide v0

    .line 2611
    :sswitch_27
    const-wide/16 v0, 0x3f1

    return-wide v0

    .line 2605
    :sswitch_2a
    const-wide/16 v0, 0x3ef

    return-wide v0

    .line 2602
    :sswitch_2d
    const-wide/16 v0, 0x3ee

    return-wide v0

    :sswitch_data_30
    .sparse-switch
        0xc6 -> :sswitch_2d
        0xc7 -> :sswitch_2a
        0x1e8 -> :sswitch_27
        0x1e9 -> :sswitch_24
        0x1ec -> :sswitch_21
        0x1ed -> :sswitch_1e
        0x1ee -> :sswitch_1e
        0x1ef -> :sswitch_1b
        0x1f1 -> :sswitch_18
    .end sparse-switch
.end method

.method private greylist-max-o getLocalUri()Ljava/lang/String;
    .registers 6

    .line 2530
    const-string v0, "destination"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 2531
    .local v0, "destinationType":J
    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    const-wide/16 v2, 0x6

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    goto :goto_32

    .line 2542
    :cond_1d
    const-string v2, "_id"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 2543
    .local v2, "downloadId":J
    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2534
    .end local v2    # "downloadId":J
    :cond_32
    :goto_32
    const-string v2, "local_filename"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-super {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2535
    .local v2, "localPath":Ljava/lang/String;
    if-nez v2, :cond_40

    .line 2536
    const/4 v3, 0x0

    return-object v3

    .line 2538
    :cond_40
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o getPausedReason(I)J
    .registers 4
    .param p1, "status"    # I

    .line 2560
    packed-switch p1, :pswitch_data_16

    .line 2576
    :pswitch_3
    const-wide/16 v0, 0x4

    return-wide v0

    .line 2574
    :pswitch_6
    const-wide/16 v0, 0x6

    return-wide v0

    .line 2568
    :pswitch_9
    const-wide/16 v0, 0x3

    return-wide v0

    .line 2565
    :pswitch_c
    const-wide/16 v0, 0x2

    return-wide v0

    .line 2562
    :pswitch_f
    const-wide/16 v0, 0x1

    return-wide v0

    .line 2571
    :pswitch_12
    const-wide/16 v0, 0x5

    return-wide v0

    nop

    :pswitch_data_16
    .packed-switch 0xc1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o getReason(I)J
    .registers 4
    .param p1, "status"    # I

    .line 2547
    invoke-static {p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 2555
    const-wide/16 v0, 0x0

    return-wide v0

    .line 2549
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    return-wide v0

    .line 2552
    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    return-wide v0

    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method static greylist-max-o translateStatus(I)I
    .registers 2
    .param p0, "status"    # I

    .line 2619
    packed-switch p0, :pswitch_data_10

    .line 2637
    :pswitch_3
    goto :goto_d

    .line 2634
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 2631
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 2624
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 2621
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 2638
    :goto_d
    const/16 v0, 0x10

    return v0

    :pswitch_data_10
    .packed-switch 0xbe
        :pswitch_b
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public whitelist getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 2497
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .line 2502
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "status"

    if-eqz v0, :cond_1d

    .line 2503
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    return-wide v0

    .line 2504
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2505
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 2507
    :cond_35
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 5
    .param p1, "columnIndex"    # I

    .line 2513
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 2514
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    :cond_b
    goto :goto_20

    :sswitch_c
    const-string v1, "local_filename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_21

    :sswitch_16
    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_21

    :goto_20
    const/4 v1, -0x1

    :goto_21
    packed-switch v1, :pswitch_data_4a

    .line 2525
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2518
    :pswitch_29
    iget-boolean v1, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    if-eqz v1, :cond_32

    .line 2523
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2519
    :cond_32
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2516
    :pswitch_3a
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_40
    .sparse-switch
        -0x47d0d968 -> :sswitch_16
        0x150cc5b -> :sswitch_c
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_29
    .end packed-switch
.end method
