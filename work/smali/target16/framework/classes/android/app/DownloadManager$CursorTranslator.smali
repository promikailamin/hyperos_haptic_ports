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

    .line 1746
    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V
    .registers 4

    .line 1751
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1752
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1753
    iput-boolean p3, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    .line 1754
    return-void
.end method

.method private greylist-max-o getErrorCode(I)J
    .registers 4

    .line 1839
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x258

    if-ge p1, v0, :cond_12

    .line 1842
    :cond_10
    int-to-long v0, p1

    return-wide v0

    .line 1845
    :cond_12
    sparse-switch p1, :sswitch_data_30

    .line 1872
    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 1857
    :sswitch_18
    const-wide/16 v0, 0x3ed

    return-wide v0

    .line 1854
    :sswitch_1b
    const-wide/16 v0, 0x3ec

    return-wide v0

    .line 1851
    :sswitch_1e
    const-wide/16 v0, 0x3ea

    return-wide v0

    .line 1847
    :sswitch_21
    const-wide/16 v0, 0x3e9

    return-wide v0

    .line 1866
    :sswitch_24
    const-wide/16 v0, 0x3f0

    return-wide v0

    .line 1869
    :sswitch_27
    const-wide/16 v0, 0x3f1

    return-wide v0

    .line 1863
    :sswitch_2a
    const-wide/16 v0, 0x3ef

    return-wide v0

    .line 1860
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
    .registers 5

    .line 1790
    const-string v0, "destination"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 1791
    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    goto :goto_32

    .line 1802
    :cond_1d
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 1803
    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1794
    :cond_32
    :goto_32
    const-string/jumbo v0, "local_filename"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1795
    if-nez v0, :cond_41

    .line 1796
    const/4 v0, 0x0

    return-object v0

    .line 1798
    :cond_41
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getPausedReason(I)J
    .registers 4

    .line 1820
    packed-switch p1, :pswitch_data_12

    .line 1834
    const-wide/16 v0, 0x4

    return-wide v0

    .line 1831
    :pswitch_6
    const-wide/16 v0, 0x5

    return-wide v0

    .line 1828
    :pswitch_9
    const-wide/16 v0, 0x3

    return-wide v0

    .line 1825
    :pswitch_c
    const-wide/16 v0, 0x2

    return-wide v0

    .line 1822
    :pswitch_f
    const-wide/16 v0, 0x1

    return-wide v0

    :pswitch_data_12
    .packed-switch 0xc2
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o getReason(I)J
    .registers 4

    .line 1807
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 1815
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1809
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    return-wide v0

    .line 1812
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

.method private greylist-max-o translateStatus(I)I
    .registers 2

    .line 1877
    packed-switch p1, :pswitch_data_10

    .line 1895
    :pswitch_3
    goto :goto_d

    .line 1892
    :pswitch_4
    const/16 p1, 0x8

    return p1

    .line 1889
    :pswitch_7
    const/4 p1, 0x4

    return p1

    .line 1882
    :pswitch_9
    const/4 p1, 0x2

    return p1

    .line 1879
    :pswitch_b
    const/4 p1, 0x1

    return p1

    .line 1896
    :goto_d
    const/16 p1, 0x10

    return p1

    :pswitch_data_10
    .packed-switch 0xbe
        :pswitch_b
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public whitelist getInt(I)I
    .registers 4

    .line 1758
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public whitelist getLong(I)J
    .registers 4

    .line 1763
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "status"

    if-eqz v0, :cond_1d

    .line 1764
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    return-wide v0

    .line 1765
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1766
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 1768
    :cond_35
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 4

    .line 1774
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 1775
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3e

    :cond_b
    goto :goto_22

    :sswitch_c
    const-string/jumbo v1, "local_filename"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_23

    :sswitch_17
    const-string/jumbo v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_23

    :goto_22
    const/4 v0, -0x1

    :goto_23
    packed-switch v0, :pswitch_data_48

    goto :goto_39

    .line 1779
    :pswitch_27
    iget-boolean v0, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    if-eqz v0, :cond_2c

    goto :goto_39

    .line 1780
    :cond_2c
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1777
    :pswitch_34
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1785
    :goto_39
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_3e
    .sparse-switch
        -0x47d0d968 -> :sswitch_17
        0x150cc5b -> :sswitch_c
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_34
        :pswitch_27
    .end packed-switch
.end method
