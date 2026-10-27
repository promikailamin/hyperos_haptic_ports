.class Lcom/android/server/locales/LocaleManagerBackupHelper;
.super Ljava/lang/Object;
.source "LocaleManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;,
        Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;
    }
.end annotation


# static fields
.field private static final ATTR_CREATION_TIME_MILLIS:Ljava/lang/String; = "creationTimeMillis"

.field private static final ATTR_LOCALES:Ljava/lang/String; = "locales"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final LOCALES_XML_TAG:Ljava/lang/String; = "locales"

.field private static final PACKAGE_XML_TAG:Ljava/lang/String; = "package"

.field private static final STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

.field private static final SYSTEM_BACKUP_PACKAGE_KEY:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "LocaleManagerBkpHelper"


# instance fields
.field private final mClock:Ljava/time/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mStagedData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;",
            ">;"
        }
    .end annotation
.end field

.field private final mStagedDataLock:Ljava/lang/Object;

.field private final mUserMonitor:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStagedDataLock(Lcom/android/server/locales/LocaleManagerBackupHelper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeleteStagedDataLocked(Lcom/android/server/locales/LocaleManagerBackupHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->deleteStagedDataLocked(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 76
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Ljava/time/Clock;Landroid/util/SparseArray;Landroid/os/HandlerThread;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localeManagerService"    # Lcom/android/server/locales/LocaleManagerService;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p4, "clock"    # Ljava/time/Clock;
    .param p6, "broadcastHandlerThread"    # Landroid/os/HandlerThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/locales/LocaleManagerService;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/time/Clock;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;",
            ">;",
            "Landroid/os/HandlerThread;",
            ")V"
        }
    .end annotation

    .line 99
    .local p5, "stagedData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 102
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 103
    iput-object p4, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mClock:Ljava/time/Clock;

    .line 104
    iput-object p5, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    .line 106
    new-instance v2, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;-><init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor-IA;)V

    iput-object v2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mUserMonitor:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 110
    invoke-virtual {p6}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 109
    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 111
    return-void
.end method

.method constructor <init>(Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Landroid/os/HandlerThread;)V
    .registers 11
    .param p1, "localeManagerService"    # Lcom/android/server/locales/LocaleManagerService;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "broadcastHandlerThread"    # Landroid/os/HandlerThread;

    .line 92
    iget-object v1, p1, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v4

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/locales/LocaleManagerBackupHelper;-><init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Ljava/time/Clock;Landroid/util/SparseArray;Landroid/os/HandlerThread;)V

    .line 94
    return-void
.end method

.method private checkExistingLocalesAndApplyRestore(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "languageTags"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 322
    const-string v0, "LocaleManagerBkpHelper"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v1

    .line 325
    .local v1, "currLocales":Landroid/os/LocaleList;
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_10

    if-nez v2, :cond_f

    .line 326
    return-void

    .line 330
    .end local v1    # "currLocales":Landroid/os/LocaleList;
    :cond_f
    goto :goto_16

    .line 328
    :catch_10
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Could not check for current locales before restoring"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 335
    invoke-static {p2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    .line 334
    invoke-virtual {v1, p1, p3, v2}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1f} :catch_20

    .line 341
    goto :goto_37

    .line 339
    :catch_20
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restore locales for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.method private cleanStagedDataForOldEntriesLocked()V
    .registers 10

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 179
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 180
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;

    .line 181
    .local v2, "stagedData":Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;
    iget-wide v3, v2, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mCreationTimeMillis:J

    iget-object v5, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mClock:Ljava/time/Clock;

    .line 182
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    sget-object v7, Lcom/android/server/locales/LocaleManagerBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    invoke-virtual {v7}, Ljava/time/Duration;->toMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_2d

    .line 183
    invoke-direct {p0, v1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->deleteStagedDataLocked(I)V

    .line 178
    .end local v1    # "userId":I
    .end local v2    # "stagedData":Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method private deleteStagedDataLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 345
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 346
    return-void
.end method

.method private doLazyRestoreLocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->isPackageInstalledForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not installed for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Could not restore locales from stage data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleManagerBkpHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 444
    :cond_29
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;

    .line 445
    .local v0, "stagedData":Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;
    iget-object v1, v0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 446
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 448
    .local v3, "languageTags":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 450
    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->checkExistingLocalesAndApplyRestore(Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    iget-object v1, v0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v1, v0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 457
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_6c

    .line 464
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "languageTags":Ljava/lang/String;
    :cond_6b
    goto :goto_3b

    .line 465
    :cond_6c
    :goto_6c
    return-void
.end method

.method private isPackageInstalledForUser(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, v2

    .line 309
    goto :goto_f

    .line 305
    :catch_e
    move-exception v2

    .line 310
    :goto_f
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v0, "packageStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 355
    .local v1, "depth":I
    :cond_9
    :goto_9
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 356
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 357
    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "locales"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "languageTags":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 362
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .end local v2    # "languageTags":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3a
    goto :goto_9

    .line 366
    :cond_3b
    return-object v0
.end method

.method private static writeToXml(Ljava/io/OutputStream;Ljava/util/HashMap;)V
    .registers 9
    .param p0, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    .local p1, "pkgStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 376
    return-void

    .line 379
    :cond_7
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 380
    .local v0, "out":Landroid/util/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 381
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 382
    const-string/jumbo v1, "locales"

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 385
    .local v4, "pkg":Ljava/lang/String;
    const-string/jumbo v5, "package"

    invoke-interface {v0, v2, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    const-string/jumbo v6, "name"

    invoke-interface {v0, v2, v6, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v2, v1, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    invoke-interface {v0, v2, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_2b

    .line 391
    :cond_50
    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 393
    return-void
.end method


# virtual methods
.method public getBackupPayload(I)[B
    .registers 9
    .param p1, "userId"    # I

    .line 126
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->cleanStagedDataForOldEntriesLocked()V

    .line 128
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_7b

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v0, "pkgStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v2, 0x0

    .line 132
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 134
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_28
    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v3

    .line 138
    .local v3, "appLocales":Landroid/os/LocaleList;
    invoke-virtual {v3}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 143
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3f} :catch_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_3f} :catch_40

    .line 148
    .end local v3    # "appLocales":Landroid/os/LocaleList;
    :cond_3f
    goto :goto_5b

    .line 145
    :catch_40
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "LocaleManagerBkpHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when getting locales for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5b
    goto :goto_1c

    .line 151
    :cond_5c
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    .line 156
    return-object v2

    .line 159
    :cond_64
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_69
    invoke-static {v1, v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->writeToXml(Ljava/io/OutputStream;Ljava/util/HashMap;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_72

    .line 165
    nop

    .line 174
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 162
    :catch_72
    move-exception v3

    .line 163
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "LocaleManagerBkpHelper"

    const-string v5, "Could not write to xml for backup "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    return-object v2

    .line 128
    .end local v0    # "pkgStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method getUserMonitor()Landroid/content/BroadcastReceiver;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mUserMonitor:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public notifyBackupManager()V
    .registers 2

    .line 250
    const-string v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method onPackageAdded(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1a

    .line 261
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->cleanStagedDataForOldEntriesLocked()V

    .line 263
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 264
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 266
    invoke-direct {p0, p1, v1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->doLazyRestoreLocked(Ljava/lang/String;I)V

    .line 268
    .end local v1    # "userId":I
    :cond_15
    monitor-exit v0

    .line 271
    goto :goto_22

    .line 268
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .end local p0    # "this":Lcom/android/server/locales/LocaleManagerBackupHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    :try_start_19
    throw v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1a} :catch_1a

    .line 269
    .restart local p0    # "this":Lcom/android/server/locales/LocaleManagerBackupHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uid":I
    :catch_1a
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LocaleManagerBkpHelper"

    const-string v2, "Exception in onPackageAdded."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method onPackageDataCleared()V
    .registers 4

    .line 281
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->notifyBackupManager()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 284
    goto :goto_c

    .line 282
    :catch_4
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LocaleManagerBkpHelper"

    const-string v2, "Exception in onPackageDataCleared."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method onPackageRemoved()V
    .registers 4

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->notifyBackupManager()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 297
    goto :goto_c

    .line 295
    :catch_4
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LocaleManagerBkpHelper"

    const-string v2, "Exception in onPackageRemoved."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method public stageAndApplyRestoredPayload([BI)V
    .registers 11
    .param p1, "payload"    # [B
    .param p2, "userId"    # I

    .line 196
    if-nez p1, :cond_1c

    .line 197
    const-string v0, "LocaleManagerBkpHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stageAndApplyRestoredPayload: no payload to restore for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 201
    :cond_1c
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 206
    .local v0, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_21
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 207
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v2, "locales"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, v1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_38} :catch_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_38} :catch_89

    move-object v1, v2

    .line 214
    .local v1, "pkgStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 220
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 222
    :try_start_3d
    new-instance v3, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;

    iget-object v4, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;-><init>(JLjava/util/HashMap;)V

    .line 224
    .local v3, "stagedData":Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 225
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 227
    .local v6, "languageTags":Ljava/lang/String;
    invoke-direct {p0, v5, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->isPackageInstalledForUser(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 229
    invoke-direct {p0, v5, v6, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->checkExistingLocalesAndApplyRestore(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_76

    .line 232
    :cond_71
    iget-object v7, v3, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "languageTags":Ljava/lang/String;
    :goto_76
    goto :goto_55

    .line 240
    :cond_77
    iget-object v4, v3, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_84

    .line 241
    iget-object v4, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    .end local v3    # "stagedData":Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;
    :cond_84
    monitor-exit v2

    .line 244
    return-void

    .line 243
    :catchall_86
    move-exception v3

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_3d .. :try_end_88} :catchall_86

    throw v3

    .line 211
    .end local v1    # "pkgStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_89
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LocaleManagerBkpHelper"

    const-string v3, "Could not parse payload "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    return-void
.end method
