.class public abstract Landroid/app/backup/BackupAgent;
.super Landroid/content/ContextWrapper;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;,
        Landroid/app/backup/BackupAgent$BackupServiceBinder;,
        Landroid/app/backup/BackupAgent$IncludeExcludeRules;,
        Landroid/app/backup/BackupAgent$FailRunnable;,
        Landroid/app/backup/BackupAgent$BackupTransportFlags;,
        Landroid/app/backup/BackupAgent$BackupFileSystemObjectType;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEFAULT_BACKUP_DESTINATION:I = 0x0

.field public static final whitelist FLAG_CLIENT_SIDE_ENCRYPTION_ENABLED:I = 0x1

.field public static final whitelist FLAG_CROSS_PLATFORM_DATA_TRANSFER_IOS:I = 0x8

.field public static final whitelist FLAG_DEVICE_TO_DEVICE_TRANSFER:I = 0x2

.field public static final greylist-max-o FLAG_FAKE_CLIENT_SIDE_ENCRYPTION_ENABLED:I = -0x80000000

.field public static final blacklist FLAG_SKIP_RESTORE_FOR_LAUNCHED_APPS:I = 0x4

.field public static final blacklist RESULT_ERROR:I = -0x1

.field public static final blacklist RESULT_SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupAgent"

.field public static final whitelist TYPE_DIRECTORY:I = 0x2

.field public static final greylist-max-o TYPE_EOF:I = 0x0

.field public static final whitelist TYPE_FILE:I = 0x1

.field public static final greylist-max-o TYPE_SYMLINK:I = 0x3


# instance fields
.field private volatile blacklist mBackupDestination:I

.field private final greylist-max-o mBinder:Landroid/os/IBinder;

.field greylist-max-o mHandler:Landroid/os/Handler;

.field private volatile blacklist mLogger:Landroid/app/backup/BackupRestoreEventLogger;

.field private blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;
    .registers 1

    iget-object p0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgent;->getBackupUserId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 223
    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    .line 225
    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 229
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    .line 1224
    new-instance v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;

    invoke-direct {v1, p0, v0}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent-IA;)V

    invoke-virtual {v1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    .line 277
    return-void
.end method

.method private blacklist applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    if-eqz p3, :cond_43

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_43

    .line 716
    :cond_9
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 719
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 720
    nop

    .line 721
    invoke-virtual {v1}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getRequiredFlags()I

    move-result v3

    invoke-virtual {p6}, Landroid/app/backup/FullBackupDataOutput;->getTransportFlags()I

    move-result v4

    .line 720
    invoke-direct {p0, v3, v4}, Landroid/app/backup/BackupAgent;->areIncludeRequiredTransportFlagsSatisfied(II)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 722
    nop

    .line 725
    invoke-virtual {v1}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 722
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 730
    :cond_42
    goto :goto_19

    .line 708
    :cond_43
    :goto_43
    iget v1, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    .line 711
    invoke-static {p0, v1}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v1

    .line 712
    invoke-virtual {v1, p2}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 708
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 732
    :cond_56
    return-void
.end method

.method private greylist-max-o areIncludeRequiredTransportFlagsSatisfied(II)Z
    .registers 3

    .line 737
    and-int/2addr p2, p1

    if-ne p2, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method private blacklist getBackupUserId()I
    .registers 2

    .line 689
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mUser:Landroid/os/UserHandle;

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/content/ContextWrapper;->getUserId()I

    move-result v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :goto_f
    return v0
.end method

.method private blacklist getExtraExcludeDirsIfAny(Landroid/content/Context;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 621
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o isFileEligibleForRestore(Ljava/io/File;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    iget v0, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    invoke-static {p0, v0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    .line 1036
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullRestoreEnabled()Z

    move-result v1

    const-string/jumbo v2, "onRestoreFile \""

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "BackupXmlParserLogging"

    if-nez v1, :cond_40

    .line 1037
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1041
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" : fullBackupContent not enabled for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1043
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1038
    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_3f
    return v4

    .line 1048
    :cond_40
    nop

    .line 1049
    nop

    .line 1050
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1052
    :try_start_46
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v6

    .line 1053
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;

    move-result-object v0
    :try_end_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_4e} :catch_cb

    .line 1065
    nop

    .line 1067
    if-eqz v0, :cond_7b

    invoke-static {p1, v0}, Landroid/app/backup/BackupUtils;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1068
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 1069
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRestoreFile: \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\": listed in excludes; skipping."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_7a
    return v4

    .line 1079
    :cond_7b
    if-eqz v6, :cond_c9

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c9

    .line 1082
    nop

    .line 1083
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v4

    :goto_8d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 1084
    nop

    .line 1085
    invoke-static {p1, v6}, Landroid/app/backup/BackupUtils;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1086
    if-eqz v2, :cond_a2

    .line 1087
    goto :goto_a3

    .line 1089
    :cond_a2
    goto :goto_8d

    .line 1090
    :cond_a3
    :goto_a3
    if-nez v2, :cond_c9

    .line 1091
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 1092
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRestoreFile: Trying to restore \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" but it isn\'t specified in the included files; skipping."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_c8
    return v4

    .line 1102
    :cond_c9
    const/4 p1, 0x1

    return p1

    .line 1054
    :catch_cb
    move-exception p1

    .line 1055
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" : Exception trying to parse fullBackupContent xml file! Aborting onRestoreFile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1064
    :cond_ec
    return v4
.end method

.method private blacklist manifestExcludesContainFilePath(Ljava/util/Set;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 966
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 967
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_1e

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 969
    const/4 p1, 0x1

    return p1

    .line 971
    :cond_1e
    goto :goto_4

    .line 972
    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o waitForSharedPrefs()V
    .registers 3

    .line 250
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 251
    new-instance v1, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;

    invoke-direct {v1, p0}, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;-><init>(Landroid/app/backup/BackupAgent;)V

    .line 252
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 254
    :try_start_c
    iget-object v0, v1, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    .line 257
    goto :goto_13

    .line 255
    :catch_12
    move-exception v0

    .line 258
    :goto_13
    return-void
.end method


# virtual methods
.method public greylist-max-o attach(Landroid/content/Context;)V
    .registers 2

    .line 1228
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->attachBaseContext(Landroid/content/Context;)V

    .line 1229
    return-void
.end method

.method public final blacklist clearBackupRestoreEventLogger()V
    .registers 2

    .line 1212
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    if-eqz v0, :cond_9

    .line 1213
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger;->clearData()V

    .line 1215
    :cond_9
    return-void
.end method

.method public final whitelist fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 28

    .line 772
    const-string v1, "BackupAgent"

    const-string v0, "foo"

    .line 775
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 780
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v3

    .line 781
    invoke-virtual {v3}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 782
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 783
    invoke-virtual {v3}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 784
    invoke-virtual {v3, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 785
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 786
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 787
    invoke-virtual {v3}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 789
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v10

    .line 790
    invoke-virtual {v10}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 791
    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    .line 792
    invoke-virtual {v10}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 793
    invoke-virtual {v10, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    .line 794
    nop

    .line 795
    invoke-virtual {v10, v0}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .line 797
    invoke-virtual {v10}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_91} :catch_1c4

    .line 800
    move-object/from16 v16, v1

    :try_start_93
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v17, v1

    if-nez v17, :cond_9b

    .line 801
    const/4 v1, 0x0

    goto :goto_a6

    .line 802
    :cond_9b
    new-instance v1, Ljava/io/File;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 805
    :goto_a6
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    move-object/from16 v18, v11

    const/16 v11, 0x3e8

    if-eq v2, v11, :cond_be

    .line 806
    const/4 v11, 0x0

    move-object/from16 v2, p0

    invoke-virtual {v2, v11}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 807
    if-eqz v17, :cond_c1

    .line 808
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    goto :goto_c1

    .line 805
    :cond_be
    const/4 v11, 0x0

    move-object/from16 v2, p0

    .line 815
    :cond_c1
    :goto_c1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_c5} :catch_1c0

    .line 819
    nop

    .line 821
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1b7

    .line 822
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b4

    .line 823
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b1

    .line 824
    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ae

    .line 825
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ab

    .line 826
    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a8

    .line 827
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    move-object/from16 v1, v16

    goto/16 :goto_1b9

    .line 833
    :cond_f4
    nop

    .line 834
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_104

    .line 835
    nop

    .line 836
    const-string v0, "db"

    move-object/from16 v20, v0

    move-object/from16 v22, v7

    goto/16 :goto_17a

    .line 837
    :cond_104
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 838
    nop

    .line 839
    const-string/jumbo v0, "sp"

    move-object/from16 v20, v0

    move-object/from16 v22, v8

    goto/16 :goto_17a

    .line 840
    :cond_114
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 841
    nop

    .line 842
    const-string v0, "f"

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    goto :goto_17a

    .line 843
    :cond_122
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 844
    nop

    .line 845
    const-string/jumbo v0, "r"

    move-object/from16 v20, v0

    move-object/from16 v22, v4

    goto :goto_17a

    .line 846
    :cond_131
    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 847
    nop

    .line 848
    const-string v0, "d_db"

    move-object/from16 v20, v0

    move-object/from16 v22, v14

    goto :goto_17a

    .line 849
    :cond_13f
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 850
    nop

    .line 851
    const-string v1, "d_sp"

    move-object/from16 v22, v0

    move-object/from16 v20, v1

    goto :goto_17a

    .line 852
    :cond_14d
    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 853
    nop

    .line 854
    const-string v0, "d_f"

    move-object/from16 v20, v0

    move-object/from16 v22, v12

    goto :goto_17a

    .line 855
    :cond_15b
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 856
    nop

    .line 857
    const-string v1, "d_r"

    move-object/from16 v22, v0

    move-object/from16 v20, v1

    goto :goto_17a

    .line 858
    :cond_16b
    if-eqz v11, :cond_188

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 859
    nop

    .line 860
    const-string v0, "ef"

    move-object/from16 v20, v0

    move-object/from16 v22, v11

    .line 880
    :goto_17a
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v24, p2

    move-object/from16 v23, v2

    invoke-static/range {v19 .. v24}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 881
    return-void

    .line 858
    :cond_188
    move-object v0, v2

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is in an unsupported location; skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void

    .line 826
    :cond_1a8
    move-object/from16 v1, v16

    goto :goto_1b9

    .line 825
    :cond_1ab
    move-object/from16 v1, v16

    goto :goto_1b9

    .line 824
    :cond_1ae
    move-object/from16 v1, v16

    goto :goto_1b9

    .line 823
    :cond_1b1
    move-object/from16 v1, v16

    goto :goto_1b9

    .line 822
    :cond_1b4
    move-object/from16 v1, v16

    goto :goto_1b9

    .line 821
    :cond_1b7
    move-object/from16 v1, v16

    .line 828
    :goto_1b9
    const-string/jumbo v0, "lib, cache, code_cache, and no_backup files are not backed up"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void

    .line 816
    :catch_1c0
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_1c5

    :catch_1c4
    move-exception v0

    .line 817
    :goto_1c5
    const-string v0, "Unable to obtain canonical paths"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-void
.end method

.method protected final blacklist fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .line 900
    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const-string v3, "BackupXmlParserLogging"

    iget v0, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    .line 901
    invoke-static {p0, v0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 902
    if-nez v7, :cond_15

    .line 904
    return-void

    .line 907
    :cond_15
    new-instance v0, Ljava/io/File;

    move-object/from16 v4, p3

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 909
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 910
    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 912
    :goto_2a
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_d9

    .line 913
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 917
    const/4 v6, 0x2

    :try_start_38
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v8

    .line 918
    iget v9, v8, Landroid/system/StructStat;->st_mode:I

    invoke-static {v9}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v9

    if-nez v9, :cond_51

    iget v9, v8, Landroid/system/StructStat;->st_mode:I

    invoke-static {v9}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v9

    if-nez v9, :cond_51

    .line 920
    goto :goto_2a

    .line 924
    :cond_51
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 927
    if-eqz v1, :cond_5e

    .line 928
    invoke-direct {p0, v1, v9}, Landroid/app/backup/BackupAgent;->manifestExcludesContainFilePath(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5e

    .line 929
    goto :goto_2a

    .line 931
    :cond_5e
    if-eqz v2, :cond_67

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 932
    goto :goto_2a

    .line 936
    :cond_67
    iget v8, v8, Landroid/system/StructStat;->st_mode:I

    invoke-static {v8}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v8

    if-eqz v8, :cond_81

    .line 937
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 938
    if-eqz v8, :cond_81

    .line 939
    array-length v11, v8

    move v12, v0

    :goto_77
    if-ge v12, v11, :cond_81

    aget-object v13, v8, v12

    .line 940
    invoke-virtual {v10, v0, v13}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_7e} :catch_b8
    .catch Landroid/system/ErrnoException; {:try_start_38 .. :try_end_7e} :catch_8d

    .line 939
    add-int/lit8 v12, v12, 0x1

    goto :goto_77

    .line 956
    :cond_81
    nop

    .line 959
    const/4 v6, 0x0

    move-object v4, p1

    move-object v8, v9

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 960
    move-object/from16 v5, p2

    goto :goto_2a

    .line 950
    :catch_8d
    move-exception v0

    .line 952
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 953
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error scanning file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_b4
    move-object/from16 v5, p2

    goto/16 :goto_2a

    .line 944
    :catch_b8
    move-exception v0

    .line 946
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error canonicalizing path of "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_d5
    move-object/from16 v5, p2

    goto/16 :goto_2a

    .line 962
    :cond_d9
    return-void
.end method

.method public blacklist getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;
    .registers 2

    .line 272
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    return-object v0
.end method

.method greylist-max-o getHandler()Landroid/os/Handler;
    .registers 3

    .line 232
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 233
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    .line 235
    :cond_f
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist getIncludeExcludeRules(Landroid/app/backup/FullBackup$BackupScheme;)Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 634
    invoke-virtual {p1}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v0

    .line 635
    invoke-virtual {p1}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;

    move-result-object p1

    .line 637
    new-instance v1, Landroid/app/backup/BackupAgent$IncludeExcludeRules;

    invoke-direct {v1, v0, p1}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object v1
.end method

.method public abstract whitelist onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final greylist-max-o onBind()Landroid/os/IBinder;
    .registers 2

    .line 1221
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 1

    .line 283
    return-void
.end method

.method public blacklist onCreate(Landroid/os/UserHandle;)V
    .registers 2

    .line 287
    iput-object p1, p0, Landroid/app/backup/BackupAgent;->mUser:Landroid/os/UserHandle;

    .line 288
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 289
    return-void
.end method

.method public blacklist onCreate(Landroid/os/UserHandle;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    iput p2, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    .line 299
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 300
    return-void
.end method

.method public blacklist onCreate(Landroid/os/UserHandle;II)V
    .registers 5

    .line 307
    iput p2, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    .line 308
    new-instance v0, Landroid/app/backup/BackupRestoreEventLogger;

    invoke-direct {v0, p3}, Landroid/app/backup/BackupRestoreEventLogger;-><init>(I)V

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 310
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;I)V

    .line 311
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 319
    return-void
.end method

.method public whitelist onEstimateFullBackupBytes(JI)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public whitelist onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    move-object/from16 v0, p0

    iget v1, v0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    invoke-static {v0, v1}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v1

    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/FullBackupDataOutput;->getTransportFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupEnabled(I)Z

    move-result v2

    if-nez v2, :cond_13

    .line 443
    return-void

    .line 448
    :cond_13
    :try_start_13
    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getIncludeExcludeRules(Landroid/app/backup/FullBackup$BackupScheme;)Landroid/app/backup/BackupAgent$IncludeExcludeRules;

    move-result-object v1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_140
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_17} :catch_140

    .line 458
    nop

    .line 459
    nop

    .line 460
    invoke-static {v1}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->-$$Nest$mgetIncludeMap(Landroid/app/backup/BackupAgent$IncludeExcludeRules;)Ljava/util/Map;

    move-result-object v3

    .line 461
    invoke-static {v1}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->-$$Nest$mgetExcludeSet(Landroid/app/backup/BackupAgent$IncludeExcludeRules;)Ljava/util/Set;

    move-result-object v4

    .line 463
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 468
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v5

    .line 469
    invoke-virtual {v5}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 470
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 471
    nop

    .line 472
    const-string v6, "foo"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 473
    nop

    .line 474
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    .line 476
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v11

    .line 477
    invoke-virtual {v11}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    .line 478
    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 479
    nop

    .line 480
    invoke-virtual {v11, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    .line 481
    nop

    .line 482
    invoke-virtual {v11, v6}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .line 485
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v16, v12

    if-eqz v6, :cond_99

    .line 486
    new-instance v6, Ljava/io/File;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_9a

    .line 487
    :cond_99
    const/4 v2, 0x0

    .line 492
    :goto_9a
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 495
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v6, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 503
    if-eqz v2, :cond_b6

    .line 504
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_b6
    invoke-direct {v0, v5}, Landroid/app/backup/BackupAgent;->getExtraExcludeDirsIfAny(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 508
    invoke-direct {v0, v11}, Landroid/app/backup/BackupAgent;->getExtraExcludeDirsIfAny(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v11

    .line 509
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 510
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 513
    move-object v5, v2

    const-string/jumbo v2, "r"

    move-object v12, v5

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 520
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 524
    const-string v2, "d_r"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 531
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {v5, v11}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 536
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 537
    const-string v2, "f"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 544
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-virtual {v5, v13}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 547
    const-string v2, "d_f"

    invoke-direct/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 554
    invoke-virtual {v5, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 558
    const-string v2, "db"

    invoke-direct/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 565
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-virtual {v5, v14}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 568
    const-string v2, "d_db"

    invoke-direct/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 575
    invoke-virtual {v5, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 579
    const-string/jumbo v2, "sp"

    invoke-direct/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 586
    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-virtual {v5, v15}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 589
    const-string v2, "d_sp"

    invoke-direct/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 596
    invoke-virtual {v5, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v6, 0x3e8

    if-eq v2, v6, :cond_13f

    .line 606
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 607
    if-eqz v2, :cond_13f

    .line 608
    const-string v2, "ef"

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 617
    :cond_13f
    return-void

    .line 449
    :catch_140
    move-exception v0

    .line 450
    const/4 v1, 0x2

    const-string v2, "BackupXmlParserLogging"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 451
    const-string v1, "Exception trying to parse fullBackupContent xml file! Aborting full backup."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    :cond_14f
    return-void
.end method

.method public whitelist onQuotaExceeded(JJ)V
    .registers 5

    .line 686
    return-void
.end method

.method public abstract whitelist onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    long-to-int p2, p2

    invoke-virtual {p0, p1, p2, p4}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 386
    return-void
.end method

.method public blacklist onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;)V

    .line 409
    return-void
.end method

.method public whitelist onRestoreFile(Landroid/app/backup/FullRestoreDataInput;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    nop

    .line 993
    invoke-virtual {p1}, Landroid/app/backup/FullRestoreDataInput;->getData()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 994
    invoke-virtual {p1}, Landroid/app/backup/FullRestoreDataInput;->getSize()J

    move-result-wide v2

    .line 995
    invoke-virtual {p1}, Landroid/app/backup/FullRestoreDataInput;->getDestination()Ljava/io/File;

    move-result-object v4

    .line 996
    invoke-virtual {p1}, Landroid/app/backup/FullRestoreDataInput;->getType()I

    move-result v5

    .line 997
    invoke-virtual {p1}, Landroid/app/backup/FullRestoreDataInput;->getMode()J

    move-result-wide v6

    .line 998
    invoke-virtual {p1}, Landroid/app/backup/FullRestoreDataInput;->getModificationTimeSeconds()J

    move-result-wide v8

    .line 992
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .line 999
    return-void
.end method

.method protected blacklist onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJJILjava/lang/String;)V
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 1148
    iget v2, v0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    .line 1149
    invoke-static {v0, v2}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1150
    const-string v3, "ef"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1151
    const-wide/16 v3, -0x1

    move-wide v6, v3

    goto :goto_1c

    .line 1150
    :cond_1a
    move-wide/from16 v6, p7

    .line 1155
    :goto_1c
    if-eqz v2, :cond_6d

    .line 1157
    new-instance v4, Ljava/io/File;

    move-object/from16 v1, p6

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1161
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/Flags;->enableCrossPlatformTransfer()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1162
    new-instance v5, Landroid/app/backup/FullRestoreDataInput;

    move/from16 v10, p4

    move-wide/from16 v13, p9

    move-wide/from16 v15, p11

    move/from16 v17, p13

    move-object/from16 v18, p14

    move-object v9, v4

    move-wide v11, v6

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    invoke-direct/range {v5 .. v18}, Landroid/app/backup/FullRestoreDataInput;-><init>(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJJILjava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/app/backup/FullRestoreDataInput;)V

    goto :goto_6c

    .line 1174
    :cond_61
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v5, p4

    move-wide/from16 v8, p9

    invoke-virtual/range {v0 .. v9}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .line 1176
    :goto_6c
    return-void

    .line 1189
    :cond_6d
    const/4 v13, 0x0

    move-object/from16 v5, p1

    move/from16 v8, p4

    move-wide/from16 v11, p9

    move-wide v9, v6

    move-wide/from16 v6, p2

    invoke-static/range {v5 .. v13}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 1190
    return-void
.end method

.method public whitelist onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1029
    invoke-direct {p0, p4}, Landroid/app/backup/BackupAgent;->isFileEligibleForRestore(Ljava/io/File;)Z

    move-result v0

    .line 1031
    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p4, 0x0

    :goto_8
    move-object v8, p4

    move-object v0, p1

    move-wide v1, p2

    move v3, p5

    move-wide v4, p6

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v8}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 1032
    return-void
.end method

.method public whitelist onRestoreFinished()V
    .registers 1

    .line 1203
    return-void
.end method
