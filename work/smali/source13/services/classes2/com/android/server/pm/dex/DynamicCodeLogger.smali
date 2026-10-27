.class public Lcom/android/server/pm/dex/DynamicCodeLogger;
.super Ljava/lang/Object;
.source "DynamicCodeLogger.java"


# static fields
.field private static final DCL_DEX_SUBTAG:Ljava/lang/String; = "dcl"

.field private static final DCL_NATIVE_SUBTAG:Ljava/lang/String; = "dcln"

.field private static final SNET_TAG:I = 0x534e4554

.field private static final TAG:Ljava/lang/String; = "DynamicCodeLogger"


# instance fields
.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

.field private mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Lcom/android/server/pm/dex/PackageDynamicCodeLoading;)V
    .registers 4
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "packageDynamicCodeLoading"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 76
    iput-object p2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 77
    iput-object p3, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 78
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/Installer;)V
    .registers 3
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 69
    new-instance v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 70
    return-void
.end method

.method private fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "directoryPath"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 202
    return v0

    .line 206
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v1, v2}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1a} :catch_1b

    return v0

    .line 208
    :catch_1b
    move-exception v1

    .line 209
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_12

    .line 83
    nop

    .line 84
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 86
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->clear()V

    .line 258
    return-void
.end method

.method public getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object v0

    return-object v0
.end method

.method public logDynamicCodeLoading(Ljava/lang/String;)V
    .registers 27
    .param p1, "packageName"    # Ljava/lang/String;

    .line 97
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object v9

    .line 98
    .local v9, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    if-nez v9, :cond_b

    .line 99
    return-void

    .line 102
    :cond_b
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v10, v0

    .line 103
    .local v10, "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, "needWrite":Z
    iget-object v2, v9, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v2, v0

    .end local v0    # "needWrite":Z
    .local v2, "needWrite":Z
    :goto_1d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/Map$Entry;

    .line 106
    .local v12, "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 107
    .local v13, "filePath":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 108
    .local v14, "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    iget v15, v14, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 110
    .local v15, "userId":I
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v16

    .line 112
    .local v16, "index":I
    const-wide/16 v6, 0x0

    const-string v5, "DynamicCodeLogger"

    if-ltz v16, :cond_4e

    .line 113
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    move/from16 v17, v2

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_95

    .line 115
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4e
    const/4 v3, 0x0

    .line 118
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 119
    :try_start_50
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v8, v6, v7, v15}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 120
    .local v0, "ownerInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_5c

    const/4 v4, 0x0

    goto :goto_5e

    :cond_5c
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5e} :catch_60

    :goto_5e
    move-object v0, v4

    .line 123
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_62

    .line 121
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_60
    move-exception v0

    move-object v0, v3

    .line 124
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_62
    invoke-virtual {v10, v15, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    if-nez v0, :cond_92

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v3, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v3, v8, v15}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v2, v3

    move-object v4, v0

    move/from16 v17, v2

    goto :goto_95

    .line 125
    :cond_92
    move-object v4, v0

    move/from16 v17, v2

    .line 132
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "needWrite":Z
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v17, "needWrite":Z
    :goto_95
    if-nez v4, :cond_9a

    .line 133
    move/from16 v2, v17

    goto :goto_1d

    .line 138
    :cond_9a
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-direct {v1, v13, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 139
    const/4 v0, 0x2

    move/from16 v18, v0

    .local v0, "storageFlags":I
    goto :goto_b1

    .line 140
    .end local v0    # "storageFlags":I
    :cond_a6
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-direct {v1, v13, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 141
    const/4 v0, 0x1

    move/from16 v18, v0

    .line 148
    .local v18, "storageFlags":I
    :goto_b1
    const/16 v19, 0x0

    .line 154
    .local v19, "hash":[B
    :try_start_b3
    iget-object v2, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;
    :try_end_b9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b3 .. :try_end_b9} :catch_d9

    move-object/from16 v20, v3

    move-object v3, v13

    move-object/from16 v21, v9

    move-object v9, v4

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v21, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    move-object/from16 v4, p1

    move-object/from16 v22, v10

    move-object v10, v5

    .end local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .local v22, "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    move v5, v0

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-wide v11, v6

    .end local v12    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .local v24, "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    move-object/from16 v6, v20

    move/from16 v7, v18

    :try_start_ce
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0
    :try_end_d2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ce .. :try_end_d2} :catch_d7

    move-object/from16 v19, v0

    .line 159
    move-object/from16 v2, v19

    goto :goto_10b

    .line 156
    :catch_d7
    move-exception v0

    goto :goto_e5

    .end local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .end local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .end local v24    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .restart local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    :catch_d9
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object v9, v4

    move-object v10, v5

    move-wide v11, v6

    .line 157
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .end local v12    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .restart local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v24    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    :goto_e5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got InstallerException when hashing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v19

    .line 161
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v19    # "hash":[B
    .local v2, "hash":[B
    :goto_10b
    iget-char v0, v14, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    const/16 v3, 0x44

    if-ne v0, v3, :cond_114

    .line 162
    const-string v0, "dcl"

    goto :goto_116

    .line 163
    :cond_114
    const-string v0, "dcln"

    :goto_116
    move-object v3, v0

    .line 164
    .local v3, "subtag":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "message":Ljava/lang/String;
    if-eqz v2, :cond_14a

    array-length v5, v2

    const/16 v6, 0x20

    if-ne v5, v6, :cond_14a

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_16b

    .line 171
    :cond_14a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got no hash for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v5, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v5, v8, v13, v15}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    or-int v5, v17, v5

    move/from16 v17, v5

    move-object v5, v0

    .line 176
    .end local v0    # "message":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    :goto_16b
    iget-object v0, v14, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_171
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 177
    .local v7, "loadingPackageName":Ljava/lang/String;
    const/4 v10, -0x1

    .line 178
    .local v10, "loadingUid":I
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 179
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_193

    .line 182
    :cond_188
    :try_start_188
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v7, v11, v12, v15}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_188 .. :try_end_190} :catch_192

    move v10, v0

    .line 186
    goto :goto_193

    .line 184
    :catch_192
    move-exception v0

    .line 189
    :goto_193
    const/4 v0, -0x1

    if-eq v10, v0, :cond_199

    .line 190
    invoke-virtual {v1, v3, v10, v5}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    .end local v7    # "loadingPackageName":Ljava/lang/String;
    .end local v10    # "loadingUid":I
    :cond_199
    goto :goto_171

    .line 193
    .end local v2    # "hash":[B
    .end local v3    # "subtag":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v14    # "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    .end local v15    # "userId":I
    .end local v16    # "index":I
    .end local v18    # "storageFlags":I
    .end local v24    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    :cond_19a
    move/from16 v2, v17

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    goto/16 :goto_1d

    .line 143
    .end local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .end local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .local v10, "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .restart local v13    # "filePath":Ljava/lang/String;
    .restart local v14    # "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    .restart local v15    # "userId":I
    .restart local v16    # "index":I
    :cond_1a4
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object v9, v4

    move-object v10, v5

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .end local v12    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .restart local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v24    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not infer CE/DE storage for path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v8, v13, v15}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    or-int v2, v17, v0

    .line 145
    .end local v17    # "needWrite":Z
    .local v2, "needWrite":Z
    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_1d

    .line 195
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v14    # "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    .end local v15    # "userId":I
    .end local v16    # "index":I
    .end local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .end local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .end local v24    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .local v9, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .restart local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1d2
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .end local v9    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .end local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .restart local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_1dd

    .line 196
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 198
    :cond_1dd
    return-void
.end method

.method readAndSync(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 273
    .local p1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read()V

    .line 274
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->syncData(Ljava/util/Map;)V

    .line 275
    return-void
.end method

.method recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "loaderUserId"    # I
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "owningPackageName"    # Ljava/lang/String;
    .param p4, "loadingPackageName"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v3, 0x44

    move-object v1, p3

    move-object v2, p2

    move v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 229
    :cond_13
    return-void
.end method

.method public recordNative(ILjava/lang/String;)V
    .registers 12
    .param p1, "loadingUid"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_2a

    array-length v1, v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_2b

    if-nez v1, :cond_e

    goto :goto_2a

    .line 245
    :cond_e
    nop

    .line 247
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 248
    .local v1, "loadingPackageName":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 250
    .local v8, "loadingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v5, 0x4e

    move-object v3, v1

    move-object v4, p2

    move v6, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 252
    iget-object v2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 254
    :cond_29
    return-void

    .line 240
    .end local v1    # "loadingPackageName":Ljava/lang/String;
    .end local v8    # "loadingUserId":I
    :cond_2a
    :goto_2a
    return-void

    .line 242
    .end local v0    # "packages":[Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method removePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 262
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 264
    :cond_d
    return-void
.end method

.method removeUserPackage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 267
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 268
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 270
    :cond_d
    return-void
.end method

.method writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 220
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 221
    return-void
.end method

.method writeNow()V
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->writeNow()V

    .line 279
    return-void
.end method
