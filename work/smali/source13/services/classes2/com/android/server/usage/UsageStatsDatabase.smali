.class public Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;,
        Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;
    }
.end annotation


# static fields
.field public static final BACKUP_VERSION:I = 0x4

.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CURRENT_VERSION:I = 0x5

.field static final KEEP_BACKUP_DIR:Z = false

.field static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field static final MAX_FILES_PER_INTERVAL_TYPE:[I

.field private static final RETENTION_LEN_KEY:Ljava/lang/String; = "ro.usagestats.chooser.retention"

.field private static final SELECTION_LOG_RETENTION_LEN:I

.field private static final TAG:Ljava/lang/String; = "UsageStatsDatabase"


# instance fields
.field private final mBackupsDir:Ljava/io/File;

.field private final mCal:Lcom/android/server/usage/UnixCalendar;

.field private mCurrentVersion:I

.field private mFirstUpdate:Z

.field private final mIntervalDirs:[Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mNewUpdate:Z

.field private final mPackageMappingsFile:Ljava/io/File;

.field final mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

.field final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/app/usage/TimeSparseArray<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateBreadcrumb:Ljava/io/File;

.field private mUpgradePerformed:Z

.field private final mVersionFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    .line 110
    nop

    .line 111
    const-string/jumbo v0, "ro.usagestats.chooser.retention"

    const/16 v1, 0xe

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    .line 110
    return-void

    nop

    :array_16
    .array-data 4
        0x64
        0x32
        0xc
        0xa
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "dir"    # Ljava/io/File;

    .line 159
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "version"    # I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Lcom/android/server/usage/PackagesTokenData;

    invoke-direct {v0}, Lcom/android/server/usage/PackagesTokenData;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "daily"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "weekly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "monthly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "yearly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 149
    iput p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 150
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "version"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 151
    new-instance v1, Ljava/io/File;

    const-string v2, "backups"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 152
    new-instance v1, Ljava/io/File;

    const-string v2, "breadcrumb"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 153
    array-length v0, v0

    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .line 154
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "mappings"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    .line 155
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 156
    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .registers 11

    .line 342
    const-string v0, "\n"

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "currentFingerprint":Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 344
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    .line 345
    :try_start_b
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_17} :catch_3e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_3e

    .line 346
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_17
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 347
    .local v4, "version":I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "buildFingerprint":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v5, :cond_28

    .line 349
    iput-boolean v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 351
    :cond_28
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 352
    iput-boolean v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_34

    .line 354
    :cond_30
    :try_start_30
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_33} :catch_3e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3e

    .line 356
    .end local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_40

    .line 345
    .end local v4    # "version":I
    .end local v5    # "buildFingerprint":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_34
    move-exception v4

    :try_start_35
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v5

    :try_start_3a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :goto_3d
    throw v4
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 354
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_3e
    move-exception v3

    .line 355
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 358
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "version":I
    :goto_40
    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const-string v5, "UsageStatsDatabase"

    if-eq v4, v3, :cond_9d

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading from version "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_98

    .line 362
    :try_start_70
    invoke-direct {p0, v4}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    .line 370
    goto :goto_9d

    .line 363
    :catch_74
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upgrade from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    iput v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 369
    return-void

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_98
    const-string v3, "Version upgrade breadcrumb found on disk! Continuing version upgrade"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_9d
    :goto_9d
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 379
    :try_start_a5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_a5 .. :try_end_b1} :catch_f1
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b1} :catch_f1

    .line 381
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_b1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 382
    .local v6, "token":J
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_c1
    .catchall {:try_start_b1 .. :try_end_c1} :catchall_e7

    .line 383
    .local v8, "previousVersion":I
    :try_start_c1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c4
    .catch Ljava/lang/NumberFormatException; {:try_start_c1 .. :try_end_c4} :catch_f1
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_f1

    .line 386
    .end local v3    # "reader":Ljava/io/BufferedReader;
    nop

    .line 387
    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v9, 0x4

    if-lt v3, v9, :cond_ce

    .line 388
    invoke-direct {p0, v8, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->continueUpgradeLocked(IJ)V

    goto :goto_fd

    .line 390
    :cond_ce
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempting to upgrade to an unsupported version: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    .line 379
    .end local v6    # "token":J
    .end local v8    # "previousVersion":I
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_e7
    move-exception v0

    :try_start_e8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f0

    :catchall_ec
    move-exception v2

    :try_start_ed
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local v4    # "version":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :goto_f0
    throw v0
    :try_end_f1
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_f1} :catch_f1
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f1} :catch_f1

    .line 383
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local v4    # "version":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_f1
    move-exception v0

    .line 384
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Failed read version upgrade breadcrumb"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_fd
    :goto_fd
    iget v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-ne v4, v3, :cond_105

    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v3, :cond_12a

    .line 396
    :cond_105
    :try_start_105
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_111} :catch_153

    .line 397
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_111
    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_126
    .catchall {:try_start_111 .. :try_end_126} :catchall_149

    .line 402
    :try_start_126
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_153

    .line 405
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    nop

    .line 408
    :cond_12a
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_139

    .line 410
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 412
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 415
    :cond_139
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 416
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 417
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 419
    :cond_148
    return-void

    .line 396
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catchall_149
    move-exception v0

    :try_start_14a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_14e

    goto :goto_152

    :catchall_14e
    move-exception v2

    :try_start_14f
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "currentFingerprint":Ljava/lang/String;
    .end local v4    # "version":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :goto_152
    throw v0
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_153} :catch_153

    .line 402
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "currentFingerprint":Ljava/lang/String;
    .restart local v4    # "version":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_153
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Failed to write new version"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private continueUpgradeLocked(IJ)V
    .registers 19
    .param p1, "version"    # I
    .param p2, "token"    # J

    .line 509
    move-object v1, p0

    move/from16 v2, p1

    const-string v3, "UsageStatsDatabase"

    const/4 v0, 0x3

    if-gt v2, v0, :cond_20

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading UsageStats as XML; current database version: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_20
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 515
    .local v4, "backupDir":Ljava/io/File;
    const/4 v5, 0x5

    if-lt v2, v5, :cond_32

    .line 516
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    .line 521
    :cond_32
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_34
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    if-ge v6, v0, :cond_ac

    .line 522
    new-instance v0, Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 523
    .local v7, "backedUpInterval":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 524
    .local v8, "files":[Ljava/io/File;
    if-eqz v8, :cond_a9

    .line 525
    const/4 v0, 0x0

    move v9, v0

    .local v9, "j":I
    :goto_4f
    array-length v0, v8

    if-ge v9, v0, :cond_a9

    .line 533
    :try_start_52
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 534
    .local v0, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v10, Landroid/util/AtomicFile;

    aget-object v11, v8, v9

    invoke-direct {v10, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    const/4 v12, 0x0

    invoke-static {v10, v0, v2, v11, v12}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    .line 538
    iget v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-lt v10, v5, :cond_6d

    .line 540
    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v0, v10}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 542
    :cond_6d
    new-instance v10, Landroid/util/AtomicFile;

    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v12, v12, v6

    iget-wide v13, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 543
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v12, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 542
    invoke-static {v10, v0, v11, v12}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_88} :catch_89

    .line 548
    .end local v0    # "stats":Lcom/android/server/usage/IntervalStats;
    goto :goto_a6

    .line 545
    :catch_89
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to upgrade backup file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v9

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4f

    .line 521
    .end local v7    # "backedUpInterval":Ljava/io/File;
    .end local v8    # "files":[Ljava/io/File;
    .end local v9    # "j":I
    :cond_a9
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 554
    .end local v6    # "i":I
    :cond_ac
    iget v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-lt v0, v5, :cond_bc

    .line 556
    :try_start_b0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    .line 559
    goto :goto_bc

    .line 557
    :catch_b4
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 558
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Failed to write the tokens mappings file."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .end local v0    # "e":Ljava/io/IOException;
    :cond_bc
    :goto_bc
    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)V
    .registers 6
    .param p0, "directory"    # Ljava/io/File;

    .line 1459
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1460
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1c

    .line 1461
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 1462
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1463
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_19

    .line 1465
    :cond_16
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 1461
    .end local v3    # "file":Ljava/io/File;
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1469
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1470
    return-void
.end method

.method private static deleteDirectoryContents(Ljava/io/File;)V
    .registers 5
    .param p0, "directory"    # Ljava/io/File;

    .line 1452
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1453
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 1454
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 1453
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1456
    :cond_10
    return-void
.end method

.method private deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;
    .registers 9
    .param p1, "data"    # [B
    .param p2, "version"    # I

    .line 1438
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1439
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1440
    .local v1, "in":Ljava/io/DataInputStream;
    new-instance v2, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v2}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1442
    .local v2, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1443
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    const/4 v4, 0x0

    invoke-static {v1, v2, p2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    .line 1447
    goto :goto_25

    .line 1444
    :catch_1c
    move-exception v3

    .line 1445
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "UsageStatsDatabase"

    const-string v5, "DeSerializing IntervalStats Failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1446
    const/4 v2, 0x0

    .line 1448
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_25
    return-object v2
.end method

.method private doUpgradeLocked(I)V
    .registers 20
    .param p1, "thisVersion"    # I

    .line 428
    move-object/from16 v1, p0

    const-string v0, "\n"

    const/4 v2, 0x0

    const-string v3, "UsageStatsDatabase"

    const/4 v4, 0x2

    move/from16 v5, p1

    if-ge v5, v4, :cond_30

    .line 431
    const-string v0, "Deleting all usage stats files"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v3

    if-ge v0, v4, :cond_2e

    .line 433
    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 434
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2b

    .line 435
    array-length v4, v3

    move v6, v2

    :goto_21
    if-ge v6, v4, :cond_2b

    aget-object v7, v3, v6

    .line 436
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 435
    .end local v7    # "f":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 432
    .end local v3    # "files":[Ljava/io/File;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .end local v0    # "i":I
    :cond_2e
    goto/16 :goto_12b

    .line 442
    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 443
    .local v6, "token":J
    new-instance v4, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 444
    .local v4, "backupDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 445
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_161

    .line 450
    :try_start_48
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 451
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/nio/file/CopyOption;

    sget-object v12, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v12, v11, v2

    .line 450
    invoke-static {v8, v9, v11}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_67} :catch_13e

    .line 456
    nop

    .line 458
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_69
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v9, v9

    if-ge v8, v9, :cond_102

    .line 459
    new-instance v9, Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 460
    .local v9, "backupIntervalDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 462
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_e5

    .line 467
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 468
    .local v11, "files":[Ljava/io/File;
    if-eqz v11, :cond_de

    .line 469
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_8f
    array-length v13, v11

    if-ge v12, v13, :cond_db

    .line 470
    new-instance v13, Ljava/io/File;

    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    .local v13, "backupFile":Ljava/io/File;
    :try_start_9d
    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v15

    new-array v2, v10, [Ljava/nio/file/CopyOption;

    sget-object v17, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/16 v16, 0x0

    aput-object v17, v2, v16

    invoke-static {v14, v15, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_b2} :catch_b8

    .line 485
    nop

    .line 469
    .end local v13    # "backupFile":Ljava/io/File;
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    goto :goto_8f

    .line 482
    .restart local v13    # "backupFile":Ljava/io/File;
    :catch_b8
    move-exception v0

    .line 483
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to back up file : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v10, v11, v12

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 469
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "backupFile":Ljava/io/File;
    :cond_db
    move/from16 v16, v2

    goto :goto_e0

    .line 468
    .end local v12    # "j":I
    :cond_de
    move/from16 v16, v2

    .line 458
    .end local v9    # "backupIntervalDir":Ljava/io/File;
    .end local v11    # "files":[Ljava/io/File;
    :goto_e0
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    goto :goto_69

    .line 463
    .restart local v9    # "backupIntervalDir":Ljava/io/File;
    :cond_e5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create interval backup directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    .end local v8    # "i":I
    .end local v9    # "backupIntervalDir":Ljava/io/File;
    :cond_102
    const/4 v2, 0x0

    .line 493
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_103
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v8

    .line 494
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 496
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_127} :catch_12e
    .catchall {:try_start_103 .. :try_end_127} :catchall_12c

    .line 503
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 504
    nop

    .line 506
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .end local v4    # "backupDir":Ljava/io/File;
    .end local v6    # "token":J
    :goto_12b
    return-void

    .line 503
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "backupDir":Ljava/io/File;
    .restart local v6    # "token":J
    :catchall_12c
    move-exception v0

    goto :goto_13a

    .line 499
    :catch_12e
    move-exception v0

    .line 500
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_12f
    const-string v8, "Failed to write new version upgrade breadcrumb"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .end local v4    # "backupDir":Ljava/io/File;
    .end local v6    # "token":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "thisVersion":I
    throw v3
    :try_end_13a
    .catchall {:try_start_12f .. :try_end_13a} :catchall_12c

    .line 503
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "backupDir":Ljava/io/File;
    .restart local v6    # "token":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "thisVersion":I
    :goto_13a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 504
    throw v0

    .line 453
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_13e
    move-exception v0

    .line 454
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to back up version file : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 446
    .end local v0    # "e":Ljava/io/IOException;
    :cond_161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create backup directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBuildFingerprint()Ljava/lang/String;
    .registers 4

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntervalStatsBytes(Ljava/io/DataInputStream;)[B
    .registers 4
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1411
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1412
    .local v0, "length":I
    new-array v1, v0, [B

    .line 1413
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 1414
    return-object v1
.end method

.method private indexFilesLocked()V
    .registers 12

    .line 276
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    .line 283
    .local v0, "backupFileFilter":Ljava/io/FilenameFilter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v3, v2

    if-ge v1, v3, :cond_a5

    .line 284
    aget-object v3, v2, v1

    if-nez v3, :cond_17

    .line 285
    new-instance v3, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v3}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v3, v2, v1

    goto :goto_1a

    .line 287
    :cond_17
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 289
    :goto_1a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 290
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_a1

    .line 294
    array-length v3, v2

    .line 295
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_26
    const-string v5, "UsageStatsDatabase"

    if-ge v4, v3, :cond_57

    .line 296
    aget-object v6, v2, v4

    .line 297
    .local v6, "f":Ljava/io/File;
    new-instance v7, Landroid/util/AtomicFile;

    invoke-direct {v7, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 299
    .local v7, "af":Landroid/util/AtomicFile;
    :try_start_31
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-static {v7}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v7}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3c} :catch_3d

    .line 302
    goto :goto_54

    .line 300
    :catch_3d
    move-exception v8

    .line 301
    .local v8, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to index file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "af":Landroid/util/AtomicFile;
    .end local v8    # "e":Ljava/io/IOException;
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 306
    .end local v4    # "j":I
    :cond_57
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    sget-object v6, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    aget v6, v6, v1

    sub-int/2addr v4, v6

    .line 307
    .local v4, "toDelete":I
    if-lez v4, :cond_a1

    .line 308
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_67
    if-ge v6, v4, :cond_81

    .line 309
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->delete()V

    .line 310
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v1

    invoke-virtual {v7, v8}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 308
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 312
    .end local v6    # "j":I
    :cond_81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stat files for interval "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "len":I
    .end local v4    # "toDelete":I
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 316
    .end local v1    # "i":I
    :cond_a5
    return-void
.end method

.method private mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .registers 5
    .param p1, "beingRestored"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "onDevice"    # Lcom/android/server/usage/IntervalStats;

    .line 1385
    if-nez p2, :cond_3

    return-object p1

    .line 1386
    :cond_3
    if-nez p1, :cond_7

    const/4 v0, 0x0

    return-object v0

    .line 1387
    :cond_7
    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1388
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1389
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    .line 1390
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, v1}, Landroid/app/usage/EventList;->merge(Landroid/app/usage/EventList;)V

    .line 1391
    return-object p1
.end method

.method private static parseBeginTime(Landroid/util/AtomicFile;)J
    .registers 3
    .param p0, "file"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 997
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseBeginTime(Ljava/io/File;)J
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1006
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1b

    const/16 v3, 0x39

    if-le v2, v3, :cond_18

    goto :goto_1b

    .line 1004
    .end local v2    # "c":C
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1008
    .restart local v2    # "c":C
    :cond_1b
    :goto_1b
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1014
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_20
    :try_start_20
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_24} :catch_25

    return-wide v1

    .line 1015
    :catch_25
    move-exception v1

    .line 1016
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private pruneChooserCountsOlderThan(Ljava/io/File;J)V
    .registers 18
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "expiryTime"    # J

    .line 965
    move-object v1, p0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 966
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_55

    .line 967
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_a
    if-ge v5, v3, :cond_55

    aget-object v6, v2, v5

    .line 970
    .local v6, "f":Ljava/io/File;
    :try_start_e
    invoke-static {v6}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v7
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_13

    .line 973
    .local v7, "beginTime":J
    goto :goto_18

    .line 971
    .end local v7    # "beginTime":J
    :catch_13
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 972
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v7, 0x0

    .line 975
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v7    # "beginTime":J
    :goto_18
    cmp-long v0, v7, p2

    if-gez v0, :cond_52

    .line 977
    :try_start_1c
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 978
    .local v0, "af":Landroid/util/AtomicFile;
    new-instance v9, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v9}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 979
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v0, v9, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    .line 980
    iget-object v10, v9, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 981
    .local v10, "pkgCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_30
    if-ge v11, v10, :cond_46

    .line 982
    iget-object v12, v9, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    .line 983
    .local v12, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v13, v12, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v13, :cond_43

    .line 984
    iget-object v13, v12, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->clear()V

    .line 981
    .end local v12    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_43
    add-int/lit8 v11, v11, 0x1

    goto :goto_30

    .line 987
    .end local v11    # "i":I
    :cond_46
    invoke-direct {p0, v0, v9}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_49} :catch_4a

    .line 990
    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v9    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v10    # "pkgCount":I
    goto :goto_52

    .line 988
    :catch_4a
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "UsageStatsDatabase"

    const-string v10, "Failed to delete chooser counts from usage stats file"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "beginTime":J
    :cond_52
    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 994
    :cond_55
    return-void
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .registers 10
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    .line 947
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 948
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_24

    .line 949
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 952
    .local v3, "f":Ljava/io/File;
    :try_start_c
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    .line 955
    .local v4, "beginTime":J
    goto :goto_15

    .line 953
    .end local v4    # "beginTime":J
    :catch_11
    move-exception v4

    .line 954
    .local v4, "e":Ljava/io/IOException;
    const-wide/16 v5, 0x0

    move-wide v4, v5

    .line 957
    .local v4, "beginTime":J
    :goto_15
    cmp-long v6, v4, p1

    if-gez v6, :cond_21

    .line 958
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Landroid/util/AtomicFile;->delete()V

    .line 949
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "beginTime":J
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 962
    :cond_24
    return-void
.end method

.method private pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z
    .registers 11
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/usage/IntervalStats;",
            ")Z"
        }
    .end annotation

    .line 656
    .local p1, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 659
    .local v0, "dataPruned":Z
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_30

    .line 660
    iget-object v2, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 661
    .local v2, "usageStats":Landroid/app/usage/UsageStats;
    iget-object v3, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 662
    .local v3, "timeInstalled":Ljava/lang/Long;
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2d

    .line 663
    :cond_27
    iget-object v4, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 664
    const/4 v0, 0x1

    .line 659
    .end local v2    # "usageStats":Landroid/app/usage/UsageStats;
    .end local v3    # "timeInstalled":Ljava/lang/Long;
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 667
    .end local v1    # "i":I
    :cond_30
    if-eqz v0, :cond_37

    .line 669
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 673
    :cond_37
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_3f
    if-ltz v1, :cond_64

    .line 674
    iget-object v2, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, v1}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 675
    .local v2, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 676
    .restart local v3    # "timeInstalled":Ljava/lang/Long;
    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_61

    .line 677
    :cond_5b
    iget-object v4, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 678
    const/4 v0, 0x1

    .line 673
    .end local v2    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v3    # "timeInstalled":Ljava/lang/Long;
    :cond_61
    add-int/lit8 v1, v1, -0x1

    goto :goto_3f

    .line 682
    .end local v1    # "i":I
    :cond_64
    return v0
.end method

.method private readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    .registers 6
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "skipEvents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1083
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1f

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading UsageStats as XML; current database version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_1f
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    .line 1088
    return-void
.end method

.method private static readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    .registers 9
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .param p3, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .param p4, "skipEvents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1100
    const/4 v0, 0x0

    .line 1102
    .local v0, "dataOmitted":Z
    :try_start_1
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_5} :catch_26

    .line 1104
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_5
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1105
    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    move-result v2

    move v0, v2

    .line 1106
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1e

    .line 1109
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_19} :catch_26

    .line 1112
    goto :goto_1c

    .line 1110
    :catch_1a
    move-exception v2

    .line 1113
    nop

    .line 1117
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_1c
    nop

    .line 1118
    return v0

    .line 1108
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_1e
    move-exception v2

    .line 1109
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_22} :catch_26

    .line 1112
    goto :goto_24

    .line 1110
    :catch_23
    move-exception v3

    .line 1113
    :goto_24
    nop

    .end local v0    # "dataOmitted":Z
    .end local p0    # "file":Landroid/util/AtomicFile;
    .end local p1    # "statsOut":Lcom/android/server/usage/IntervalStats;
    .end local p2    # "version":I
    .end local p3    # "packagesTokenData":Lcom/android/server/usage/PackagesTokenData;
    .end local p4    # "skipEvents":Z
    :try_start_25
    throw v2
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_26} :catch_26

    .line 1114
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "dataOmitted":Z
    .restart local p0    # "file":Landroid/util/AtomicFile;
    .restart local p1    # "statsOut":Lcom/android/server/usage/IntervalStats;
    .restart local p2    # "version":I
    .restart local p3    # "packagesTokenData":Lcom/android/server/usage/PackagesTokenData;
    .restart local p4    # "skipEvents":Z
    :catch_26
    move-exception v1

    .line 1115
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "UsageStatsDatabase"

    invoke-static {v2, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    throw v1
.end method

.method private static readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    .registers 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .param p3, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .param p4, "skipEvents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1130
    const/4 v0, 0x0

    .line 1131
    .local v0, "dataOmitted":Z
    const-string v1, "Unable to read interval stats from proto."

    const-string v2, "UsageStatsDatabase"

    packed-switch p2, :pswitch_data_64

    .line 1158
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1159
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on read."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1151
    :pswitch_2b
    :try_start_2b
    invoke-static {p0, p1, p4}, Lcom/android/server/usage/UsageStatsProtoV2;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 1154
    goto :goto_33

    .line 1152
    :catch_2f
    move-exception v3

    .line 1153
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v2, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1155
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_33
    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->deobfuscateData(Lcom/android/server/usage/PackagesTokenData;)Z

    move-result v0

    .line 1156
    goto :goto_62

    .line 1144
    :pswitch_38
    :try_start_38
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 1147
    goto :goto_62

    .line 1145
    :catch_3c
    move-exception v3

    .line 1146
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v2, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_62

    .line 1135
    :pswitch_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading UsageStats as XML; database version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :try_start_57
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 1140
    goto :goto_62

    .line 1138
    :catch_5b
    move-exception v1

    .line 1139
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Unable to read interval stats from XML"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1141
    .end local v1    # "e":Ljava/lang/Exception;
    nop

    .line 1162
    :goto_62
    return v0

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_38
        :pswitch_2b
    .end packed-switch
.end method

.method private static sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V
    .registers 2
    .param p0, "stats"    # Lcom/android/server/usage/IntervalStats;

    .line 1418
    if-nez p0, :cond_3

    return-void

    .line 1419
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1420
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1421
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    .line 1422
    return-void
.end method

.method private serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B
    .registers 8
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I

    .line 1425
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1426
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1428
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_a
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1429
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v1, p1, p2, v2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    .line 1433
    goto :goto_20

    .line 1430
    :catch_15
    move-exception v2

    .line 1431
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v3, "UsageStatsDatabase"

    const-string v4, "Serializing IntervalStats Failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1432
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1434
    .end local v2    # "ioe":Ljava/lang/Exception;
    :goto_20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    .registers 9
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "statsFile"    # Landroid/util/AtomicFile;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1396
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1398
    .local v0, "stats":Lcom/android/server/usage/IntervalStats;
    const/4 v1, 0x0

    :try_start_6
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_19

    .line 1403
    nop

    .line 1404
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V

    .line 1405
    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B

    move-result-object v1

    .line 1406
    .local v1, "data":[B
    array-length v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1407
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1408
    return-void

    .line 1399
    .end local v1    # "data":[B
    :catch_19
    move-exception v2

    .line 1400
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "UsageStatsDatabase"

    const-string v4, "Failed to read usage stats file"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1401
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1402
    return-void
.end method

.method private writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 5
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1022
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_20

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to write UsageStats as XML with version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    return-void

    .line 1026
    :cond_20
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    .line 1027
    return-void
.end method

.method private static writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .registers 6
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .param p3, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1031
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1033
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    .line 1034
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_11
    .catchall {:try_start_4 .. :try_end_a} :catchall_c

    .line 1035
    const/4 v0, 0x0

    goto :goto_12

    .line 1040
    :catchall_c
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1041
    throw v1

    .line 1036
    :catch_11
    move-exception v1

    .line 1040
    :goto_12
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1041
    nop

    .line 1042
    return-void
.end method

.method private static writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .registers 7
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "version"    # I
    .param p3, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1046
    const-string v0, "Unable to write interval stats to proto."

    const-string v1, "UsageStatsDatabase"

    packed-switch p2, :pswitch_data_58

    .line 1070
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1071
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on write."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1061
    :pswitch_2a
    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 1063
    :try_start_2d
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    .line 1067
    goto :goto_56

    .line 1064
    :catch_31
    move-exception v2

    .line 1065
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    throw v2

    .line 1054
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_36
    :try_start_36
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    .line 1058
    goto :goto_56

    .line 1055
    :catch_3a
    move-exception v2

    .line 1056
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    throw v2

    .line 1050
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to write UsageStats as XML with version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    nop

    .line 1074
    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_36
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 1314
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1315
    :try_start_5
    const-string/jumbo v0, "usage_stats"
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e3

    move-object/from16 v3, p1

    :try_start_a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1317
    nop

    .line 1318
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v4

    .line 1319
    .local v4, "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 1320
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v6

    .line 1321
    .local v6, "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 1322
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v8

    .line 1323
    .local v8, "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 1324
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v10
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_e1

    .line 1327
    .local v10, "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :try_start_28
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_c9
    .catchall {:try_start_28 .. :try_end_2c} :catchall_c5

    move-object/from16 v13, p2

    :try_start_2e
    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1328
    .local v11, "in":Ljava/io/DataInputStream;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1331
    .local v12, "backupDataVersion":I
    if-lt v12, v5, :cond_be

    const/4 v14, 0x4

    if-le v12, v14, :cond_3f

    goto/16 :goto_be

    .line 1335
    :cond_3f
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_40
    iget-object v15, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v9, v15

    if-ge v14, v9, :cond_4e

    .line 1336
    aget-object v9, v15, v14

    invoke-static {v9}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectoryContents(Ljava/io/File;)V

    .line 1335
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x3

    goto :goto_40

    .line 1339
    .end local v14    # "i":I
    :cond_4e
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 1340
    .local v9, "fileCount":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_53
    if-ge v14, v9, :cond_69

    .line 1341
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v15

    invoke-direct {v1, v15, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v15

    .line 1343
    .local v15, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v15, v4}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v16

    move-object/from16 v15, v16

    .line 1344
    invoke-virtual {v1, v0, v15}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1340
    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v14, v14, 0x1

    goto :goto_53

    .line 1347
    .end local v14    # "i":I
    :cond_69
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1348
    .end local v9    # "fileCount":I
    .local v0, "fileCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6e
    if-ge v9, v0, :cond_83

    .line 1349
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v14

    invoke-direct {v1, v14, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v14

    .line 1351
    .local v14, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v14, v6}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v15

    move-object v14, v15

    .line 1352
    invoke-virtual {v1, v5, v14}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1348
    .end local v14    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v9, v9, 0x1

    goto :goto_6e

    .line 1355
    .end local v9    # "i":I
    :cond_83
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v0, v5

    .line 1356
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_89
    if-ge v5, v0, :cond_9e

    .line 1357
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v9

    invoke-direct {v1, v9, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    .line 1359
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v9, v8}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v14

    move-object v9, v14

    .line 1360
    invoke-virtual {v1, v7, v9}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 1356
    .end local v9    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    .line 1363
    .end local v5    # "i":I
    :cond_9e
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v0, v5

    .line 1364
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a4
    if-ge v5, v0, :cond_ba

    .line 1365
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v7

    invoke-direct {v1, v7, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 1367
    .local v7, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v7, v10}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    move-object v7, v9

    .line 1368
    const/4 v9, 0x3

    invoke-virtual {v1, v9, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_b7} :catch_c3
    .catchall {:try_start_2e .. :try_end_b7} :catchall_d7

    .line 1364
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_a4

    .line 1374
    .end local v0    # "fileCount":I
    .end local v5    # "i":I
    .end local v11    # "in":Ljava/io/DataInputStream;
    .end local v12    # "backupDataVersion":I
    :cond_ba
    :try_start_ba
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    goto :goto_d6

    .restart local v11    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "backupDataVersion":I
    :cond_be
    :goto_be
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_ba .. :try_end_c2} :catchall_ea

    .line 1331
    return-void

    .line 1371
    .end local v11    # "in":Ljava/io/DataInputStream;
    .end local v12    # "backupDataVersion":I
    :catch_c3
    move-exception v0

    goto :goto_cc

    .line 1374
    :catchall_c5
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_d8

    .line 1371
    :catch_c9
    move-exception v0

    move-object/from16 v13, p2

    .line 1372
    .local v0, "ioe":Ljava/io/IOException;
    :goto_cc
    :try_start_cc
    const-string v5, "UsageStatsDatabase"

    const-string v7, "Failed to read data from input stream"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_d7

    .line 1374
    .end local v0    # "ioe":Ljava/io/IOException;
    :try_start_d3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 1375
    :goto_d6
    goto :goto_df

    .line 1374
    :catchall_d7
    move-exception v0

    :goto_d8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 1375
    nop

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "payload":[B
    throw v0

    .line 1315
    .end local v4    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v6    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v10    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "payload":[B
    :cond_dd
    move-object/from16 v13, p2

    .line 1377
    :goto_df
    monitor-exit v2

    .line 1378
    return-void

    .line 1377
    :catchall_e1
    move-exception v0

    goto :goto_e6

    :catchall_e3
    move-exception v0

    move-object/from16 v3, p1

    :goto_e6
    move-object/from16 v13, p2

    :goto_e8
    monitor-exit v2
    :try_end_e9
    .catchall {:try_start_d3 .. :try_end_e9} :catchall_ea

    throw v0

    :catchall_ea
    move-exception v0

    goto :goto_e8
.end method

.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .registers 14
    .param p1, "checkinAction"    # Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;

    .line 213
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 216
    .local v1, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .line 220
    .local v3, "fileCount":I
    const/4 v4, -0x1

    .line 221
    .local v4, "lastCheckin":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_2c

    .line 222
    invoke-virtual {v1, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 223
    move v4, v5

    .line 221
    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 227
    .end local v5    # "i":I
    :cond_2c
    add-int/lit8 v5, v4, 0x1

    .line 228
    .local v5, "start":I
    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x1

    if-ne v5, v6, :cond_35

    .line 229
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_c8

    return v7

    .line 233
    :cond_35
    move v6, v5

    .local v6, "i":I
    :goto_36
    add-int/lit8 v8, v3, -0x1

    if-ge v6, v8, :cond_5d

    .line 234
    :try_start_3a
    new-instance v8, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v8}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 235
    .local v8, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v1, v6}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    invoke-direct {p0, v9, v8, v2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    .line 236
    invoke-interface {p1, v8}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z

    move-result v9
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_53
    .catchall {:try_start_3a .. :try_end_4c} :catchall_c8

    if-nez v9, :cond_50

    .line 237
    :try_start_4e
    monitor-exit v0

    return v2

    .line 233
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 240
    .end local v6    # "i":I
    :catch_53
    move-exception v6

    .line 241
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "UsageStatsDatabase"

    const-string v8, "Failed to check-in"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    monitor-exit v0

    return v2

    .line 243
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5d
    nop

    .line 247
    move v2, v5

    .local v2, "i":I
    :goto_5f
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_c6

    .line 248
    invoke-virtual {v1, v2}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 249
    .local v6, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-c"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v8, "checkedInFile":Ljava/io/File;
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_bb

    .line 254
    const-string v9, "UsageStatsDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to mark file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as checked-in"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    monitor-exit v0

    return v7

    .line 261
    :cond_bb
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2, v9}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 247
    .end local v6    # "file":Landroid/util/AtomicFile;
    .end local v8    # "checkedInFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 263
    .end local v1    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v2    # "i":I
    .end local v3    # "fileCount":I
    .end local v4    # "lastCheckin":I
    .end local v5    # "start":I
    :cond_c6
    monitor-exit v0

    .line 264
    return v7

    .line 263
    :catchall_c8
    move-exception v1

    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_4e .. :try_end_ca} :catchall_c8

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "compact"    # Z

    .line 1477
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1478
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1479
    const-string v1, "UsageStatsDatabase:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1481
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1482
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1483
    const-string v1, "Database Summary:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v3, v2

    if-ge v1, v3, :cond_6a

    .line 1486
    aget-object v2, v2, v1

    .line 1487
    .local v2, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .line 1488
    .local v3, "size":I
    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1489
    const-string v4, " stats files: "

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1491
    const-string v4, ", sorted list of files:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1493
    const/4 v4, 0x0

    .local v4, "f":I
    :goto_40
    if-ge v4, v3, :cond_63

    .line 1494
    invoke-virtual {v2, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 1495
    .local v5, "fileName":J
    if-eqz p2, :cond_51

    .line 1496
    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5d

    .line 1498
    :cond_51
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 1499
    const/4 v8, 0x1

    invoke-static {v5, v6, v8}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1498
    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1501
    :goto_5d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1493
    .end local v5    # "fileName":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1503
    .end local v4    # "f":I
    :cond_63
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1485
    nop

    .end local v2    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v3    # "size":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1505
    .end local v1    # "i":I
    :cond_6a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1506
    monitor-exit v0

    .line 1507
    return-void

    .line 1506
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1510
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1511
    :try_start_3
    const-string v1, "Obfuscated Packages Mappings:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget v2, v2, Lcom/android/server/usage/PackagesTokenData;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tokens Map Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->removedPackageTokens:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 1516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed Package Tokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->removedPackageTokens:Landroid/util/ArraySet;

    .line 1517
    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1516
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    :cond_6f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_70
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_bb

    .line 1520
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1521
    .local v2, "packageToken":I
    const-string v3, ", "

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 1522
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1521
    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1523
    .local v3, "packageStrings":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    .end local v2    # "packageToken":I
    .end local v3    # "packageStrings":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 1525
    .end local v1    # "i":I
    :cond_bb
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1526
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1527
    monitor-exit v0

    .line 1528
    return-void

    .line 1527
    :catchall_c3
    move-exception v1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_3 .. :try_end_c5} :catchall_c3

    throw v1
.end method

.method filterStats(Lcom/android/server/usage/IntervalStats;)V
    .registers 11
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;

    .line 763
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 764
    return-void

    .line 766
    :cond_b
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    .line 769
    .local v0, "removedPackagesMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 770
    .local v1, "removedPackagesSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_3e

    .line 771
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 772
    .local v3, "removedPackage":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 773
    .local v4, "usageStats":Landroid/app/usage/UsageStats;
    if-eqz v4, :cond_3b

    iget-wide v5, v4, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3b

    .line 774
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .end local v3    # "removedPackage":Ljava/lang/String;
    .end local v4    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 779
    .end local v2    # "i":I
    :cond_3e
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2}, Landroid/app/usage/EventList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_46
    if-ltz v2, :cond_6a

    .line 780
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 781
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 782
    .local v4, "timeRemoved":Ljava/lang/Long;
    if-eqz v4, :cond_67

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_67

    .line 783
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v2}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 779
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v4    # "timeRemoved":Ljava/lang/Long;
    :cond_67
    add-int/lit8 v2, v2, -0x1

    goto :goto_46

    .line 786
    .end local v2    # "i":I
    :cond_6a
    return-void
.end method

.method public findBestFitBucket(JJ)I
    .registers 15
    .param p1, "beginTimeStamp"    # J
    .param p3, "endTimeStamp"    # J

    .line 890
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    const/4 v1, -0x1

    .line 892
    .local v1, "bestBucket":I
    const-wide v2, 0x7fffffffffffffffL

    .line 893
    .local v2, "smallestDiff":J
    :try_start_9
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_e
    if-ltz v4, :cond_3a

    .line 894
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v5

    .line 895
    .local v5, "index":I
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 896
    .local v6, "size":I
    if-ltz v5, :cond_37

    if-ge v5, v6, :cond_37

    .line 898
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v4

    invoke-virtual {v7, v5}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v7

    sub-long/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 899
    .local v7, "diff":J
    cmp-long v9, v7, v2

    if-gez v9, :cond_37

    .line 900
    move-wide v2, v7

    .line 901
    move v1, v4

    .line 893
    .end local v5    # "index":I
    .end local v6    # "size":I
    .end local v7    # "diff":J
    :cond_37
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 905
    .end local v4    # "i":I
    :cond_3a
    monitor-exit v0

    return v1

    .line 906
    .end local v1    # "bestBucket":I
    .end local v2    # "smallestDiff":J
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method forceIndexFiles()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1246
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(Ljava/lang/String;I)[B
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 1254
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-lt p2, v1, :cond_20

    if-gt p2, v0, :cond_20

    .line 1255
    const-string v0, "UsageStatsDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to backup UsageStats as XML with version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/4 v0, 0x0

    return-object v0

    .line 1258
    :cond_20
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1259
    :try_start_23
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1260
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v4, "usage_stats"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 1261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 1262
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_ec

    .line 1264
    .local v4, "out":Ljava/io/DataOutputStream;
    :try_start_3d
    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1266
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1268
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4d
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_67

    .line 1270
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v6

    .line 1271
    invoke-virtual {v7, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/AtomicFile;

    .line 1270
    invoke-direct {p0, v4, v7, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 1269
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 1275
    .end local v5    # "i":I
    :cond_67
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1276
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_73
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8d

    .line 1278
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v1

    .line 1279
    invoke-virtual {v6, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 1278
    invoke-direct {p0, v4, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 1277
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 1283
    .end local v5    # "i":I
    :cond_8d
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9a
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_b4

    .line 1286
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    .line 1287
    invoke-virtual {v6, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 1286
    invoke-direct {p0, v4, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 1285
    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    .line 1291
    .end local v1    # "i":I
    :cond_b4
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1292
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c0
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_da

    .line 1294
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v0

    .line 1295
    invoke-virtual {v5, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    .line 1294
    invoke-direct {p0, v4, v5, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_d7} :catch_db
    .catchall {:try_start_3d .. :try_end_d7} :catchall_ec

    .line 1293
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    .line 1302
    .end local v1    # "i":I
    :cond_da
    goto :goto_e6

    .line 1299
    :catch_db
    move-exception v0

    .line 1300
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_dc
    const-string v1, "UsageStatsDatabase"

    const-string v5, "Failed to write data to output stream"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1301
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1304
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :cond_e6
    :goto_e6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 1305
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_ec
    move-exception v0

    monitor-exit v2
    :try_end_ee
    .catchall {:try_start_dc .. :try_end_ee} :catchall_ec

    throw v0
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .registers 8
    .param p1, "intervalType"    # I

    .line 736
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    if-ltz p1, :cond_39

    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_39

    .line 741
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 742
    .local v1, "fileCount":I
    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 743
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_52

    return-object v2

    .line 747
    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, p1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 748
    .local v3, "f":Landroid/util/AtomicFile;
    new-instance v4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v4}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 749
    .local v4, "stats":Lcom/android/server/usage/IntervalStats;
    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2c} :catch_2e
    .catchall {:try_start_17 .. :try_end_2c} :catchall_52

    .line 750
    :try_start_2c
    monitor-exit v0

    return-object v4

    .line 751
    .end local v3    # "f":Landroid/util/AtomicFile;
    .end local v4    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_2e
    move-exception v3

    .line 752
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to read usage stats file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    nop

    .end local v1    # "fileCount":I
    .end local v3    # "e":Ljava/lang/Exception;
    monitor-exit v0

    .line 755
    return-object v2

    .line 738
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "intervalType":I
    throw v1

    .line 754
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "intervalType":I
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_52

    throw v1
.end method

.method public init(J)V
    .registers 12
    .param p1, "currentTimeMillis"    # J

    .line 166
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_35

    aget-object v5, v1, v4

    .line 168
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 169
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 167
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 170
    .restart local v5    # "f":Ljava/io/File;
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 171
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "currentTimeMillis":J
    throw v1

    .line 175
    .end local v5    # "f":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "currentTimeMillis":J
    :cond_35
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    .line 176
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 179
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v2, v1

    :goto_3e
    if-ge v3, v2, :cond_68

    aget-object v4, v1, v3

    .line 180
    .local v4, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v4, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v5

    .line 181
    .local v5, "startIndex":I
    if-gez v5, :cond_49

    .line 182
    goto :goto_65

    .line 185
    :cond_49
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 186
    .local v6, "fileCount":I
    move v7, v5

    .local v7, "i":I
    :goto_4e
    if-ge v7, v6, :cond_5c

    .line 187
    invoke-virtual {v4, v7}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 186
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 192
    .end local v7    # "i":I
    :cond_5c
    move v7, v5

    .restart local v7    # "i":I
    :goto_5d
    if-ge v7, v6, :cond_65

    .line 193
    invoke-virtual {v4, v7}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 192
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 179
    .end local v4    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v5    # "startIndex":I
    .end local v6    # "fileCount":I
    .end local v7    # "i":I
    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 196
    :cond_68
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method isFirstUpdate()Z
    .registers 2

    .line 322
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    return v0
.end method

.method isNewUpdate()Z
    .registers 2

    .line 329
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    return v0
.end method

.method obfuscateCurrentStats([Lcom/android/server/usage/IntervalStats;)V
    .registers 5
    .param p1, "currentStats"    # [Lcom/android/server/usage/IntervalStats;

    .line 1213
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    .line 1214
    return-void

    .line 1216
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 1217
    aget-object v1, p1, v0

    .line 1218
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v1, v2}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 1216
    .end local v1    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1220
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method onPackageRemoved(Ljava/lang/String;J)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeRemoved"    # J

    .line 568
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(Ljava/lang/String;J)I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28

    .line 571
    .local v1, "tokenRemoved":I
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_28

    .line 575
    goto :goto_26

    .line 572
    :catch_d
    move-exception v2

    .line 573
    .local v2, "e":Ljava/lang/Exception;
    :try_start_e
    const-string v3, "UsageStatsDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to update package mappings on disk after removing token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_26
    monitor-exit v0

    return v1

    .line 577
    .end local v1    # "tokenRemoved":I
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onTimeChanged(J)V
    .registers 22
    .param p1, "timeDiffMillis"    # J

    .line 686
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 687
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 688
    .local v5, "logBuilder":Ljava/lang/StringBuilder;
    const-string v0, "Time changed by "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-static {v2, v3, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 690
    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "filesDeleted":I
    const/4 v6, 0x0

    .line 695
    .local v6, "filesMoved":I
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v8, :cond_a0

    aget-object v10, v7, v9

    .line 696
    .local v10, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v10}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v11

    .line 697
    .local v11, "fileCount":I
    const/4 v12, 0x0

    move v13, v12

    move v12, v6

    move v6, v0

    .end local v0    # "filesDeleted":I
    .local v6, "filesDeleted":I
    .local v12, "filesMoved":I
    .local v13, "i":I
    :goto_2c
    if-ge v13, v11, :cond_94

    .line 698
    invoke-virtual {v10, v13}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    move-object v14, v0

    .line 699
    .local v14, "file":Landroid/util/AtomicFile;
    invoke-virtual {v10, v13}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v15

    add-long/2addr v15, v2

    .line 700
    .local v15, "newTime":J
    const-wide/16 v17, 0x0

    cmp-long v0, v15, v17

    if-gez v0, :cond_46

    .line 701
    add-int/lit8 v6, v6, 0x1

    .line 702
    invoke-virtual {v14}, Landroid/util/AtomicFile;->delete()V
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_c0

    goto :goto_8d

    .line 705
    :cond_46
    :try_start_46
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4d} :catch_4e
    .catchall {:try_start_46 .. :try_end_4d} :catchall_c0

    .line 708
    goto :goto_4f

    .line 706
    :catch_4e
    move-exception v0

    .line 710
    :goto_4f
    :try_start_4f
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "newName":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 715
    :cond_77
    new-instance v1, Ljava/io/File;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 716
    .local v1, "newFile":Ljava/io/File;
    add-int/lit8 v12, v12, 0x1

    .line 717
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 697
    .end local v0    # "newName":Ljava/lang/String;
    .end local v1    # "newFile":Ljava/io/File;
    .end local v14    # "file":Landroid/util/AtomicFile;
    .end local v15    # "newTime":J
    :goto_8d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    goto :goto_2c

    .line 720
    .end local v13    # "i":I
    :cond_94
    invoke-virtual {v10}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 695
    .end local v10    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v11    # "fileCount":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move v0, v6

    move v6, v12

    goto :goto_20

    .line 723
    .end local v12    # "filesMoved":I
    .local v0, "filesDeleted":I
    .local v6, "filesMoved":I
    :cond_a0
    const-string v1, " files deleted: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 724
    const-string v1, " files moved: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    const-string v1, "UsageStatsDatabase"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 729
    .end local v0    # "filesDeleted":I
    .end local v5    # "logBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "filesMoved":I
    monitor-exit v4

    .line 730
    return-void

    .line 729
    :catchall_c0
    move-exception v0

    monitor-exit v4
    :try_end_c2
    .catchall {:try_start_4f .. :try_end_c2} :catchall_c0

    throw v0
.end method

.method public prune(J)V
    .registers 8
    .param p1, "currentTimeMillis"    # J

    .line 913
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 915
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    .line 916
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 917
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 916
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 919
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 920
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    .line 921
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 922
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 921
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 924
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 925
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    .line 926
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 927
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 926
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 929
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 930
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 931
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 932
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 931
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 934
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 935
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    sget v2, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 936
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_76
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v3, v2

    if-ge v1, v3, :cond_89

    .line 937
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneChooserCountsOlderThan(Ljava/io/File;J)V

    .line 936
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 942
    .end local v1    # "i":I
    :cond_89
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 943
    monitor-exit v0

    .line 944
    return-void

    .line 943
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_8e

    throw v1
.end method

.method prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 629
    .local p1, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 630
    return-void

    .line 632
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v3, v2

    if-ge v1, v3, :cond_65

    .line 634
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 635
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_19

    .line 636
    goto :goto_62

    .line 638
    :cond_19
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1a
    array-length v4, v2
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_67

    if-ge v3, v4, :cond_62

    .line 640
    :try_start_1d
    new-instance v4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v4}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 641
    .local v4, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v5, Landroid/util/AtomicFile;

    aget-object v6, v2, v3

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 642
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    const/4 v8, 0x0

    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    .line 643
    invoke-direct {p0, p1, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 644
    goto :goto_5f

    .line 646
    :cond_38
    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3f} :catch_40
    .catchall {:try_start_1d .. :try_end_3f} :catchall_67

    .line 649
    .end local v4    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    goto :goto_5f

    .line 647
    :catch_40
    move-exception v4

    .line 648
    .local v4, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v5, "UsageStatsDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to prune data from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 633
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "j":I
    :cond_62
    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 652
    .end local v1    # "i":I
    :cond_65
    monitor-exit v0

    .line 653
    return-void

    .line 652
    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_41 .. :try_end_69} :catchall_67

    throw v1
.end method

.method pruneUninstalledPackagesData()Z
    .registers 10

    .line 585
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_5d

    .line 587
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 588
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_13

    .line 589
    goto :goto_5a

    .line 591
    :cond_13
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_14
    array-length v5, v2
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_6e

    if-ge v3, v5, :cond_5a

    .line 593
    :try_start_17
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 594
    .local v5, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v2, v3

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 595
    .local v6, "atomicFile":Landroid/util/AtomicFile;
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 597
    goto :goto_36

    .line 603
    :cond_2e
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_35} :catch_39
    .catchall {:try_start_17 .. :try_end_35} :catchall_6e

    .line 607
    .end local v5    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v6    # "atomicFile":Landroid/util/AtomicFile;
    nop

    .line 591
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 604
    :catch_39
    move-exception v5

    .line 605
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3a
    const-string v6, "UsageStatsDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to prune data from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3a .. :try_end_59} :catchall_6e

    return v4

    .line 586
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "j":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5a
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 612
    .end local v1    # "i":I
    :cond_5d
    :try_start_5d
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_64
    .catchall {:try_start_5d .. :try_end_60} :catchall_6e

    .line 616
    nop

    .line 617
    :try_start_61
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 613
    :catch_64
    move-exception v1

    .line 614
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsDatabase"

    const-string v3, "Failed to write package mappings after pruning data."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    monitor-exit v0

    return v4

    .line 618
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .registers 10
    .param p1, "intervalType"    # I
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1226
    if-nez p2, :cond_3

    return-void

    .line 1227
    :cond_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    if-ltz p1, :cond_44

    :try_start_8
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_44

    .line 1232
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 1233
    .local v1, "f":Landroid/util/AtomicFile;
    if-nez v1, :cond_39

    .line 1234
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v4, v4, p1

    iget-wide v5, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1235
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 1236
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v2, v2, p1

    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 1239
    :cond_39
    invoke-direct {p0, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 1240
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 1241
    .end local v1    # "f":Landroid/util/AtomicFile;
    monitor-exit v0

    .line 1242
    return-void

    .line 1229
    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .end local p1    # "intervalType":I
    .end local p2    # "stats":Lcom/android/server/usage/IntervalStats;
    throw v1

    .line 1241
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    .restart local p1    # "intervalType":I
    .restart local p2    # "stats":Lcom/android/server/usage/IntervalStats;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;
    .registers 24
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p7, "skipEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 817
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    if-ltz v2, :cond_91

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    if-ge v2, v0, :cond_91

    .line 821
    cmp-long v0, v5, v3

    const/4 v7, 0x0

    if-gtz v0, :cond_15

    .line 825
    return-object v7

    .line 828
    :cond_15
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 829
    :try_start_18
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, v2

    move-object v9, v0

    .line 831
    .local v9, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v9, v5, v6}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v0

    .line 832
    .local v0, "endIndex":I
    if-gez v0, :cond_25

    .line 837
    monitor-exit v8

    return-object v7

    .line 840
    :cond_25
    invoke-virtual {v9, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v10

    cmp-long v10, v10, v5

    if-nez v10, :cond_35

    .line 842
    add-int/lit8 v0, v0, -0x1

    .line 843
    if-gez v0, :cond_33

    .line 848
    monitor-exit v8

    return-object v7

    .line 843
    :cond_33
    move v7, v0

    goto :goto_36

    .line 840
    :cond_35
    move v7, v0

    .line 852
    .end local v0    # "endIndex":I
    .local v7, "endIndex":I
    :goto_36
    invoke-virtual {v9, v3, v4}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v0

    .line 853
    .local v0, "startIndex":I
    if-gez v0, :cond_3f

    .line 856
    const/4 v0, 0x0

    move v10, v0

    goto :goto_40

    .line 853
    :cond_3f
    move v10, v0

    .line 859
    .end local v0    # "startIndex":I
    .local v10, "startIndex":I
    :goto_40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 860
    .local v11, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v0, v10

    move v12, v0

    .local v12, "i":I
    :goto_48
    if-gt v12, v7, :cond_86

    .line 861
    invoke-virtual {v9, v12}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    move-object v13, v0

    .line 862
    .local v13, "f":Landroid/util/AtomicFile;
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_56
    .catchall {:try_start_18 .. :try_end_56} :catchall_8a

    move-object v14, v0

    .line 869
    .local v14, "stats":Lcom/android/server/usage/IntervalStats;
    move/from16 v15, p7

    :try_start_59
    invoke-direct {v1, v13, v14, v15}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    .line 870
    iget-wide v0, v14, Lcom/android/server/usage/IntervalStats;->endTime:J
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_75
    .catchall {:try_start_59 .. :try_end_5e} :catchall_71

    cmp-long v0, v3, v0

    if-gez v0, :cond_6e

    const/4 v0, 0x0

    .line 871
    move-object/from16 v1, p6

    :try_start_65
    invoke-interface {v1, v14, v0, v11}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    move-result v0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_69} :catch_6c
    .catchall {:try_start_65 .. :try_end_69} :catchall_8f

    if-nez v0, :cond_70

    .line 872
    goto :goto_88

    .line 874
    :catch_6c
    move-exception v0

    goto :goto_78

    .line 870
    :cond_6e
    move-object/from16 v1, p6

    .line 878
    :cond_70
    goto :goto_7f

    .line 881
    .end local v7    # "endIndex":I
    .end local v9    # "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v10    # "startIndex":I
    .end local v11    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v12    # "i":I
    .end local v13    # "f":Landroid/util/AtomicFile;
    .end local v14    # "stats":Lcom/android/server/usage/IntervalStats;
    :catchall_71
    move-exception v0

    move-object/from16 v1, p6

    goto :goto_8d

    .line 874
    .restart local v7    # "endIndex":I
    .restart local v9    # "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v10    # "startIndex":I
    .restart local v11    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v12    # "i":I
    .restart local v13    # "f":Landroid/util/AtomicFile;
    .restart local v14    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_75
    move-exception v0

    move-object/from16 v1, p6

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    :goto_78
    :try_start_78
    const-string v1, "UsageStatsDatabase"

    const-string v3, "Failed to read usage stats file"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 860
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "f":Landroid/util/AtomicFile;
    .end local v14    # "stats":Lcom/android/server/usage/IntervalStats;
    :goto_7f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    goto :goto_48

    :cond_86
    move/from16 v15, p7

    .line 880
    .end local v12    # "i":I
    :goto_88
    monitor-exit v8

    return-object v11

    .line 881
    .end local v7    # "endIndex":I
    .end local v9    # "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v10    # "startIndex":I
    .end local v11    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_8a
    move-exception v0

    move/from16 v15, p7

    :goto_8d
    monitor-exit v8
    :try_end_8e
    .catchall {:try_start_78 .. :try_end_8e} :catchall_8f

    throw v0

    :catchall_8f
    move-exception v0

    goto :goto_8d

    .line 817
    :cond_91
    move/from16 v15, p7

    .line 818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;
    .registers 9
    .param p1, "interval"    # I
    .param p2, "fileName"    # J

    .line 1531
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1532
    :try_start_3
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 1534
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, p1

    invoke-virtual {v3, p2, p3, v2}, Landroid/app/usage/TimeSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_19
    .catchall {:try_start_9 .. :try_end_17} :catchall_1c

    .line 1535
    :try_start_17
    monitor-exit v0

    return-object v1

    .line 1536
    :catch_19
    move-exception v3

    .line 1537
    .local v3, "e":Ljava/lang/Exception;
    monitor-exit v0

    return-object v2

    .line 1539
    .end local v1    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public readMappingsLocked()V
    .registers 12

    .line 1170
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1171
    return-void

    .line 1174
    :cond_9
    :try_start_9
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_7b

    .line 1175
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_14
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v0, v1}, Lcom/android/server/usage/UsageStatsProtoV2;->readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_6f

    .line 1176
    if-eqz v0, :cond_1e

    :try_start_1b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_7b

    .line 1179
    .end local v0    # "in":Ljava/io/FileInputStream;
    :cond_1e
    nop

    .line 1181
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 1183
    .local v0, "tokensToPackagesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1184
    .local v1, "tokensToPackagesMapSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_6e

    .line 1185
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1186
    .local v3, "packageToken":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1187
    .local v4, "tokensMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1188
    .local v5, "packageStringsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1190
    .local v6, "tokensMapSize":I
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_4c
    if-ge v8, v6, :cond_5e

    .line 1192
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    .line 1194
    .end local v8    # "j":I
    :cond_5e
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v8, v8, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    .end local v3    # "packageToken":I
    .end local v4    # "tokensMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "packageStringsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "tokensMapSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1196
    .end local v2    # "i":I
    :cond_6e
    return-void

    .line 1174
    .end local v1    # "tokensToPackagesMapSize":I
    .local v0, "in":Ljava/io/FileInputStream;
    :catchall_6f
    move-exception v1

    if-eqz v0, :cond_7a

    :try_start_72
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_7a

    :catchall_76
    move-exception v2

    :try_start_77
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :cond_7a
    :goto_7a
    throw v1
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7b} :catch_7b

    .line 1176
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsDatabase;
    :catch_7b
    move-exception v0

    .line 1177
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UsageStatsDatabase"

    const-string v2, "Failed to read the obfuscated packages mapping file."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    return-void
.end method

.method wasUpgradePerformed()Z
    .registers 2

    .line 336
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    return v0
.end method

.method writeMappingsLocked()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1199
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1200
    .local v0, "file":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1202
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v1, v2}, Lcom/android/server/usage/UsageStatsProtoV2;->writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V

    .line 1203
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_1b
    .catchall {:try_start_b .. :try_end_13} :catchall_19

    .line 1204
    const/4 v1, 0x0

    .line 1208
    nop

    :goto_15
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1209
    goto :goto_25

    .line 1208
    :catchall_19
    move-exception v2

    goto :goto_26

    .line 1205
    :catch_1b
    move-exception v2

    .line 1206
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v3, "UsageStatsDatabase"

    const-string v4, "Unable to write obfuscated data to proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 1208
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 1210
    :goto_25
    return-void

    .line 1208
    :goto_26
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1209
    throw v2
.end method
