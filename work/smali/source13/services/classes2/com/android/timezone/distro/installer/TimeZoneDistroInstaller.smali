.class public Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
.super Ljava/lang/Object;
.source "TimeZoneDistroInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller$UninstallResultType;,
        Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller$InstallResultType;
    }
.end annotation


# static fields
.field private static final CURRENT_TZ_DATA_DIR_NAME:Ljava/lang/String; = "current"

.field public static final INSTALL_FAIL_BAD_DISTRO_FORMAT_VERSION:I = 0x2

.field public static final INSTALL_FAIL_BAD_DISTRO_STRUCTURE:I = 0x1

.field public static final INSTALL_FAIL_RULES_TOO_OLD:I = 0x3

.field public static final INSTALL_FAIL_VALIDATION_ERROR:I = 0x4

.field public static final INSTALL_SUCCESS:I = 0x0

.field private static final OLD_TZ_DATA_DIR_NAME:Ljava/lang/String; = "old"

.field private static final STAGED_TZ_DATA_DIR_NAME:Ljava/lang/String; = "staged"

.field public static final UNINSTALL_FAIL:I = 0x2

.field public static final UNINSTALL_NOTHING_INSTALLED:I = 0x1

.field public static final UNINSTALL_SUCCESS:I = 0x0

.field public static final UNINSTALL_TOMBSTONE_FILE_NAME:Ljava/lang/String; = "STAGED_UNINSTALL_TOMBSTONE"

.field private static final WORKING_DIR_NAME:Ljava/lang/String; = "working"


# instance fields
.field private final baseVersionFile:Ljava/io/File;

.field private final currentTzDataDir:Ljava/io/File;

.field private final logTag:Ljava/lang/String;

.field private final oldStagedDataDir:Ljava/io/File;

.field private final stagedTzDataDir:Ljava/io/File;

.field private final workingDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "baseVersionFile"    # Ljava/io/File;
    .param p3, "installDir"    # Ljava/io/File;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->baseVersionFile:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "old"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    .line 127
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "staged"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    .line 128
    new-instance v0, Ljava/io/File;

    const-string v1, "current"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    .line 129
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "working"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    .line 130
    return-void
.end method

.method private checkDistroDataFilesExist(Ljava/io/File;)Z
    .registers 4
    .param p1, "unpackedContentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Verifying distro contents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string/jumbo v0, "tzdata"

    const-string v1, "icu/icu_tzdata.dat"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/timezone/distro/FileUtils;->filesExist(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkDistroRulesNewerThanBase(Ljava/io/File;Lcom/android/timezone/distro/DistroVersion;)Z
    .registers 11
    .param p1, "baseVersionFile"    # Ljava/io/File;
    .param p2, "distroVersion"    # Lcom/android/timezone/distro/DistroVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Reading base time zone rules version"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0, p1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readBaseVersion(Ljava/io/File;)Lcom/android/i18n/timezone/TzDataSetVersion;

    move-result-object v0

    .line 436
    .local v0, "baseVersion":Lcom/android/i18n/timezone/TzDataSetVersion;
    invoke-virtual {v0}, Lcom/android/i18n/timezone/TzDataSetVersion;->getRulesVersion()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "baseRulesVersion":Ljava/lang/String;
    iget-object v2, p2, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 439
    .local v2, "distroRulesVersion":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    .line 440
    .local v3, "canApply":Z
    :goto_1a
    const-string v4, ", baseRulesVersion="

    if-nez v3, :cond_3f

    .line 441
    iget-object v5, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed rules version check: distroRulesVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 444
    :cond_3f
    iget-object v5, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Passed rules version check: distroRulesVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_5f
    return v3
.end method

.method private deleteBestEffort(Ljava/io/File;)V
    .registers 6
    .param p1, "dir"    # Ljava/io/File;

    .line 391
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 392
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :try_start_1e
    invoke-static {p1}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 398
    goto :goto_3b

    .line 395
    :catch_22
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3b
    :goto_3b
    return-void
.end method

.method private readBaseVersion(Ljava/io/File;)Lcom/android/i18n/timezone/TzDataSetVersion;
    .registers 6
    .param p1, "baseVersionFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 384
    :try_start_6
    invoke-static {p1}, Lcom/android/i18n/timezone/TzDataSetVersion;->readFromFile(Ljava/io/File;)Lcom/android/i18n/timezone/TzDataSetVersion;

    move-result-object v0
    :try_end_a
    .catch Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 385
    :catch_b
    move-exception v0

    .line 386
    .local v0, "e":Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 379
    .end local v0    # "e":Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
    :cond_25
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version file cannot be found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base version file does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;
    .registers 6
    .param p1, "distroDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading distro format version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v0, Ljava/io/File;

    const-string v1, "distro_version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    .local v0, "distroVersionFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 420
    sget v1, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    .line 421
    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->readBytes(Ljava/io/File;I)[B

    move-result-object v1

    .line 422
    .local v1, "versionBytes":[B
    invoke-static {v1}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v2

    return-object v2

    .line 418
    .end local v1    # "versionBytes":[B
    :cond_30
    new-instance v1, Lcom/android/timezone/distro/DistroException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No distro version file found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private unpackDistro(Lcom/android/timezone/distro/TimeZoneDistro;Ljava/io/File;)V
    .registers 6
    .param p1, "distro"    # Lcom/android/timezone/distro/TimeZoneDistro;
    .param p2, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unpacking update content to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p1, p2}, Lcom/android/timezone/distro/TimeZoneDistro;->extractTo(Ljava/io/File;)V

    .line 405
    return-void
.end method


# virtual methods
.method getCurrentTzDataDir()Ljava/io/File;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getInstalledDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_a
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v0

    return-object v0
.end method

.method getOldStagedDataDir()Ljava/io/File;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getStagedDistroOperation()Lcom/android/timezone/distro/StagedDistroOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 358
    const/4 v0, 0x0

    return-object v0

    .line 360
    :cond_a
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    const-string v2, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 361
    invoke-static {}, Lcom/android/timezone/distro/StagedDistroOperation;->uninstall()Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v0

    return-object v0

    .line 363
    :cond_1e
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v0

    invoke-static {v0}, Lcom/android/timezone/distro/StagedDistroOperation;->install(Lcom/android/timezone/distro/DistroVersion;)Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v0

    return-object v0
.end method

.method getStagedTzDataDir()Ljava/io/File;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method getWorkingDir()Ljava/io/File;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    return-object v0
.end method

.method public readBaseVersion()Lcom/android/i18n/timezone/TzDataSetVersion;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->baseVersionFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readBaseVersion(Ljava/io/File;)Lcom/android/i18n/timezone/TzDataSetVersion;

    move-result-object v0

    return-object v0
.end method

.method public stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I
    .registers 14
    .param p1, "distro"    # Lcom/android/timezone/distro/TimeZoneDistro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    const-string v0, " failed validation"

    const-string v1, "Update not applied: "

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 161
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v2}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 163
    :cond_11
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 164
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v2}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 167
    :cond_1e
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v3, "Unpacking / verifying time zone update"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_25
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, p1, v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->unpackDistro(Lcom/android/timezone/distro/TimeZoneDistro;Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2b3

    .line 173
    const/4 v2, 0x1

    :try_start_2b
    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v3
    :try_end_31
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_2b .. :try_end_31} :catch_28a
    .catchall {:try_start_2b .. :try_end_31} :catchall_2b3

    .line 177
    .local v3, "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    nop

    .line 178
    if-nez v3, :cond_47

    .line 179
    :try_start_34
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Update not applied: Distro version could not be loaded"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_2b3

    .line 180
    nop

    .line 273
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 180
    return v2

    .line 187
    :cond_47
    :try_start_47
    new-instance v4, Lcom/android/i18n/timezone/TzDataSetVersion;

    iget v5, v3, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v6, v3, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget-object v7, v3, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v8, v3, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/i18n/timezone/TzDataSetVersion;-><init>(IILjava/lang/String;I)V
    :try_end_54
    .catch Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException; {:try_start_47 .. :try_end_54} :catch_276
    .catchall {:try_start_47 .. :try_end_54} :catchall_2b3

    .line 193
    .local v4, "distroTzDataSetVersion":Lcom/android/i18n/timezone/TzDataSetVersion;
    nop

    .line 194
    :try_start_55
    invoke-static {v4}, Lcom/android/i18n/timezone/TzDataSetVersion;->isCompatibleWithThisDevice(Lcom/android/i18n/timezone/TzDataSetVersion;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 195
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update not applied: Distro format version check failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_55 .. :try_end_73} :catchall_2b3

    .line 197
    const/4 v0, 0x2

    .line 273
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 197
    return v0

    .line 200
    :cond_7f
    :try_start_7f
    iget-object v5, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v5}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->checkDistroDataFilesExist(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 201
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Update not applied: Distro is missing required data file(s)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_2b3

    .line 202
    nop

    .line 273
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 202
    return v2

    .line 205
    :cond_9a
    :try_start_9a
    iget-object v5, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->baseVersionFile:Ljava/io/File;

    invoke-direct {p0, v5, v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->checkDistroRulesNewerThanBase(Ljava/io/File;Lcom/android/timezone/distro/DistroVersion;)Z

    move-result v5

    if-nez v5, :cond_b5

    .line 206
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Update not applied: Distro rules version check failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_9a .. :try_end_a9} :catchall_2b3

    .line 207
    const/4 v0, 0x3

    .line 273
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 207
    return v0

    .line 211
    :cond_b5
    :try_start_b5
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v7, "tzdata"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_2b3

    .line 213
    .local v5, "zoneInfoFile":Ljava/io/File;
    const/4 v6, 0x4

    :try_start_c0
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/i18n/timezone/ZoneInfoDb;->validateTzData(Ljava/lang/String;)V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c7} :catch_24f
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_2b3

    .line 217
    nop

    .line 220
    :try_start_c8
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v9, "tzlookup.xml"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v7, "tzLookupFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_d6
    .catchall {:try_start_c8 .. :try_end_d6} :catchall_2b3

    const-string v9, " does not exist"

    if-nez v8, :cond_100

    .line 222
    :try_start_da
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_da .. :try_end_f4} :catchall_2b3

    .line 223
    nop

    .line 273
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 223
    return v2

    .line 226
    :cond_100
    nop

    .line 227
    :try_start_101
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/i18n/timezone/TimeZoneFinder;->createInstance(Ljava/lang/String;)Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v8

    .line 228
    .local v8, "timeZoneFinder":Lcom/android/i18n/timezone/TimeZoneFinder;
    invoke-virtual {v8}, Lcom/android/i18n/timezone/TimeZoneFinder;->validate()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_10c} :catch_228
    .catchall {:try_start_101 .. :try_end_10c} :catchall_2b3

    .line 232
    .end local v8    # "timeZoneFinder":Lcom/android/i18n/timezone/TimeZoneFinder;
    nop

    .line 235
    :try_start_10d
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v11, "telephonylookup.xml"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .local v8, "telephonyLookupFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_143

    .line 238
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_10d .. :try_end_137} :catchall_2b3

    .line 239
    nop

    .line 273
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 239
    return v2

    .line 242
    :cond_143
    nop

    .line 243
    :try_start_144
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/i18n/timezone/TelephonyLookup;->createInstance(Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyLookup;

    move-result-object v2

    .line 244
    .local v2, "telephonyLookup":Lcom/android/i18n/timezone/TelephonyLookup;
    invoke-virtual {v2}, Lcom/android/i18n/timezone/TelephonyLookup;->validate()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_14f} :catch_201
    .catchall {:try_start_144 .. :try_end_14f} :catchall_2b3

    .line 249
    .end local v2    # "telephonyLookup":Lcom/android/i18n/timezone/TelephonyLookup;
    nop

    .line 254
    :try_start_150
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Applying time zone update"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    .line 258
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_162
    .catchall {:try_start_150 .. :try_end_162} :catchall_2b3

    const-string v1, " to "

    const-string v2, "Moving "

    if-nez v0, :cond_183

    .line 259
    :try_start_168
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Nothing to unstage at "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ac

    .line 261
    :cond_183
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v6, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0, v6}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 268
    :goto_1ac
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 270
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install staged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f5
    .catchall {:try_start_168 .. :try_end_1f5} :catchall_2b3

    .line 271
    const/4 v0, 0x0

    .line 273
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 271
    return v0

    .line 245
    :catch_201
    move-exception v2

    .line 246
    .local v2, "e":Ljava/io/IOException;
    :try_start_202
    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21c
    .catchall {:try_start_202 .. :try_end_21c} :catchall_2b3

    .line 248
    nop

    .line 273
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 248
    return v6

    .line 229
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "telephonyLookupFile":Ljava/io/File;
    :catch_228
    move-exception v2

    .line 230
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_229
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_243
    .catchall {:try_start_229 .. :try_end_243} :catchall_2b3

    .line 231
    nop

    .line 273
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 231
    return v6

    .line 214
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "tzLookupFile":Ljava/io/File;
    :catch_24f
    move-exception v2

    .line 215
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_250
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26a
    .catchall {:try_start_250 .. :try_end_26a} :catchall_2b3

    .line 216
    nop

    .line 273
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 216
    return v6

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "distroTzDataSetVersion":Lcom/android/i18n/timezone/TzDataSetVersion;
    .end local v5    # "zoneInfoFile":Ljava/io/File;
    :catch_276
    move-exception v0

    .line 191
    .local v0, "e":Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
    :try_start_277
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v4, "Update not applied: Distro version could not be converted"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27e
    .catchall {:try_start_277 .. :try_end_27e} :catchall_2b3

    .line 192
    nop

    .line 273
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 192
    return v2

    .line 174
    .end local v0    # "e":Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
    .end local v3    # "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    :catch_28a
    move-exception v0

    .line 175
    .local v0, "e":Lcom/android/timezone/distro/DistroException;
    :try_start_28b
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid distro version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/timezone/distro/DistroException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a7
    .catchall {:try_start_28b .. :try_end_2a7} :catchall_2b3

    .line 176
    nop

    .line 273
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 176
    return v2

    .line 273
    .end local v0    # "e":Lcom/android/timezone/distro/DistroException;
    :catchall_2b3
    move-exception v0

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 274
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 275
    throw v0
.end method

.method public stageUninstall()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Uninstalling time zone update"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 295
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 297
    :cond_14
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 298
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 303
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_106

    const-string v1, " to "

    const-string v2, "Moving "

    if-nez v0, :cond_48

    .line 304
    :try_start_2d
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing to unstage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 306
    :cond_48
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0, v3}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 314
    :goto_71
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_a0

    .line 315
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing to uninstall at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_2d .. :try_end_94} :catchall_106

    .line 316
    nop

    .line 330
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 331
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 316
    return v3

    .line 320
    :cond_a0
    :try_start_a0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0, v3}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 321
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string v4, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->createEmptyFile(Ljava/io/File;)V

    .line 324
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 326
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uninstall staged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_a0 .. :try_end_fa} :catchall_106

    .line 328
    const/4 v0, 0x0

    .line 330
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 331
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 328
    return v0

    .line 330
    :catchall_106
    move-exception v0

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 331
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 332
    throw v0
.end method
