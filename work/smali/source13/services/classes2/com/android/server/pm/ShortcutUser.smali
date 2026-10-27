.class Lcom/android/server/pm/ShortcutUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    }
.end annotation


# static fields
.field private static final ATTR_KNOWN_LOCALES:Ljava/lang/String; = "locales"

.field private static final ATTR_LAST_APP_SCAN_OS_FINGERPRINT:Ljava/lang/String; = "last-app-scan-fp"

.field private static final ATTR_LAST_APP_SCAN_TIME:Ljava/lang/String; = "last-app-scan-time2"

.field private static final ATTR_RESTORE_SOURCE_FINGERPRINT:Ljava/lang/String; = "restore-from-fp"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DIRECTORY_LUANCHERS:Ljava/lang/String; = "launchers"

.field static final DIRECTORY_PACKAGES:Ljava/lang/String; = "packages"

.field private static final KEY_LAUNCHERS:Ljava/lang/String; = "launchers"

.field private static final KEY_PACKAGES:Ljava/lang/String; = "packages"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAUNCHER:Ljava/lang/String; = "launcher"

.field static final TAG_ROOT:Ljava/lang/String; = "user"


# instance fields
.field final mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

.field private mCachedLauncher:Ljava/lang/String;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInFlightSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKnownLocales:Ljava/lang/String;

.field private mLastAppScanOsFingerprint:Ljava/lang/String;

.field private mLastAppScanTime:J

.field private final mLaunchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreFromOsFingerprint:Ljava/lang/String;

.field final mService:Lcom/android/server/pm/ShortcutService;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "userId"    # I

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 132
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    .line 150
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 151
    iput p2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 152
    iget-object v0, p1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 154
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    .line 155
    return-void
.end method

.method private addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 5
    .param p1, "launcher"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 212
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutLauncher;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v1

    .line 214
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method private addPackage(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 4
    .param p1, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .line 189
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackage;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method private dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/io/File;

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, "numFiles":I
    const-wide/16 v1, 0x0

    .line 635
    .local v1, "size":J
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 636
    .local v3, "children":[Ljava/io/File;
    if-eqz v3, :cond_40

    .line 637
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v5, :cond_40

    aget-object v7, v4, v6

    .line 638
    .local v7, "child":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 639
    add-int/lit8 v0, v0, 0x1

    .line 640
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v1, v8

    goto :goto_3d

    .line 641
    :cond_21
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 642
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v7}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    .line 637
    .end local v7    # "child":Ljava/io/File;
    :cond_3d
    :goto_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 646
    :cond_40
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    const-string v4, "Path: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    const-string v4, "/ has "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 651
    const-string v4, " files, size="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 653
    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method private static forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V
    .registers 6
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Consumer<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 499
    return-void

    .line 501
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 502
    .local v0, "list":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 503
    .local v3, "f":Ljava/io/File;
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 502
    .end local v3    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 505
    :cond_17
    return-void
.end method

.method private getKnownLocales()Ljava/lang/String;
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 310
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$attemptToRestoreIfNeededAndSave$2(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1
    .param p0, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 356
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 357
    return-void
.end method

.method static synthetic lambda$detectLocaleChange$1(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1
    .param p0, "pkg"    # Lcom/android/server/pm/ShortcutPackage;

    .line 330
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 331
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resolveResourceStrings()V

    .line 332
    return-void
.end method

.method static synthetic lambda$forPackageItem$0(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5
    .param p0, "packageUserId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/util/function/Consumer;
    .param p3, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 278
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    if-ne v0, p0, :cond_13

    .line 279
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 280
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 282
    :cond_13
    return-void
.end method

.method static synthetic lambda$getAppSearch$7(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchResult;)V
    .registers 4
    .param p0, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "result"    # Landroid/app/appsearch/AppSearchResult;

    .line 722
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_13

    .line 723
    new-instance v0, Ljava/lang/RuntimeException;

    .line 724
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 725
    return-void

    .line 727
    :cond_13
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchSession;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 728
    return-void
.end method

.method static synthetic lambda$loadFromXml$3(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ZLjava/io/File;)V
    .registers 7
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "ret"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "fromBackup"    # Z
    .param p3, "f"    # Ljava/io/File;

    .line 479
    invoke-static {p0, p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->loadFromFile(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 480
    .local v0, "sp":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_f

    .line 481
    iget-object v1, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_f
    return-void
.end method

.method static synthetic lambda$loadFromXml$4(Lcom/android/server/pm/ShortcutUser;IZLjava/io/File;)V
    .registers 5
    .param p0, "ret"    # Lcom/android/server/pm/ShortcutUser;
    .param p1, "userId"    # I
    .param p2, "fromBackup"    # Z
    .param p3, "f"    # Ljava/io/File;

    .line 486
    nop

    .line 487
    invoke-static {p3, p0, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;->loadFromFile(Ljava/io/File;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 488
    .local v0, "sl":Lcom/android/server/pm/ShortcutLauncher;
    if-eqz v0, :cond_a

    .line 489
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    .line 491
    :cond_a
    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Landroid/util/TypedXmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;
    .registers 21
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "userId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    .line 417
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    move-object v5, v0

    .line 418
    .local v5, "ret":Lcom/android/server/pm/ShortcutUser;
    const/4 v6, 0x0

    .line 420
    .local v6, "readShortcutItems":Z
    :try_start_f
    const-string v0, "locales"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 425
    const-string v0, "last-app-scan-time2"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    .line 427
    .local v7, "lastAppScanTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v9

    .line 428
    .local v9, "currentTime":J
    cmp-long v0, v7, v9

    if-gez v0, :cond_27

    move-wide v11, v7

    goto :goto_29

    :cond_27
    const-wide/16 v11, 0x0

    :goto_29
    iput-wide v11, v5, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 429
    const-string v0, "last-app-scan-fp"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 431
    const-string/jumbo v0, "restore-from-fp"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 433
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 435
    .local v0, "outerDepth":I
    :goto_40
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v11

    move v12, v11

    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v11, v13, :cond_ae

    const/4 v11, 0x3

    if-ne v12, v11, :cond_51

    .line 436
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v0, :cond_b0

    .line 437
    :cond_51
    const/4 v11, 0x2

    if-eq v12, v11, :cond_57

    .line 438
    move/from16 v16, v0

    goto :goto_ab

    .line 440
    :cond_57
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v11

    .line 441
    .local v11, "depth":I
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 443
    .local v14, "tag":Ljava/lang/String;
    add-int/lit8 v15, v0, 0x1

    if-ne v11, v15, :cond_a5

    .line 444
    const/4 v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_e4

    :cond_6b
    goto :goto_81

    :sswitch_6c
    const-string/jumbo v13, "package"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6b

    const/4 v13, 0x0

    goto :goto_82

    :sswitch_77
    const-string v13, "launcher-pins"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6b

    const/4 v13, 0x1

    goto :goto_82

    :goto_81
    move v13, v15

    :goto_82
    packed-switch v13, :pswitch_data_ee

    move/from16 v16, v0

    .end local v0    # "outerDepth":I
    .local v16, "outerDepth":I
    goto :goto_a7

    .line 456
    .end local v16    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :pswitch_88
    nop

    .line 457
    invoke-static {v2, v5, v3, v4}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v13

    .line 456
    invoke-direct {v5, v13}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    .line 458
    const/4 v6, 0x1

    .line 459
    goto :goto_40

    .line 446
    :pswitch_92
    invoke-static {v1, v5, v2, v4}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Landroid/util/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v13

    .line 450
    .local v13, "shortcuts":Lcom/android/server/pm/ShortcutPackage;
    iget-object v15, v5, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    move/from16 v16, v0

    .end local v0    # "outerDepth":I
    .restart local v16    # "outerDepth":I
    invoke-virtual {v13}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const/4 v6, 0x1

    .line 452
    move/from16 v0, v16

    goto :goto_40

    .line 443
    .end local v13    # "shortcuts":Lcom/android/server/pm/ShortcutPackage;
    .end local v16    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :cond_a5
    move/from16 v16, v0

    .line 463
    .end local v0    # "outerDepth":I
    .restart local v16    # "outerDepth":I
    :goto_a7
    invoke-static {v11, v14}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_aa} :catch_db

    .line 464
    .end local v11    # "depth":I
    .end local v14    # "tag":Ljava/lang/String;
    nop

    .line 435
    .end local v12    # "type":I
    .end local v16    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :goto_ab
    move/from16 v0, v16

    .end local v0    # "outerDepth":I
    .restart local v16    # "outerDepth":I
    goto :goto_40

    .end local v16    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    .restart local v12    # "type":I
    :cond_ae
    move/from16 v16, v0

    .line 468
    .end local v0    # "outerDepth":I
    .end local v7    # "lastAppScanTime":J
    .end local v9    # "currentTime":J
    .end local v12    # "type":I
    :cond_b0
    nop

    .line 470
    if-eqz v6, :cond_b7

    .line 474
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    goto :goto_da

    .line 476
    :cond_b7
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v0

    .line 478
    .local v0, "root":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "packages"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;

    invoke-direct {v8, v1, v5, v4}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Z)V

    invoke-static {v7, v8}, Lcom/android/server/pm/ShortcutUser;->forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    .line 485
    new-instance v7, Ljava/io/File;

    const-string v8, "launchers"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;

    invoke-direct {v8, v5, v3, v4}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/ShortcutUser;IZ)V

    invoke-static {v7, v8}, Lcom/android/server/pm/ShortcutUser;->forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    .line 494
    .end local v0    # "root":Ljava/io/File;
    :goto_da
    return-object v5

    .line 465
    :catch_db
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;

    const-string v8, "Unable to parse file"

    invoke-direct {v7, v8, v0}, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :sswitch_data_e4
    .sparse-switch
        -0x4457a875 -> :sswitch_77
        -0x301acbba -> :sswitch_6c
    .end sparse-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_92
        :pswitch_88
    .end packed-switch
.end method

.method private saveShortcutPackageItem(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V
    .registers 6
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;
    .param p3, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 404
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()Z

    .line 405
    if-eqz p3, :cond_14

    .line 406
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 407
    return-void

    .line 409
    :cond_10
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Landroid/util/TypedXmlSerializer;Z)V

    goto :goto_17

    .line 411
    :cond_14
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->saveShortcutPackageItem()V

    .line 413
    :goto_17
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 5
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageUserId"    # I

    .line 355
    new-instance v0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/pm/ShortcutUser;->forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 358
    return-void
.end method

.method cancelAllInFlightTasks()V
    .registers 5

    .line 736
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 738
    .local v2, "session":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchSession;>;"
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 739
    nop

    .end local v2    # "session":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchSession;>;"
    goto :goto_9

    .line 740
    :cond_1b
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 741
    monitor-exit v0

    .line 742
    return-void

    .line 741
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public detectLocaleChange()V
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "currentLocales":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 320
    return-void

    .line 327
    :cond_19
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 329
    new-instance v1, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 334
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 335
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 581
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    const-string v1, "  "

    if-eqz v0, :cond_79

    .line 582
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    const-string v0, "User: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 585
    const-string v0, "  Known locales: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 587
    const-string v0, "  Last app scan: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 589
    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 594
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    const-string v0, "Last app scan FP: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    const-string v0, "Restore from FP: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 603
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    const-string v0, "Cached launcher: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 609
    :cond_79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7a
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_9a

    .line 610
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutLauncher;

    .line 611
    .local v2, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 612
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 609
    .end local v2    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 616
    .end local v0    # "i":I
    :cond_9a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9b
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_bb

    .line 617
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutPackage;

    .line 618
    .local v2, "pkg":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 619
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 616
    .end local v2    # "pkg":Lcom/android/server/pm/ShortcutPackage;
    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 623
    .end local v0    # "i":I
    :cond_bb
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 624
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 625
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    const-string v0, "Bitmap directories: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    .line 629
    :cond_e8
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 6
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 659
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 661
    .local v0, "result":Lorg/json/JSONObject;
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 664
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 665
    .local v1, "launchers":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 666
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutLauncher;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 668
    .end local v2    # "i":I
    :cond_2d
    const-string v2, "launchers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    .end local v1    # "launchers":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 673
    .local v1, "packages":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_38
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 674
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutPackage;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 676
    .end local v2    # "i":I
    :cond_52
    const-string/jumbo v2, "packages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 679
    .end local v1    # "packages":Lorg/json/JSONArray;
    return-object v0
.end method

.method public forAllLaunchers(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutLauncher;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 265
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 266
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 268
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method public forAllPackageItems(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutPackageItem;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 273
    return-void
.end method

.method public forAllPackages(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;)V"
        }
    .end annotation

    .line 257
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutPackage;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 258
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 259
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 261
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method public forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/ShortcutPackageItem;>;"
    new-instance v0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 283
    return-void
.end method

.method getAllLaunchersForTest()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getAllPackagesForTest()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getAppSearch(Landroid/app/appsearch/AppSearchManager$SearchContext;)Lcom/android/internal/infra/AndroidFuture;
    .registers 8
    .param p1, "searchContext"    # Landroid/app/appsearch/AppSearchManager$SearchContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchManager$SearchContext;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;"
        }
    .end annotation

    .line 704
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 705
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchSession;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 706
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 707
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_75

    .line 709
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    if-nez v1, :cond_27

    .line 710
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "app search manager is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 711
    return-object v0

    .line 713
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 716
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 717
    return-object v0

    .line 719
    :cond_5b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 721
    .local v1, "callingIdentity":J
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v3, p1, v4, v5}, Landroid/app/appsearch/AppSearchManager;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_70

    .line 730
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    nop

    .line 732
    return-object v0

    .line 730
    :catchall_70
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    throw v3

    .line 708
    .end local v1    # "callingIdentity":J
    :catchall_75
    move-exception v2

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v2
.end method

.method public getCachedLauncher()Ljava/lang/String;
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAppScanOsFingerprint()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAppScanTime()J
    .registers 3

    .line 162
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    return-wide v0
.end method

.method public getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "launcherUserId"    # I

    .line 245
    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    .line 246
    .local v0, "key":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;

    .line 247
    .local v1, "ret":Lcom/android/server/pm/ShortcutLauncher;
    if-nez v1, :cond_1c

    .line 248
    new-instance v2, Lcom/android/server/pm/ShortcutLauncher;

    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    move-object v1, v2

    .line 249
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 251
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 253
    :goto_1f
    return-object v1
.end method

.method public getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 235
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_13

    .line 236
    new-instance v1, Lcom/android/server/pm/ShortcutPackage;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    move-object v0, v1

    .line 237
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_13
    return-object v0
.end method

.method public getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 226
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_d

    .line 227
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->attemptToRestoreIfNeededAndSave()V

    .line 229
    :cond_d
    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    return v0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$mergeRestoredFile$5$com-android-server-pm-ShortcutUser(Lcom/android/server/pm/ShortcutService;[ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 6
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "restoredLaunchers"    # [I
    .param p3, "sl"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 544
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 545
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 546
    return-void

    .line 548
    :cond_1d
    invoke-direct {p0, p3}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    .line 549
    const/4 v0, 0x0

    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 550
    return-void
.end method

.method synthetic lambda$mergeRestoredFile$6$com-android-server-pm-ShortcutUser(Lcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V
    .registers 9
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "restoredPackages"    # [I
    .param p3, "restoredShortcuts"    # [I
    .param p4, "sp"    # Lcom/android/server/pm/ShortcutPackage;

    .line 554
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 555
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 556
    return-void

    .line 559
    :cond_1d
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 560
    .local v0, "previous":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->hasNonManifestShortcuts()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcuts for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " are being restored. Existing non-manifeset shortcuts will be overwritten."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_4f
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->removeAllShortcutsAsync()V

    .line 565
    invoke-direct {p0, p4}, Lcom/android/server/pm/ShortcutUser;->addPackage(Lcom/android/server/pm/ShortcutPackage;)V

    .line 566
    const/4 v1, 0x0

    aget v2, p2, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v1

    .line 567
    aget v2, p3, v1

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getShortcutCount()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p3, v1

    .line 568
    return-void
.end method

.method logSharingShortcutStats(Lcom/android/internal/logging/MetricsLogger;)V
    .registers 7
    .param p1, "logger"    # Lcom/android/internal/logging/MetricsLogger;

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "packageWithShareTargetsCount":I
    const/4 v1, 0x0

    .line 685
    .local v1, "totalSharingShortcutCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 686
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->hasShareTargets()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 687
    add-int/lit8 v0, v0, 0x1

    .line 688
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getSharingShortcutCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 685
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 692
    .end local v2    # "i":I
    :cond_2b
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x6b5

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 693
    .local v2, "logMaker":Landroid/metrics/LogMaker;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 694
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 693
    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 695
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 696
    invoke-virtual {v3, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 695
    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 697
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 698
    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 697
    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 699
    return-void
.end method

.method public mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V
    .registers 9
    .param p1, "restored"    # Lcom/android/server/pm/ShortcutUser;

    .line 522
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 536
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 537
    .local v2, "restoredLaunchers":[I
    new-array v3, v1, [I

    .line 538
    .local v3, "restoredPackages":[I
    new-array v1, v1, [I

    .line 540
    .local v1, "restoredShortcuts":[I
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 541
    new-instance v4, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 551
    new-instance v4, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 570
    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 571
    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 573
    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored: L="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " P="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " S="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShortcutService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void
.end method

.method public onCalledByPublisher(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 303
    return-void
.end method

.method public removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;
    .registers 5
    .param p1, "packageUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutLauncher;

    return-object v0
.end method

.method public removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 196
    .local v0, "removed":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_d

    .line 197
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->removeAllShortcutsAsync()V

    .line 199
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    .line 201
    return-object v0
.end method

.method public rescanPackageIfNeeded(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceRescan"    # Z

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 344
    .local v0, "isNewApp":Z
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 346
    .local v1, "shortcutPackage":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    move-result v2

    if-nez v2, :cond_19

    .line 347
    if-eqz v0, :cond_19

    .line 348
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_19
    return-void
.end method

.method public resetThrottling()V
    .registers 3

    .line 516
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 517
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->resetThrottling()V

    .line 516
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 519
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;Z)V
    .registers 9
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    const-string/jumbo v1, "user"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    const-string/jumbo v2, "restore-from-fp"

    if-nez p2, :cond_27

    .line 366
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    const-string v4, "locales"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 367
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    const-string v5, "last-app-scan-time2"

    invoke-static {p1, v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 369
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    const-string v4, "last-app-scan-fp"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 371
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 374
    :cond_27
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 375
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 378
    :goto_30
    if-nez p2, :cond_4f

    .line 381
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v2

    .line 382
    .local v2, "root":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "packages"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 383
    new-instance v3, Ljava/io/File;

    const-string v4, "launchers"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 387
    .end local v2    # "root":Ljava/io/File;
    :cond_4f
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 388
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_56
    if-ge v3, v2, :cond_66

    .line 389
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    .line 388
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 393
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_66
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 394
    .restart local v2    # "size":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6d
    if-ge v3, v2, :cond_7d

    .line 395
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    .line 394
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 399
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_7d
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 400
    return-void
.end method

.method public setCachedLauncher(Ljava/lang/String;)V
    .registers 2
    .param p1, "launcher"    # Ljava/lang/String;

    .line 508
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setLastAppScanOsFingerprint(Ljava/lang/String;)V
    .registers 2
    .param p1, "lastAppScanOsFingerprint"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setLastAppScanTime(J)V
    .registers 3
    .param p1, "lastAppScanTime"    # J

    .line 166
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 167
    return-void
.end method
