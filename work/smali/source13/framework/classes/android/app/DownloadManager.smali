.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$CursorTranslator;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$Request;,
        Landroid/app/DownloadManager$ExtraDownloads;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final whitelist ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_DOWNLOAD_DELETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_DELETED"

.field public static final blacklist ACTION_DOWNLOAD_UPDATED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_UPDATED"

.field public static final blacklist ACTION_DOWNLOAD_UPDATE_PROGRESS_REGISTRATION:Ljava/lang/String; = "android.intent.action.DOWNLOAD_UPDATE_PROGRESS_REGISTRATION"

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

.field public static final blacklist COLUMN_XL_TASK_OPEN_MARK:Ljava/lang/String; = "xl_task_open_mark"

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

.field public static final blacklist EXTRA_DOWNLOAD_CURRENT_BYTES:Ljava/lang/String; = "extra_download_current_bytes"

.field public static final whitelist EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final blacklist EXTRA_DOWNLOAD_STATUS:Ljava/lang/String; = "extra_download_status"

.field public static final blacklist EXTRA_DOWNLOAD_TOTAL_BYTES:Ljava/lang/String; = "extra_download_total_bytes"

.field public static final whitelist EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final blacklist GLOBAL_UNDERLYING_COLUMNS:[Ljava/lang/String;

.field public static final whitelist INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field public static final blacklist INTENT_EXTRA_APPLICATION_PACKAGENAME:Ljava/lang/String; = "intent_extra_application_packagename"

.field public static final blacklist INTENT_EXTRA_REGISTER_DOWNLOADS_UPDATE_PROGRESS:Ljava/lang/String; = "intent_extra_register_downloads_update_progress"

.field public static final blacklist INTENT_EXTRA_UNREGISTER_DOWNLOADS_UPDATE_PROGRESS:Ljava/lang/String; = "intent_extra_unregister_downloads_update_progress"

.field private static final blacklist IS_DEVELOPMENT_VERSION:Z

.field public static final blacklist MIUI_UNDERLYING_COLUMNS:[Ljava/lang/String;

.field public static final blacklist MIUI_UNDERLYING_COLUMNS_DEV:[Ljava/lang/String;

.field private static final greylist-max-o NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final blacklist PAUSED_BY_APP:I = 0x5

.field public static final whitelist PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final whitelist PAUSED_UNKNOWN:I = 0x4

.field public static final whitelist PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final whitelist PAUSED_WAITING_TO_RETRY:I = 0x1

.field public static final blacklist PAUSE_INSUFFICIENT_SPACE:I = 0x6

.field public static final blacklist PERMISSION_SILENCE_INSTALL:Ljava/lang/String; = "android.permission.XL_SILENCE_INSTALL"

.field private static final blacklist REGULAR_EXPRESSION_FOR_DEVELOPMENT:Ljava/lang/String; = "\\d+(.\\d+){2,}(-internal)?"

.field public static final whitelist STATUS_FAILED:I = 0x10

.field public static final whitelist STATUS_PAUSED:I = 0x4

.field public static final whitelist STATUS_PENDING:I = 0x1

.field public static final whitelist STATUS_RUNNING:I = 0x2

.field public static final whitelist STATUS_SUCCESSFUL:I = 0x8

.field public static final blacklist UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mAccessFilename:Z

.field private greylist-max-o mBaseUri:Landroid/net/Uri;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 20

    .line 89
    nop

    .line 374
    const-string v0, "_id"

    const-string v1, "_data AS local_filename"

    const-string/jumbo v2, "mediaprovider_uri"

    const-string v3, "destination"

    const-string/jumbo v4, "title"

    const-string v5, "description"

    const-string/jumbo v6, "uri"

    const-string/jumbo v7, "status"

    const-string v8, "hint"

    const-string/jumbo v9, "mimetype AS media_type"

    const-string/jumbo v10, "total_bytes AS total_size"

    const-string v11, "lastmod AS last_modified_timestamp"

    const-string v12, "current_bytes AS bytes_so_far"

    const-string v13, "allow_write"

    const-string v14, "errorMsg"

    const-string/jumbo v15, "notificationpackage"

    const-string v16, "\'placeholder\' AS local_uri"

    const-string v17, "\'placeholder\' AS reason"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 402
    const-string v1, "_id"

    const-string v2, "local_filename"

    const-string/jumbo v3, "mediaprovider_uri"

    const-string v4, "destination"

    const-string/jumbo v5, "title"

    const-string v6, "description"

    const-string/jumbo v7, "uri"

    const-string/jumbo v8, "status"

    const-string v9, "hint"

    const-string/jumbo v10, "media_type"

    const-string/jumbo v11, "total_size"

    const-string v12, "last_modified_timestamp"

    const-string v13, "bytes_so_far"

    const-string v14, "allow_write"

    const-string v15, "local_uri"

    const-string/jumbo v16, "reason"

    const-string v17, "entity"

    const-string/jumbo v18, "xl_task_open_mark"

    const-string v19, "errorMsg"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/DownloadManager;->GLOBAL_UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 573
    const-string v2, "entity"

    const-string v3, "file_create_time"

    const-string v4, "downloading_current_speed"

    const-string v5, "download_surplus_time"

    const-string/jumbo v6, "xl_accelerate_speed"

    const-string v7, "downloaded_time"

    const-string/jumbo v8, "xl_vip_status"

    const-string/jumbo v9, "xl_vip_cdn_url"

    const-string/jumbo v10, "xl_task_open_mark"

    const-string v11, "download_task_thumbnail"

    const-string v12, "apk_package_name"

    const-string v13, "download_file_hash"

    const-string v14, "download_apk_install_way"

    const-string v15, "download_extra"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/DownloadManager;->concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Landroid/app/DownloadManager;->MIUI_UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 597
    const-string v1, "download_type"

    const-string/jumbo v2, "percent"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/DownloadManager;->concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Landroid/app/DownloadManager;->MIUI_UNDERLYING_COLUMNS_DEV:[Ljava/lang/String;

    .line 2654
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 2655
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bb

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 2656
    const-string v1, "\\d+(.\\d+){2,}(-internal)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    const/4 v0, 0x1

    goto :goto_bc

    :cond_bb
    const/4 v0, 0x0

    :goto_bc
    sput-boolean v0, Landroid/app/DownloadManager;->IS_DEVELOPMENT_VERSION:Z

    .line 2654
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1592
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1599
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 1600
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 1604
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-boolean v0, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1605
    return-void
.end method

.method public static blacklist addRunningStatusAndControlRun(Landroid/content/ContentValues;)V
    .registers 3
    .param p0, "values"    # Landroid/content/ContentValues;

    .line 2419
    if-eqz p0, :cond_18

    .line 2420
    const/16 v0, 0xc0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2421
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "control"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2423
    :cond_18
    return-void
.end method

.method private static blacklist concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 2375
    .local p0, "src1":[Ljava/lang/Object;, "[TT;"
    .local p1, "src2":[Ljava/lang/Object;, "[TT;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2376
    .local v0, "dst":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2377
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2378
    return-object v0
.end method

.method private static blacklist extractDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .line 2198
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2199
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 2200
    return-object p0

    .line 2202
    :cond_e
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2203
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2205
    :cond_21
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist extractFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .line 2215
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2216
    :cond_4
    invoke-static {p0}, Landroid/app/DownloadManager;->extractDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2218
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2219
    .local v1, "lastDot":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 2220
    return-object v0

    .line 2222
    :cond_12
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1993
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static blacklist getDownloadStatus(Landroid/database/Cursor;)I
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 2444
    const-string/jumbo v0, "status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2445
    .local v0, "status":I
    return v0
.end method

.method public static whitelist getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1893
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_manager_max_bytes_over_mobile"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 1895
    :catch_f
    move-exception v0

    .line 1896
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1977
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 1979
    :catch_f
    move-exception v0

    .line 1980
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static greylist getWhereArgsForIds([J)[Ljava/lang/String;
    .registers 3
    .param p0, "ids"    # [J

    .line 2267
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 2268
    .local v0, "whereArgs":[Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "ids"    # [J
    .param p1, "args"    # [Ljava/lang/String;

    .line 2276
    nop

    .line 2277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 2278
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 2277
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2280
    .end local v0    # "i":I
    :cond_10
    return-object p1
.end method

.method private static blacklist getWhereArgsForStatuses([I)[Ljava/lang/String;
    .registers 4
    .param p0, "statuses"    # [I

    .line 2408
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 2409
    .local v0, "whereArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 2410
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2409
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2412
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method static greylist getWhereClauseForIds([J)Ljava/lang/String;
    .registers 4
    .param p0, "ids"    # [J

    .line 2249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2250
    .local v0, "whereClause":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 2252
    if-lez v1, :cond_15

    .line 2253
    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    :cond_15
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2258
    .end local v1    # "i":I
    :cond_22
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getWhereClauseForStatuses([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "operators"    # [Ljava/lang/String;
    .param p1, "jointConditions"    # [Ljava/lang/String;

    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2395
    .local v0, "whereClause":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_4f

    .line 2397
    const-string v2, " "

    if-lez v1, :cond_2a

    .line 2398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    :cond_2a
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2396
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2403
    .end local v1    # "i":I
    :cond_4f
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o isActiveNetworkExpensive(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1987
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isDownloadSuccess(Landroid/database/Cursor;)Z
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 2452
    const-string/jumbo v0, "status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static blacklist isDownloading(Landroid/database/Cursor;)Z
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 2429
    const/4 v0, 0x0

    .line 2430
    .local v0, "ret":Z
    const-string/jumbo v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2431
    .local v1, "status":I
    packed-switch v1, :pswitch_data_12

    goto :goto_11

    .line 2434
    :pswitch_10
    const/4 v0, 0x1

    .line 2437
    :goto_11
    return v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public static blacklist isInternationalVersion()Z
    .registers 2

    .line 2649
    const-string/jumbo v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static blacklist resolveMimeType(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .line 2181
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DownloadManager;->extractFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2182
    .local v0, "extension":Ljava/lang/String;
    const-string v1, "application/octet-stream"

    if-nez v0, :cond_d

    return-object v1

    .line 2184
    :cond_d
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2185
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2186
    .local v2, "mimeType":Ljava/lang/String;
    if-nez v2, :cond_1e

    return-object v1

    .line 2188
    :cond_1e
    return-object v2
.end method

.method public static blacklist setDownloadUpdateProgressRegistration(Landroid/content/Context;[J[J)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registerIds"    # [J
    .param p2, "unregisterIds"    # [J

    .line 2387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_UPDATE_PROGRESS_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2388
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "intent_extra_register_downloads_update_progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2389
    const-string v1, "intent_extra_unregister_downloads_update_progress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2390
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2391
    return-void
.end method

.method public static blacklist setRecommendedMaxBytesOverMobile(Landroid/content/Context;J)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # J

    .line 2475
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static blacklist translateStatus(I)I
    .registers 2
    .param p0, "downloadsStatus"    # I

    .line 2463
    invoke-static {p0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "paramName"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 2230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2233
    return-void

    .line 2231
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .registers 21
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2036
    const/4 v9, 0x0

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

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Landroid/net/Uri;)J
    .registers 23
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "uri"    # Landroid/net/Uri;
    .param p10, "referer"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2082
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

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J
    .registers 22
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2107
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

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J
    .registers 23
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z
    .param p10, "uri"    # Landroid/net/Uri;
    .param p11, "referer"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2133
    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p10

    const-string/jumbo v5, "title"

    invoke-static {v5, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    const-string v5, "description"

    invoke-static {v5, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    const-string/jumbo v5, "path"

    invoke-static {v5, v3}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    const-string/jumbo v5, "mimeType"

    invoke-static {v5, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-ltz v5, :cond_c3

    .line 2143
    if-eqz v4, :cond_2c

    .line 2144
    new-instance v5, Landroid/app/DownloadManager$Request;

    invoke-direct {v5, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .local v5, "request":Landroid/app/DownloadManager$Request;
    goto :goto_34

    .line 2146
    .end local v5    # "request":Landroid/app/DownloadManager$Request;
    :cond_2c
    new-instance v5, Landroid/app/DownloadManager$Request;

    const-string/jumbo v6, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v5, v6}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    .line 2148
    .restart local v5    # "request":Landroid/app/DownloadManager$Request;
    :goto_34
    invoke-virtual {v5, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v6

    .line 2149
    invoke-virtual {v6, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v6

    .line 2150
    invoke-virtual {v6, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 2151
    if-eqz p11, :cond_4a

    .line 2152
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Referer"

    invoke-virtual {v5, v7, v6}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 2154
    :cond_4a
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    .line 2155
    .local v6, "values":Landroid/content/ContentValues;
    const/4 v7, 0x6

    .line 2156
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2155
    const-string v8, "destination"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2157
    const-string v7, "_data"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/app/DownloadManager;->resolveMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mimetype"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    const/16 v7, 0xc8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "status"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2160
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string/jumbo v8, "total_bytes"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2161
    nop

    .line 2162
    const/4 v7, 0x2

    if-eqz p3, :cond_89

    const/4 v8, 0x0

    goto :goto_8a

    .line 2163
    :cond_89
    move v8, v7

    .line 2162
    :goto_8a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2161
    const-string/jumbo v9, "scanned"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2164
    if-eqz p8, :cond_98

    .line 2165
    const/4 v7, 0x3

    goto :goto_99

    :cond_98
    nop

    .line 2164
    :goto_99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "visibility"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2166
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "allow_write"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2167
    move-object v7, p0

    iget-object v8, v7, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 2168
    .local v8, "downloadUri":Landroid/net/Uri;
    if-nez v8, :cond_ba

    .line 2169
    const-wide/16 v9, -0x1

    return-wide v9

    .line 2171
    :cond_ba
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    return-wide v9

    .line 2138
    .end local v5    # "request":Landroid/app/DownloadManager$Request;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v8    # "downloadUri":Landroid/net/Uri;
    :cond_c3
    move-object v7, p0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, " invalid value for param: totalBytes"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public whitelist enqueue(Landroid/app/DownloadManager$Request;)J
    .registers 6
    .param p1, "request"    # Landroid/app/DownloadManager$Request;

    .line 1667
    iget-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1668
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1669
    .local v1, "downloadUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1670
    .local v2, "id":J
    return-wide v2
.end method

.method public varargs blacklist forceDownload([J)V
    .registers 7
    .param p1, "ids"    # [J

    .line 1876
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1877
    .local v0, "values":Landroid/content/ContentValues;
    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1878
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "control"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1879
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bypass_recommended_size_limit"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1880
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1881
    return-void
.end method

.method public greylist-max-o getDownloadUri(J)Landroid/net/Uri;
    .registers 4
    .param p1, "id"    # J

    .line 2241
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .registers 7
    .param p1, "id"    # J

    .line 1820
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 1821
    .local v0, "query":Landroid/app/DownloadManager$Query;
    const/4 v1, 0x0

    .line 1823
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_10
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3c

    move-object v1, v2

    .line 1824
    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 1825
    nop

    .line 1831
    if-eqz v1, :cond_1e

    .line 1832
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1825
    :cond_1e
    return-object v2

    .line 1827
    :cond_1f
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1828
    const-string/jumbo v2, "media_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_3c

    .line 1831
    if-eqz v1, :cond_35

    .line 1832
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1828
    :cond_35
    return-object v2

    .line 1831
    :cond_36
    if-eqz v1, :cond_3b

    .line 1832
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1836
    :cond_3b
    return-object v2

    .line 1831
    :catchall_3c
    move-exception v2

    if-eqz v1, :cond_42

    .line 1832
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1834
    :cond_42
    throw v2
.end method

.method public whitelist getUriForDownloadedFile(J)Landroid/net/Uri;
    .registers 8
    .param p1, "id"    # J

    .line 1789
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 1790
    .local v0, "query":Landroid/app/DownloadManager$Query;
    const/4 v1, 0x0

    .line 1792
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_10
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_46

    move-object v1, v2

    .line 1793
    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 1794
    nop

    .line 1803
    if-eqz v1, :cond_1e

    .line 1804
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1794
    :cond_1e
    return-object v2

    .line 1796
    :cond_1f
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1797
    const-string/jumbo v3, "status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1798
    .local v3, "status":I
    const/16 v4, 0x8

    if-ne v4, v3, :cond_40

    .line 1799
    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_46

    .line 1803
    if-eqz v1, :cond_3f

    .line 1804
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1799
    :cond_3f
    return-object v2

    .line 1803
    .end local v3    # "status":I
    :cond_40
    if-eqz v1, :cond_45

    .line 1804
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1808
    :cond_45
    return-object v2

    .line 1803
    :catchall_46
    move-exception v2

    if-eqz v1, :cond_4c

    .line 1804
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1806
    :cond_4c
    throw v2
.end method

.method public varargs blacklist markRowDeleted([J)I
    .registers 7
    .param p1, "ids"    # [J

    .line 1683
    if-eqz p1, :cond_44

    array-length v0, p1

    if-eqz v0, :cond_44

    .line 1688
    invoke-static {}, Landroid/app/DownloadManager;->isInternationalVersion()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1689
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeletedGlobal([J)I

    move-result v0

    return v0

    .line 1691
    :cond_10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1692
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "deleted"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    array-length v2, p1

    if-ne v2, v1, :cond_33

    .line 1696
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1699
    :cond_33
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    .line 1700
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    .line 1699
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1685
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs blacklist markRowDeletedGlobal([J)I
    .registers 6
    .param p1, "ids"    # [J

    .line 1716
    if-eqz p1, :cond_16

    array-length v0, p1

    if-eqz v0, :cond_16

    .line 1720
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1718
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 1639
    .local p1, "idToMime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1640
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_56

    .line 1641
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1642
    .local v1, "callExtras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 1643
    .local v2, "ids":[J
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 1644
    .local v3, "mimeTypes":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1f
    if-ltz v4, :cond_32

    .line 1645
    invoke-virtual {p1, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 1646
    invoke-virtual {p1, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1644
    add-int/lit8 v4, v4, -0x1

    goto :goto_1f

    .line 1648
    .end local v4    # "i":I
    :cond_32
    const-string v4, "ids"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1649
    const-string/jumbo v4, "mime_types"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1651
    const-string/jumbo v4, "mediastore_downloads_deleted"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_4a

    .line 1653
    .end local v1    # "callExtras":Landroid/os/Bundle;
    .end local v2    # "ids":[J
    .end local v3    # "mimeTypes":[Ljava/lang/String;
    if-eqz v0, :cond_49

    :try_start_46
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_56

    .line 1655
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_49
    goto :goto_57

    .line 1639
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :catchall_4a
    move-exception v1

    if-eqz v0, :cond_55

    :try_start_4d
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v2

    :try_start_52
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "idToMime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    :cond_55
    :goto_55
    throw v1
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_56} :catch_56

    .line 1653
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "idToMime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    :catch_56
    move-exception v0

    .line 1656
    :goto_57
    return-void
.end method

.method public whitelist openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1776
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist pauseDownload([J)V
    .registers 7
    .param p1, "ids"    # [J

    .line 2340
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2341
    .local v0, "values":Landroid/content/ContentValues;
    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2342
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "control"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    filled-new-array {v2, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "OR"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 2345
    invoke-static {v2, v3}, Landroid/app/DownloadManager;->getWhereClauseForStatuses([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2346
    .local v1, "whereClause":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_70

    .line 2347
    invoke-static {v3}, Landroid/app/DownloadManager;->getWhereArgsForStatuses([I)[Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    .line 2346
    invoke-static {v2, v3, v4}, Landroid/app/DownloadManager;->concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 2349
    .local v2, "whereArgs":[Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2350
    return-void

    :array_70
    .array-data 4
        0xbe
        0xc0
    .end array-data
.end method

.method public whitelist query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .registers 6
    .param p1, "query"    # Landroid/app/DownloadManager$Query;

    .line 1743
    invoke-static {}, Landroid/app/DownloadManager;->isInternationalVersion()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1744
    sget-object v0, Landroid/app/DownloadManager;->GLOBAL_UNDERLYING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1746
    :cond_d
    const/4 v0, 0x0

    .line 1747
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    sget-boolean v1, Landroid/app/DownloadManager;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v1, :cond_1d

    .line 1748
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->MIUI_UNDERLYING_COLUMNS_DEV:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_27

    .line 1750
    :cond_1d
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->MIUI_UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1752
    :goto_27
    if-nez v0, :cond_2b

    .line 1753
    const/4 v1, 0x0

    return-object v1

    .line 1755
    :cond_2b
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-boolean v3, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    invoke-direct {v1, v0, v2, v3}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    return-object v1
.end method

.method public blacklist query(Landroid/app/DownloadManager$Query;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "query"    # Landroid/app/DownloadManager$Query;
    .param p2, "projection"    # [Ljava/lang/String;

    .line 1762
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1763
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_c

    .line 1764
    const/4 v1, 0x0

    return-object v1

    .line 1766
    :cond_c
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-boolean v3, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    invoke-direct {v1, v0, v2, v3}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    return-object v1
.end method

.method public varargs whitelist remove([J)I
    .registers 3
    .param p1, "ids"    # [J

    .line 1732
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result v0

    return v0
.end method

.method public varargs blacklist removeRecordOnly([J)I
    .registers 6
    .param p1, "ids"    # [J

    .line 2294
    if-eqz p1, :cond_21

    array-length v0, p1

    if-eqz v0, :cond_21

    .line 2299
    invoke-static {}, Landroid/app/DownloadManager;->isInternationalVersion()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2300
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->removeRecordOnlyGlobal([J)I

    move-result v0

    return v0

    .line 2302
    :cond_10
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2296
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs blacklist removeRecordOnlyGlobal([J)I
    .registers 7
    .param p1, "ids"    # [J

    .line 2318
    if-eqz p1, :cond_39

    array-length v0, p1

    if-eqz v0, :cond_39

    .line 2322
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2323
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "deleted"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2326
    array-length v2, p1

    if-ne v2, v1, :cond_28

    .line 2327
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 2330
    :cond_28
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    .line 2331
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    .line 2330
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 2320
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o rename(Landroid/content/Context;JLjava/lang/String;)Z
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "displayName"    # Ljava/lang/String;

    .line 1910
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {p4 .. p4}, Landroid/os/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 1915
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v5, 0x1

    new-array v6, v5, [J

    const/4 v7, 0x0

    aput-wide v2, v6, v7

    invoke-virtual {v0, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v6

    .line 1916
    .local v6, "query":Landroid/app/DownloadManager$Query;
    invoke-virtual {v1, v6}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v8

    .line 1917
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_159

    .line 1920
    :try_start_21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 1921
    const-string/jumbo v0, "status"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1922
    .local v0, "status":I
    const/16 v9, 0x8

    if-ne v0, v9, :cond_120

    .line 1926
    const-string v9, "local_filename"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1927
    .local v9, "filePath":Ljava/lang/String;
    if-eqz v9, :cond_103

    .line 1930
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10
    :try_end_4b
    .catchall {:try_start_21 .. :try_end_4b} :catchall_156

    if-eqz v10, :cond_e6

    .line 1934
    .end local v0    # "status":I
    nop

    .line 1937
    if-eqz v8, :cond_53

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1939
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1940
    .local v0, "before":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1942
    .local v8, "after":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_cd

    .line 1945
    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_aa

    .line 1953
    iget-object v10, v1, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v10, v0}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 1954
    iget-object v10, v1, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v10, v8}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 1956
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1957
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "title"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_data"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    const-string/jumbo v11, "mediaprovider_uri"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1960
    new-array v11, v5, [J

    aput-wide v2, v11, v7

    .line 1962
    .local v11, "ids":[J
    iget-object v12, v1, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v13, v1, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1963
    invoke-static {v11}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v15

    .line 1962
    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-ne v12, v5, :cond_a8

    goto :goto_a9

    :cond_a8
    move v5, v7

    :goto_a9
    return v5

    .line 1946
    .end local v10    # "values":Landroid/content/ContentValues;
    .end local v11    # "ids":[J
    :cond_aa
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to rename file from "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1943
    :cond_cd
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File already exists: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1931
    .local v0, "status":I
    .local v8, "cursor":Landroid/database/Cursor;
    :cond_e6
    :try_start_e6
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Downloaded file doesn\'t exist anymore: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1932
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v5

    .line 1928
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :cond_103
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Download doesn\'t have a valid file path: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1929
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v5

    .line 1923
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :cond_120
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download is not completed yet: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1924
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v5

    .line 1935
    .end local v0    # "status":I
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :cond_13d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing download id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v0

    .line 1916
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :catchall_156
    move-exception v0

    move-object v5, v0

    goto :goto_172

    .line 1918
    :cond_159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing cursor for download id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":J
    .end local p4    # "displayName":Ljava/lang/String;
    throw v0
    :try_end_172
    .catchall {:try_start_e6 .. :try_end_172} :catchall_156

    .line 1916
    .restart local v6    # "query":Landroid/app/DownloadManager$Query;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":J
    .restart local p4    # "displayName":Ljava/lang/String;
    :goto_172
    if-eqz v8, :cond_17d

    :try_start_174
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_177
    .catchall {:try_start_174 .. :try_end_177} :catchall_178

    goto :goto_17d

    :catchall_178
    move-exception v0

    move-object v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17d
    :goto_17d
    throw v5

    .line 1911
    .end local v6    # "query":Landroid/app/DownloadManager$Query;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_17e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid filename"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs greylist restartDownload([J)V
    .registers 8
    .param p1, "ids"    # [J

    .line 1847
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 1849
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_10
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_97

    const-string/jumbo v2, "status"

    if-nez v1, :cond_51

    .line 1850
    :try_start_19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1851
    .local v1, "status":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_4d

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2a

    goto :goto_4d

    .line 1852
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot restart incomplete download: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    .line 1853
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/app/DownloadManager;
    .end local p1    # "ids":[J
    throw v2

    .line 1849
    .end local v1    # "status":I
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/app/DownloadManager;
    .restart local p1    # "ids":[J
    :cond_4d
    :goto_4d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_50
    .catchall {:try_start_19 .. :try_end_50} :catchall_97

    goto :goto_10

    .line 1857
    :cond_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1858
    nop

    .line 1860
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1861
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_bytes"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1862
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "total_bytes"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1863
    const-string v4, "_data"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1864
    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1865
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "numfailed"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1866
    iget-object v2, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1867
    return-void

    .line 1857
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_97
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1858
    throw v1
.end method

.method public varargs blacklist resumeDownload([J)V
    .registers 7
    .param p1, "ids"    # [J

    .line 2358
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2359
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/app/DownloadManager;->addRunningStatusAndControlRun(Landroid/content/ContentValues;)V

    .line 2360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    filled-new-array {v2, v2, v2, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "OR"

    filled-new-array {v3, v3, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 2361
    invoke-static {v2, v3}, Landroid/app/DownloadManager;->getWhereClauseForStatuses([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2362
    .local v1, "whereClause":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_5e

    .line 2363
    invoke-static {v3}, Landroid/app/DownloadManager;->getWhereArgsForStatuses([I)[Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    .line 2362
    invoke-static {v2, v3, v4}, Landroid/app/DownloadManager;->concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 2368
    .local v2, "whereArgs":[Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2369
    return-void

    nop

    :array_5e
    .array-data 4
        0xc1
        0xc2
        0xc3
        0xc4
    .end array-data
.end method

.method public greylist setAccessAllDownloads(Z)V
    .registers 3
    .param p1, "accessAllDownloads"    # Z

    .line 1614
    if-eqz p1, :cond_7

    .line 1615
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_b

    .line 1617
    :cond_7
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1619
    :goto_b
    return-void
.end method

.method public greylist-max-p setAccessFilename(Z)V
    .registers 2
    .param p1, "accessFilename"    # Z

    .line 1624
    iput-boolean p1, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1625
    return-void
.end method
