.class public Lcom/android/server/backup/utils/BackupEligibilityRules;
.super Ljava/lang/Object;
.source "BackupEligibilityRules.java"


# static fields
.field private static final DEBUG:Z = false

.field static final IGNORE_ALLOW_BACKUP_IN_D2D:J = 0xaea9af1L

.field static final RESTRICT_ADB_BACKUP:J = 0xa31bf12L

.field private static final systemPackagesAllowedForAllUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mOperationType:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 57
    const-string v0, "@pm@"

    const-string v1, "android"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForAllUsers:Ljava/util/Set;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;II)V
    .registers 5
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p3, "userId"    # I
    .param p4, "operationType"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    iput-object p2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 96
    iput p3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 97
    iput p4, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mOperationType:I

    .line 98
    return-void
.end method

.method public static forBackup(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"    # I

    .line 86
    new-instance v0, Lcom/android/server/backup/utils/BackupEligibilityRules;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;II)V

    return-object v0
.end method


# virtual methods
.method public appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 5
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 297
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 299
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    .line 303
    :cond_13
    return v1
.end method

.method appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 260
    iget-object v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result v0

    .line 263
    .local v0, "enabledSetting":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_16

    .line 271
    :pswitch_e
    const/4 v1, 0x0

    return v1

    .line 267
    :pswitch_10
    return v1

    .line 269
    :pswitch_11
    iget-boolean v2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr v1, v2

    return v1

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 120
    return v1

    .line 124
    :cond_8
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 127
    iget v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForAllUsers:Ljava/util/Set;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 128
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 129
    return v1

    .line 133
    :cond_1f
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 134
    return v1

    .line 139
    :cond_24
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 140
    return v1

    .line 144
    :cond_2f
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 145
    return v1

    .line 148
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z
    .registers 10
    .param p1, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x8000000

    iget v3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 232
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 233
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 235
    invoke-virtual {p0, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1d} :catch_52

    if-eqz v3, :cond_20

    goto :goto_51

    .line 238
    :cond_20
    if-eqz p1, :cond_4f

    .line 240
    :try_start_22
    const-string v3, "AppBackupUtils.appIsRunningAndEligibleForBackupWithTransport"

    .line 241
    invoke-virtual {p1, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v3

    .line 243
    .local v3, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    nop

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 243
    invoke-virtual {v3, v1, v4}, Lcom/android/server/backup/transport/BackupTransportClient;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_31} :catch_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_31} :catch_52

    return v0

    .line 245
    .end local v3    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :catch_32
    move-exception v3

    .line 246
    .local v3, "e":Ljava/lang/Exception;
    :try_start_33
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to ask about eligibility: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_4f} :catch_52

    .line 250
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4f
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_51
    :goto_51
    return v0

    .line 251
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_52
    move-exception v1

    .line 252
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 288
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getOperationType()I
    .registers 2

    .line 400
    iget v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mOperationType:I

    return v0
.end method

.method public isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z
    .registers 10
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 160
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 161
    .local v0, "allowBackup":Z
    :goto_d
    iget v3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mOperationType:I

    const-string v4, "BackupManagerService"

    packed-switch v3, :pswitch_data_b8

    .line 211
    :pswitch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mOperationType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return v2

    .line 170
    :pswitch_2d
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 171
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_37

    .line 172
    const-string v1, "Invalid ApplicationInfo object"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v2

    .line 176
    :cond_37
    const-wide/32 v5, 0xa31bf12

    iget v7, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 177
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 176
    invoke-static {v5, v6, v3, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 178
    return v0

    .line 181
    :cond_47
    const-string v5, "android"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 185
    return v1

    .line 188
    :cond_50
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_58

    move v5, v1

    goto :goto_59

    :cond_58
    move v5, v2

    .line 189
    .local v5, "isPrivileged":Z
    :goto_59
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_60

    goto :goto_61

    :cond_60
    move v1, v2

    .line 190
    .local v1, "isDebuggable":Z
    :goto_61
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-nez v2, :cond_6d

    if-eqz v5, :cond_6c

    goto :goto_6d

    .line 206
    :cond_6c
    return v1

    .line 192
    :cond_6d
    :goto_6d
    :try_start_6d
    iget-object v2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.backup.ALLOW_ADB_BACKUP"

    invoke-virtual {v2, v6, v3}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_79} :catch_7a

    .line 192
    return v2

    .line 194
    :catch_7a
    move-exception v2

    .line 195
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read allowAdbBackup property for + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v0

    .line 165
    .end local v1    # "isDebuggable":Z
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "isPrivileged":Z
    :pswitch_92
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_99

    move v3, v1

    goto :goto_9a

    :cond_99
    move v3, v2

    .line 166
    .local v3, "isSystemApp":Z
    :goto_9a
    if-nez v3, :cond_af

    const-wide/32 v4, 0xaea9af1

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 167
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 166
    invoke-static {v4, v5, v6, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_af

    move v4, v1

    goto :goto_b0

    :cond_af
    move v4, v2

    .line 168
    .local v4, "ignoreAllowBackup":Z
    :goto_b0
    if-nez v4, :cond_b6

    if-eqz v0, :cond_b5

    goto :goto_b6

    :cond_b5
    move v1, v2

    :cond_b6
    :goto_b6
    return v1

    .line 209
    .end local v3    # "isSystemApp":Z
    .end local v4    # "ignoreAllowBackup":Z
    :pswitch_b7
    return v0

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_92
        :pswitch_14
        :pswitch_2d
    .end packed-switch
.end method

.method public signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 14
    .param p1, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p2, "target"    # Landroid/content/pm/PackageInfo;

    .line 333
    const/4 v0, 0x0

    if-eqz p2, :cond_78

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto/16 :goto_78

    .line 342
    :cond_9
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const-string v3, "BackupManagerService"

    if-eqz v1, :cond_36

    .line 343
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_35

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - skipping sig check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_35
    return v2

    .line 350
    :cond_36
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 351
    return v0

    .line 354
    :cond_3d
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 355
    .local v1, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v1, :cond_48

    .line 356
    const-string/jumbo v2, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v0

    .line 366
    :cond_48
    array-length v3, p1

    .line 367
    .local v3, "nStored":I
    if-ne v3, v2, :cond_56

    .line 373
    iget-object v2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    aget-object v0, p1, v0

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManagerInternal;->isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 378
    :cond_56
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 379
    .local v4, "deviceSigs":[Landroid/content/pm/Signature;
    array-length v5, v4

    .line 382
    .local v5, "nDevice":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5c
    if-ge v6, v3, :cond_77

    .line 383
    const/4 v7, 0x0

    .line 384
    .local v7, "match":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_60
    if-ge v8, v5, :cond_71

    .line 385
    aget-object v9, p1, v6

    aget-object v10, v4, v8

    invoke-virtual {v9, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 386
    const/4 v7, 0x1

    .line 387
    goto :goto_71

    .line 384
    :cond_6e
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 390
    .end local v8    # "j":I
    :cond_71
    :goto_71
    if-nez v7, :cond_74

    .line 391
    return v0

    .line 382
    .end local v7    # "match":Z
    :cond_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_5c

    .line 395
    .end local v6    # "i":I
    :cond_77
    return v2

    .line 334
    .end local v1    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v3    # "nStored":I
    .end local v4    # "deviceSigs":[Landroid/content/pm/Signature;
    .end local v5    # "nDevice":I
    :cond_78
    :goto_78
    return v0
.end method
