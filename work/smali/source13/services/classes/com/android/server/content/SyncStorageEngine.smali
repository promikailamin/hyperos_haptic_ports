.class public Lcom/android/server/content/SyncStorageEngine;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$MyHandler;,
        Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;,
        Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;,
        Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;,
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x3

.field private static final ACCOUNT_INFO_FILE_NAME:Ljava/lang/String; = "accounts.xml"

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field private static final DELETE_LEGACY_PARCEL_FILES:Z = true

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field private static final LEGACY_STATISTICS_FILE_NAME:Ljava/lang/String; = "stats.bin"

.field private static final LEGACY_STATUS_FILE_NAME:Ljava/lang/String; = "status.bin"

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_FEED:I = 0x5

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_OTHER:I = 0x0

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field private static final STATISTICS_FILE_NAME:Ljava/lang/String; = "stats"

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final STATUS_FILE_NAME:Ljava/lang/String; = "status"

.field private static final SYNC_DIR_NAME:Ljava/lang/String; = "sync"

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mGrantSyncAdaptersAccountAccess:Z

.field private final mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

.field private volatile mIsClockValid:Z

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private mSyncDir:Ljava/io/File;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetmPeriodicSyncAddedListener()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .registers 1

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 144
    const-string v0, "OTHER"

    const-string v1, "LOCAL"

    const-string v2, "POLL"

    const-string v3, "USER"

    const-string v4, "PERIODIC"

    const-string v5, "FEED"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 178
    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 444
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 447
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 450
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 457
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 461
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    .line 464
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 467
    const/16 v2, 0x1c

    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 510
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 511
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 523
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-direct {v2, p0, p3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;-><init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 524
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 525
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 526
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 528
    const-string v3, "GMT+0"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 530
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 533
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 535
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 536
    .local v3, "systemDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "sync"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    .line 537
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 539
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 541
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string v7, "accounts.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "sync-accounts"

    invoke-direct {v4, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 543
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v7, "status"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "sync-status"

    invoke-direct {v4, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 544
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v7, "stats"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "sync-stats"

    invoke-direct {v4, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 546
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 547
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 548
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 550
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineStub;->getInstance()Lcom/android/server/content/SyncStorageEngineStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    invoke-interface {v4, v5}, Lcom/android/server/content/SyncStorageEngineStub;->initAndReadAndWriteLocked(Ljava/io/File;)V

    .line 552
    invoke-virtual {v2}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v4

    if-eqz v4, :cond_116

    .line 553
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 554
    .local v0, "size":I
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Loaded "

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v7, " items"

    aput-object v7, v4, v5

    invoke-virtual {v2, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 555
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_102
    if-ge v2, v0, :cond_116

    .line 556
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_102

    .line 559
    .end local v0    # "size":I
    .end local v2    # "i":I
    :cond_116
    return-void
.end method

.method public static calculateDefaultFlexTime(J)J
    .registers 6
    .param p0, "syncTimeSeconds"    # J

    .line 643
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 647
    const-wide/16 v0, 0x0

    return-wide v0

    .line 648
    :cond_9
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    .line 649
    long-to-double v0, p0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 652
    :cond_19
    const-wide/16 v0, 0xd80

    return-wide v0
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .line 1578
    if-gez p2, :cond_b

    .line 1579
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1580
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1581
    const/4 p3, 0x1

    .line 1583
    :cond_b
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created a new AuthorityInfo for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_2a
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1587
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1588
    if-eqz p3, :cond_39

    .line 1589
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1591
    :cond_39
    return-object v0
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .registers 5
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .line 1507
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    .line 1508
    .local v0, "syncStatusInfo":Landroid/content/SyncStatusInfo;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 10
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1531
    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1532
    .local v0, "au":Landroid/accounts/AccountAndUser;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1533
    .local v1, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "SyncManager"

    if-nez v1, :cond_3a

    .line 1534
    if-eqz p2, :cond_39

    .line 1535
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": unknown account "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_39
    return-object v3

    .line 1541
    :cond_3a
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1542
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v5, :cond_6b

    .line 1543
    if-eqz p2, :cond_6a

    .line 1544
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": unknown provider "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_6a
    return-object v3

    .line 1550
    :cond_6b
    return-object v5
.end method

.method private getCurrentDayLocked()I
    .registers 6

    .line 1512
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1513
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1514
    .local v0, "dayOfYear":I
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 1515
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 1516
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1517
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1518
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 1520
    :cond_3c
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getCurrentSyncs(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1383
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1384
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private getCurrentSyncsLocked(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1412
    .local v0, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_15

    .line 1413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1414
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1416
    :cond_15
    return-object v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .line 1561
    const/4 v0, 0x0

    .line 1562
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v1, Landroid/accounts/AccountAndUser;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v1, v2, v3}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1563
    .local v1, "au":Landroid/accounts/AccountAndUser;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1564
    .local v2, "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v2, :cond_1f

    .line 1565
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    invoke-direct {v3, v1}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    move-object v2, v3

    .line 1566
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    :cond_1f
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1569
    if-nez v0, :cond_37

    .line 1570
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1571
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    :cond_37
    return-object v0
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .registers 4
    .param p1, "authorityId"    # I

    .line 1623
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1624
    .local v0, "status":Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_15

    .line 1625
    new-instance v1, Landroid/content/SyncStatusInfo;

    invoke-direct {v1, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    move-object v0, v1

    .line 1626
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1628
    :cond_15
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    .line 574
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_7

    .line 577
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0

    .line 575
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 566
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_5

    .line 567
    return-void

    .line 569
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 570
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 571
    return-void
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .registers 4
    .param p1, "syncDir"    # Ljava/io/File;

    .line 1767
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1768
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1769
    return-void

    .line 1771
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1773
    return-void
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .registers 11

    .line 1780
    const/4 v0, 0x0

    .line 1782
    .local v0, "writeNeeded":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1783
    .local v1, "authoritiesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1784
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    const/4 v4, 0x0

    if-ge v3, v2, :cond_51

    .line 1785
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1787
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1788
    .local v6, "newAuthorityName":Ljava/lang/String;
    if-nez v6, :cond_27

    .line 1789
    goto :goto_4e

    .line 1794
    :cond_27
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    iget-boolean v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v7, :cond_2f

    .line 1799
    goto :goto_4e

    .line 1803
    :cond_2f
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v9, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v7, v8, v6, v9}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1807
    .local v7, "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string v8, "cleanup"

    invoke-direct {p0, v7, v8}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    if-eqz v8, :cond_45

    .line 1808
    goto :goto_4e

    .line 1811
    :cond_45
    const/4 v8, -0x1

    .line 1812
    invoke-direct {p0, v7, v8, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 1813
    .local v4, "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1814
    const/4 v0, 0x1

    .line 1784
    .end local v4    # "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "newAuthorityName":Ljava/lang/String;
    .end local v7    # "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1817
    .end local v3    # "i":I
    :cond_51
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1818
    .local v5, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1823
    const/4 v0, 0x1

    .line 1824
    .end local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_55

    .line 1826
    :cond_72
    return v0
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 562
    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-object v0
.end method

.method private parseAuthority(Landroid/util/TypedXmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 26
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "version"    # I
    .param p3, "validator"    # Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1842
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v4, "SyncManager"

    const/4 v5, 0x0

    .line 1843
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v6, -0x1

    .line 1845
    .local v6, "id":I
    const/4 v7, 0x0

    :try_start_b
    const-string/jumbo v0, "id"

    invoke-interface {v2, v7, v0}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_12} :catch_14

    move v6, v0

    .line 1848
    goto :goto_1a

    .line 1846
    :catch_14
    move-exception v0

    .line 1847
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "error parsing the id of the authority"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1849
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1a
    if-ltz v6, :cond_1bc

    .line 1850
    const-string v0, "authority"

    invoke-interface {v2, v7, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1851
    .local v8, "authorityName":Ljava/lang/String;
    const-string v0, "enabled"

    const/4 v9, 0x1

    invoke-interface {v2, v7, v0, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 1852
    .local v10, "enabled":Z
    const-string/jumbo v0, "syncable"

    invoke-interface {v2, v7, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1853
    .local v0, "syncable":Ljava/lang/String;
    const-string v11, "account"

    invoke-interface {v2, v7, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1854
    .local v11, "accountName":Ljava/lang/String;
    const-string/jumbo v12, "type"

    invoke-interface {v2, v7, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1855
    .local v12, "accountType":Ljava/lang/String;
    const-string/jumbo v13, "user"

    const/4 v14, 0x0

    invoke-interface {v2, v7, v13, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 1856
    .local v13, "userId":I
    const-string/jumbo v15, "package"

    invoke-interface {v2, v7, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1857
    .local v15, "packageName":Ljava/lang/String;
    const-string v9, "class"

    invoke-interface {v2, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1858
    .local v7, "className":Ljava/lang/String;
    const/4 v9, -0x1

    if-nez v12, :cond_60

    if-nez v15, :cond_60

    .line 1859
    const-string v12, "com.google"

    .line 1860
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v12

    move-object v12, v0

    goto :goto_62

    .line 1862
    :cond_60
    move-object v9, v12

    move-object v12, v0

    .end local v0    # "syncable":Ljava/lang/String;
    .local v9, "accountType":Ljava/lang/String;
    .local v12, "syncable":Ljava/lang/String;
    :goto_62
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1863
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string v5, "SyncManagerFile"

    const/4 v14, 0x2

    invoke-static {v5, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    const-string v14, " syncable="

    const-string v2, " enabled="

    if-eqz v19, :cond_d2

    .line 1864
    move-object/from16 v19, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding authority: account="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " accountType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " auth="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " package="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " class="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " user="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 1863
    :cond_d2
    move-object/from16 v19, v4

    .line 1874
    :goto_d4
    if-nez v0, :cond_15e

    .line 1875
    const/4 v1, 0x2

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 1876
    const-string v1, "Creating authority entry"

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_e2
    if-eqz v11, :cond_155

    if-eqz v8, :cond_155

    .line 1879
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v11, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4, v8, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1882
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v13}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAccountValid(Landroid/accounts/Account;I)Z

    move-result v4

    if-eqz v4, :cond_115

    .line 1883
    invoke-virtual {v3, v8, v13}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAuthorityValid(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_112

    .line 1884
    const/4 v5, 0x0

    move-object/from16 v4, p0

    invoke-direct {v4, v1, v6, v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1891
    if-lez p2, :cond_10c

    .line 1892
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1902
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_10c
    move-object v5, v0

    const/16 v16, 0x1

    const/16 v18, 0x0

    goto :goto_168

    .line 1883
    .restart local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_112
    move-object/from16 v4, p0

    goto :goto_117

    .line 1882
    :cond_115
    move-object/from16 v4, p0

    .line 1895
    :goto_117
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v20, "35028827"

    const/16 v18, 0x0

    aput-object v20, v5, v18

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v16, 0x1

    aput-object v20, v5, v16

    move-object/from16 v20, v0

    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v20, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v1

    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .local v21, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string v1, " provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    const v0, 0x534e4554

    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_166

    .line 1878
    .end local v20    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v21    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_155
    move-object/from16 v20, v0

    const/16 v16, 0x1

    const/16 v18, 0x0

    move-object/from16 v4, p0

    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v20    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_166

    .line 1874
    .end local v20    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_15e
    move-object/from16 v20, v0

    const/16 v16, 0x1

    const/16 v18, 0x0

    move-object/from16 v4, p0

    .line 1902
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v20    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_166
    move-object/from16 v5, v20

    .end local v20    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_168
    if-eqz v5, :cond_193

    .line 1903
    iput-boolean v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1905
    if-nez v12, :cond_170

    .line 1906
    const/4 v0, -0x1

    goto :goto_174

    :cond_170
    :try_start_170
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_174
    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_176
    .catch Ljava/lang/NumberFormatException; {:try_start_170 .. :try_end_176} :catch_177

    .line 1917
    :goto_176
    goto :goto_1bd

    .line 1907
    :catch_177
    move-exception v0

    .line 1910
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 1911
    const/4 v1, -0x1

    iput v1, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_176

    .line 1913
    :cond_185
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 1914
    move/from16 v1, v16

    goto :goto_190

    :cond_18e
    move/from16 v1, v18

    :goto_190
    iput v1, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_176

    .line 1919
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure adding authority: auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bd

    .line 1849
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "authorityName":Ljava/lang/String;
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v10    # "enabled":Z
    .end local v11    # "accountName":Ljava/lang/String;
    .end local v12    # "syncable":Ljava/lang/String;
    .end local v13    # "userId":I
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_1bc
    move-object v4, v1

    .line 1925
    :goto_1bd
    return-object v5
.end method

.method private parseExtra(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1959
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1960
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "type"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1963
    .local v2, "type":Ljava/lang/String;
    :try_start_f
    const-string/jumbo v3, "long"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_16} :catch_91

    const-string/jumbo v4, "value1"

    if-eqz v3, :cond_23

    .line 1964
    :try_start_1b
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p2, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_90

    .line 1965
    :cond_23
    const-string/jumbo v3, "integer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1966
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_90

    .line 1967
    :cond_34
    const-string v3, "double"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1968
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p2, v1, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_90

    .line 1969
    :cond_44
    const-string v3, "float"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1970
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_90

    .line 1971
    :cond_54
    const-string v3, "boolean"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 1972
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_90

    .line 1973
    :cond_64
    const-string/jumbo v3, "string"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1974
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 1975
    :cond_75
    const-string v3, "account"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1976
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1977
    .local v3, "value1":Ljava/lang/String;
    const-string/jumbo v4, "value2"

    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1978
    .local v0, "value2":Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v3, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_90} :catch_91

    .line 1982
    .end local v0    # "value2":Ljava/lang/String;
    .end local v3    # "value1":Ljava/lang/String;
    :cond_90
    :goto_90
    goto :goto_99

    .line 1980
    :catch_91
    move-exception v0

    .line 1981
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "SyncManager"

    const-string v4, "error parsing bundle value"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1983
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_99
    return-void
.end method

.method private parseLastEventInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2246
    const-wide/16 v0, 0x0

    .line 2247
    .local v0, "time":J
    const/4 v2, 0x0

    .line 2249
    .local v2, "message":Ljava/lang/String;
    :goto_3
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    packed-switch v3, :pswitch_data_2e

    :pswitch_a
    goto :goto_2d

    .line 2254
    :pswitch_b
    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 2255
    goto :goto_2d

    .line 2251
    :pswitch_15
    const-wide v3, 0x10300000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    .line 2252
    goto :goto_2d

    .line 2257
    :pswitch_1f
    if-nez v2, :cond_23

    const/4 v3, 0x0

    goto :goto_2c

    :cond_23
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2c
    return-object v3

    :goto_2d
    goto :goto_3

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_1f
        :pswitch_a
        :pswitch_15
        :pswitch_b
    .end packed-switch
.end method

.method private parseListenForTickles(Landroid/util/TypedXmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 1830
    const/4 v0, 0x0

    .line 1832
    .local v0, "userId":I
    const/4 v1, 0x0

    :try_start_2
    const-string/jumbo v2, "user"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_8} :catch_9

    .line 1835
    goto :goto_11

    .line 1833
    :catch_9
    move-exception v2

    .line 1834
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "SyncManager"

    const-string v4, "error parsing the user for listen-for-tickles"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1836
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_11
    const/4 v2, 0x1

    const-string v3, "enabled"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1837
    .local v1, "listen":Z
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1838
    return-void
.end method

.method private parsePeriodicSync(Landroid/util/TypedXmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .registers 14
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1932
    const-string v0, "SyncManager"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1936
    .local v4, "extras":Landroid/os/Bundle;
    const/4 v1, 0x0

    :try_start_8
    const-string/jumbo v2, "period"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_f} :catch_49

    .line 1940
    .local v5, "period":J
    nop

    .line 1942
    :try_start_10
    const-string v2, "flex"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_16} :catch_18

    .line 1947
    .local v0, "flextime":J
    move-wide v9, v0

    goto :goto_34

    .line 1943
    .end local v0    # "flextime":J
    :catch_18
    move-exception v1

    .line 1944
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v2

    .line 1945
    .local v2, "flextime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error formatting value parsed for periodic sync flex, using default: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v9, v2

    .line 1949
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "flextime":J
    .local v9, "flextime":J
    :goto_34
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v1, v0

    move-wide v7, v9

    invoke-direct/range {v1 .. v8}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1954
    .local v0, "periodicSync":Landroid/content/PeriodicSync;
    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1955
    return-object v0

    .line 1937
    .end local v0    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v5    # "period":J
    .end local v9    # "flextime":J
    :catch_49
    move-exception v2

    .line 1938
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "error parsing the period of a periodic sync"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1939
    return-object v1
.end method

.method private readAccountInfoLocked()V
    .registers 21

    .line 1669
    move-object/from16 v1, p0

    const-string v2, "No initial accounts"

    const-string v3, "Error reading accounts"

    const-string v0, "SyncManagerFile"

    const-string v4, "SyncManager"

    const/4 v5, -0x1

    .line 1670
    .local v5, "highestAuthorityId":I
    const/4 v6, 0x0

    .line 1672
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_c
    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    move-object v6, v7

    .line 1673
    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 1674
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_36
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    move-object v8, v0

    .line 1677
    .local v8, "parser":Landroid/util/TypedXmlPullParser;
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    move v9, v0

    .line 1678
    .local v9, "eventType":I
    :goto_40
    const/4 v0, 0x1

    if-eq v9, v7, :cond_4b

    if-eq v9, v0, :cond_4b

    .line 1680
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move v9, v0

    goto :goto_40

    .line 1682
    :cond_4b
    if-ne v9, v0, :cond_62

    .line 1683
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_50} :catch_1b2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_50} :catch_195
    .catchall {:try_start_c .. :try_end_50} :catchall_192

    .line 1749
    add-int/lit8 v0, v5, 0x1

    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1750
    if-eqz v6, :cond_61

    .line 1752
    :try_start_5c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    .line 1754
    goto :goto_61

    .line 1753
    :catch_60
    move-exception v0

    .line 1684
    :cond_61
    :goto_61
    return-void

    .line 1687
    :cond_62
    :try_start_62
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1688
    .local v10, "tagName":Ljava/lang/String;
    const-string v11, "accounts"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17b

    .line 1689
    const-string/jumbo v11, "listen-for-tickles"

    const/4 v12, 0x0

    invoke-interface {v8, v12, v11, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 1691
    .local v11, "listen":Z
    const-string/jumbo v13, "version"

    const/4 v14, 0x0

    invoke-interface {v8, v12, v13, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 1693
    .local v13, "version":I
    const/4 v15, 0x3

    if-ge v13, v15, :cond_83

    .line 1694
    iput-boolean v0, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    .line 1697
    :cond_83
    const-string/jumbo v0, "nextAuthorityId"

    invoke-interface {v8, v12, v0, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1698
    .local v0, "nextId":I
    iget v15, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1700
    const-string/jumbo v15, "offsetInSeconds"

    invoke-interface {v8, v12, v15, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 1701
    if-nez v12, :cond_b2

    .line 1702
    new-instance v12, Ljava/util/Random;

    move-object v15, v8

    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .local v15, "parser":Landroid/util/TypedXmlPullParser;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v12, v7, v8}, Ljava/util/Random;-><init>(J)V

    move-object v7, v12

    .line 1703
    .local v7, "random":Ljava/util/Random;
    const v8, 0x15180

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    iput v8, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    goto :goto_b3

    .line 1701
    .end local v7    # "random":Ljava/util/Random;
    .end local v15    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v8    # "parser":Landroid/util/TypedXmlPullParser;
    :cond_b2
    move-object v15, v8

    .line 1705
    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v15    # "parser":Landroid/util/TypedXmlPullParser;
    :goto_b3
    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1706
    invoke-interface {v15}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    .line 1707
    .end local v9    # "eventType":I
    .local v7, "eventType":I
    const/4 v8, 0x0

    .line 1708
    .local v8, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v9, 0x0

    .line 1709
    .local v9, "periodicSync":Landroid/content/PeriodicSync;
    new-instance v12, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    iget-object v14, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-direct {v12, v14}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V

    .line 1711
    .local v12, "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    :goto_c9
    const/4 v14, 0x2

    if-ne v7, v14, :cond_166

    .line 1712
    invoke-interface {v15}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .line 1713
    invoke-interface {v15}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v14

    move/from16 v19, v0

    const/4 v0, 0x2

    .end local v0    # "nextId":I
    .local v19, "nextId":I
    if-ne v14, v0, :cond_132

    .line 1714
    const-string v0, "authority"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 1715
    move-object v14, v15

    .end local v15    # "parser":Landroid/util/TypedXmlPullParser;
    .local v14, "parser":Landroid/util/TypedXmlPullParser;
    invoke-direct {v1, v14, v13, v12}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Landroid/util/TypedXmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1716
    .end local v8    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v8, 0x0

    .line 1717
    .end local v9    # "periodicSync":Landroid/content/PeriodicSync;
    .local v8, "periodicSync":Landroid/content/PeriodicSync;
    if-eqz v0, :cond_ff

    .line 1718
    iget v9, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-le v9, v5, :cond_fa

    .line 1719
    iget v9, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move v5, v9

    move-object v9, v8

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object v8, v0

    goto/16 :goto_16d

    .line 1718
    :cond_fa
    const/16 v17, 0x2

    const/16 v18, 0x0

    goto :goto_11d

    .line 1722
    :cond_ff
    const/4 v15, 0x3

    new-array v9, v15, [Ljava/lang/Object;

    const-string v15, "26513719"

    const/16 v18, 0x0

    aput-object v15, v9, v18

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v9, v16

    const-string v15, "Malformed authority"

    const/16 v17, 0x2

    aput-object v15, v9, v17

    const v15, 0x534e4554

    invoke-static {v15, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1738
    :goto_11d
    move-object v9, v8

    move-object v8, v0

    goto :goto_16d

    .line 1725
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v14    # "parser":Landroid/util/TypedXmlPullParser;
    .local v8, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v9    # "periodicSync":Landroid/content/PeriodicSync;
    .restart local v15    # "parser":Landroid/util/TypedXmlPullParser;
    :cond_120
    move-object v14, v15

    const/16 v17, 0x2

    const/16 v18, 0x0

    .end local v15    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v14    # "parser":Landroid/util/TypedXmlPullParser;
    const-string/jumbo v0, "listenForTickles"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 1726
    invoke-direct {v1, v14}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Landroid/util/TypedXmlPullParser;)V

    goto :goto_16d

    .line 1728
    .end local v14    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v15    # "parser":Landroid/util/TypedXmlPullParser;
    :cond_132
    move/from16 v17, v0

    move-object v14, v15

    const/16 v18, 0x0

    .end local v15    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v14    # "parser":Landroid/util/TypedXmlPullParser;
    invoke-interface {v14}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    const/4 v15, 0x3

    if-ne v0, v15, :cond_14f

    .line 1729
    const-string/jumbo v0, "periodicSync"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    if-eqz v8, :cond_16d

    .line 1730
    invoke-direct {v1, v14, v8}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Landroid/util/TypedXmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "periodicSync":Landroid/content/PeriodicSync;
    .local v0, "periodicSync":Landroid/content/PeriodicSync;
    goto :goto_16d

    .line 1732
    .end local v0    # "periodicSync":Landroid/content/PeriodicSync;
    .restart local v9    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_14f
    invoke-interface {v14}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    const/4 v15, 0x4

    if-ne v0, v15, :cond_16d

    if-eqz v9, :cond_16d

    .line 1733
    const-string v0, "extra"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 1734
    iget-object v0, v9, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v14, v0}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V

    goto :goto_16d

    .line 1711
    .end local v14    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v19    # "nextId":I
    .local v0, "nextId":I
    .restart local v15    # "parser":Landroid/util/TypedXmlPullParser;
    :cond_166
    move/from16 v19, v0

    move/from16 v17, v14

    move-object v14, v15

    const/16 v18, 0x0

    .line 1738
    .end local v0    # "nextId":I
    .end local v15    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v14    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v19    # "nextId":I
    :cond_16d
    :goto_16d
    invoke-interface {v14}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0
    :try_end_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_171} :catch_1b2
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_171} :catch_195
    .catchall {:try_start_62 .. :try_end_171} :catchall_192

    move v7, v0

    .line 1739
    const/4 v0, 0x1

    if-ne v7, v0, :cond_176

    goto :goto_17c

    :cond_176
    move-object v15, v14

    move/from16 v0, v19

    goto/16 :goto_c9

    .line 1688
    .end local v7    # "eventType":I
    .end local v11    # "listen":Z
    .end local v12    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v13    # "version":I
    .end local v14    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v19    # "nextId":I
    .local v8, "parser":Landroid/util/TypedXmlPullParser;
    .local v9, "eventType":I
    :cond_17b
    move-object v14, v8

    .line 1749
    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v9    # "eventType":I
    .end local v10    # "tagName":Ljava/lang/String;
    :goto_17c
    add-int/lit8 v0, v5, 0x1

    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1750
    if-eqz v6, :cond_18e

    .line 1752
    :try_start_188
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_18c

    .line 1754
    :goto_18b
    goto :goto_18e

    .line 1753
    :catch_18c
    move-exception v0

    goto :goto_18b

    .line 1758
    :cond_18e
    :goto_18e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    .line 1759
    return-void

    .line 1749
    :catchall_192
    move-exception v0

    move-object v2, v0

    goto :goto_1c9

    .line 1744
    :catch_195
    move-exception v0

    move-object v7, v0

    .line 1745
    .local v7, "e":Ljava/io/IOException;
    if-nez v6, :cond_19d

    :try_start_199
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a0

    .line 1746
    :cond_19d
    invoke-static {v4, v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a0
    .catchall {:try_start_199 .. :try_end_1a0} :catchall_192

    .line 1749
    :goto_1a0
    add-int/lit8 v0, v5, 0x1

    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1750
    if-eqz v6, :cond_1b1

    .line 1752
    :try_start_1ac
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1af} :catch_1b0

    .line 1754
    goto :goto_1b1

    .line 1753
    :catch_1b0
    move-exception v0

    .line 1747
    :cond_1b1
    :goto_1b1
    return-void

    .line 1741
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1b2
    move-exception v0

    move-object v2, v0

    .line 1742
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1b4
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b7
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_192

    .line 1749
    add-int/lit8 v0, v5, 0x1

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1750
    if-eqz v6, :cond_1c8

    .line 1752
    :try_start_1c3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c6} :catch_1c7

    .line 1754
    goto :goto_1c8

    .line 1753
    :catch_1c7
    move-exception v0

    .line 1743
    :cond_1c8
    :goto_1c8
    return-void

    .line 1749
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1c9
    add-int/lit8 v0, v5, 0x1

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1750
    if-eqz v6, :cond_1da

    .line 1752
    :try_start_1d5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1d8} :catch_1d9

    .line 1754
    goto :goto_1da

    .line 1753
    :catch_1d9
    move-exception v0

    .line 1756
    :cond_1da
    :goto_1da
    throw v2
.end method

.method private readDayStatsLocked(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2516
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2517
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    const/4 v1, 0x0

    .line 2519
    .local v1, "statsCount":I
    :goto_6
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    :pswitch_d
    goto :goto_29

    .line 2521
    :pswitch_e
    const-wide v2, 0x20b00000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 2522
    .local v2, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readIndividualDayStatsLocked(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v4

    .line 2523
    .local v4, "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2524
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v4, v5, v1

    .line 2525
    add-int/lit8 v1, v1, 0x1

    .line 2526
    array-length v5, v5

    if-ne v1, v5, :cond_29

    .line 2527
    return-void

    .line 2531
    .end local v2    # "token":J
    .end local v4    # "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :pswitch_28
    return-void

    :cond_29
    :goto_29
    goto :goto_6

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_28
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private readIndividualDayStatsLocked(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/content/SyncStorageEngine$DayStats;
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2538
    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2540
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .local v2, "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    goto :goto_1b

    .line 2543
    .end local v2    # "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_15
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2547
    .restart local v2    # "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :goto_1b
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    packed-switch v3, :pswitch_data_78

    :pswitch_22
    goto :goto_76

    .line 2570
    :pswitch_23
    const-wide v3, 0x10300000005L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2571
    goto :goto_76

    .line 2567
    :pswitch_2f
    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2568
    goto :goto_76

    .line 2564
    :pswitch_3b
    const-wide v3, 0x10300000003L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2565
    goto :goto_76

    .line 2561
    :pswitch_47
    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2562
    goto :goto_76

    .line 2550
    :pswitch_53
    const-string v3, "SyncManager"

    const-string v4, "Failed to read the day via fast-path; some data might not have been read."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 2553
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2554
    .local v3, "temp":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2555
    iget-wide v4, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iput-wide v4, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2556
    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2557
    iget-wide v4, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iput-wide v4, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2558
    move-object v2, v3

    .line 2559
    goto :goto_76

    .line 2573
    .end local v3    # "temp":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :pswitch_75
    return-object v2

    :goto_76
    goto :goto_1b

    nop

    :pswitch_data_78
    .packed-switch -0x1
        :pswitch_75
        :pswitch_22
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method

.method private readStatisticsLocked()V
    .registers 4

    .line 2501
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->upgradeStatisticsIfNeededLocked()V

    .line 2503
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2504
    return-void

    .line 2507
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_27

    .line 2508
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readDayStatsLocked(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    .line 2509
    if-eqz v0, :cond_1a

    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_27

    .line 2512
    .end local v0    # "in":Ljava/io/FileInputStream;
    :cond_1a
    goto :goto_2f

    .line 2507
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_1b
    move-exception v1

    if-eqz v0, :cond_26

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    :try_start_23
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/content/SyncStorageEngine;
    :cond_26
    :goto_26
    throw v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    .line 2510
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/content/SyncStorageEngine;
    :catch_27
    move-exception v0

    .line 2511
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "Unable to read day stats file."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2513
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2f
    return-void
.end method

.method private readStatsParcelLocked(Ljava/io/File;)V
    .registers 12
    .param p1, "parcel"    # Ljava/io/File;

    .line 2444
    const-string v0, "SyncManager"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2446
    .local v1, "in":Landroid/os/Parcel;
    :try_start_6
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2447
    .local v2, "parcelFile":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v3

    .line 2448
    .local v3, "data":[B
    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2449
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2451
    const/4 v4, 0x0

    .line 2452
    .local v4, "index":I
    :goto_18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v6, v5

    .local v6, "token":I
    if-eqz v5, :cond_70

    .line 2453
    const/16 v5, 0x65

    const/16 v7, 0x64

    if-eq v6, v5, :cond_3f

    if-ne v6, v7, :cond_28

    goto :goto_3f

    .line 2469
    :cond_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown stats token: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    goto :goto_70

    .line 2454
    :cond_3f
    :goto_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2455
    .local v5, "day":I
    if-ne v6, v7, :cond_49

    .line 2456
    add-int/lit16 v7, v5, -0x7d9

    add-int/lit16 v5, v7, 0x37a5

    .line 2458
    :cond_49
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v7, v5}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2459
    .local v7, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2460
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2462
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2463
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v9, v8

    if-ge v4, v9, :cond_6f

    .line 2464
    aput-object v7, v8, v4
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6d} :catch_7c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6d} :catch_73
    .catchall {:try_start_6 .. :try_end_6d} :catchall_71

    .line 2465
    add-int/lit8 v4, v4, 0x1

    .line 2467
    .end local v5    # "day":I
    .end local v7    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_6f
    goto :goto_18

    .line 2480
    .end local v2    # "parcelFile":Landroid/util/AtomicFile;
    .end local v3    # "data":[B
    .end local v4    # "index":I
    .end local v6    # "token":I
    :cond_70
    :goto_70
    goto :goto_83

    :catchall_71
    move-exception v0

    goto :goto_88

    .line 2476
    :catch_73
    move-exception v2

    .line 2477
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_74
    const-string/jumbo v3, "stats file may be broken"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2480
    nop

    .end local v2    # "ex":Ljava/lang/RuntimeException;
    goto :goto_83

    .line 2473
    :catch_7c
    move-exception v2

    .line 2474
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "No initial statistics"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_71

    .line 2480
    nop

    .end local v2    # "e":Ljava/io/IOException;
    :goto_83
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2481
    nop

    .line 2482
    return-void

    .line 2480
    :goto_88
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2481
    throw v0
.end method

.method private readStatusInfoLocked(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2112
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2114
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    :pswitch_c
    goto :goto_33

    .line 2116
    :pswitch_d
    const-wide v1, 0x20b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 2117
    .local v1, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/content/SyncStatusInfo;

    move-result-object v3

    .line 2118
    .local v3, "status":Landroid/content/SyncStatusInfo;
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2119
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_33

    .line 2120
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2121
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_33

    .line 2125
    .end local v1    # "token":J
    .end local v3    # "status":Landroid/content/SyncStatusInfo;
    :pswitch_32
    return-void

    :cond_33
    :goto_33
    goto :goto_5

    :pswitch_data_34
    .packed-switch -0x1
        :pswitch_32
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private readStatusParcelLocked(Ljava/io/File;)V
    .registers 11
    .param p1, "parcel"    # Ljava/io/File;

    .line 2046
    const-string v0, "SyncManager"

    :try_start_2
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2047
    .local v1, "parcelFile":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v2

    .line 2048
    .local v2, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2049
    .local v3, "in":Landroid/os/Parcel;
    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2050
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2052
    :goto_17
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_1b} :catch_5a

    move v6, v4

    .local v6, "token":I
    if-eqz v4, :cond_6d

    .line 2053
    const/16 v4, 0x64

    if-ne v6, v4, :cond_43

    .line 2055
    :try_start_22
    new-instance v4, Landroid/content/SyncStatusInfo;

    invoke-direct {v4, v3}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2056
    .local v4, "status":Landroid/content/SyncStatusInfo;
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v8, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_3a

    .line 2057
    iput-boolean v5, v4, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2058
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v8, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v7, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3a} :catch_3b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3a} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_3a} :catch_5a

    .line 2062
    .end local v4    # "status":Landroid/content/SyncStatusInfo;
    :cond_3a
    goto :goto_17

    .line 2060
    :catch_3b
    move-exception v4

    .line 2061
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3c
    const-string v7, "Unable to parse some sync status."

    invoke-static {v0, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2062
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_17

    .line 2065
    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown status token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_59} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_59} :catch_5a

    .line 2066
    goto :goto_6d

    .line 2072
    .end local v1    # "parcelFile":Landroid/util/AtomicFile;
    .end local v2    # "data":[B
    .end local v3    # "in":Landroid/os/Parcel;
    .end local v6    # "token":I
    :catch_5a
    move-exception v1

    .line 2073
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "sync status file may be broken"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2074
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_6e

    .line 2069
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_67
    move-exception v1

    .line 2070
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "No initial status"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6d
    :goto_6d
    nop

    .line 2077
    :goto_6e
    return-void
.end method

.method private readSyncStatusInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/content/SyncStatusInfo;
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2132
    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2134
    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .local v2, "status":Landroid/content/SyncStatusInfo;
    goto :goto_1b

    .line 2137
    .end local v2    # "status":Landroid/content/SyncStatusInfo;
    :cond_15
    new-instance v2, Landroid/content/SyncStatusInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 2140
    .restart local v2    # "status":Landroid/content/SyncStatusInfo;
    :goto_1b
    const/4 v3, 0x0

    .line 2141
    .local v3, "successTimesCount":I
    const/4 v4, 0x0

    .line 2142
    .local v4, "failureTimesCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2144
    .local v5, "lastEventInformation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    :goto_22
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v6

    const-string v7, "SyncManager"

    packed-switch v6, :pswitch_data_148

    :pswitch_2b
    goto/16 :goto_146

    .line 2228
    :pswitch_2d
    const-wide v8, 0x20300000012L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    .line 2230
    .local v8, "failureTime":J
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    array-length v6, v6

    if-ne v4, v6, :cond_42

    .line 2231
    const-string v6, "Attempted to read more per source last failure times than expected; data might be corrupted."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    goto/16 :goto_146

    .line 2235
    :cond_42
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aput-wide v8, v6, v4

    .line 2236
    add-int/lit8 v4, v4, 0x1

    .line 2237
    goto/16 :goto_146

    .line 2217
    .end local v8    # "failureTime":J
    :pswitch_4a
    const-wide v8, 0x20300000011L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    .line 2219
    .local v8, "successTime":J
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    array-length v6, v6

    if-ne v3, v6, :cond_5f

    .line 2220
    const-string v6, "Attempted to read more per source last success times than expected; data might be corrupted."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    goto/16 :goto_146

    .line 2224
    :cond_5f
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aput-wide v8, v6, v3

    .line 2225
    add-int/lit8 v3, v3, 0x1

    .line 2226
    goto/16 :goto_146

    .line 2211
    .end local v8    # "successTime":J
    :pswitch_67
    const-wide v6, 0x10b00000010L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2213
    .local v6, "yesterdayStatsToken":J
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2214
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2215
    goto/16 :goto_146

    .line 2205
    .end local v6    # "yesterdayStatsToken":J
    :pswitch_7a
    const-wide v6, 0x10b0000000fL

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2207
    .local v6, "todayStatsToken":J
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2208
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2209
    goto/16 :goto_146

    .line 2199
    .end local v6    # "todayStatsToken":J
    :pswitch_8d
    const-wide v6, 0x10b0000000eL

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2201
    .local v6, "totalStatsToken":J
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2202
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2203
    goto/16 :goto_146

    .line 2195
    .end local v6    # "totalStatsToken":J
    :pswitch_a0
    const-wide v6, 0x1030000000dL

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    .line 2197
    goto/16 :goto_146

    .line 2187
    :pswitch_ad
    const-wide v6, 0x20b0000000cL

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2188
    .local v6, "eventToken":J
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->parseLastEventInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;

    move-result-object v8

    .line 2189
    .local v8, "lastEventInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v8, :cond_bf

    .line 2190
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2192
    :cond_bf
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2193
    goto/16 :goto_146

    .line 2183
    .end local v6    # "eventToken":J
    .end local v8    # "lastEventInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :pswitch_c4
    const-wide v6, 0x2030000000bL

    .line 2184
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    .line 2183
    invoke-virtual {v2, v6, v7}, Landroid/content/SyncStatusInfo;->addPeriodicSyncTime(J)V

    .line 2185
    goto/16 :goto_146

    .line 2180
    :pswitch_d2
    const-wide v6, 0x1080000000aL

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v6

    iput-boolean v6, v2, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 2181
    goto :goto_146

    .line 2177
    :pswitch_de
    const-wide v6, 0x10800000009L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v6

    iput-boolean v6, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2178
    goto :goto_146

    .line 2173
    :pswitch_ea
    const-wide v6, 0x10300000008L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 2175
    goto :goto_146

    .line 2169
    :pswitch_f6
    const-wide v6, 0x10900000007L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 2171
    goto :goto_146

    .line 2165
    :pswitch_102
    const-wide v6, 0x10500000006L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    iput v6, v2, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 2167
    goto :goto_146

    .line 2161
    :pswitch_10e
    const-wide v6, 0x10300000005L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 2163
    goto :goto_146

    .line 2157
    :pswitch_11a
    const-wide v6, 0x10500000004L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    iput v6, v2, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 2159
    goto :goto_146

    .line 2153
    :pswitch_126
    const-wide v6, 0x10300000003L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 2155
    goto :goto_146

    .line 2147
    :pswitch_132
    const-string v6, "Failed to read the authority id via fast-path; some data might not have been read."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    new-instance v6, Landroid/content/SyncStatusInfo;

    .line 2150
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-direct {v6, v7, v2}, Landroid/content/SyncStatusInfo;-><init>(ILandroid/content/SyncStatusInfo;)V

    move-object v2, v6

    .line 2151
    goto :goto_146

    .line 2239
    :pswitch_142
    invoke-virtual {v2, v5}, Landroid/content/SyncStatusInfo;->populateLastEventsInformation(Ljava/util/ArrayList;)V

    .line 2240
    return-object v2

    :goto_146
    goto/16 :goto_22

    :pswitch_data_148
    .packed-switch -0x1
        :pswitch_142
        :pswitch_2b
        :pswitch_2b
        :pswitch_132
        :pswitch_126
        :pswitch_11a
        :pswitch_10e
        :pswitch_102
        :pswitch_f6
        :pswitch_ea
        :pswitch_de
        :pswitch_d2
        :pswitch_c4
        :pswitch_ad
        :pswitch_a0
        :pswitch_8d
        :pswitch_7a
        :pswitch_67
        :pswitch_4a
        :pswitch_2d
    .end packed-switch
.end method

.method private readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "stats"    # Landroid/content/SyncStatusInfo$Stats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2265
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    packed-switch v0, :pswitch_data_86

    :pswitch_7
    goto/16 :goto_83

    .line 2301
    :pswitch_9
    const-wide v0, 0x1050000000aL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 2303
    goto/16 :goto_83

    .line 2297
    :pswitch_16
    const-wide v0, 0x10500000009L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 2299
    goto :goto_83

    .line 2293
    :pswitch_22
    const-wide v0, 0x10500000008L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 2295
    goto :goto_83

    .line 2289
    :pswitch_2e
    const-wide v0, 0x10500000007L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 2291
    goto :goto_83

    .line 2285
    :pswitch_3a
    const-wide v0, 0x10500000006L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 2287
    goto :goto_83

    .line 2281
    :pswitch_46
    const-wide v0, 0x10500000005L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 2283
    goto :goto_83

    .line 2278
    :pswitch_52
    const-wide v0, 0x10500000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 2279
    goto :goto_83

    .line 2274
    :pswitch_5e
    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 2276
    goto :goto_83

    .line 2271
    :pswitch_6a
    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 2272
    goto :goto_83

    .line 2267
    :pswitch_76
    const-wide v0, 0x10300000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    iput-wide v0, p2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 2269
    goto :goto_83

    .line 2305
    :pswitch_82
    return-void

    :goto_83
    goto/16 :goto_0

    nop

    :pswitch_data_86
    .packed-switch -0x1
        :pswitch_82
        :pswitch_7
        :pswitch_76
        :pswitch_6a
        :pswitch_5e
        :pswitch_52
        :pswitch_46
        :pswitch_3a
        :pswitch_2e
        :pswitch_22
        :pswitch_16
        :pswitch_9
    .end packed-switch
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authorityName"    # Ljava/lang/String;
    .param p4, "doWrite"    # Z

    .line 1607
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1608
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_2e

    .line 1609
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1610
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_2e

    .line 1611
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v2, :cond_22

    .line 1612
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v2, v3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1614
    :cond_22
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1615
    if-eqz p4, :cond_2e

    .line 1616
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1620
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2e
    return-void
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V
    .registers 20
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "syncExemptionFlag"    # I
    .param p7, "callingUid"    # I
    .param p8, "callingPid"    # I

    .line 2429
    move-object v0, p1

    move-object v1, p4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_24

    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v3, :cond_25

    .line 2431
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move v10, p2

    invoke-direct {v4, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move v5, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v3 .. v9}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    move-object/from16 v3, p5

    goto :goto_2b

    .line 2429
    :cond_24
    move-object v2, p0

    :cond_25
    move v10, p2

    .line 2435
    move-object/from16 v3, p5

    invoke-static {p1, p4, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2437
    :goto_2b
    return-void
.end method

.method private requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V
    .registers 16
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "syncExemptionFlag"    # I
    .param p5, "callingUid"    # I
    .param p6, "callingPid"    # I

    .line 2409
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_17

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v2, :cond_17

    .line 2411
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    goto :goto_36

    .line 2414
    :cond_17
    new-instance v0, Landroid/content/SyncRequest$Builder;

    invoke-direct {v0}, Landroid/content/SyncRequest$Builder;-><init>()V

    .line 2416
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2417
    invoke-virtual {v0, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2418
    .local v0, "req":Landroid/content/SyncRequest$Builder;
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2419
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    .line 2421
    .end local v0    # "req":Landroid/content/SyncRequest$Builder;
    :goto_36
    return-void
.end method

.method private setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "nextSyncTime"    # J
    .param p6, "nextDelay"    # J

    .line 900
    const/4 v0, 0x0

    .line 901
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 902
    .local v2, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_2a

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v3, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v3, v3, Landroid/accounts/AccountAndUser;->userId:I

    if-eq p2, v3, :cond_2a

    .line 904
    goto :goto_b

    .line 906
    :cond_2a
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 907
    .local v4, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_4d

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 908
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 909
    goto :goto_34

    .line 911
    :cond_4d
    iget-wide v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v5, p4

    if-nez v5, :cond_59

    iget-wide v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v5, p6

    if-eqz v5, :cond_5e

    .line 913
    :cond_59
    iput-wide p4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 914
    iput-wide p6, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 915
    const/4 v0, 0x1

    .line 917
    .end local v4    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_5e
    goto :goto_34

    .line 918
    .end local v2    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_5f
    goto :goto_b

    .line 919
    :cond_60
    return v0
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V
    .registers 18
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "syncable"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .line 815
    move-object v8, p0

    move-object v9, p1

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Set syncable "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v10, 0x1

    aput-object v9, v1, v10

    const-string v2, " value="

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const/4 v2, 0x4

    const-string v5, " cuid="

    aput-object v5, v1, v2

    .line 816
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const/4 v2, 0x6

    const-string v5, " cpid="

    aput-object v5, v1, v2

    .line 817
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 815
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 818
    iget-object v1, v8, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 819
    const/4 v0, -0x1

    :try_start_3b
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_bf

    move-object v11, v2

    .line 820
    .local v11, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move v2, p2

    if-ge v2, v0, :cond_46

    .line 821
    const/4 v0, -0x1

    move v12, v0

    .end local p2    # "syncable":I
    .local v0, "syncable":I
    goto :goto_47

    .line 820
    .end local v0    # "syncable":I
    .restart local p2    # "syncable":I
    :cond_46
    move v12, v2

    .line 823
    .end local p2    # "syncable":I
    .local v12, "syncable":I
    :goto_47
    :try_start_47
    const-string v0, "SyncManager"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 824
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsSyncable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_76
    iget v0, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v0, v12, :cond_a3

    .line 827
    const-string v0, "SyncManager"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 828
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsSyncable: already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", doing nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_a1
    monitor-exit v1

    return-void

    .line 832
    :cond_a3
    iput v12, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 833
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 834
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_47 .. :try_end_a9} :catchall_c4

    .line 835
    if-ne v12, v10, :cond_bb

    .line 836
    const/4 v3, -0x5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v11

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V

    .line 839
    :cond_bb
    invoke-virtual {p0, v10, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 840
    return-void

    .line 834
    .end local v11    # "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "syncable":I
    .restart local p2    # "syncable":I
    :catchall_bf
    move-exception v0

    move v2, p2

    move v12, v2

    .end local p2    # "syncable":I
    .restart local v12    # "syncable":I
    :goto_c2
    :try_start_c2
    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c4

    throw v0

    :catchall_c4
    move-exception v0

    goto :goto_c2
.end method

.method private upgradeStatisticsIfNeededLocked()V
    .registers 4

    .line 2485
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v2, "stats.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2486
    .local v0, "parcelStats":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2487
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatsParcelLocked(Ljava/io/File;)V

    .line 2488
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 2492
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2493
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2495
    :cond_2f
    return-void
.end method

.method private upgradeStatusIfNeededLocked()V
    .registers 4

    .line 2080
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v2, "status.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2081
    .local v0, "parcelStatus":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2082
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatusParcelLocked(Ljava/io/File;)V

    .line 2083
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2087
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2088
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2090
    :cond_2f
    return-void
.end method

.method private writeAccountInfoLocked()V
    .registers 15

    .line 1989
    const-string/jumbo v0, "listenForTickles"

    const-string v1, "accounts"

    const-string v2, "authority"

    const-string v3, "SyncManagerFile"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    :cond_2c
    const/4 v3, 0x0

    .line 1995
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 1996
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 1997
    .local v4, "out":Landroid/util/TypedXmlSerializer;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1998
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2000
    invoke-interface {v4, v7, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2001
    const-string/jumbo v5, "version"

    const/4 v6, 0x3

    invoke-interface {v4, v7, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2002
    const-string/jumbo v5, "nextAuthorityId"

    iget v6, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-interface {v4, v7, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2003
    const-string/jumbo v5, "offsetInSeconds"

    iget v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    invoke-interface {v4, v7, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2006
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_67} :catch_ec

    .line 2007
    .local v5, "M":I
    const/4 v6, 0x0

    .local v6, "m":I
    :goto_68
    const-string v8, "enabled"

    const-string/jumbo v9, "user"

    if-ge v6, v5, :cond_91

    .line 2008
    :try_start_6f
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 2009
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 2010
    .local v11, "listen":Ljava/lang/Boolean;
    invoke-interface {v4, v7, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2011
    invoke-interface {v4, v7, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2012
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v4, v7, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2013
    invoke-interface {v4, v7, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2007
    nop

    .end local v10    # "userId":I
    .end local v11    # "listen":Ljava/lang/Boolean;
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 2016
    .end local v6    # "m":I
    :cond_91
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2017
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_98
    if-ge v6, v0, :cond_e0

    .line 2018
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2019
    .local v10, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2020
    .local v11, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-interface {v4, v7, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2021
    const-string/jumbo v12, "id"

    iget v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-interface {v4, v7, v12, v13}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2022
    iget v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-interface {v4, v7, v9, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2023
    iget-boolean v12, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-interface {v4, v7, v8, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2024
    const-string v12, "account"

    iget-object v13, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v12, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2025
    const-string/jumbo v12, "type"

    iget-object v13, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v4, v7, v12, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2026
    iget-object v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v4, v7, v2, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2027
    const-string/jumbo v12, "syncable"

    iget v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-interface {v4, v7, v12, v13}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2028
    invoke-interface {v4, v7, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2017
    nop

    .end local v10    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    .line 2030
    .end local v6    # "i":I
    :cond_e0
    invoke-interface {v4, v7, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2031
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2032
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_eb} :catch_ec

    .line 2038
    .end local v0    # "N":I
    .end local v4    # "out":Landroid/util/TypedXmlSerializer;
    .end local v5    # "M":I
    goto :goto_fb

    .line 2033
    :catch_ec
    move-exception v0

    .line 2034
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "Error writing accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2035
    if-eqz v3, :cond_fb

    .line 2036
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2039
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_fb
    :goto_fb
    return-void
.end method

.method private writeDayStatsLocked(Ljava/io/OutputStream;)V
    .registers 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2607
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2608
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    .line 2609
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_53

    .line 2610
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v3, v3, v2

    .line 2611
    .local v3, "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v3, :cond_12

    .line 2612
    goto :goto_53

    .line 2614
    :cond_12
    const-wide v4, 0x20b00000001L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2616
    .local v4, "token":J
    const-wide v6, 0x10500000001L

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2617
    const-wide v6, 0x10500000002L

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2618
    const-wide v6, 0x10300000003L

    iget-wide v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2619
    const-wide v6, 0x10500000004L

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2620
    const-wide v6, 0x10300000005L

    iget-wide v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2621
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2609
    .end local v3    # "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v4    # "token":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2623
    .end local v2    # "i":I
    :cond_53
    :goto_53
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2624
    return-void
.end method

.method private writeStatusInfoLocked(Ljava/io/OutputStream;)V
    .registers 24
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 2338
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2339
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 2340
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v3, :cond_154

    .line 2341
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2342
    .local v5, "info":Landroid/content/SyncStatusInfo;
    const-wide v6, 0x20b00000001L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2344
    .local v6, "token":J
    const-wide v8, 0x10500000002L

    iget v10, v5, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2345
    const-wide v8, 0x10300000003L

    iget-wide v10, v5, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2346
    const-wide v8, 0x10500000004L

    iget v10, v5, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2347
    const-wide v8, 0x10300000005L

    iget-wide v10, v5, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2348
    const-wide v8, 0x10500000006L

    iget v10, v5, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2349
    const-wide v8, 0x10900000007L

    iget-object v10, v5, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2350
    const-wide v8, 0x10300000008L

    iget-wide v10, v5, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2351
    const-wide v8, 0x10800000009L

    iget-boolean v10, v5, Landroid/content/SyncStatusInfo;->pending:Z

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2352
    const-wide v8, 0x1080000000aL

    iget-boolean v10, v5, Landroid/content/SyncStatusInfo;->initialize:Z

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2353
    invoke-virtual {v5}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTimesSize()I

    move-result v8

    .line 2354
    .local v8, "periodicSyncTimesSize":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_82
    if-ge v9, v8, :cond_93

    .line 2355
    const-wide v10, 0x2030000000bL

    .line 2356
    invoke-virtual {v5, v9}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v12

    .line 2355
    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2354
    add-int/lit8 v9, v9, 0x1

    goto :goto_82

    .line 2358
    .end local v9    # "j":I
    :cond_93
    invoke-virtual {v5}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v9

    .line 2359
    .local v9, "lastEventsSize":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_98
    if-ge v10, v9, :cond_c5

    .line 2360
    const-wide v11, 0x20b0000000cL

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 2361
    .local v11, "eventToken":J
    const-wide v13, 0x10300000001L

    .line 2362
    move v15, v3

    .end local v3    # "size":I
    .local v15, "size":I
    invoke-virtual {v5, v10}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v2

    .line 2361
    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2363
    const-wide v2, 0x10900000002L

    invoke-virtual {v5, v10}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v2, v3, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2364
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2359
    .end local v11    # "eventToken":J
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move v3, v15

    goto :goto_98

    .end local v15    # "size":I
    .restart local v3    # "size":I
    :cond_c5
    move v15, v3

    .line 2366
    .end local v3    # "size":I
    .end local v10    # "j":I
    .restart local v15    # "size":I
    const-wide v2, 0x1030000000dL

    iget-wide v10, v5, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    invoke-virtual {v1, v2, v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2368
    const-wide v2, 0x10b0000000eL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2369
    .local v2, "totalStatsToken":J
    iget-object v10, v5, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0, v1, v10}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2370
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2371
    const-wide v10, 0x10b0000000fL

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 2372
    .local v10, "todayStatsToken":J
    iget-object v12, v5, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0, v1, v12}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2373
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2374
    const-wide v12, 0x10b00000010L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 2376
    .local v12, "yesterdayStatsToken":J
    iget-object v14, v5, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0, v1, v14}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2377
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2379
    iget-object v14, v5, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    array-length v14, v14

    .line 2380
    .local v14, "lastSuccessTimesSize":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "j":I
    :goto_10a
    if-ge v0, v14, :cond_127

    .line 2381
    move-wide/from16 v16, v2

    .end local v2    # "totalStatsToken":J
    .local v16, "totalStatsToken":J
    const-wide v2, 0x20300000011L

    move/from16 v18, v8

    .end local v8    # "periodicSyncTimesSize":I
    .local v18, "periodicSyncTimesSize":I
    iget-object v8, v5, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    move/from16 v19, v9

    .end local v9    # "lastEventsSize":I
    .local v19, "lastEventsSize":I
    aget-wide v8, v8, v0

    invoke-virtual {v1, v2, v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2380
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v2, v16

    move/from16 v8, v18

    move/from16 v9, v19

    goto :goto_10a

    .end local v16    # "totalStatsToken":J
    .end local v18    # "periodicSyncTimesSize":I
    .end local v19    # "lastEventsSize":I
    .restart local v2    # "totalStatsToken":J
    .restart local v8    # "periodicSyncTimesSize":I
    .restart local v9    # "lastEventsSize":I
    :cond_127
    move-wide/from16 v16, v2

    move/from16 v18, v8

    move/from16 v19, v9

    .line 2384
    .end local v0    # "j":I
    .end local v2    # "totalStatsToken":J
    .end local v8    # "periodicSyncTimesSize":I
    .end local v9    # "lastEventsSize":I
    .restart local v16    # "totalStatsToken":J
    .restart local v18    # "periodicSyncTimesSize":I
    .restart local v19    # "lastEventsSize":I
    iget-object v0, v5, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    array-length v0, v0

    .line 2385
    .local v0, "lastFailureTimesSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_131
    if-ge v2, v0, :cond_146

    .line 2386
    const-wide v8, 0x20300000012L

    iget-object v3, v5, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    move-wide/from16 v20, v10

    .end local v10    # "todayStatsToken":J
    .local v20, "todayStatsToken":J
    aget-wide v10, v3, v2

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2385
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v10, v20

    goto :goto_131

    .end local v20    # "todayStatsToken":J
    .restart local v10    # "todayStatsToken":J
    :cond_146
    move-wide/from16 v20, v10

    .line 2389
    .end local v2    # "j":I
    .end local v10    # "todayStatsToken":J
    .restart local v20    # "todayStatsToken":J
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2340
    .end local v0    # "lastFailureTimesSize":I
    .end local v5    # "info":Landroid/content/SyncStatusInfo;
    .end local v6    # "token":J
    .end local v12    # "yesterdayStatsToken":J
    .end local v14    # "lastSuccessTimesSize":I
    .end local v16    # "totalStatsToken":J
    .end local v18    # "periodicSyncTimesSize":I
    .end local v19    # "lastEventsSize":I
    .end local v20    # "todayStatsToken":J
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v3, v15

    goto/16 :goto_10

    .line 2391
    .end local v4    # "i":I
    .end local v15    # "size":I
    .restart local v3    # "size":I
    :cond_154
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2392
    return-void
.end method

.method private writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "stats"    # Landroid/content/SyncStatusInfo$Stats;

    .line 2395
    iget-wide v0, p2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2396
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2397
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2398
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2399
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2400
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2401
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    const-wide v1, 0x10500000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2402
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    const-wide v1, 0x10500000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2403
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    const-wide v1, 0x10500000009L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2404
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    const-wide v1, 0x1050000000aL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2405
    return-void
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .registers 12
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1142
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1143
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1144
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 1147
    invoke-virtual {v3}, Lcom/android/server/content/SyncOperation;->getExtrasAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1144
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_47
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1150
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 1154
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v9, Landroid/content/SyncInfo;

    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-wide v7, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    move-object v3, v9

    .line 1159
    .local v3, "syncInfo":Landroid/content/SyncInfo;
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    nop

    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_79

    .line 1161
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1162
    return-object v3

    .line 1160
    .end local v3    # "syncInfo":Landroid/content/SyncInfo;
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    .registers 9
    .param p1, "mask"    # I
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 622
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 623
    :try_start_3
    invoke-static {p2, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v1

    .line 624
    .local v1, "cookie":J
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 625
    nop

    .end local v1    # "cookie":J
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public clearAllBackoffsLocked()V
    .registers 13

    .line 923
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 924
    .local v0, "changedUserIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 926
    :try_start_8
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 927
    .local v3, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 928
    .local v5, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_42

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_aa

    .line 930
    :cond_42
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 931
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " account:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v10, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " user:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v10, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " backoffTime was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " backoffDelay was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_9b
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 939
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 940
    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v6, v6, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 942
    .end local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_aa
    goto/16 :goto_28

    .line 943
    .end local v3    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_ac
    goto/16 :goto_12

    .line 944
    :cond_ae
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_8 .. :try_end_af} :catchall_c9

    .line 946
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_b5
    if-lez v1, :cond_c8

    .line 947
    const/4 v3, 0x0

    .line 948
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 947
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    .line 946
    add-int/lit8 v1, v1, -0x1

    goto :goto_b5

    .line 950
    .end local v1    # "i":I
    :cond_c8
    return-void

    .line 944
    :catchall_c9
    move-exception v2

    :try_start_ca
    monitor-exit v1
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v2
.end method

.method public clearAndReadState()V
    .registers 3

    .line 1647
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1648
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1649
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1650
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1651
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1652
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1654
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1655
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 1656
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1657
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1659
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1661
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineStub;->getInstance()Lcom/android/server/content/SyncStorageEngineStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/content/SyncStorageEngineStub;->clearAndReadAndWriteLocked()V

    .line 1662
    monitor-exit v0

    .line 1663
    return-void

    .line 1662
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 4
    .param p1, "authorityId"    # I

    .line 1037
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1038
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object v1

    .line 1039
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getAuthorityCount()I
    .registers 3

    .line 1031
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1032
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1033
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 844
    :try_start_3
    const-string v1, "getBackoff"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 845
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_1d

    .line 846
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 848
    :cond_1d
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 849
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .line 1423
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1424
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1427
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1428
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getCurrentSyncsCopy(IZ)Ljava/util/List;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "canAccessAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1393
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1394
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v1

    .line 1395
    .local v1, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    .local v2, "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncInfo;

    .line 1398
    .local v4, "sync":Landroid/content/SyncInfo;
    if-nez p2, :cond_29

    .line 1399
    iget v5, v4, Landroid/content/SyncInfo;->authorityId:I

    iget-object v6, v4, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iget-wide v7, v4, Landroid/content/SyncInfo;->startTime:J

    invoke-static {v5, v6, v7, v8}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    move-result-object v5

    .local v5, "copy":Landroid/content/SyncInfo;
    goto :goto_2e

    .line 1402
    .end local v5    # "copy":Landroid/content/SyncInfo;
    :cond_29
    new-instance v5, Landroid/content/SyncInfo;

    invoke-direct {v5, v4}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    .line 1404
    .restart local v5    # "copy":Landroid/content/SyncInfo;
    :goto_2e
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    nop

    .end local v4    # "sync":Landroid/content/SyncInfo;
    .end local v5    # "copy":Landroid/content/SyncInfo;
    goto :goto_10

    .line 1406
    :cond_33
    monitor-exit v0

    return-object v2

    .line 1407
    .end local v1    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v2    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .registers 6

    .line 1498
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1499
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v2, v1

    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1500
    .local v2, "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1501
    monitor-exit v0

    return-object v2

    .line 1502
    .end local v2    # "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .registers 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 953
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 954
    :try_start_3
    const-string v1, "getDelayUntil"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 955
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_f

    .line 956
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 958
    :cond_f
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v0

    return-wide v2

    .line 959
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 776
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 777
    const/4 v1, -0x1

    if-eqz p1, :cond_19

    .line 778
    :try_start_6
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v3, "get authority syncable"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 781
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_15

    .line 782
    monitor-exit v0

    return v1

    .line 784
    :cond_15
    iget v1, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return v1

    .line 787
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_19
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 788
    .local v2, "i":I
    :goto_1f
    if-lez v2, :cond_3e

    .line 789
    add-int/lit8 v2, v2, -0x1

    .line 790
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 791
    .local v3, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v4, :cond_3d

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 792
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 793
    iget v1, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return v1

    .line 795
    .end local v3    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3d
    goto :goto_1f

    .line 796
    :cond_3e
    monitor-exit v0

    return v1

    .line 797
    .end local v2    # "i":I
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public getMasterSyncAutomatically(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1024
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1025
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1026
    .local v1, "auto":Ljava/lang/Boolean;
    if-nez v1, :cond_10

    iget-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    goto :goto_14

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_14
    monitor-exit v0

    return v2

    .line 1027
    .end local v1    # "auto":Ljava/lang/Boolean;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method getMiSyncPause(Ljava/lang/String;I)Lcom/android/server/content/MiSyncPause;
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2692
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2693
    :try_start_3
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineStub;->getInstance()Lcom/android/server/content/SyncStorageEngineStub;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/content/SyncStorageEngineStub;->getMiSyncPauseLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncPause;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2694
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getMiSyncPauseToTime(Landroid/accounts/Account;I)J
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 2670
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2671
    :try_start_3
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineStub;->getInstance()Lcom/android/server/content/SyncStorageEngineStub;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/content/SyncStorageEngineStub;->getMiSyncPauseToTimeLocked(Landroid/accounts/Account;I)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2672
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getMiSyncStrategy(Landroid/accounts/Account;I)I
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 2685
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2686
    :try_start_3
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineStub;->getInstance()Lcom/android/server/content/SyncStorageEngineStub;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/content/SyncStorageEngineStub;->getMiSyncStrategyLocked(Landroid/accounts/Account;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2687
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getMiSyncStrategy(Ljava/lang/String;I)Lcom/android/server/content/MiSyncStrategy;
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2699
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2700
    :try_start_3
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineStub;->getInstance()Lcom/android/server/content/SyncStorageEngineStub;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/content/SyncStorageEngineStub;->getMiSyncStrategyLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncStrategy;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2701
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1438
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_3c

    .line 1441
    :cond_a
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1442
    :try_start_d
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1443
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_37

    .line 1444
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1445
    .local v4, "cur":Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1446
    .local v5, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v5, :cond_34

    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1447
    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1448
    monitor-exit v0

    return-object v4

    .line 1443
    .end local v4    # "cur":Landroid/content/SyncStatusInfo;
    .end local v5    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1451
    .end local v3    # "i":I
    :cond_37
    monitor-exit v0

    return-object v1

    .line 1452
    .end local v2    # "N":I
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_39

    throw v1

    .line 1439
    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 711
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1d

    .line 712
    :try_start_7
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo v4, "getSyncAutomatically"

    invoke-direct {p0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 715
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v3, :cond_1a

    iget-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    monitor-exit v0

    return v1

    .line 718
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1d
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 719
    .local v3, "i":I
    :goto_23
    if-lez v3, :cond_43

    .line 720
    add-int/lit8 v3, v3, -0x1

    .line 721
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 722
    .local v4, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_42

    iget-boolean v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v5, :cond_42

    .line 724
    monitor-exit v0

    return v1

    .line 726
    .end local v4    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_42
    goto :goto_23

    .line 727
    :cond_43
    monitor-exit v0

    return v2

    .line 728
    .end local v3    # "i":I
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .line 1482
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1483
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1484
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1485
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1f

    .line 1486
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1488
    .end local v3    # "i":I
    :cond_1f
    monitor-exit v0

    return-object v2

    .line 1489
    .end local v1    # "N":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getSyncRandomOffset()I
    .registers 2

    .line 618
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    return v0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .registers 12
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "now"    # J

    .line 1193
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1194
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1195
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertStartSyncEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_25
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v3, "insertStartSyncEvent"

    invoke-direct {p0, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1198
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_34

    .line 1199
    const-wide/16 v2, -0x1

    monitor-exit v0

    return-wide v2

    .line 1201
    :cond_34
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1202
    .local v3, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1203
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1204
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1205
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    const/4 v5, 0x0

    if-gez v4, :cond_52

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 1206
    :cond_52
    iput-wide p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1207
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1208
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1209
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->getClonedExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1210
    iput v5, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1211
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1212
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1213
    :goto_6d
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_83

    .line 1214
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6d

    .line 1216
    :cond_83
    iget v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v4, v4

    .line 1217
    .local v4, "id":J
    const-string v6, "SyncManager"

    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a7

    const-string v2, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "returning historyId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_a7
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_3 .. :try_end_a8} :catchall_b4

    .line 1220
    const/16 v0, 0x8

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    .line 1221
    return-wide v4

    .line 1218
    .end local v4    # "id":J
    :catchall_b4
    move-exception v1

    :try_start_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v1
.end method

.method public isClockValid()Z
    .registers 2

    .line 2642
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    return v0
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1047
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1048
    :try_start_3
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 1049
    .local v2, "syncInfo":Landroid/content/SyncInfo;
    iget v3, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 1050
    .local v3, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v3, :cond_2c

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1051
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1053
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    .end local v3    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2c
    goto :goto_d

    .line 1054
    :cond_2d
    monitor-exit v0

    .line 1055
    const/4 v0, 0x0

    return v0

    .line 1054
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1457
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1458
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1459
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_34

    .line 1460
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 1461
    .local v3, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1462
    .local v4, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v4, :cond_21

    .line 1463
    goto :goto_31

    .line 1465
    :cond_21
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 1466
    goto :goto_31

    .line 1468
    :cond_2a
    iget-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v5, :cond_31

    .line 1469
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1459
    .end local v3    # "cur":Landroid/content/SyncStatusInfo;
    .end local v4    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1472
    .end local v2    # "i":I
    :cond_34
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1473
    .end local v1    # "N":I
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .registers 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pendingValue"    # Z

    .line 1059
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1060
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1063
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_d

    .line 1064
    monitor-exit v0

    return-void

    .line 1066
    :cond_d
    iget v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    .line 1067
    .local v2, "status":Landroid/content/SyncStatusInfo;
    iput-boolean p2, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1068
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "status":Landroid/content/SyncStatusInfo;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1b

    .line 1069
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1070
    return-void

    .line 1068
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public queueBackup()V
    .registers 2

    .line 2631
    const-string v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 2632
    return-void
.end method

.method readStatusLocked()V
    .registers 4

    .line 2097
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->upgradeStatusIfNeededLocked()V

    .line 2099
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2100
    return-void

    .line 2103
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_27

    .line 2104
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatusInfoLocked(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    .line 2105
    if-eqz v0, :cond_1a

    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_27

    .line 2108
    .end local v0    # "in":Ljava/io/FileInputStream;
    :cond_1a
    goto :goto_2f

    .line 2103
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_1b
    move-exception v1

    if-eqz v0, :cond_26

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    :try_start_23
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/content/SyncStorageEngine;
    :cond_26
    :goto_26
    throw v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    .line 2106
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/content/SyncStorageEngine;
    :catch_27
    move-exception v0

    .line 2107
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "Unable to read status info file."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2109
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2f
    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .registers 7
    .param p1, "syncInfo"    # Landroid/content/SyncInfo;
    .param p2, "userId"    # I

    .line 1169
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1170
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1171
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_3d
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1176
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_52

    .line 1178
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1179
    return-void

    .line 1176
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1595
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1596
    :try_start_3
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1597
    monitor-exit v0

    .line 1598
    return-void

    .line 1597
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public removeStaleAccounts([Landroid/accounts/Account;I)V
    .registers 12
    .param p1, "currentAccounts"    # [Landroid/accounts/Account;
    .param p2, "userId"    # I

    .line 1077
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1078
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1079
    const-string v1, "SyncManager"

    const-string v3, "Updating for new accounts..."

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_13
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1082
    .local v1, "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1083
    .local v3, "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 1084
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1085
    .local v4, "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v5, p2, :cond_35

    .line 1086
    goto :goto_22

    .line 1088
    :cond_35
    if-eqz p1, :cond_41

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 1089
    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 1091
    :cond_41
    const-string v5, "SyncManager"

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1092
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_63
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1095
    .local v6, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1096
    .end local v6    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_6d

    .line 1097
    :cond_7f
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1099
    .end local v4    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_82
    goto :goto_22

    .line 1102
    :cond_83
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1103
    .local v2, "i":I
    if-lez v2, :cond_e8

    .line 1104
    :goto_89
    if-lez v2, :cond_df

    .line 1105
    add-int/lit8 v2, v2, -0x1

    .line 1106
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1107
    .local v4, "ident":I
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1108
    .local v5, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v6, :cond_a0

    .line 1109
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v6, v7}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1111
    :cond_a0
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1112
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1113
    .local v6, "j":I
    :cond_ab
    :goto_ab
    if-lez v6, :cond_c1

    .line 1114
    add-int/lit8 v6, v6, -0x1

    .line 1115
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    if-ne v7, v4, :cond_ab

    .line 1116
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_ab

    .line 1119
    :cond_c1
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v7

    .line 1120
    :cond_c8
    :goto_c8
    if-lez v6, :cond_de

    .line 1121
    add-int/lit8 v6, v6, -0x1

    .line 1122
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v7, v4, :cond_c8

    .line 1123
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_c8

    .line 1126
    .end local v4    # "ident":I
    .end local v5    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "j":I
    :cond_de
    goto :goto_89

    .line 1127
    :cond_df
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1132
    :cond_e8
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineStub;->getInstance()Lcom/android/server/content/SyncStorageEngineStub;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/server/content/SyncStorageEngineStub;->doDatabaseCleanupLocked([Landroid/accounts/Account;I)V

    .line 1133
    .end local v1    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v2    # "i":I
    .end local v3    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    monitor-exit v0

    .line 1134
    return-void

    .line 1133
    :catchall_f1
    move-exception v1

    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_3 .. :try_end_f3} :catchall_f1

    throw v1
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 629
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 630
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 631
    monitor-exit v0

    .line 632
    return-void

    .line 631
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public reportActiveChange(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 3
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1185
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1186
    return-void
.end method

.method reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 6
    .param p1, "which"    # I
    .param p2, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 658
    iget-object v0, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_16

    .line 661
    :cond_9
    iget-object v0, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "syncAdapterPackageName":Ljava/lang/String;
    goto :goto_17

    .line 659
    .end local v0    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 664
    .restart local v0    # "syncAdapterPackageName":Ljava/lang/String;
    :goto_17
    iget v1, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    .line 665
    return-void
.end method

.method reportChange(ILjava/lang/String;I)V
    .registers 13
    .param p1, "which"    # I
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingUserId"    # I

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 670
    :try_start_4
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 671
    .local v2, "i":I
    :cond_a
    :goto_a
    if-lez v2, :cond_4d

    .line 672
    add-int/lit8 v2, v2, -0x1

    .line 673
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 674
    .local v3, "cookie":J
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v5

    .line 675
    .local v5, "registerUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 676
    .local v6, "registerUserId":I
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v7

    .line 677
    .local v7, "mask":I
    and-int v8, p1, v7

    if-eqz v8, :cond_a

    if-eq p3, v6, :cond_2d

    .line 678
    goto :goto_a

    .line 680
    :cond_2d
    if-eqz p2, :cond_38

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v8, p2, v5, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 682
    goto :goto_a

    .line 684
    :cond_38
    if-nez v0, :cond_40

    .line 685
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v8

    .line 687
    :cond_40
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    nop

    .end local v3    # "cookie":J
    .end local v5    # "registerUid":I
    .end local v6    # "registerUserId":I
    .end local v7    # "mask":I
    goto :goto_a

    .line 689
    :cond_4d
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 690
    .end local v2    # "i":I
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_96

    .line 692
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 693
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_7f
    if-eqz v0, :cond_95

    .line 697
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 698
    .local v1, "i":I
    :goto_85
    if-lez v1, :cond_95

    .line 699
    add-int/lit8 v1, v1, -0x1

    .line 701
    :try_start_89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ISyncStatusObserver;

    invoke-interface {v2, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_92} :catch_93

    goto :goto_94

    .line 702
    :catch_93
    move-exception v2

    .line 704
    :goto_94
    goto :goto_85

    .line 707
    .end local v1    # "i":I
    :cond_95
    return-void

    .line 690
    :catchall_96
    move-exception v2

    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v2
.end method

.method public resetTodayStats(Z)V
    .registers 7
    .param p1, "force"    # Z

    .line 2646
    if-eqz p1, :cond_9

    .line 2647
    const-string v0, "SyncManager"

    const-string v1, "Force resetting today stats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :cond_9
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2650
    :try_start_c
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2651
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_27

    .line 2652
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 2653
    .local v3, "cur":Landroid/content/SyncStatusInfo;
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 2651
    .end local v3    # "cur":Landroid/content/SyncStatusInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2655
    .end local v2    # "i":I
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2656
    .end local v1    # "N":I
    monitor-exit v0

    .line 2657
    return-void

    .line 2656
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method restoreAllPeriodicSyncs()Z
    .registers 13

    .line 982
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v0, :cond_6

    .line 983
    const/4 v0, 0x0

    return v0

    .line 985
    :cond_6
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 986
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 987
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 988
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/PeriodicSync;

    .line 989
    .local v4, "periodicSync":Landroid/content/PeriodicSync;
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v4, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-wide v8, v4, Landroid/content/PeriodicSync;->period:J

    iget-wide v10, v4, Landroid/content/PeriodicSync;->flexTime:J

    invoke-interface/range {v5 .. v11}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V

    .line 991
    .end local v4    # "periodicSync":Landroid/content/PeriodicSync;
    goto :goto_20

    .line 992
    :cond_3a
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 986
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 994
    .end local v1    # "i":I
    :cond_42
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 995
    monitor-exit v0

    .line 996
    const/4 v0, 0x1

    return v0

    .line 995
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .registers 22
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "nextSyncTime"    # J
    .param p4, "nextDelay"    # J

    .line 857
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 858
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackoff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> nextSyncTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nextDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_3e
    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v15

    .line 863
    :try_start_41
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v7, 0x1

    if-eqz v0, :cond_66

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_4b

    goto :goto_66

    .line 872
    :cond_4b
    const/4 v0, -0x1

    .line 873
    invoke-direct {v9, v10, v0, v7}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 874
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_5f

    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_5f

    .line 876
    const/4 v1, 0x0

    move v0, v7

    .local v1, "changed":Z
    goto :goto_77

    .line 878
    .end local v1    # "changed":Z
    :cond_5f
    iput-wide v11, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 879
    iput-wide v13, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 880
    const/4 v1, 0x1

    move v0, v7

    .restart local v1    # "changed":Z
    goto :goto_77

    .line 866
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "changed":Z
    :cond_66
    :goto_66
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v4, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v1, p0

    move-wide/from16 v5, p2

    move v0, v7

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z

    move-result v1

    .line 883
    .restart local v1    # "changed":Z
    :goto_77
    monitor-exit v15
    :try_end_78
    .catchall {:try_start_41 .. :try_end_78} :catchall_7e

    .line 884
    if-eqz v1, :cond_7d

    .line 885
    invoke-virtual {v9, v0, v10}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 887
    :cond_7d
    return-void

    .line 883
    .end local v1    # "changed":Z
    :catchall_7e
    move-exception v0

    :try_start_7f
    monitor-exit v15
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v0
.end method

.method public setClockValid()V
    .registers 3

    .line 2635
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    if-nez v0, :cond_e

    .line 2636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 2637
    const-string v0, "SyncManager"

    const-string v1, "Clock is valid now."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_e
    return-void
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    .line 963
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 964
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDelayUntil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> delayUntil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_2c
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 968
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_31
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 969
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_3d

    .line 970
    monitor-exit v0

    return-void

    .line 972
    :cond_3d
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 973
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_44

    .line 974
    invoke-virtual {p0, v2, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 975
    return-void

    .line 973
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "syncable"    # I
    .param p5, "callingUid"    # I
    .param p6, "callingPid"    # I

    .line 802
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4, p5, p6}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V

    .line 804
    return-void
.end method

.method public setMasterSyncAutomatically(ZIIII)V
    .registers 19
    .param p1, "flag"    # Z
    .param p2, "userId"    # I
    .param p3, "syncExemptionFlag"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I

    .line 1001
    move-object v10, p0

    move v11, p2

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Set master enabled="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v12, 0x1

    aput-object v2, v1, v12

    const/4 v2, 0x2

    const-string v3, " user="

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, " cuid="

    aput-object v3, v1, v2

    .line 1002
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    const-string v3, " cpid="

    aput-object v3, v1, v2

    .line 1003
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 1001
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1004
    iget-object v1, v10, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1005
    :try_start_3e
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1006
    .local v0, "auto":Ljava/lang/Boolean;
    if-eqz v0, :cond_54

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1007
    monitor-exit v1

    return-void

    .line 1009
    :cond_54
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1010
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1011
    .end local v0    # "auto":Ljava/lang/Boolean;
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_3e .. :try_end_61} :catchall_85

    .line 1012
    if-eqz p1, :cond_76

    .line 1013
    const/4 v2, 0x0

    const/4 v4, -0x7

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, p0

    move v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V

    .line 1017
    :cond_76
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0, p2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    .line 1019
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 1021
    return-void

    .line 1011
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0
.end method

.method public setMiSyncPauseToTime(Landroid/accounts/Account;JI)V
    .registers 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "pauseTimeMillis"    # J
    .param p4, "uid"    # I

    .line 2662
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2663
    :try_start_3
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineStub;->getInstance()Lcom/android/server/content/SyncStorageEngineStub;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/content/SyncStorageEngineStub;->setMiSyncPauseToTimeLocked(Landroid/accounts/Account;JI)V

    .line 2664
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    .line 2665
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p4}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    .line 2666
    return-void

    .line 2664
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setMiSyncStrategy(Landroid/accounts/Account;II)V
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "strategy"    # I
    .param p3, "uid"    # I

    .line 2677
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2678
    :try_start_3
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineStub;->getInstance()Lcom/android/server/content/SyncStorageEngineStub;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngineStub;->setMiSyncStrategyLocked(Landroid/accounts/Account;II)V

    .line 2679
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    .line 2680
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    .line 2681
    return-void

    .line 2679
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .line 587
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-nez v0, :cond_6

    .line 588
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .line 590
    :cond_6
    return-void
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 581
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_6

    .line 582
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 584
    :cond_6
    return-void
.end method

.method protected setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 593
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v0, :cond_6

    .line 594
    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 596
    :cond_6
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    .registers 24
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "sync"    # Z
    .param p5, "syncExemptionFlag"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPid"    # I

    .line 733
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 734
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSyncAutomatically:  provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_40
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Set sync auto account="

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v15, 0x1

    aput-object v11, v2, v15

    const-string v3, " user="

    aput-object v3, v2, v1

    const/4 v3, 0x3

    .line 738
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, " authority="

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v13, v2, v3

    const/4 v3, 0x6

    const-string v5, " value="

    aput-object v5, v2, v3

    const/4 v3, 0x7

    .line 740
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, " cuid="

    aput-object v5, v2, v3

    const/16 v3, 0x9

    .line 741
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xa

    const-string v5, " cpid="

    aput-object v5, v2, v3

    const/16 v3, 0xb

    .line 742
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 737
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 745
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 746
    :try_start_8f
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, v11, v13, v12}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const/4 v3, -0x1

    invoke-direct {v10, v0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 750
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v4, v14, :cond_c6

    .line 751
    const-string v3, "SyncManager"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 752
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncAutomatically: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_c4
    monitor-exit v2

    return-void

    .line 759
    :cond_c6
    if-eqz v14, :cond_ce

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v4, v1, :cond_ce

    .line 760
    iput v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 762
    :cond_ce
    iput-boolean v14, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 764
    monitor-exit v2
    :try_end_d4
    .catchall {:try_start_8f .. :try_end_d4} :catchall_f6

    .line 766
    if-eqz v14, :cond_ed

    .line 767
    const/4 v4, -0x6

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V

    .line 771
    :cond_ed
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v10, v15, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 772
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 773
    return-void

    .line 764
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_f6
    move-exception v0

    :try_start_f7
    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v0
.end method

.method public shouldGrantSyncAdaptersAccountAccess()Z
    .registers 2

    .line 1640
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    return v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJLjava/lang/String;ILandroid/content/SyncResult;)V
    .registers 35
    .param p1, "historyId"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "resultMessage"    # Ljava/lang/String;
    .param p6, "downstreamActivity"    # J
    .param p8, "upstreamActivity"    # J
    .param p10, "opPackageName"    # Ljava/lang/String;
    .param p11, "userId"    # I
    .param p12, "syncResult"    # Landroid/content/SyncResult;

    .line 1231
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1232
    :try_start_b
    const-string v0, "SyncManager"

    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1233
    const-string v0, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopSyncEvent: historyId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_2d
    const/4 v0, 0x0

    .line 1236
    .local v0, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1237
    .local v9, "i":I
    :goto_34
    if-lez v9, :cond_4b

    .line 1238
    add-int/lit8 v9, v9, -0x1

    .line 1239
    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    move-object v0, v10

    .line 1240
    iget v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v10, v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_49

    .line 1241
    goto :goto_4b

    .line 1243
    :cond_49
    const/4 v0, 0x0

    goto :goto_34

    .line 1246
    :cond_4b
    :goto_4b
    if-nez v0, :cond_68

    .line 1247
    const-string v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stopSyncEvent: no history for id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    monitor-exit v7

    return-void

    .line 1251
    :cond_68
    iput-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1252
    const/4 v10, 0x1

    iput v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1253
    iput-object v6, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1254
    move-wide/from16 v11, p6

    iput-wide v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J
    :try_end_73
    .catchall {:try_start_b .. :try_end_73} :catchall_28a

    .line 1255
    move-wide/from16 v13, p8

    :try_start_75
    iput-wide v13, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1257
    iget v15, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-direct {v1, v15}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v15

    .line 1259
    .local v15, "status":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v15, v8, v10}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 1261
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1262
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1263
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-wide v2, v8, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v2, v4

    iput-wide v2, v8, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1264
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    move v3, v9

    .end local v9    # "i":I
    .local v3, "i":I
    iget-wide v8, v2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v8, v4

    iput-wide v8, v2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1265
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v2, :pswitch_data_298

    goto :goto_10c

    .line 1287
    :pswitch_ac
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1288
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    goto :goto_10c

    .line 1283
    :pswitch_bc
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1284
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1285
    goto :goto_10c

    .line 1275
    :pswitch_cc
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1276
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1277
    goto :goto_10c

    .line 1271
    :pswitch_dc
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1272
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1273
    goto :goto_10c

    .line 1267
    :pswitch_ec
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1268
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1269
    goto :goto_10c

    .line 1279
    :pswitch_fc
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1280
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1281
    nop

    .line 1292
    :goto_10c
    const/4 v2, 0x0

    .line 1293
    .local v2, "writeStatisticsNow":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v8

    .line 1294
    .local v8, "day":I
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move/from16 v18, v2

    const/4 v10, 0x0

    .end local v2    # "writeStatisticsNow":Z
    .local v18, "writeStatisticsNow":Z
    aget-object v2, v9, v10

    if-nez v2, :cond_126

    .line 1295
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v2, v8}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v10, 0x0

    aput-object v2, v9, v10

    move/from16 v19, v3

    const/4 v3, 0x0

    goto :goto_149

    .line 1296
    :cond_126
    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v8, v2, :cond_142

    .line 1297
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v9, v2

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    move/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "i":I
    .local v19, "i":I
    invoke-static {v2, v3, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1298
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v3, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v3, v8}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v9, 0x0

    aput-object v3, v2, v9

    .line 1299
    const/4 v2, 0x1

    const/4 v3, 0x0

    .end local v18    # "writeStatisticsNow":Z
    .restart local v2    # "writeStatisticsNow":Z
    goto :goto_14b

    .line 1300
    .end local v2    # "writeStatisticsNow":Z
    .end local v19    # "i":I
    .restart local v3    # "i":I
    .restart local v18    # "writeStatisticsNow":Z
    :cond_142
    move/from16 v19, v3

    .end local v3    # "i":I
    .restart local v19    # "i":I
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 1302
    .end local v19    # "i":I
    .restart local v3    # "i":I
    :goto_149
    move/from16 v2, v18

    .end local v3    # "i":I
    .end local v18    # "writeStatisticsNow":Z
    .restart local v2    # "writeStatisticsNow":Z
    .restart local v19    # "i":I
    :goto_14b
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v3, v9, v3

    .line 1304
    .local v3, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-wide v9, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long/2addr v9, v4

    .line 1305
    .local v9, "lastSyncTime":J
    const/16 v17, 0x0

    .line 1306
    .local v17, "writeStatusNow":Z
    move/from16 v18, v8

    .end local v8    # "day":I
    .local v18, "day":I
    const-string/jumbo v8, "success"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v20, 0x0

    if-eqz v8, :cond_180

    .line 1308
    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v8, v11, v20

    if-eqz v8, :cond_16d

    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v8, v11, v20

    if-eqz v8, :cond_16f

    .line 1309
    :cond_16d
    const/16 v17, 0x1

    .line 1311
    :cond_16f
    iget v8, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v15, v8, v9, v10}, Landroid/content/SyncStatusInfo;->setLastSuccess(IJ)V

    .line 1312
    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const/4 v11, 0x1

    add-int/2addr v8, v11

    iput v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1313
    iget-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v11, v4

    iput-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    goto :goto_1c1

    .line 1314
    :cond_180
    const-string v8, "canceled"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b0

    .line 1315
    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v8, v11, v20

    if-nez v8, :cond_190

    .line 1316
    const/16 v17, 0x1

    .line 1318
    :cond_190
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v11, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1319
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v11, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/2addr v11, v12

    iput v11, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1321
    iget v8, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v15, v8, v9, v10, v6}, Landroid/content/SyncStatusInfo;->setLastFailure(IJLjava/lang/String;)V

    .line 1323
    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    const/4 v11, 0x1

    add-int/2addr v8, v11

    iput v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1324
    iget-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v11, v4

    iput-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_1c1

    .line 1327
    :cond_1b0
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v11, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1328
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v11, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/2addr v11, v12

    iput v11, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1329
    const/16 v17, 0x1

    .line 1331
    :goto_1c1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .local v8, "event":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Source="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v20, v3

    .end local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .local v20, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v3, v12, v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " Elapsed="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    invoke-static {v8, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 1335
    const-string v3, " Reason="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    const/4 v3, 0x0

    iget v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    invoke-static {v3, v11}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eqz v3, :cond_227

    .line 1338
    const-string v3, " Exemption="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    packed-switch v3, :pswitch_data_2a8

    .line 1347
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    goto :goto_224

    .line 1344
    :pswitch_217
    const-string/jumbo v3, "top"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    goto :goto_227

    .line 1341
    :pswitch_21e
    const-string v3, "fg"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    goto :goto_227

    .line 1347
    :goto_224
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1351
    :cond_227
    :goto_227
    const-string v3, " Extras="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    invoke-static {v3, v8}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 1354
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/content/SyncStatusInfo;->addEvent(Ljava/lang/String;)V

    .line 1357
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineStub;->getInstance()Lcom/android/server/content/SyncStorageEngineStub;

    move-result-object v3
    :try_end_23c
    .catchall {:try_start_75 .. :try_end_23c} :catchall_288

    move-object/from16 v11, p12

    :try_start_23e
    invoke-interface {v3, v15, v6, v11}, Lcom/android/server/content/SyncStorageEngineStub;->updateResultStatusLocked(Landroid/content/SyncStatusInfo;Ljava/lang/String;Landroid/content/SyncResult;)V

    .line 1359
    if-eqz v17, :cond_247

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    goto :goto_25c

    .line 1361
    :cond_247
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_25c

    .line 1362
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v3, v12}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-wide/32 v4, 0x927c0

    invoke-virtual {v3, v12, v4, v5}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1365
    :cond_25c
    :goto_25c
    if-eqz v2, :cond_262

    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    goto :goto_277

    .line 1367
    :cond_262
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_277

    .line 1368
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x1b7740

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1371
    .end local v0    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v2    # "writeStatisticsNow":Z
    .end local v8    # "event":Ljava/lang/StringBuilder;
    .end local v9    # "lastSyncTime":J
    .end local v15    # "status":Landroid/content/SyncStatusInfo;
    .end local v17    # "writeStatusNow":Z
    .end local v18    # "day":I
    .end local v19    # "i":I
    .end local v20    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_277
    :goto_277
    monitor-exit v7
    :try_end_278
    .catchall {:try_start_23e .. :try_end_278} :catchall_282

    .line 1373
    const/16 v0, 0x8

    move-object/from16 v2, p10

    move/from16 v3, p11

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    .line 1374
    return-void

    .line 1371
    :catchall_282
    move-exception v0

    move-object/from16 v2, p10

    move/from16 v3, p11

    goto :goto_293

    :catchall_288
    move-exception v0

    goto :goto_28d

    :catchall_28a
    move-exception v0

    move-wide/from16 v13, p8

    :goto_28d
    move-object/from16 v2, p10

    move/from16 v3, p11

    move-object/from16 v11, p12

    :goto_293
    :try_start_293
    monitor-exit v7
    :try_end_294
    .catchall {:try_start_293 .. :try_end_294} :catchall_295

    throw v0

    :catchall_295
    move-exception v0

    goto :goto_293

    nop

    :pswitch_data_298
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_ec
        :pswitch_dc
        :pswitch_cc
        :pswitch_bc
        :pswitch_ac
    .end packed-switch

    :pswitch_data_2a8
    .packed-switch 0x1
        :pswitch_21e
        :pswitch_217
    .end packed-switch
.end method

.method public writeAllState()V
    .registers 3

    .line 1632
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1634
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1635
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1636
    monitor-exit v0

    .line 1637
    return-void

    .line 1636
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method writeStatisticsLocked()V
    .registers 5

    .line 2583
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "SyncManager"

    if-eqz v0, :cond_27

    .line 2584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing new "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :cond_27
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    .line 2591
    const/4 v0, 0x0

    .line 2593
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 2594
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->writeDayStatsLocked(Ljava/io/OutputStream;)V

    .line 2595
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3c} :catch_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_3c} :catch_40
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3e

    .line 2596
    const/4 v0, 0x0

    .line 2601
    goto :goto_47

    :catchall_3e
    move-exception v1

    goto :goto_4e

    .line 2597
    :catch_40
    move-exception v1

    .line 2598
    .local v1, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v3, "Unable to write day stats to proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    .line 2601
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_47
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2602
    nop

    .line 2603
    return-void

    .line 2601
    :goto_4e
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2602
    throw v1
.end method

.method writeStatusLocked()V
    .registers 5

    .line 2315
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :cond_25
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    .line 2323
    const/4 v0, 0x0

    .line 2325
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 2326
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusInfoLocked(Ljava/io/OutputStream;)V

    .line 2327
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3b} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_3b} :catch_3f
    .catchall {:try_start_2c .. :try_end_3b} :catchall_3d

    .line 2328
    const/4 v0, 0x0

    .line 2333
    goto :goto_48

    :catchall_3d
    move-exception v1

    goto :goto_4f

    .line 2329
    :catch_3f
    move-exception v1

    .line 2330
    .local v1, "e":Ljava/lang/Exception;
    :try_start_40
    const-string v2, "SyncManager"

    const-string v3, "Unable to write sync status to proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3d

    .line 2333
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_48
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2334
    nop

    .line 2335
    return-void

    .line 2333
    :goto_4f
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2334
    throw v1
.end method
