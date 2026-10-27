.class public Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "TarBackupReader.java"


# instance fields
.field public mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public final mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

.field public final mInputStream:Ljava/io/InputStream;

.field public mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V
    .registers 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 106
    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 107
    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    .line 108
    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p1, p3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    return-void
.end method

.method public static extractLine([BI[Ljava/lang/String;)I
    .registers 7

    .line 720
    array-length v0, p0

    if-ge p1, v0, :cond_1d

    move v1, p1

    :goto_4
    if-ge v1, v0, :cond_10

    .line 727
    aget-byte v2, p0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    goto :goto_10

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 734
    :cond_10
    :goto_10
    new-instance v0, Ljava/lang/String;

    sub-int v2, v1, p1

    invoke-direct {v0, p0, p1, v2}, Ljava/lang/String;-><init>([BII)V

    const/4 p0, 0x0

    aput-object v0, p2, p0

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 722
    :cond_1d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incomplete data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractRadix([BIII)J
    .registers 9

    add-int/2addr p2, p1

    const-wide/16 v0, 0x0

    :goto_3
    if-ge p1, p2, :cond_3f

    .line 847
    aget-byte v2, p0, p1

    if-eqz v2, :cond_3f

    const/16 v3, 0x20

    if-ne v2, v3, :cond_e

    goto :goto_3f

    :cond_e
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1f

    add-int/lit8 v3, p3, 0x2f

    if-gt v2, v3, :cond_1f

    int-to-long v3, p3

    mul-long/2addr v3, v0

    add-int/lit8 v2, v2, -0x30

    int-to-long v0, v2

    add-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 853
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid number in header: \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' for radix "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    :goto_3f
    return-wide v0
.end method

.method public static extractString([BII)Ljava/lang/String;
    .registers 5

    add-int/2addr p2, p1

    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_b

    .line 865
    aget-byte v1, p0, v0

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 868
    :cond_b
    new-instance p2, Ljava/lang/String;

    sub-int/2addr v0, p1

    const-string v1, "US-ASCII"

    invoke-direct {p2, p0, p1, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p2
.end method

.method public static readExactly(Ljava/io/InputStream;[BII)I
    .registers 7

    if-lez p3, :cond_13

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p3, :cond_12

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 261
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_10

    goto :goto_12

    :cond_10
    add-int/2addr v0, v1

    goto :goto_3

    :cond_12
    :goto_12
    return v0

    .line 254
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "size must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;Landroid/content/Context;)Lcom/android/server/backup/restore/RestorePolicy;
    .registers 24

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p7

    .line 465
    const-string v6, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v7, "Package "

    const-string v8, "BackupManagerService"

    if-nez v3, :cond_15

    .line 466
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    return-object v0

    .line 469
    :cond_15
    sget-object v9, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 472
    :try_start_19
    iget-object v12, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v13, 0x8000000

    move-object/from16 v14, p1

    invoke-virtual {v14, v12, v13, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 475
    iget-object v13, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 476
    invoke-virtual {v5, v13}, Lcom/android/server/backup/utils/BackupEligibilityRules;->isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z

    move-result v13

    if-eqz v13, :cond_147

    .line 479
    iget-object v13, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v13

    if-eqz v13, :cond_61

    iget-object v13, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v13, :cond_3e

    goto :goto_61

    .line 554
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is system level with no agent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v4, 0x26

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v12, v5, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto/16 :goto_1a3

    .line 488
    :cond_61
    :goto_61
    invoke-virtual {v5, v3, v12}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 489
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x20000

    and-int/2addr v3, v5

    if-eqz v3, :cond_80

    .line 491
    const-string v3, "Package has restoreAnyVersion; taking data"

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v4, 0x22

    invoke-virtual {v3, v4, v12, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 497
    sget-object v9, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_1a3

    .line 498
    :cond_80
    invoke-virtual {v12}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    iget-wide v10, v2, Lcom/android/server/backup/FileMetadata;->version:J

    cmp-long v5, v13, v10

    if-ltz v5, :cond_9c

    .line 499
    const-string v4, "Sig + version match; taking data"

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sget-object v9, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 501
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0x23

    const/4 v3, 0x3

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v12, v3, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto/16 :goto_1a3

    :cond_9c
    move-object/from16 v5, p8

    .line 506
    invoke-virtual {p0, v2, v12, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->isAllowlistedForVToURestore(Lcom/android/server/backup/FileMetadata;Landroid/content/pm/PackageInfo;ILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Performing a V to U downgrade; package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is allowlisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v9, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 511
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0x46

    const/4 v3, 0x3

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v12, v3, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto/16 :goto_1a3

    :cond_cc
    if-eqz v1, :cond_f9

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is newer than installed version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v12}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " - requiring apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 521
    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-object v9, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_1a3

    .line 528
    :cond_f9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data requires newer version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v2, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "; ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const-string v5, "android.app.backup.extra.LOG_OLD_VERSION"

    iget-wide v10, v2, Lcom/android/server/backup/FileMetadata;->version:J

    const/4 v3, 0x0

    .line 535
    invoke-static {v3, v5, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v5

    const/16 v10, 0x24

    const/4 v11, 0x3

    .line 530
    invoke-virtual {v4, v10, v12, v11, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto/16 :goto_1a3

    .line 544
    :cond_127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore manifest signatures do not match installed application for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0x25

    const/4 v3, 0x3

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v12, v3, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto :goto_1a3

    .line 563
    :cond_147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but allowBackup=false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0x27

    const/4 v3, 0x3

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v12, v3, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_16b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_16b} :catch_16c

    goto :goto_1a3

    :catch_16c
    if-eqz v1, :cond_18b

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not installed; requiring apk in dataset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    :goto_189
    move-object v9, v4

    goto :goto_18e

    .line 579
    :cond_18b
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_189

    .line 581
    :goto_18e
    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3, v6, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 584
    const-string v5, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    invoke-static {v4, v5, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 587
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0x28

    const/4 v11, 0x3

    invoke-virtual {v4, v5, v3, v11, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 594
    :goto_1a3
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v9, v1, :cond_1d5

    iget-boolean v1, v2, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    if-nez v1, :cond_1d5

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot restore package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " without the matching .apk"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v1, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 601
    invoke-static {v3, v6, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x29

    const/4 v11, 0x3

    .line 597
    invoke-virtual {v0, v2, v3, v11, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    :cond_1d5
    return-object v9
.end method

.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .registers 1

    .line 889
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p0

    return-object p0
.end method

.method public final getVToUAllowlist(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    .line 836
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "v_to_u_restore_allowlist"

    .line 835
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f

    .line 839
    const-string p0, ""

    :cond_f
    return-object p0
.end method

.method public getWidgetData()[B
    .registers 1

    .line 893
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object p0
.end method

.method public final isAllowlistedForVToURestore(Lcom/android/server/backup/FileMetadata;Landroid/content/pm/PackageInfo;ILandroid/content/Context;)Z
    .registers 5

    .line 825
    invoke-virtual {p0, p4, p3}, Lcom/android/server/backup/utils/TarBackupReader;->getVToUAllowlist(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 826
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    const/4 p0, 0x0

    return p0
.end method

.method public readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .registers 15

    .line 287
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v1, "BackupManagerService"

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v4, 0x10000

    cmp-long v4, v2, v4

    if-gtz v4, :cond_15b

    long-to-int v4, v2

    .line 291
    new-array v4, v4, [B

    .line 296
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v5, v4, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v2

    int-to-long v5, v2

    iget-wide v7, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_153

    .line 297
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    invoke-interface {v2, v7, v8}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 v2, 0x1

    .line 302
    new-array v5, v2, [Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 306
    :try_start_29
    invoke-static {v4, v3, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    .line 307
    aget-object v9, v5, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v2, :cond_f5

    .line 309
    invoke-static {v4, v8, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v2

    .line 310
    aget-object v8, v5, v3

    .line 312
    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c3

    .line 313
    invoke-static {v4, v2, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v2

    .line 314
    aget-object v8, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 315
    invoke-static {v4, v2, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v2

    .line 318
    aget-object v8, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 319
    invoke-static {v4, v2, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v2

    .line 320
    aget-object v8, v5, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6b

    aget-object v8, v5, v3

    goto :goto_6c

    :catch_68
    move-exception p0

    goto/16 :goto_127

    :cond_6b
    move-object v8, v7

    :goto_6c
    iput-object v8, p1, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 321
    invoke-static {v4, v2, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v2

    .line 322
    aget-object v8, v5, v3

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p1, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    .line 323
    invoke-static {v4, v2, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v2

    .line 324
    aget-object v8, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_9e

    .line 326
    new-array v9, v8, [Landroid/content/pm/Signature;

    move v10, v3

    :goto_8b
    if-ge v10, v8, :cond_9d

    .line 328
    invoke-static {v4, v2, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v2

    .line 329
    new-instance v11, Landroid/content/pm/Signature;

    aget-object v12, v5, v3

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8b

    :cond_9d
    return-object v9

    .line 333
    :cond_9e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing signature on backed-up package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 338
    invoke-static {v7, v0, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/16 v4, 0x2a

    .line 334
    invoke-virtual {v2, v4, v7, v6, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto/16 :goto_152

    .line 342
    :cond_c3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but restore manifest claims "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v7, v0, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 346
    const-string v3, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    invoke-static {v2, v3, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 349
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4, v7, v6, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto :goto_152

    .line 356
    :cond_f5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown restore manifest version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v7, v0, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 360
    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    invoke-static {v2, v3, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4, v7, v6, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_126
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_126} :catch_12f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_126} :catch_68

    goto :goto_152

    .line 379
    :goto_127
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_152

    .line 370
    :catch_12f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Corrupt restore manifest for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 375
    invoke-static {v7, v0, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x2e

    .line 371
    invoke-virtual {p0, v0, v7, v6, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    :goto_152
    return-object v7

    .line 299
    :cond_153
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF in manifest"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_15b
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore manifest too big; corrupt? size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readCrossPlatformManifest(Lcom/android/server/backup/FileMetadata;)Lcom/android/server/backup/crossplatform/CrossPlatformManifest;
    .registers 7

    .line 392
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_79

    long-to-int v2, v0

    .line 397
    new-array v2, v2, [B

    .line 401
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    long-to-int v0, v0

    invoke-static {v3, v2, v4, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    int-to-long v0, v0

    iget-wide v3, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_71

    .line 402
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    invoke-interface {v0, v3, v4}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 406
    invoke-static {v2}, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->parseFrom([B)Lcom/android/server/backup/crossplatform/CrossPlatformManifest;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but restore manifest claims "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 415
    invoke-static {v2, v1, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 417
    const-string v1, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    .line 421
    invoke-virtual {v0}, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {p1, v1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 422
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v0, 0x2b

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    return-object v2

    :cond_70
    return-object v0

    .line 404
    :cond_71
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF in cross-platform manifest"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :cond_79
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore cross platform manifest too big; corrupt? size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .registers 13

    .line 631
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_11b

    long-to-int v2, v0

    .line 635
    new-array v3, v2, [B

    .line 636
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v4, v3, v1, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    int-to-long v4, v0

    iget-wide v6, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_113

    .line 637
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    invoke-interface {v0, v6, v7}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 v0, 0x1

    .line 642
    new-array v4, v0, [Ljava/lang/String;

    .line 643
    invoke-static {v3, v1, v4}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 644
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    .line 645
    const-string v8, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v9, "BackupManagerService"

    const/4 v10, 0x0

    if-ne v6, v0, :cond_eb

    .line 646
    invoke-static {v3, v5, v4}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v0

    .line 647
    aget-object v1, v4, v1

    .line 648
    iget-object v4, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 651
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sub-int/2addr v2, v0

    invoke-direct {v1, v3, v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 653
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 654
    :goto_4e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_b8

    .line 655
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 656
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/high16 v4, 0x10000

    if-gt v3, v4, :cond_93

    const v4, 0x1ffed01

    if-eq v2, v4, :cond_8b

    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring metadata blob "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_4e

    .line 666
    :cond_8b
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 667
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_4e

    .line 658
    :cond_93
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Datum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " too big; corrupt? size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b8
    return-void

    .line 680
    :cond_b9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata mismatch: package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but widget data for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v10, v8, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 686
    const-string v0, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    invoke-static {p1, v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 688
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v10, v7, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    return-void

    .line 695
    :cond_eb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported metadata version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 698
    invoke-static {v10, v8, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 700
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    invoke-static {p1, v0, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    .line 702
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v10, v7, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    return-void

    .line 639
    :cond_113
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF in widget data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 632
    :cond_11b
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata too big; corrupt? size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z
    .registers 12

    .line 755
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x8000

    cmp-long v2, v0, v2

    const-string v3, "BackupManagerService"

    if-gtz v2, :cond_b2

    const-wide/16 v4, 0x1ff

    add-long/2addr v0, v4

    const/16 v2, 0x9

    shr-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x200

    .line 762
    new-array v1, v0, [B

    .line 763
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v2

    if-lt v2, v0, :cond_aa

    .line 766
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long v5, v0

    invoke-interface {p0, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 768
    iget-wide v5, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int p0, v5

    :cond_28
    add-int/lit8 v0, v4, 0x1

    :goto_2a
    if-ge v0, p0, :cond_35

    .line 773
    aget-byte v2, v1, v0

    const/16 v5, 0x20

    if-eq v2, v5, :cond_35

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_35
    if-ge v0, p0, :cond_a2

    sub-int v2, v0, v4

    const/16 v5, 0xa

    .line 781
    invoke-static {v1, v4, v2, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v5

    long-to-int v2, v5

    add-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v2

    add-int/lit8 v2, v4, -0x1

    add-int/lit8 v0, v0, 0x2

    .line 785
    :goto_47
    aget-byte v6, v1, v0

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_52

    if-gt v0, v2, :cond_52

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_52
    if-gt v0, v2, :cond_9a

    .line 793
    new-instance v6, Ljava/lang/String;

    sub-int v7, v0, v5

    const-string v8, "UTF-8"

    invoke-direct {v6, v1, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 795
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v9, v0, 0x1

    sub-int/2addr v2, v0

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    invoke-direct {v7, v1, v9, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 797
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 798
    iput-object v7, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_97

    .line 799
    :cond_73
    const-string/jumbo v2, "size"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 800
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_97

    .line 802
    :cond_83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled pax key: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    if-lt v4, p0, :cond_28

    return v0

    .line 789
    :cond_9a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid pax declaration"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 778
    :cond_a2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid pax data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 764
    :cond_aa
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to read full pax header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 756
    :cond_b2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Suspiciously large pax header size "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " - aborting"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sanity failure: pax header size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readTarHeader([B)Z
    .registers 5

    .line 740
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/16 v2, 0x200

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    if-lt p1, v2, :cond_17

    .line 747
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    const-wide/16 v0, 0x200

    invoke-interface {p0, v0, v1}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 p0, 0x1

    return p0

    .line 745
    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to read full block header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .registers 11

    .line 115
    const-string v0, "BackupManagerService"

    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c2

    .line 122
    :try_start_d
    new-instance v2, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v2}, Lcom/android/server/backup/FileMetadata;-><init>()V

    const/16 v4, 0x7c

    const/16 v5, 0xc

    const/16 v6, 0x8

    .line 123
    invoke-static {v1, v4, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/backup/FileMetadata;->size:J

    const/16 v4, 0x88

    .line 127
    invoke-static {v1, v4, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/backup/FileMetadata;->mtime:J

    const/16 v4, 0x64

    .line 131
    invoke-static {v1, v4, v6, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/backup/FileMetadata;->mode:J

    const/16 v5, 0x159

    const/16 v6, 0x9b

    .line 136
    invoke-static {v1, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v5, 0x0

    .line 139
    invoke-static {v1, v5, v4}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x2f

    if-lez v6, :cond_77

    .line 143
    iget-object v6, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_64

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_64

    :catch_61
    move-exception p0

    goto/16 :goto_1a9

    .line 146
    :cond_64
    :goto_64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :cond_77
    const/16 v4, 0x9c

    .line 150
    aget-byte v6, v1, v4

    const/16 v8, 0x78

    if-ne v6, v8, :cond_96

    .line 153
    invoke-virtual {p0, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v6

    :cond_89
    if-eqz v6, :cond_8e

    .line 163
    aget-byte v6, v1, v4

    goto :goto_96

    .line 160
    :cond_8e
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Bad or missing pax header"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_96
    :goto_96
    if-eqz v6, :cond_1a8

    const/16 p0, 0x30

    const/4 v1, 0x1

    if-eq v6, p0, :cond_df

    const/16 p0, 0x35

    if-ne v6, p0, :cond_b4

    const/4 p0, 0x2

    .line 171
    iput p0, v2, Lcom/android/server/backup/FileMetadata;->type:I

    .line 172
    iget-wide v3, v2, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x0

    cmp-long p0, v3, v8

    if-eqz p0, :cond_e1

    .line 173
    const-string p0, "Directory entry with nonzero size in header"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-wide v8, v2, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_e1

    .line 186
    :cond_b4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tar entity type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :cond_df
    iput v1, v2, Lcom/android/server/backup/FileMetadata;->type:I

    .line 194
    :cond_e1
    :goto_e1
    const-string/jumbo p0, "shared/"

    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {p0, v5, v3, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_115

    .line 197
    iget-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 198
    const-string p0, "com.android.sharedstoragebackup"

    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 199
    const-string/jumbo p0, "shared"

    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File in shared storage: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 201
    :cond_115
    const-string p0, "apps/"

    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {p0, v5, v3, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_1a7

    .line 206
    iget-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 209
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_18e

    .line 213
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 214
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/2addr p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 218
    const-string v3, "_manifest"

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a7

    iget-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_cross_platform_manifest"

    .line 219
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a7

    iget-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_meta"

    .line 220
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a7

    .line 221
    iget-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_175

    .line 226
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 227
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/2addr p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    return-object v2

    .line 223
    :cond_175
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal semantic path in non-manifest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_18e
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal semantic path in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a7} :catch_61

    :cond_1a7
    return-object v2

    :cond_1a8
    return-object v3

    .line 231
    :goto_1a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse error in header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    throw p0

    :cond_1c2
    return-object v3
.end method

.method public skipTarPadding(J)V
    .registers 5

    const-wide/16 v0, 0x200

    add-long/2addr p1, v0

    .line 611
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_27

    long-to-int p1, p1

    rsub-int p1, p1, 0x200

    .line 617
    new-array p2, p1, [B

    .line 618
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result p2

    if-ne p2, p1, :cond_1f

    .line 619
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long p1, p1

    invoke-interface {p0, p1, p2}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    return-void

    .line 621
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF in padding"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    return-void
.end method
