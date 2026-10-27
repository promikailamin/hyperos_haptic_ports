.class public Lcom/android/server/backup/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field private static final ANCESTRAL_RECORD_KEY:Ljava/lang/String; = "@ancestral_record@"

.field private static final ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_HOME_KEY:Ljava/lang/String; = "@home@"

.field private static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field private static final STATE_FILE_HEADER:Ljava/lang/String; = "=state="

.field private static final STATE_FILE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PMBA"

.field private static final UNDEFINED_ANCESTRAL_RECORD_VERSION:I = -0x1


# instance fields
.field private mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMetadata:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoredHome:Landroid/content/ComponentName;

.field private mRestoredHomeInstaller:Ljava/lang/String;

.field private mRestoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mRestoredHomeVersion:J

.field private mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredHomeComponent:Landroid/content/ComponentName;

.field private mStoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mStoredHomeVersion:J

.field private mStoredIncrementalVersion:Ljava/lang/String;

.field private mStoredSdkVersion:I

.field private mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fputmHasMetadata(Lcom/android/server/backup/PackageManagerBackupAgent;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRestoredHome(Lcom/android/server/backup/PackageManagerBackupAgent;Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHome:Landroid/content/ComponentName;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRestoredHomeInstaller(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeInstaller:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRestoredHomeSigHashes(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeSigHashes:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRestoredHomeVersion(Lcom/android/server/backup/PackageManagerBackupAgent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeVersion:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRestoredSignatures(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStoredIncrementalVersion(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStoredSdkVersion(Lcom/android/server/backup/PackageManagerBackupAgent;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smreadSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .registers 1

    invoke-static {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 5
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I
    .param p3, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 138
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 141
    invoke-virtual {p0, p3}, Lcom/android/server/backup/PackageManagerBackupAgent;->evaluateStorablePackages(Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;I)V
    .registers 5
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 133
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 135
    return-void
.end method

.method private getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I
    .registers 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    const/4 v0, -0x1

    .line 442
    .local v0, "ancestralRecordVersionValue":I
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 443
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    .line 448
    .local v2, "dataSize":I
    const-string v3, "@ancestral_record@"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 450
    new-array v3, v2, [B

    .line 451
    .local v3, "inputBytes":[B
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 452
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 453
    .local v4, "inputBuffer":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 455
    .local v5, "inputBufferStream":Ljava/io/DataInputStream;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 458
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "dataSize":I
    .end local v3    # "inputBytes":[B
    .end local v4    # "inputBuffer":Ljava/io/ByteArrayInputStream;
    .end local v5    # "inputBufferStream":Ljava/io/DataInputStream;
    :cond_2b
    return v0
.end method

.method private getPreferredHomeComponent()Landroid/content/ComponentName;
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;
    .registers 5
    .param p1, "ancestralRecordVersion"    # I

    .line 462
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2a

    .line 468
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized ANCESTRAL_RECORD_VERSION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PMBA"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-object v0

    .line 466
    :pswitch_1d
    new-instance v1, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;

    invoke-direct {v1, p0, v0}, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer-IA;)V

    return-object v1

    .line 464
    :pswitch_23
    new-instance v1, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;

    invoke-direct {v1, p0, v0}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer-IA;)V

    return-object v1

    nop

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_23
        :pswitch_4
        :pswitch_1d
    .end packed-switch
.end method

.method public static getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;
    .registers 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .param p2, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I",
            "Lcom/android/server/backup/utils/BackupEligibilityRules;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 164
    nop

    .line 165
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 167
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "a":I
    :goto_d
    if-ltz v2, :cond_23

    .line 168
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 169
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v4}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 170
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 167
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 173
    .end local v2    # "a":I
    :cond_23
    return-object v0
.end method

.method private init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V
    .registers 5
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 145
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 146
    iput-object p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 151
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 152
    iput p3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    .line 153
    return-void
.end method

.method private parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 14
    .param p1, "stateFile"    # Landroid/os/ParcelFileDescriptor;

    .line 534
    const-string v0, "@meta@"

    const-string v1, "PMBA"

    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 535
    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 536
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 537
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 538
    iput-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 539
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 540
    iput-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 546
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 547
    .local v3, "instream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 548
    .local v4, "inbuffer":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 551
    .local v5, "in":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 552
    .local v6, "ignoreExisting":Z
    :try_start_30
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 555
    .local v7, "pkg":Ljava/lang/String;
    const-string v8, "=state="

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 556
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 557
    .local v8, "stateVersion":I
    const/4 v9, 0x2

    if-le v8, v9, :cond_60

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported state file version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", redoing from start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void

    .line 562
    :cond_60
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 563
    .end local v8    # "stateVersion":I
    goto :goto_6c

    .line 569
    :cond_66
    const-string v8, "Older version of saved state - rewriting"

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v6, 0x1

    .line 574
    :goto_6c
    const-string v8, "@home@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 576
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 577
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 578
    invoke-static {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 580
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 586
    :cond_8f
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 587
    .end local v6    # "ignoreExisting":Z
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 588
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 589
    if-nez v6, :cond_a8

    .line 590
    iget-object v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_a8
    :goto_a8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 600
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 602
    .local v0, "versionCodeInt":I
    const/high16 v8, -0x80000000

    if-ne v0, v8, :cond_ba

    .line 603
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .local v8, "versionCode":J
    goto :goto_bb

    .line 605
    .end local v8    # "versionCode":J
    :cond_ba
    int-to-long v8, v0

    .line 608
    .restart local v8    # "versionCode":J
    :goto_bb
    if-nez v6, :cond_c2

    .line 609
    iget-object v10, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_c2
    iget-object v10, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v11, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    invoke-direct {v11, p0, v8, v9, v2}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    nop

    .end local v0    # "versionCodeInt":I
    .end local v8    # "versionCode":J
    goto :goto_a8

    .line 593
    .restart local v6    # "ignoreExisting":Z
    :cond_ce
    const-string v0, "No global metadata in state file!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/io/EOFException; {:try_start_30 .. :try_end_d3} :catch_ec
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_d3} :catch_d4

    .line 594
    return-void

    .line 615
    .end local v6    # "ignoreExisting":Z
    .end local v7    # "pkg":Ljava/lang/String;
    :catch_d4
    move-exception v0

    .line 617
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read Package Manager state file: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    .line 613
    .end local v0    # "e":Ljava/io/IOException;
    :catch_ec
    move-exception v0

    .line 618
    nop

    .line 619
    :goto_ee
    return-void
.end method

.method private static readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 489
    const-string v0, "PMBA"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_7} :catch_40
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_3e

    .line 494
    .local v2, "num":I
    nop

    .line 499
    const/16 v3, 0x14

    if-gt v2, v3, :cond_31

    .line 508
    const/4 v3, 0x0

    .line 509
    .local v3, "nonHashFound":Z
    :try_start_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    .local v4, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    if-ge v5, v2, :cond_29

    .line 511
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 512
    .local v6, "len":I
    new-array v7, v6, [B

    .line 513
    .local v7, "readHash":[B
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 514
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const/16 v8, 0x20

    if-eq v6, v8, :cond_26

    .line 516
    const/4 v3, 0x1

    .line 510
    .end local v6    # "len":I
    .end local v7    # "readHash":[B
    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 520
    .end local v5    # "i":I
    :cond_29
    if-eqz v3, :cond_30

    .line 522
    invoke-static {v4}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    .line 525
    :cond_30
    return-object v4

    .line 500
    .end local v3    # "nonHashFound":Z
    .end local v4    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_31
    const-string v3, "Suspiciously large sig count in restore data; aborting"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Bad restore state"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "in":Ljava/io/DataInputStream;
    throw v3

    .line 526
    .end local v2    # "num":I
    .restart local p0    # "in":Ljava/io/DataInputStream;
    :catch_3e
    move-exception v2

    goto :goto_47

    .line 490
    :catch_40
    move-exception v2

    .line 492
    .local v2, "e":Ljava/io/EOFException;
    const-string v3, "Read empty signature block"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_46} :catch_3e

    .line 493
    return-object v1

    .line 527
    .local v2, "e":Ljava/io/IOException;
    :goto_47
    const-string v3, "Unable to read signatures"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-object v1
.end method

.method private static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .registers 4
    .param p0, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 412
    array-length v0, p2

    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 413
    return-void
.end method

.method private static writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    .local p1, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 479
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 480
    .local v1, "buffer":[B
    array-length v2, v1

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 481
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 482
    .end local v1    # "buffer":[B
    goto :goto_b

    .line 483
    :cond_1f
    return-void
.end method

.method private writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V
    .registers 14
    .param p2, "preferredHome"    # Landroid/content/ComponentName;
    .param p3, "homeVersion"    # J
    .param p6, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "J",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .line 628
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local p5, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 629
    .local v0, "outstream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 630
    .local v1, "outbuf":Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 635
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_13
    const-string v3, "=state="

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 636
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 639
    if-eqz p2, :cond_30

    .line 640
    const-string v3, "@home@"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v2, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 643
    invoke-static {v2, p5}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 647
    :cond_30
    const-string v3, "@meta@"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 648
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 649
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 652
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 653
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 654
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz v5, :cond_65

    .line 655
    const/high16 v5, -0x80000000

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 656
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_6a

    .line 658
    :cond_65
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 660
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_6a
    goto :goto_43

    .line 662
    :cond_6b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_6e} :catch_6f

    .line 665
    goto :goto_77

    .line 663
    :catch_6f
    move-exception v3

    .line 664
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "PMBA"

    const-string v5, "Unable to write package manager state file!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v3    # "e":Ljava/io/IOException;
    :goto_77
    return-void
.end method


# virtual methods
.method public evaluateStorablePackages(Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 4
    .param p1, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 158
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 159
    return-void
.end method

.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_e

    .line 182
    const-string v0, "PMBA"

    const-string/jumbo v1, "getRestoredMetadata() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_e
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    return-object v0
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_e

    .line 191
    const-string v0, "PMBA"

    const-string/jumbo v1, "getRestoredPackages() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_e
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasMetadata()Z
    .registers 2

    .line 177
    iget-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 31
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 208
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const-string v1, "Unable to write package backup data file!"

    const-string v2, "@meta@"

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v10, v0

    .line 209
    .local v10, "outputBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v11, v0

    .line 210
    .local v11, "outputBufferStream":Ljava/io/DataOutputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    .line 215
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    const-string v3, "PMBA"

    if-eqz v0, :cond_25

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 217
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous metadata "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mismatch vs "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " - rewriting"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 230
    :cond_54
    const/4 v4, 0x1

    :try_start_55
    invoke-virtual {v11, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 231
    const-string v0, "@ancestral_record@"

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v9, v0, v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_61} :catch_24c

    .line 236
    nop

    .line 238
    const-wide/16 v5, 0x0

    .line 239
    .local v5, "homeVersion":J
    const/4 v7, 0x0

    .line 240
    .local v7, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v12, 0x0

    .line 241
    .local v12, "homeInfo":Landroid/content/pm/PackageInfo;
    const/4 v13, 0x0

    .line 242
    .local v13, "homeInstaller":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getPreferredHomeComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 243
    .local v14, "home":Landroid/content/ComponentName;
    if-eqz v14, :cond_c4

    .line 245
    :try_start_6d
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v15, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I
    :try_end_75
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_75} :catch_b1

    move-wide/from16 v18, v5

    const/high16 v5, 0x8000000

    .end local v5    # "homeVersion":J
    .local v18, "homeVersion":J
    :try_start_79
    invoke-virtual {v0, v4, v5, v15}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v12, v0

    .line 247
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 248
    invoke-virtual {v12}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_8d} :catch_ad

    move-wide v5, v4

    .line 249
    .end local v18    # "homeVersion":J
    .restart local v5    # "homeVersion":J
    :try_start_8e
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 250
    .local v0, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v0, :cond_98

    .line 251
    const-string v4, "Home app has no signing information"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 255
    :cond_98
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 256
    .local v4, "homeInfoSignatures":[Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v15
    :try_end_a0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8e .. :try_end_a0} :catch_ab

    move-object v7, v15

    .line 262
    .end local v0    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v4    # "homeInfoSignatures":[Landroid/content/pm/Signature;
    :goto_a1
    move-object v15, v12

    move-object/from16 v18, v13

    move-wide v12, v5

    move-object/from16 v24, v14

    move-object v14, v7

    move-object/from16 v7, v24

    goto :goto_d2

    .line 258
    :catch_ab
    move-exception v0

    goto :goto_b4

    .end local v5    # "homeVersion":J
    .restart local v18    # "homeVersion":J
    :catch_ad
    move-exception v0

    move-wide/from16 v5, v18

    goto :goto_b4

    .end local v18    # "homeVersion":J
    .restart local v5    # "homeVersion":J
    :catch_b1
    move-exception v0

    move-wide/from16 v18, v5

    .line 259
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_b4
    const-string v4, "Can\'t access preferred home info"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v14, 0x0

    move-object v15, v12

    move-object/from16 v18, v13

    move-wide v12, v5

    move-object/from16 v24, v14

    move-object v14, v7

    move-object/from16 v7, v24

    goto :goto_d2

    .line 243
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c4
    move-wide/from16 v18, v5

    .end local v5    # "homeVersion":J
    .restart local v18    # "homeVersion":J
    move-object v15, v12

    move-object/from16 v24, v14

    move-object v14, v7

    move-object/from16 v7, v24

    move-wide/from16 v25, v18

    move-object/from16 v18, v13

    move-wide/from16 v12, v25

    .line 271
    .end local v13    # "homeInstaller":Ljava/lang/String;
    .local v7, "home":Landroid/content/ComponentName;
    .local v12, "homeVersion":J
    .local v14, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v15, "homeInfo":Landroid/content/pm/PackageInfo;
    .local v18, "homeInstaller":Ljava/lang/String;
    :goto_d2
    :try_start_d2
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    move-object v4, v0

    .line 272
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-wide v5, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_dd} :catch_245

    cmp-long v0, v12, v5

    if-nez v0, :cond_fd

    :try_start_e1
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 273
    invoke-static {v7, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    if-eqz v7, :cond_f4

    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 275
    invoke-static {v0, v15, v4}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v0
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_f1} :catch_f8

    if-nez v0, :cond_f4

    goto :goto_fd

    :cond_f4
    const/4 v0, 0x0

    move/from16 v16, v0

    goto :goto_ff

    .line 399
    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :catch_f8
    move-exception v0

    move-object/from16 v16, v7

    goto/16 :goto_248

    .line 275
    .restart local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_fd
    :goto_fd
    const/16 v16, 0x1

    :goto_ff
    move/from16 v5, v16

    .line 276
    .local v5, "needHomeBackup":Z
    if-eqz v5, :cond_12d

    .line 280
    const-string v0, "@home@"

    if-eqz v7, :cond_129

    .line 281
    :try_start_107
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 282
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v11, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 284
    if-eqz v18, :cond_119

    move-object/from16 v6, v18

    goto :goto_11b

    :cond_119
    const-string v6, ""

    :goto_11b
    invoke-virtual {v11, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 285
    invoke-static {v11, v14}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 286
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v9, v0, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto :goto_12d

    .line 288
    :cond_129
    const/4 v6, -0x1

    invoke-virtual {v9, v0, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_12d} :catch_f8

    .line 301
    :cond_12d
    :goto_12d
    :try_start_12d
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 302
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_136} :catch_245

    if-nez v0, :cond_14a

    .line 304
    :try_start_138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 305
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v9, v2, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_149} :catch_f8

    goto :goto_14f

    .line 310
    :cond_14a
    :try_start_14a
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 315
    :goto_14f
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_155
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_159} :catch_245

    if-eqz v0, :cond_231

    :try_start_15b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    .line 316
    .local v16, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v19, v4

    move-object/from16 v4, v16

    .end local v16    # "pkg":Landroid/content/pm/PackageInfo;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .local v19, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 317
    .local v16, "packName":Ljava/lang/String;
    move-object/from16 v20, v4

    move-object/from16 v4, v16

    .end local v16    # "packName":Ljava/lang/String;
    .local v4, "packName":Ljava/lang/String;
    .local v20, "pkg":Landroid/content/pm/PackageInfo;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_173} :catch_f8

    if-eqz v0, :cond_178

    .line 319
    move-object/from16 v4, v19

    goto :goto_155

    .line 321
    :cond_178
    const/16 v16, 0x0

    .line 323
    .local v16, "info":Landroid/content/pm/PackageInfo;
    :try_start_17a
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_17c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17a .. :try_end_17c} :catch_21b
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_17c} :catch_f8

    move-object/from16 v21, v2

    :try_start_17e
    iget v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I
    :try_end_180
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17e .. :try_end_180} :catch_219
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_180} :catch_f8

    move/from16 v22, v5

    const/high16 v5, 0x8000000

    .end local v5    # "needHomeBackup":Z
    .local v22, "needHomeBackup":Z
    :try_start_184
    invoke-virtual {v0, v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_188
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_184 .. :try_end_188} :catch_215
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_188} :catch_f8

    .line 330
    .end local v16    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 332
    :try_start_189
    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b3

    .line 338
    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16

    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-object/from16 v23, v6

    iget-wide v5, v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    cmp-long v2, v16, v5

    if-nez v2, :cond_1b5

    .line 340
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto :goto_155

    .line 332
    :cond_1b3
    move-object/from16 v23, v6

    .line 344
    :cond_1b5
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 345
    .local v2, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v2, :cond_1df

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not backing up package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " since it appears to have no signatures."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_155

    .line 360
    :cond_1df
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 361
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz v5, :cond_1f3

    .line 362
    const/high16 v5, -0x80000000

    invoke-virtual {v11, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 363
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1f8

    .line 365
    :cond_1f3
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v11, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 368
    :goto_1f8
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v5

    .line 369
    .local v5, "infoSignatures":[Landroid/content/pm/Signature;
    nop

    .line 370
    invoke-static {v5}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v6

    .line 369
    invoke-static {v11, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 379
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v9, v4, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 381
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v4    # "packName":Ljava/lang/String;
    .end local v5    # "infoSignatures":[Landroid/content/pm/Signature;
    .end local v20    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_155

    .line 325
    .restart local v4    # "packName":Ljava/lang/String;
    .restart local v16    # "info":Landroid/content/pm/PackageInfo;
    .restart local v20    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_215
    move-exception v0

    move-object/from16 v23, v6

    goto :goto_222

    .end local v22    # "needHomeBackup":Z
    .local v5, "needHomeBackup":Z
    :catch_219
    move-exception v0

    goto :goto_21e

    :catch_21b
    move-exception v0

    move-object/from16 v21, v2

    :goto_21e
    move/from16 v22, v5

    move-object/from16 v23, v6

    .line 328
    .end local v5    # "needHomeBackup":Z
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v22    # "needHomeBackup":Z
    :goto_222
    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_227
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_227} :catch_f8

    .line 329
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_155

    .line 315
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "info":Landroid/content/pm/PackageInfo;
    .end local v19    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v20    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v22    # "needHomeBackup":Z
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "needHomeBackup":Z
    :cond_231
    move-object/from16 v19, v4

    move/from16 v22, v5

    .line 403
    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "needHomeBackup":Z
    nop

    .line 406
    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    move-object/from16 v1, p0

    move-object v3, v7

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v16, v7

    .end local v7    # "home":Landroid/content/ComponentName;
    .local v16, "home":Landroid/content/ComponentName;
    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V

    .line 407
    return-void

    .line 399
    .end local v16    # "home":Landroid/content/ComponentName;
    .restart local v7    # "home":Landroid/content/ComponentName;
    :catch_245
    move-exception v0

    move-object/from16 v16, v7

    .line 401
    .end local v7    # "home":Landroid/content/ComponentName;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "home":Landroid/content/ComponentName;
    :goto_248
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void

    .line 232
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "homeVersion":J
    .end local v14    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v15    # "homeInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "home":Landroid/content/ComponentName;
    .end local v18    # "homeInstaller":Ljava/lang/String;
    :catch_24c
    move-exception v0

    .line 234
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I

    move-result v0

    .line 430
    .local v0, "ancestralRecordVersion":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;

    move-result-object v1

    .line 431
    .local v1, "consumer":Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;
    if-nez v1, :cond_12

    .line 432
    const-string v2, "PMBA"

    const-string v3, "Ancestral restore set version is unknown to this Android version; not restoring"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 436
    :cond_12
    invoke-interface {v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;->consumeRestoreData(Landroid/app/backup/BackupDataInput;)V

    .line 438
    return-void
.end method
