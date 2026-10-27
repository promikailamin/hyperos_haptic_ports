.class public Lcom/android/server/backup/utils/BackupEligibilityRules;
.super Ljava/lang/Object;
.source "BackupEligibilityRules.java"


# static fields
.field public static final systemPackagesAllowedForHsumMainUser:Ljava/util/Set;

.field public static final systemPackagesAllowedForNonSystemUsers:Ljava/util/Set;

.field public static final systemPackagesAllowedForProfileUser:Ljava/util/Set;


# instance fields
.field public final mBackupDestination:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSkipRestoreForLaunchedApps:Z

.field public final mUserId:I

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 76
    const-string v0, "@pm@"

    const-string v1, "android"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForProfileUser:Ljava/util/Set;

    .line 80
    const-string v1, "com.android.wallpaperbackup"

    const-string v2, "com.android.providers.settings"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/android/server/backup/SetUtils;->union(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForNonSystemUsers:Ljava/util/Set;

    .line 89
    const-string v1, "com.android.providers.telephony"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/android/server/backup/SetUtils;->union(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForHsumMainUser:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;I)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 135
    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V
    .registers 7

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 152
    iput-object p2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 153
    iput p3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 154
    iput p5, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 155
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 156
    iput-boolean p6, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mSkipRestoreForLaunchedApps:Z

    return-void
.end method


# virtual methods
.method public appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 3

    .line 458
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    .line 460
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    return v0
.end method

.method public appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    .line 420
    iget-object v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 421
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    const/4 p1, 0x2

    if-eq p0, p1, :cond_18

    const/4 p1, 0x3

    if-eq p0, p1, :cond_18

    const/4 p1, 0x4

    if-eq p0, p1, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    return v0

    .line 429
    :cond_19
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr p0, v0

    return p0
.end method

.method public appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 186
    :cond_8
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 189
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->isSystemPackageAllowedForCurrentUser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 194
    :cond_19
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_1e

    return v1

    .line 200
    :cond_1e
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    return v1

    .line 205
    :cond_29
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_30

    return v1

    .line 209
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 330
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    const/high16 v3, 0x8000000

    .line 331
    invoke-virtual {v1, p2, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 333
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 334
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 335
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1d} :catch_4e

    if-eqz v1, :cond_20

    goto :goto_4e

    :cond_20
    if-eqz p1, :cond_4c

    .line 341
    :try_start_22
    const-string v1, "AppBackupUtils.appIsRunningAndEligibleForBackupWithTransport"

    .line 342
    invoke-virtual {p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object p1

    .line 345
    invoke-virtual {p0, p2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    .line 344
    invoke-virtual {p1, p2, p0}, Lcom/android/server/backup/transport/BackupTransportClient;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_30} :catch_31

    return p0

    :catch_31
    move-exception p0

    .line 347
    :try_start_32
    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to ask about eligibility: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_4c} :catch_4e

    :cond_4c
    const/4 p0, 0x1

    return p0

    :catch_4e
    :cond_4e
    :goto_4e
    return v0
.end method

.method public appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 449
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p1, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public appSupportsCrossPlatformTransfer(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 3

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getPlatformSpecificParams(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getBackupDestination()I
    .registers 1

    .line 565
    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    return p0
.end method

.method public getPlatformSpecificParams(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->loadCrossPlatformConfig(Landroid/content/pm/ApplicationInfo;)Ljava/util/Map;

    move-result-object p0

    .line 370
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z
    .registers 11

    .line 248
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_d

    :cond_c
    move v1, v2

    .line 249
    :goto_d
    iget v4, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    if-eqz v4, :cond_c3

    if-eq v4, v3, :cond_a9

    const/4 v0, 0x2

    const-string v5, "BackupManagerService"

    if-eq v4, v0, :cond_48

    const/4 v0, 0x3

    if-eq v4, v0, :cond_32

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown operation type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_32
    if-eqz v1, :cond_47

    .line 307
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "@pm@"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "ios"

    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appSupportsCrossPlatformTransfer(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_47

    :cond_46
    return v3

    :cond_47
    return v2

    .line 262
    :cond_48
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_52

    .line 264
    const-string p0, "Invalid ApplicationInfo object"

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 268
    :cond_52
    iget v6, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 269
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const-wide/32 v7, 0xa31bf12

    .line 268
    invoke-static {v7, v8, v4, v6}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_62

    goto :goto_c3

    .line 273
    :cond_62
    const-string v6, "android"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    return v3

    .line 280
    :cond_6b
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_73

    move v7, v3

    goto :goto_74

    :cond_73
    move v7, v2

    :goto_74
    and-int/2addr v0, v6

    if-eqz v0, :cond_78

    move v2, v3

    .line 282
    :cond_78
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p1

    if-nez p1, :cond_84

    if-eqz v7, :cond_83

    goto :goto_84

    :cond_83
    return v2

    .line 284
    :cond_84
    :goto_84
    :try_start_84
    iget-object p1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.backup.ALLOW_ADB_BACKUP"

    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    const/4 v2, 0x0

    .line 285
    invoke-virtual {p1, v0, v4, v2, p0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_93
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_84 .. :try_end_93} :catch_94

    return p0

    .line 292
    :catch_94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to read allowAdbBackup property for + "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a9
    and-int/2addr v0, v3

    if-eqz v0, :cond_ad

    goto :goto_bf

    .line 254
    :cond_ad
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 259
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const-wide/32 v4, 0xaea9af1

    .line 256
    invoke-static {v4, v5, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_bf

    goto :goto_c1

    :cond_bf
    :goto_bf
    if-eqz v1, :cond_c2

    :goto_c1
    return v3

    :cond_c2
    return v2

    :cond_c3
    :goto_c3
    return v1
.end method

.method public final isSystemPackageAllowedForCurrentUser(Ljava/lang/String;)Z
    .registers 4

    .line 219
    iget v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 223
    :cond_6
    iget-object v1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 224
    sget-object p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForProfileUser:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 228
    :cond_19
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 229
    iget-object v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_34

    .line 230
    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    if-ne v0, p0, :cond_34

    .line 231
    sget-object p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForHsumMainUser:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 236
    :cond_34
    sget-object p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForNonSystemUsers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final loadCrossPlatformConfig(Landroid/content/pm/ApplicationInfo;)Ljava/util/Map;
    .registers 5

    .line 376
    const-string v0, "BackupManagerService"

    :try_start_2
    iget-object p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 377
    invoke-static {p0, p1}, Lcom/android/server/backup/crossplatform/PlatformConfigParser;->parsePlatformSpecificConfig(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/util/Map;

    move-result-object p0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded cross-platform configuration for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " configured platforms."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    .line 388
    const-string p1, "Unable to parse cross-platform configuration from data-extraction-rules"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_7a

    .line 494
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto/16 :goto_7a

    .line 503
    :cond_9
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    return v2

    .line 511
    :cond_12
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v0

    .line 515
    :cond_19
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 516
    const-string v3, "BackupManagerService"

    if-nez v1, :cond_26

    .line 517
    const-string/jumbo p0, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 524
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "signaturesMatch(): stored="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 524
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    array-length v3, p1

    if-ne v3, v2, :cond_5d

    .line 538
    iget-object p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    aget-object p1, p1, v0

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 543
    :cond_5d
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 544
    array-length p2, p0

    move v1, v0

    :goto_63
    if-ge v1, v3, :cond_79

    move v4, v0

    :goto_66
    if-ge v4, p2, :cond_78

    .line 550
    aget-object v5, p1, v1

    aget-object v6, p0, v4

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_78
    return v0

    :cond_79
    return v2

    :cond_7a
    :goto_7a
    return v0
.end method
