.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$Request;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$CursorTranslator;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final whitelist ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final whitelist ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final greylist-max-o COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final whitelist COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final whitelist COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final blacklist COLUMN_DESTINATION:Ljava/lang/String; = "destination"

.field public static final blacklist COLUMN_FILE_NAME_HINT:Ljava/lang/String; = "hint"

.field public static final whitelist COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final whitelist COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final whitelist COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final whitelist COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final blacklist COLUMN_MEDIASTORE_URI:Ljava/lang/String; = "mediastore_uri"

.field public static final whitelist COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final whitelist COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final whitelist COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final whitelist COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final whitelist COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final greylist-max-o ERROR_BLOCKED:I = 0x3f2

.field public static final whitelist ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final whitelist ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final whitelist ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final whitelist ERROR_FILE_ERROR:I = 0x3e9

.field public static final whitelist ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final whitelist ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final whitelist ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final whitelist ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final whitelist ERROR_UNKNOWN:I = 0x3e8

.field public static final whitelist EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final whitelist EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final whitelist INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field private static final greylist-max-o NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final blacklist PAUSED_MANUAL:I = 0x5

.field public static final whitelist PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final whitelist PAUSED_UNKNOWN:I = 0x4

.field public static final whitelist PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final whitelist PAUSED_WAITING_TO_RETRY:I = 0x1

.field public static final whitelist STATUS_FAILED:I = 0x10

.field public static final whitelist STATUS_PAUSED:I = 0x4

.field public static final whitelist STATUS_PENDING:I = 0x1

.field public static final whitelist STATUS_RUNNING:I = 0x2

.field public static final whitelist STATUS_SUCCESSFUL:I = 0x8

.field public static final greylist-max-r UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mAccessFilename:Z

.field private greylist-max-o mBaseUri:Landroid/net/Uri;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 75
    nop

    .line 362
    const-string/jumbo v15, "local_uri"

    const-string/jumbo v16, "reason"

    const-string v1, "_id"

    const-string/jumbo v2, "local_filename"

    const-string/jumbo v3, "mediaprovider_uri"

    const-string v4, "destination"

    const-string/jumbo v5, "title"

    const-string v6, "description"

    const-string/jumbo v7, "uri"

    const-string/jumbo v8, "status"

    const-string v9, "hint"

    const-string/jumbo v10, "media_type"

    const-string/jumbo v11, "total_size"

    const-string/jumbo v12, "last_modified_timestamp"

    const-string v13, "bytes_so_far"

    const-string v14, "allow_write"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1064
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 1065
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 1069
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    iput-boolean p1, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1070
    return-void
.end method

.method private static blacklist extractDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1654
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1655
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 1656
    return-object p0

    .line 1658
    :cond_e
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1659
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1661
    :cond_21
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extractFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1671
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1672
    :cond_4
    invoke-static {p0}, Landroid/app/DownloadManager;->extractDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1674
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1675
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 1676
    return-object v0

    .line 1678
    :cond_12
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .registers 3

    .line 1449
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .registers 3

    .line 1350
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "download_manager_max_bytes_over_mobile"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    .line 1352
    :catch_f
    move-exception p0

    .line 1353
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whitelist getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .registers 3

    .line 1433
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    .line 1435
    :catch_f
    move-exception p0

    .line 1436
    const/4 p0, 0x0

    return-object p0
.end method

.method static greylist-max-r getWhereArgsForIds([J)[Ljava/lang/String;
    .registers 2

    .line 1723
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 1724
    invoke-static {p0, v0}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 1732
    nop

    .line 1733
    const/4 v0, 0x0

    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 1734
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1733
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1736
    :cond_10
    return-object p1
.end method

.method static greylist-max-r getWhereClauseForIds([J)Ljava/lang/String;
    .registers 4

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1706
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 1708
    if-lez v1, :cond_15

    .line 1709
    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    :cond_15
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1714
    :cond_22
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o isActiveNetworkExpensive(Landroid/content/Context;)Z
    .registers 1

    .line 1443
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist resolveMimeType(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 1637
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/DownloadManager;->extractFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1638
    const-string v0, "application/octet-stream"

    if-nez p0, :cond_d

    return-object v0

    .line 1640
    :cond_d
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1641
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1642
    if-nez p0, :cond_1e

    return-object v0

    .line 1644
    :cond_1e
    return-object p0
.end method

.method private static greylist-max-o validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1686
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1689
    return-void

    .line 1687
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " can\'t be null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .registers 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1492
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Landroid/net/Uri;)J
    .registers 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1538
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide p1

    return-wide p1
.end method

.method public greylist-max-o addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J
    .registers 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1563
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide p1

    return-wide p1
.end method

.method public greylist-max-o addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1589
    const-string/jumbo v0, "title"

    invoke-static {v0, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v0, "description"

    invoke-static {v0, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string/jumbo v0, "path"

    invoke-static {v0, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    const-string/jumbo v0, "mimeType"

    invoke-static {v0, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-ltz v0, :cond_bc

    .line 1599
    if-eqz p10, :cond_25

    .line 1600
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-direct {v0, p10}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    goto :goto_2d

    .line 1602
    :cond_25
    new-instance v0, Landroid/app/DownloadManager$Request;

    const-string/jumbo p10, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v0, p10}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    .line 1604
    :goto_2d
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object p1

    .line 1605
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object p1

    .line 1606
    invoke-virtual {p1, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1607
    if-eqz p11, :cond_43

    .line 1608
    const-string p1, "Referer"

    invoke-virtual {p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1610
    :cond_43
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 1611
    nop

    .line 1612
    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1611
    const-string p4, "destination"

    invoke-virtual {p1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1613
    const-string p2, "_data"

    invoke-virtual {p1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/app/DownloadManager;->resolveMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p4, "mimetype"

    invoke-virtual {p1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    const/16 p2, 0xc8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p4, "status"

    invoke-virtual {p1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1616
    const-string/jumbo p2, "total_bytes"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1617
    nop

    .line 1618
    const/4 p2, 0x2

    if-eqz p3, :cond_83

    const/4 p3, 0x0

    goto :goto_84

    .line 1619
    :cond_83
    move p3, p2

    .line 1618
    :goto_84
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1617
    const-string/jumbo p4, "scanned"

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1620
    if-eqz p8, :cond_92

    .line 1621
    const/4 p2, 0x3

    goto :goto_93

    :cond_92
    nop

    .line 1620
    :goto_93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "visibility"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1622
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "allow_write"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1623
    iget-object p2, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object p3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 1624
    if-nez p1, :cond_b3

    .line 1625
    const-wide/16 p1, -0x1

    return-wide p1

    .line 1627
    :cond_b3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    .line 1594
    :cond_bc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " invalid value for param: totalBytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist enqueue(Landroid/app/DownloadManager$Request;)J
    .registers 4

    .line 1139
    iget-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 1140
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 1141
    if-nez p1, :cond_13

    .line 1143
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1146
    :cond_13
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1147
    return-wide v0
.end method

.method public varargs blacklist forceDownload([J)V
    .registers 6

    .line 1305
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1306
    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1307
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "control"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1308
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bypass_recommended_size_limit"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1310
    return-void
.end method

.method public greylist-max-o getDownloadUri(J)Landroid/net/Uri;
    .registers 4

    .line 1697
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .registers 7

    .line 1249
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    .line 1250
    nop

    .line 1252
    const/4 p2, 0x0

    :try_start_11
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_3d

    .line 1253
    if-nez p1, :cond_1e

    .line 1254
    nop

    .line 1260
    if-eqz p1, :cond_1d

    .line 1261
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1254
    :cond_1d
    return-object p2

    .line 1256
    :cond_1e
    :try_start_1e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1257
    const-string/jumbo p2, "media_type"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_3b

    .line 1260
    if-eqz p1, :cond_34

    .line 1261
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1257
    :cond_34
    return-object p2

    .line 1260
    :cond_35
    if-eqz p1, :cond_3a

    .line 1261
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1265
    :cond_3a
    return-object p2

    .line 1260
    :catchall_3b
    move-exception p2

    goto :goto_41

    :catchall_3d
    move-exception p1

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    :goto_41
    if-eqz p1, :cond_46

    .line 1261
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1263
    :cond_46
    throw p2
.end method

.method public whitelist getUriForDownloadedFile(J)Landroid/net/Uri;
    .registers 7

    .line 1218
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 1219
    nop

    .line 1221
    const/4 v1, 0x0

    :try_start_11
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_48

    .line 1222
    if-nez v0, :cond_1e

    .line 1223
    nop

    .line 1232
    if-eqz v0, :cond_1d

    .line 1233
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1223
    :cond_1d
    return-object v1

    .line 1225
    :cond_1e
    :try_start_1e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1226
    const-string/jumbo v2, "status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1227
    const/16 v3, 0x8

    if-ne v3, v2, :cond_3f

    .line 1228
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_45

    .line 1232
    if-eqz v0, :cond_3e

    .line 1233
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1228
    :cond_3e
    return-object p1

    .line 1232
    :cond_3f
    if-eqz v0, :cond_44

    .line 1233
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1237
    :cond_44
    return-object v1

    .line 1232
    :catchall_45
    move-exception p1

    move-object v1, v0

    goto :goto_49

    :catchall_48
    move-exception p1

    :goto_49
    if-eqz v1, :cond_4e

    .line 1233
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1235
    :cond_4e
    throw p1
.end method

.method public varargs blacklist markRowDeleted([J)I
    .registers 5

    .line 1160
    if-eqz p1, :cond_16

    array-length v0, p1

    if-eqz v0, :cond_16

    .line 1164
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1162
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input param \'ids\' can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist onMediaStoreDownloadsDeleted(Landroid/util/LongSparseArray;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1104
    :try_start_0
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1105
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_74

    .line 1106
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1107
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 1108
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 1109
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1f
    if-ltz v4, :cond_32

    .line 1110
    invoke-virtual {p1, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 1111
    invoke-virtual {p1, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1109
    add-int/lit8 v4, v4, -0x1

    goto :goto_1f

    .line 1113
    :cond_32
    const-string p1, "ids"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1114
    const-string/jumbo p1, "mime_types"

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1116
    if-eqz v0, :cond_4d

    .line 1117
    const-string/jumbo p1, "mediastore_downloads_deleted"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_68

    .line 1125
    if-eqz v0, :cond_4b

    :try_start_48
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4b} :catch_74

    .line 1127
    :cond_4b
    nop

    .line 1128
    return-void

    .line 1122
    :cond_4d
    :try_start_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not acquire stable provider for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_68
    .catchall {:try_start_4d .. :try_end_68} :catchall_68

    .line 1104
    :catchall_68
    move-exception p1

    if-eqz v0, :cond_73

    :try_start_6b
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v0

    :try_start_70
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    throw p1
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_74} :catch_74

    .line 1125
    :catch_74
    move-exception p1

    .line 1126
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo p2, "r"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist pauseDownload(J)I
    .registers 6

    .line 1320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1321
    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v1, p1, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .registers 3

    .line 1186
    sget-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist query(Landroid/app/DownloadManager$Query;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    .line 1191
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    .line 1192
    if-nez p1, :cond_c

    .line 1193
    const/4 p1, 0x0

    return-object p1

    .line 1195
    :cond_c
    new-instance p2, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-boolean v1, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    invoke-direct {p2, p1, v0, v1}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    return-object p2
.end method

.method public varargs whitelist remove([J)I
    .registers 2

    .line 1176
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result p1

    return p1
.end method

.method public greylist-max-o rename(Landroid/content/Context;JLjava/lang/String;)Z
    .registers 9

    .line 1367
    invoke-static {p4}, Landroid/os/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_177

    .line 1372
    new-instance p1, Landroid/app/DownloadManager$Query;

    invoke-direct {p1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    invoke-virtual {p1, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    .line 1373
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 1374
    if-eqz p1, :cond_153

    .line 1377
    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_138

    .line 1378
    const-string/jumbo v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1379
    const/16 v3, 0x8

    if-ne v1, v3, :cond_11b

    .line 1383
    const-string/jumbo v1, "local_filename"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1384
    if-eqz v1, :cond_fe

    .line 1387
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_46
    .catchall {:try_start_1b .. :try_end_46} :catchall_151

    if-eqz v3, :cond_e1

    .line 1391
    nop

    .line 1394
    if-eqz p1, :cond_4e

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1396
    :cond_4e
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1397
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c8

    .line 1402
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 1409
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 1410
    iget-object p1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 1412
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1413
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string p4, "_data"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string/jumbo p4, "mediaprovider_uri"

    invoke-virtual {p1, p4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1416
    new-array p4, v0, [J

    aput-wide p2, p4, v2

    .line 1418
    iget-object p2, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1419
    invoke-static {p4}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p4

    .line 1418
    invoke-virtual {p2, p3, p1, v1, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_a3

    goto :goto_a4

    :cond_a3
    move v0, v2

    :goto_a4
    return v0

    .line 1403
    :cond_a5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to rename file from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1400
    :cond_c8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "File already exists: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1388
    :cond_e1
    :try_start_e1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Downloaded file doesn\'t exist anymore: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1389
    invoke-static {p1}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1385
    :cond_fe
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Download doesn\'t have a valid file path: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1386
    invoke-static {p1}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1380
    :cond_11b
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Download is not completed yet: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1381
    invoke-static {p1}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1392
    :cond_138
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing download id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 1373
    :catchall_151
    move-exception p2

    goto :goto_16c

    .line 1375
    :cond_153
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing cursor for download id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_16c
    .catchall {:try_start_e1 .. :try_end_16c} :catchall_151

    .line 1373
    :goto_16c
    if-eqz p1, :cond_176

    :try_start_16e
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_171
    .catchall {:try_start_16e .. :try_end_171} :catchall_172

    goto :goto_176

    :catchall_172
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_176
    :goto_176
    throw p2

    .line 1368
    :cond_177
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is not a valid filename"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs greylist restartDownload([J)V
    .registers 7

    .line 1276
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 1278
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_10
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_97

    const-string/jumbo v2, "status"

    if-nez v1, :cond_51

    .line 1279
    :try_start_19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1280
    const/16 v2, 0x8

    if-eq v1, v2, :cond_4d

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2a

    goto :goto_4d

    .line 1281
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot restart incomplete download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    .line 1282
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1278
    :cond_4d
    :goto_4d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_50
    .catchall {:try_start_19 .. :try_end_50} :catchall_97

    goto :goto_10

    .line 1286
    :cond_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1287
    nop

    .line 1289
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1290
    const-string v1, "current_bytes"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1291
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "total_bytes"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1292
    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1293
    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1294
    const-string/jumbo v1, "numfailed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1295
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1296
    return-void

    .line 1286
    :catchall_97
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1287
    throw p1
.end method

.method public blacklist resumeDownload(J)I
    .registers 6

    .line 1334
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1335
    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1337
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v1, p1, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist setAccessAllDownloads(Z)V
    .registers 2

    .line 1079
    if-eqz p1, :cond_7

    .line 1080
    sget-object p1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_b

    .line 1082
    :cond_7
    sget-object p1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1084
    :goto_b
    return-void
.end method

.method public greylist-max-p setAccessFilename(Z)V
    .registers 2

    .line 1089
    iput-boolean p1, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1090
    return-void
.end method
