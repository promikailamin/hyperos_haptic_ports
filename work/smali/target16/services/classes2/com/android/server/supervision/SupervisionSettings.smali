.class public Lcom/android/server/supervision/SupervisionSettings;
.super Ljava/lang/Object;
.source "SupervisionSettings.java"


# static fields
.field public static sInstance:Lcom/android/server/supervision/SupervisionSettings;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mUserData:Landroid/util/SparseArray;

.field public recoveryInfoFile:Landroid/util/AtomicFile;

.field public userDataFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/supervision/SupervisionSettings;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->mUserData:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 73
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "supervision_recovery_info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "supervision"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->recoveryInfoFile:Landroid/util/AtomicFile;

    .line 75
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 77
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "supervision_settings.xml"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->userDataFile:Landroid/util/AtomicFile;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionSettings;->loadUserData()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/supervision/SupervisionSettings;
    .registers 2

    .line 85
    sget-object v0, Lcom/android/server/supervision/SupervisionSettings;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-object v1, Lcom/android/server/supervision/SupervisionSettings;->sInstance:Lcom/android/server/supervision/SupervisionSettings;

    if-nez v1, :cond_11

    .line 87
    new-instance v1, Lcom/android/server/supervision/SupervisionSettings;

    invoke-direct {v1}, Lcom/android/server/supervision/SupervisionSettings;-><init>()V

    sput-object v1, Lcom/android/server/supervision/SupervisionSettings;->sInstance:Lcom/android/server/supervision/SupervisionSettings;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 89
    :cond_11
    :goto_11
    sget-object v1, Lcom/android/server/supervision/SupervisionSettings;->sInstance:Lcom/android/server/supervision/SupervisionSettings;

    monitor-exit v0

    return-object v1

    .line 90
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public anySupervisedUser()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 121
    :goto_2
    iget-object v2, p0, Lcom/android/server/supervision/SupervisionSettings;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 122
    iget-object v2, p0, Lcom/android/server/supervision/SupervisionSettings;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/supervision/SupervisionUserData;

    iget-boolean v2, v2, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    if-eqz v2, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return v0
.end method

.method public changeDirForTesting(Ljava/io/File;)V
    .registers 6

    .line 95
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "supervision_recovery_info.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "supervision"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->recoveryInfoFile:Landroid/util/AtomicFile;

    .line 97
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "supervision_settings.xml"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->userDataFile:Landroid/util/AtomicFile;

    .line 98
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionSettings;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public getRecoveryInfo()Landroid/app/supervision/SupervisionRecoveryInfo;
    .registers 11

    .line 225
    const-string v0, "Retrieving recovery info"

    const-string v1, "SupervisionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->recoveryInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 227
    const-string p0, "Recovery info file does not exist"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 230
    :cond_1a
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionSettings;->recoveryInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_20} :catch_73

    .line 231
    :try_start_20
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 232
    const-string/jumbo v3, "supervision_recovery_info"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 233
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 234
    const-string v4, "account_type"

    invoke-interface {v0, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    const-string v5, "account_name"

    invoke-interface {v0, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    const-string/jumbo v6, "state"

    const/4 v7, 0x0

    .line 237
    invoke-interface {v0, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move-object v7, v2

    .line 239
    :cond_43
    :goto_43
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 240
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "account_data"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 241
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v7

    goto :goto_43

    :catchall_5a
    move-exception v0

    goto :goto_7c

    .line 244
    :cond_5c
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 245
    new-instance v0, Landroid/app/supervision/SupervisionRecoveryInfo;

    invoke-direct {v0, v5, v4, v6, v7}, Landroid/app/supervision/SupervisionRecoveryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    :try_end_6d
    .catchall {:try_start_20 .. :try_end_6d} :catchall_5a

    if-eqz p0, :cond_75

    .line 247
    :try_start_6f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catch_73
    move-exception p0

    goto :goto_87

    :cond_75
    return-object v0

    :cond_76
    if-eqz p0, :cond_8c

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7b} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_7b} :catch_73

    goto :goto_8c

    :goto_7c
    if-eqz p0, :cond_86

    .line 230
    :try_start_7e
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    goto :goto_86

    :catchall_82
    move-exception p0

    :try_start_83
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_86
    :goto_86
    throw v0
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_87} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_87} :catch_73

    .line 248
    :goto_87
    const-string v0, "Failed to get recovery info from xml file"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8c
    :goto_8c
    return-object v2
.end method

.method public getUserData(I)Lcom/android/server/supervision/SupervisionUserData;
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/supervision/SupervisionUserData;

    if-nez v0, :cond_14

    .line 107
    new-instance v0, Lcom/android/server/supervision/SupervisionUserData;

    invoke-direct {v0, p1}, Lcom/android/server/supervision/SupervisionUserData;-><init>(I)V

    .line 108
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionSettings;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public loadUserData()V
    .registers 10

    .line 131
    const-string v0, "Restoring supervision state"

    const-string v1, "SupervisionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 133
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->userDataFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_cf

    .line 136
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->userDataFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_20} :catch_cd

    .line 137
    :try_start_20
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 138
    const-string/jumbo v3, "supervision_data"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 139
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 140
    :cond_2e
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 141
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "supervision_user_data"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 142
    const-string/jumbo v4, "user_id"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 143
    invoke-virtual {p0, v4}, Lcom/android/server/supervision/SupervisionSettings;->getUserData(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object v4

    .line 144
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    iput-object v6, v4, Lcom/android/server/supervision/SupervisionUserData;->supervisionRoleHolders:Landroid/util/ArraySet;

    .line 145
    const-string/jumbo v6, "supervision_enabled"

    invoke-interface {v2, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    .line 146
    const-string/jumbo v6, "supervision_app_package"

    invoke-interface {v2, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/supervision/SupervisionUserData;->supervisionAppPackage:Ljava/lang/String;

    .line 147
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 148
    iput-object v5, v4, Lcom/android/server/supervision/SupervisionUserData;->supervisionAppPackage:Ljava/lang/String;

    goto :goto_71

    :catchall_6f
    move-exception p0

    goto :goto_d0

    .line 150
    :cond_71
    :goto_71
    const-string/jumbo v6, "supervision_lockscreen_enabled"

    .line 151
    invoke-interface {v2, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenEnabled:Z

    :cond_7a
    :goto_7a
    add-int/lit8 v6, v3, 0x1

    .line 152
    invoke-static {v2, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 153
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "supervision_lockscreen_options"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 155
    invoke-static {v2}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenOptions:Landroid/os/PersistableBundle;

    goto :goto_7a

    .line 156
    :cond_96
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "supervision_role_holders_list"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 157
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 158
    :cond_a7
    :goto_a7
    invoke-static {v2, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 159
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "supervision_role_holder"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 160
    const-string/jumbo v7, "package"

    invoke-interface {v2, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 161
    iget-object v8, v4, Lcom/android/server/supervision/SupervisionUserData;->supervisionRoleHolders:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_c6
    .catchall {:try_start_20 .. :try_end_c6} :catchall_6f

    goto :goto_a7

    :cond_c7
    if-eqz v0, :cond_cf

    .line 168
    :try_start_c9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c9 .. :try_end_cc} :catch_cd

    return-void

    :catch_cd
    move-exception p0

    goto :goto_db

    :cond_cf
    :goto_cf
    return-void

    :goto_d0
    if-eqz v0, :cond_da

    .line 136
    :try_start_d2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_da

    :catchall_d6
    move-exception v0

    :try_start_d7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_da
    :goto_da
    throw p0
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_db} :catch_cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d7 .. :try_end_db} :catch_cd

    .line 169
    :goto_db
    const-string v0, "Failed to restore supervision state"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public removeUserData(I)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionSettings;->saveUserData()V

    return-void
.end method

.method public saveRecoveryInfo(Landroid/app/supervision/SupervisionRecoveryInfo;)V
    .registers 10

    .line 261
    const-string v0, "account_data"

    const-string/jumbo v1, "supervision_recovery_info"

    const-string v2, "Saving recovery info"

    const-string v3, "SupervisionService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_14

    .line 263
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionSettings;->recoveryInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    return-void

    :cond_14
    const/4 v2, 0x0

    .line 269
    :try_start_15
    iget-object v4, p0, Lcom/android/server/supervision/SupervisionSettings;->recoveryInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_1b} :catch_65

    .line 270
    :try_start_1b
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 271
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 272
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 273
    invoke-interface {v5, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    const-string v6, "account_type"

    invoke-virtual {p1}, Landroid/app/supervision/SupervisionRecoveryInfo;->getAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    const-string v6, "account_name"

    invoke-virtual {p1}, Landroid/app/supervision/SupervisionRecoveryInfo;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    const-string/jumbo v6, "state"

    invoke-virtual {p1}, Landroid/app/supervision/SupervisionRecoveryInfo;->getState()I

    move-result v7

    invoke-interface {v5, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    invoke-interface {v5, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    invoke-virtual {p1}, Landroid/app/supervision/SupervisionRecoveryInfo;->getAccountData()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 279
    invoke-interface {v5, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    invoke-interface {v5, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 282
    iget-object p1, p0, Lcom/android/server/supervision/SupervisionSettings;->recoveryInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_61} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception p1

    move-object v2, v4

    goto :goto_66

    :catch_65
    move-exception p1

    .line 284
    :goto_66
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionSettings;->userDataFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 285
    const-string p0, "Failed to save recovery info"

    invoke-static {v3, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public saveUserData()V
    .registers 15

    .line 175
    const-string/jumbo v0, "supervision_lockscreen_options"

    const-string/jumbo v1, "supervision_role_holder"

    const-string/jumbo v2, "supervision_role_holders_list"

    const-string/jumbo v3, "supervision_user_data"

    const-string/jumbo v4, "supervision_data"

    .line 176
    const-string v5, "Writing supervision state"

    const-string v6, "SupervisionService"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 178
    :try_start_17
    iget-object v7, p0, Lcom/android/server/supervision/SupervisionSettings;->userDataFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_1d} :catch_bb

    .line 179
    :try_start_1d
    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v8

    .line 180
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v5, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 182
    invoke-interface {v8, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    .line 183
    :goto_30
    iget-object v10, p0, Lcom/android/server/supervision/SupervisionSettings;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_af

    .line 184
    iget-object v10, p0, Lcom/android/server/supervision/SupervisionSettings;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/supervision/SupervisionUserData;

    .line 185
    invoke-interface {v8, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    const-string/jumbo v11, "user_id"

    iget v12, v10, Lcom/android/server/supervision/SupervisionUserData;->userId:I

    invoke-interface {v8, v5, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const-string/jumbo v11, "supervision_enabled"

    iget-boolean v12, v10, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    invoke-interface {v8, v5, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    const-string/jumbo v11, "supervision_app_package"

    .line 191
    iget-object v12, v10, Lcom/android/server/supervision/SupervisionUserData;->supervisionAppPackage:Ljava/lang/String;

    if-nez v12, :cond_60

    const-string v12, ""

    goto :goto_60

    :catch_5d
    move-exception v0

    move-object v5, v7

    goto :goto_bc

    .line 188
    :cond_60
    :goto_60
    invoke-interface {v8, v5, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    const-string/jumbo v11, "supervision_lockscreen_enabled"

    iget-boolean v12, v10, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenEnabled:Z

    invoke-interface {v8, v5, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    iget-object v11, v10, Lcom/android/server/supervision/SupervisionUserData;->supervisionRoleHolders:Landroid/util/ArraySet;

    if-eqz v11, :cond_9a

    invoke-virtual {v11}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9a

    .line 195
    invoke-interface {v8, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    iget-object v11, v10, Lcom/android/server/supervision/SupervisionUserData;->supervisionRoleHolders:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_97

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 197
    invoke-interface {v8, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string/jumbo v13, "package"

    invoke-interface {v8, v5, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    invoke-interface {v8, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7e

    .line 201
    :cond_97
    invoke-interface {v8, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    :cond_9a
    iget-object v11, v10, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenOptions:Landroid/os/PersistableBundle;

    if-eqz v11, :cond_a9

    .line 204
    invoke-interface {v8, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    iget-object v10, v10, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v10, v8}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 206
    invoke-interface {v8, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    :cond_a9
    invoke-interface {v8, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    .line 210
    :cond_af
    invoke-interface {v8, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 212
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionSettings;->userDataFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_ba} :catch_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_ba} :catch_5d

    return-void

    :catch_bb
    move-exception v0

    .line 214
    :goto_bc
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionSettings;->userDataFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 215
    const-string p0, "Failed to save supervision state"

    invoke-static {v6, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
