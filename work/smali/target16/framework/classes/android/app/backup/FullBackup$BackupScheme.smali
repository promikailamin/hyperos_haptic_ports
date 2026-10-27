.class public Landroid/app/backup/FullBackup$BackupScheme;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupScheme"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;,
        Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG_EXCLUDE:Ljava/lang/String; = "exclude"

.field private static final greylist-max-o TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final blacklist TAG_PLATFORM_SPECIFIC_PARAMS:Ljava/lang/String; = "platform-specific-params"


# instance fields
.field private final greylist-max-o CACHE_DIR:Ljava/io/File;

.field private final greylist-max-o DATABASE_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_CACHE_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_DATABASE_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_FILES_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_NOBACKUP_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_ROOT_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_SHAREDPREF_DIR:Ljava/io/File;

.field private final greylist-max-o EXTERNAL_DIR:Ljava/io/File;

.field private final greylist-max-o FILES_DIR:Ljava/io/File;

.field private final greylist-max-o NOBACKUP_DIR:Ljava/io/File;

.field private final greylist-max-o ROOT_DIR:Ljava/io/File;

.field private final greylist-max-o SHAREDPREF_DIR:Ljava/io/File;

.field final blacklist mBackupDestination:I

.field final blacklist mDataExtractionRules:I

.field greylist-max-o mExcludes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mFullBackupContent:I

.field greylist-max-o mIncludes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mIsUsingNewScheme:Ljava/lang/Boolean;

.field final greylist-max-o mPackageManager:Landroid/content/pm/PackageManager;

.field final greylist-max-o mPackageName:Ljava/lang/String;

.field blacklist mPlatformSpecificParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequiredTransportFlags:Ljava/lang/Integer;

.field final greylist-max-o mStorageManager:Landroid/os/storage/StorageManager;

.field private greylist-max-o mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 6

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 493
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 495
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    iput v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    .line 496
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    iput v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    .line 497
    iput p2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mBackupDestination:I

    .line 498
    const-string/jumbo p2, "storage"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageManager;

    iput-object p2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 500
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageName:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p2

    .line 505
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    .line 506
    const-string v1, "foo"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    .line 507
    invoke-virtual {p2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    .line 508
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    .line 509
    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->CACHE_DIR:Ljava/io/File;

    .line 510
    invoke-virtual {p2}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Landroid/app/backup/FullBackup$BackupScheme;->NOBACKUP_DIR:Ljava/io/File;

    .line 512
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p2

    .line 513
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    .line 514
    invoke-virtual {p2, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    .line 515
    invoke-virtual {p2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    .line 516
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    .line 517
    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_CACHE_DIR:Ljava/io/File;

    .line 518
    invoke-virtual {p2}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_NOBACKUP_DIR:Ljava/io/File;

    .line 520
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_9c

    .line 521
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    goto :goto_9e

    .line 523
    :cond_9c
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    .line 525
    :goto_9e
    return-void
.end method

.method private greylist-max-o extractCanonicalFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 9

    .line 1100
    if-nez p2, :cond_4

    .line 1102
    const-string p2, ""

    .line 1104
    :cond_4
    const-string v0, ".."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " "

    const-string v2, "...resolved \""

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "BackupXmlParserLogging"

    if-eqz v0, :cond_41

    .line 1105
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1109
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\", but the \"..\" path is not permitted; skipping."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1106
    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_40
    return-object v3

    .line 1116
    :cond_41
    const-string v0, "//"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1117
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1121
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\", which contains the invalid \"//\" sequence; skipping."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1118
    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_75
    return-object v3

    .line 1128
    :cond_76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist getConfigSectionForBackupDestination(I)Ljava/lang/String;
    .registers 2

    .line 694
    packed-switch p1, :pswitch_data_e

    .line 702
    :pswitch_3
    const/4 p1, 0x0

    return-object p1

    .line 700
    :pswitch_5
    const-string p1, "cross-platform-transfer"

    return-object p1

    .line 698
    :pswitch_8
    const-string p1, "device-transfer"

    return-object p1

    .line 696
    :pswitch_b
    const-string p1, "cloud-backup"

    return-object p1

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o getDirectoryForCriteriaDomain(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1137
    return-object v1

    .line 1139
    :cond_8
    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1140
    iget-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    return-object p1

    .line 1141
    :cond_13
    const-string v0, "database"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1142
    iget-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    return-object p1

    .line 1143
    :cond_1e
    const-string/jumbo v0, "root"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1144
    iget-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    return-object p1

    .line 1145
    :cond_2a
    const-string/jumbo v0, "sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1146
    iget-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    return-object p1

    .line 1147
    :cond_36
    const-string v0, "device_file"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1148
    iget-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    return-object p1

    .line 1149
    :cond_41
    const-string v0, "device_database"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1150
    iget-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    return-object p1

    .line 1151
    :cond_4c
    const-string v0, "device_root"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1152
    iget-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    return-object p1

    .line 1153
    :cond_57
    const-string v0, "device_sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1154
    iget-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    return-object p1

    .line 1155
    :cond_62
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 1156
    iget-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    return-object p1

    .line 1158
    :cond_6d
    return-object v1
.end method

.method private blacklist getParserForResource(I)Landroid/content/res/XmlResourceParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getRequiredFlagsForRule(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Optional;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1018
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1021
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1024
    :cond_11
    const-string p2, "include"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 1027
    const/4 p2, 0x0

    const-string/jumbo v0, "requireFlags"

    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;->getRequiredFlagsFromString(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1030
    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o getRequiredFlagsFromString(Ljava/lang/String;)I
    .registers 9

    .line 993
    nop

    .line 994
    const/4 v0, 0x0

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_70

    .line 998
    :cond_c
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 999
    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_15
    if-ge v2, v1, :cond_6f

    aget-object v4, p1, v2

    .line 1000
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_72

    :cond_20
    goto :goto_3f

    :sswitch_21
    const-string v5, "deviceToDeviceTransfer"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    goto :goto_40

    :sswitch_2b
    const-string v5, "clientSideEncryption"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move v5, v0

    goto :goto_40

    :sswitch_35
    const-string v5, "fakeClientSideEncryption"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x2

    goto :goto_40

    :goto_3f
    const/4 v5, -0x1

    :goto_40
    packed-switch v5, :pswitch_data_80

    goto :goto_4e

    .line 1008
    :pswitch_44
    const/high16 v5, -0x80000000

    or-int/2addr v3, v5

    goto :goto_4e

    .line 1005
    :pswitch_48
    or-int/lit8 v3, v3, 0x2

    .line 1006
    goto :goto_6c

    .line 1002
    :pswitch_4b
    or-int/lit8 v3, v3, 0x1

    .line 1003
    goto :goto_6c

    .line 1010
    :goto_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized requiredFlag provided, value: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FullBackup"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1013
    :cond_6f
    return v3

    .line 996
    :cond_70
    :goto_70
    return v0

    nop

    :sswitch_data_72
    .sparse-switch
        0x1cc617da -> :sswitch_35
        0x595908e5 -> :sswitch_2b
        0x7363e232 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_48
        :pswitch_44
    .end packed-switch
.end method

.method private greylist-max-o getTokenForXmlDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1070
    const-string/jumbo v0, "root"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1071
    const-string/jumbo p1, "r"

    return-object p1

    .line 1072
    :cond_d
    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1073
    const-string p1, "f"

    return-object p1

    .line 1074
    :cond_18
    const-string v0, "database"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1075
    const-string p1, "db"

    return-object p1

    .line 1076
    :cond_23
    const-string/jumbo v0, "sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1077
    const-string/jumbo p1, "sp"

    return-object p1

    .line 1078
    :cond_30
    const-string v0, "device_root"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1079
    const-string p1, "d_r"

    return-object p1

    .line 1080
    :cond_3b
    const-string v0, "device_file"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1081
    const-string p1, "d_f"

    return-object p1

    .line 1082
    :cond_46
    const-string v0, "device_database"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1083
    const-string p1, "d_db"

    return-object p1

    .line 1084
    :cond_51
    const-string v0, "device_sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1085
    const-string p1, "d_sp"

    return-object p1

    .line 1086
    :cond_5c
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 1087
    const-string p1, "ef"

    return-object p1

    .line 1089
    :cond_67
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 3

    .line 393
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_11

    .line 394
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_18

    .line 395
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    goto :goto_18

    .line 398
    :cond_11
    const-string v0, "FullBackup"

    const-string v1, "Unable to access Storage Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method private declared-synchronized blacklist isUsingNewScheme()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 605
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 606
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 609
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 604
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private blacklist logParsingResults(Ljava/util/Set;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 947
    const/4 v0, 0x2

    const-string v1, "BackupXmlParserLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 948
    const-string v0, "\n"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v2, "Xml resource parsing complete."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v2, "Final tally."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v2, "Includes:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v3, " requiredFlags: "

    const-string v4, " path: "

    if-eqz v2, :cond_2d

    .line 953
    const-string p2, "  ...nothing specified (This means the entirety of app data minus excludes)"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 959
    :cond_2d
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_35
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 960
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  domain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 962
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 965
    invoke-virtual {v5}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 967
    invoke-virtual {v5}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getRequiredFlags()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 962
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    goto :goto_67

    .line 969
    :cond_98
    goto :goto_35

    .line 972
    :cond_99
    :goto_99
    const-string p2, "Excludes:"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_aa

    .line 974
    const-string p1, "  ...nothing to exclude."

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 976
    :cond_aa
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ae
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_df

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 980
    invoke-virtual {p2}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 982
    invoke-virtual {p2}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getRequiredFlags()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 977
    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    goto :goto_ae

    .line 986
    :cond_df
    :goto_df
    const-string p1, "  "

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const-string p1, "===================================================="

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_ec
    return-void
.end method

.method private greylist-max-o maybeParseBackupSchemeLocked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 614
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    .line 615
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    .line 616
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPlatformSpecificParams:Ljava/util/Map;

    .line 617
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    .line 618
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    .line 620
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    const/4 v1, 0x2

    const-string v2, "BackupXmlParserLogging"

    if-nez v0, :cond_39

    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    if-nez v0, :cond_39

    .line 622
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 623
    const-string v0, "android:fullBackupContent - \"true\""

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 627
    :cond_39
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found xml scheme: android:fullBackupContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; android:dataExtractionRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_63
    :try_start_63
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mBackupDestination:I

    invoke-direct {p0, v0}, Landroid/app/backup/FullBackup$BackupScheme;->parseSchemeForBackupDestination(I)V
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_63 .. :try_end_68} :catch_6a

    .line 642
    nop

    .line 644
    :cond_69
    :goto_69
    return-void

    .line 639
    :catch_6a
    move-exception v0

    .line 641
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o parseCurrentTagForDomain(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1039
    const-string v0, "include"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1040
    invoke-direct {p0, p4}, Landroid/app/backup/FullBackup$BackupScheme;->getTokenForXmlDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1041
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 1042
    if-nez p2, :cond_20

    .line 1043
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 1044
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    :cond_20
    return-object p2

    .line 1047
    :cond_21
    const-string p3, "exclude"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 1048
    return-object p2

    .line 1051
    :cond_2e
    const/4 p2, 0x2

    const-string p3, "BackupXmlParserLogging"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 1052
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid tag found in xml \""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1055
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "\"; aborting operation."

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1052
    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_57
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unrecognised tag in backup criteria xml ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1059
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private blacklist parseIncludeExcludeTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Optional;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    const-string v0, "domain"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-direct {p0, v0}, Landroid/app/backup/FullBackup$BackupScheme;->getDirectoryForCriteriaDomain(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 865
    const/4 v3, 0x2

    const-string v4, "BackupXmlParserLogging"

    if-nez v2, :cond_41

    .line 866
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 867
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "...parsing \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 870
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\": domain=\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" invalid; skipping"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 867
    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_40
    return-void

    .line 878
    :cond_41
    nop

    .line 879
    const-string/jumbo v5, "path"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Landroid/app/backup/FullBackup$BackupScheme;->extractCanonicalFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 880
    if-nez v1, :cond_50

    .line 881
    return-void

    .line 884
    :cond_50
    invoke-direct {p0, p1, p4}, Landroid/app/backup/FullBackup$BackupScheme;->getRequiredFlagsForRule(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Optional;)I

    move-result p4

    .line 887
    nop

    .line 888
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/backup/FullBackup$BackupScheme;->parseCurrentTagForDomain(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 889
    new-instance p2, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 890
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p4}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    .line 889
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_9f

    .line 892
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "...parsed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 895
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " for domain \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\", requiredFlags + \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 892
    invoke-static {v4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_9f
    const-string p2, "database"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, ". Ignore if nonexistent."

    const-string v2, "...automatically generated "

    if-eqz p2, :cond_12b

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_12b

    .line 908
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, "-journal"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 909
    new-instance v5, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-direct {v5, p2, p4}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_ee
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, "-wal"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 918
    new-instance v5, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-direct {v5, p2, p4}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 919
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_12b

    .line 920
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_12b
    const-string/jumbo p2, "sharedpref"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_181

    .line 930
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_181

    .line 931
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_181

    .line 932
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 933
    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-direct {v0, p2, p4}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 934
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_181

    .line 935
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_181
    return-void
.end method

.method private blacklist parsePlatformSpecificParamsTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;",
            ">;)V"
        }
    .end annotation

    .line 843
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 845
    return-void

    .line 848
    :cond_7
    nop

    .line 849
    const/4 v0, 0x0

    const-string v1, "bundleId"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 850
    const-string/jumbo v2, "teamId"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 851
    nop

    .line 852
    const-string v3, "contentVersion"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 853
    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;

    invoke-direct {v0, v1, v2, p1}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    return-void
.end method

.method private blacklist parseRequiredTransportFlags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 4

    .line 756
    const-string v0, "cloud-backup"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 757
    nop

    .line 758
    const/4 p2, 0x0

    const-string v0, "disableIfNoEncryptionCapabilities"

    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 760
    const-string/jumbo p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 761
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    .line 764
    :cond_20
    return-void
.end method

.method private blacklist parseRules(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Optional;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 822
    nop

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    .line 823
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 824
    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 825
    goto :goto_1

    .line 827
    :cond_16
    invoke-direct {p0, p1, p6}, Landroid/app/backup/FullBackup$BackupScheme;->validateInnerTagContents(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 829
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/Flags;->enableCrossPlatformTransfer()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 830
    const-string v0, "cross-platform-transfer"

    invoke-virtual {v0, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 831
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "platform-specific-params"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 832
    invoke-direct {p0, p1, p7, p4}, Landroid/app/backup/FullBackup$BackupScheme;->parsePlatformSpecificParamsTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 834
    :cond_38
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/app/backup/FullBackup$BackupScheme;->parseIncludeExcludeTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Optional;)V

    goto :goto_1

    .line 837
    :cond_3c
    return-void
.end method

.method private blacklist parseSchemeForBackupDestination(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 648
    invoke-direct {p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;->getConfigSectionForBackupDestination(I)Ljava/lang/String;

    move-result-object v2

    .line 649
    if-nez v2, :cond_1f

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given backup destination isn\'t supported by backup scheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FullBackup"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 657
    :cond_1f
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    const/4 v6, 0x1

    if-eqz v0, :cond_50

    .line 661
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    invoke-direct {p0, v0}, Landroid/app/backup/FullBackup$BackupScheme;->getParserForResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 662
    :try_start_2a
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    iget-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    iget-object v5, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPlatformSpecificParams:Ljava/util/Map;

    .line 663
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/FullBackup$BackupScheme;->parseNewBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v2
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_43

    .line 669
    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 670
    :cond_3a
    if-eqz v2, :cond_51

    .line 672
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    .line 673
    return-void

    .line 661
    :catchall_43
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_4f

    :try_start_47
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw p1

    .line 657
    :cond_50
    move-object v0, p0

    .line 677
    :cond_51
    if-ne p1, v6, :cond_63

    .line 678
    const-wide/32 v1, 0xac2922c

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 679
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    .line 680
    return-void

    .line 683
    :cond_63
    iget p1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    if-eqz p1, :cond_88

    .line 685
    iget p1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    invoke-direct {p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;->getParserForResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 686
    :try_start_6d
    iget-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    iget-object v2, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    invoke-virtual {p0, p1, v1, v2}, Landroid/app/backup/FullBackup$BackupScheme;->parseBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;)V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_7a

    .line 687
    if-eqz p1, :cond_88

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_88

    .line 685
    :catchall_7a
    move-exception v0

    move-object v1, v0

    if-eqz p1, :cond_87

    :try_start_7e
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    goto :goto_87

    :catchall_82
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_87
    :goto_87
    throw v1

    .line 689
    :cond_88
    :goto_88
    return-void
.end method

.method private greylist-max-o sharedDomainToPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    const-string/jumbo v0, "shared/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 386
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v1

    if-ge p1, v1, :cond_23

    .line 387
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 389
    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist validateInnerTagContents(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1168
    if-eqz p1, :cond_bc

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_bc

    .line 1172
    :cond_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "include"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_26

    .line 1173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p1

    if-gt p1, v1, :cond_1e

    goto :goto_63

    .line 1174
    :cond_1e
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "At most 3 tag attributes allowed for \"include\" tag (\"domain\" & \"path\" & optional \"requiredFlags\")."

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1179
    :cond_26
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "exclude"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1180
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p1

    const/4 p2, 0x2

    if-gt p1, p2, :cond_3a

    goto :goto_63

    .line 1181
    :cond_3a
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "At most 2 tag attributes allowed for \"exclude\" tag (\"domain\" & \"path\"."

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1185
    :cond_42
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/Flags;->enableCrossPlatformTransfer()Z

    move-result v0

    const-string v2, "cross-platform-transfer"

    if-eqz v0, :cond_6c

    .line 1186
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "platform-specific-params"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1188
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p1

    if-gt p1, v1, :cond_64

    .line 1210
    :goto_63
    return-void

    .line 1189
    :cond_64
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "At most 3 tag attributes allowed for\"platform-specific-params\" tag (\"bundleId\" & \"teamId\" & \"contentVersion\"."

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1195
    :cond_6c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/Flags;->enableCrossPlatformTransfer()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_9b

    .line 1196
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 1197
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A valid tag is one of \"<include/>\" or \"<exclude/>\" or \"<platform-specific-params/>\". You provided \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1200
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1203
    :cond_9b
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A valid tag is one of \"<include/>\" or \"<exclude/>\". You provided \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1169
    :cond_bc
    :goto_bc
    return-void
.end method

.method private blacklist verifyTopLevelTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 789
    :goto_4
    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 790
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    .line 793
    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 803
    const-string p1, "BackupXmlParserLogging"

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 804
    const-string v0, "\n"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v0, "===================================================="

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found valid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "; parsing xml resource."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string p2, ""

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_4c
    return-void

    .line 794
    :cond_4d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xml file didn\'t start with correct tag ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " ). Found \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 799
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist getRequiredTransportFlags()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 597
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    if-nez v0, :cond_8

    .line 598
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 601
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 596
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method greylist-max-o isFullBackupContentEnabled()Z
    .registers 3

    .line 557
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    if-gez v0, :cond_14

    .line 559
    const/4 v0, 0x2

    const-string v1, "BackupXmlParserLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 560
    const-string v0, "android:fullBackupContent - \"false\""

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_12
    const/4 v0, 0x0

    return v0

    .line 564
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method blacklist isFullBackupEnabled(I)Z
    .registers 5

    .line 529
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isUsingNewScheme()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 530
    invoke-virtual {p0}, Landroid/app/backup/FullBackup$BackupScheme;->getRequiredTransportFlags()I

    move-result v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_b} :catch_16

    .line 533
    and-int/2addr p1, v1

    if-ne p1, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    .line 538
    :cond_10
    nop

    .line 540
    invoke-virtual {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    move-result p1

    return p1

    .line 535
    :catch_16
    move-exception p1

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to interpret the backup scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FullBackup"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return v0
.end method

.method blacklist isFullRestoreEnabled()Z
    .registers 4

    .line 545
    :try_start_0
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isUsingNewScheme()Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_e

    if-eqz v0, :cond_8

    .line 546
    const/4 v0, 0x1

    return v0

    .line 551
    :cond_8
    nop

    .line 553
    invoke-virtual {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    move-result v0

    return v0

    .line 548
    :catch_e
    move-exception v0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to interpret the backup scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullBackup"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized greylist-max-o maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 588
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    if-nez v0, :cond_8

    .line 589
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 591
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 587
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public declared-synchronized greylist-max-o maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 576
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 577
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 579
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 575
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public greylist-max-o parseBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 772
    const-string v0, "full-backup-content"

    invoke-direct {p0, p1, v0}, Landroid/app/backup/FullBackup$BackupScheme;->verifyTopLevelTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 774
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 779
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    .line 774
    const-string v7, "full-backup-content"

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Landroid/app/backup/FullBackup$BackupScheme;->parseRules(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Optional;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-direct {p0, v3, v4}, Landroid/app/backup/FullBackup$BackupScheme;->logParsingResults(Ljava/util/Set;Ljava/util/Map;)V

    .line 784
    return-void
.end method

.method public blacklist parseNewBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 719
    const-string v2, "data-extraction-rules"

    invoke-direct {p0, p1, v2}, Landroid/app/backup/FullBackup$BackupScheme;->verifyTopLevelTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 721
    nop

    .line 722
    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, v8

    move-object v3, v9

    .line 725
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_52

    .line 726
    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 727
    goto :goto_a

    .line 730
    :cond_1f
    nop

    .line 732
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/Flags;->enableCrossPlatformTransfer()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 733
    const-string v2, "cross-platform-transfer"

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 734
    nop

    .line 735
    const-string/jumbo v2, "platform"

    invoke-interface {p1, v9, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_39

    .line 738
    :cond_38
    move-object v7, v3

    :goto_39
    invoke-direct/range {p0 .. p2}, Landroid/app/backup/FullBackup$BackupScheme;->parseRequiredTransportFlags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 739
    nop

    .line 744
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    .line 739
    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/backup/FullBackup$BackupScheme;->parseRules(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Optional;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    move v2, v10

    goto :goto_a

    .line 749
    :cond_52
    invoke-direct {p0, p3, p4}, Landroid/app/backup/FullBackup$BackupScheme;->logParsingResults(Ljava/util/Set;Ljava/util/Map;)V

    .line 751
    return v2
.end method

.method greylist-max-o tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 339
    const-string v0, "FullBackup"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "f"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 340
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 341
    :cond_12
    const-string v2, "db"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 342
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 343
    :cond_21
    const-string/jumbo v2, "r"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 344
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 345
    :cond_31
    const-string/jumbo v2, "sp"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 346
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 347
    :cond_41
    const-string v2, "c"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 348
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->CACHE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 349
    :cond_50
    const-string/jumbo v2, "nb"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 350
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->NOBACKUP_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 351
    :cond_60
    const-string v2, "d_f"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 352
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 353
    :cond_6f
    const-string v2, "d_db"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 354
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 355
    :cond_7e
    const-string v2, "d_r"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 356
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 357
    :cond_8d
    const-string v2, "d_sp"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 358
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 359
    :cond_9c
    const-string v2, "d_c"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 360
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 361
    :cond_ab
    const-string v2, "d_nb"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 362
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_NOBACKUP_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 363
    :cond_ba
    const-string v2, "ef"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 364
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    if-eqz v2, :cond_cd

    .line 365
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 367
    :cond_cd
    return-object v1

    .line 369
    :cond_ce
    const-string/jumbo v2, "shared/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 370
    invoke-direct {p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;->sharedDomainToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 373
    :cond_dc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f2} :catch_f3

    .line 374
    return-object v1

    .line 375
    :catch_f3
    move-exception v2

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading directory for domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-object v1
.end method
