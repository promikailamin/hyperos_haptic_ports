.class Lcom/android/server/pm/FileInstallArgs;
.super Lcom/android/server/pm/InstallArgs;
.source "FileInstallArgs.java"


# instance fields
.field private mCodeFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstallParams;)V
    .registers 2
    .param p1, "params"    # Lcom/android/server/pm/InstallParams;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    .line 73
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .registers 27
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v22, p3

    .line 80
    invoke-static {}, Lcom/android/server/pm/OriginInfo;->fromNothing()Lcom/android/server/pm/OriginInfo;

    move-result-object v2

    sget-object v6, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    sget-object v16, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v22}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIILcom/android/server/pm/PackageManagerService;)V

    .line 86
    if-eqz v0, :cond_30

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    .line 87
    return-void
.end method

.method private cleanUp()Z
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_14

    .line 225
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/FileInstallArgs;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    .line 226
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method private doCopyApk()I
    .registers 8

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/FileInstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    const/4 v1, 0x1

    const-string v2, "PackageManager"

    if-eqz v0, :cond_2e

    .line 100
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/FileInstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " already staged; skipping copy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_27
    iget-object v0, p0, Lcom/android/server/pm/FileInstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    .line 102
    return v1

    .line 106
    :cond_2e
    :try_start_2e
    iget v0, p0, Lcom/android/server/pm/FileInstallArgs;->mInstallFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 107
    .local v0, "isEphemeral":Z
    :goto_37
    iget-object v3, p0, Lcom/android/server/pm/FileInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v4, p0, Lcom/android/server/pm/FileInstallArgs;->mVolumeUuid:Ljava/lang/String;

    .line 108
    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    .line 109
    .local v3, "tempDir":Ljava/io/File;
    iput-object v3, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_43} :catch_90

    .line 113
    .end local v0    # "isEphemeral":Z
    .end local v3    # "tempDir":Ljava/io/File;
    nop

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/FileInstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    .line 115
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    .line 117
    .local v0, "ret":I
    if-eq v0, v1, :cond_5a

    .line 118
    const-string v1, "Failed to copy package"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0

    .line 122
    :cond_5a
    iget-object v1, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    .line 123
    .local v1, "isIncremental":Z
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    const-string v5, "lib"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v3, "libraryRoot":Ljava/io/File;
    const/4 v4, 0x0

    .line 126
    .local v4, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_6e
    iget-object v5, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    invoke-static {v5}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v5

    move-object v4, v5

    .line 127
    iget-object v5, p0, Lcom/android/server/pm/FileInstallArgs;->mAbiOverride:Ljava/lang/String;

    invoke-static {v4, v3, v5, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v2
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7b} :catch_82
    .catchall {:try_start_6e .. :try_end_7b} :catchall_80

    move v0, v2

    .line 133
    :goto_7c
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    goto :goto_8b

    .line 133
    :catchall_80
    move-exception v2

    goto :goto_8c

    .line 129
    :catch_82
    move-exception v5

    .line 130
    .local v5, "e":Ljava/io/IOException;
    :try_start_83
    const-string v6, "Copying native libraries failed"

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_80

    .line 131
    const/16 v0, -0x6e

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_7c

    .line 136
    :goto_8b
    return v0

    .line 133
    :goto_8c
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    throw v2

    .line 110
    .end local v0    # "ret":I
    .end local v1    # "isIncremental":Z
    .end local v3    # "libraryRoot":Ljava/io/File;
    .end local v4    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :catch_90
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create copy file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, -0x4

    return v1
.end method

.method private resolveTargetDir()Ljava/io/File;
    .registers 3

    .line 201
    iget v0, p0, Lcom/android/server/pm/FileInstallArgs;->mInstallFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 202
    .local v0, "isStagedInstall":Z
    :goto_a
    if-eqz v0, :cond_12

    .line 203
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 205
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .registers 6

    .line 231
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 232
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 233
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    .line 234
    .local v1, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 235
    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    const/4 v4, 0x0

    .line 234
    invoke-static {v2, v3, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 236
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 238
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v3}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v0

    .line 242
    .end local v1    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/pm/FileInstallArgs;->cleanUp()Z

    .line 243
    iget-object v1, p0, Lcom/android/server/pm/FileInstallArgs;->mInstructionSets:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/FileInstallArgs;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method copyApk()I
    .registers 4

    .line 90
    const-wide/32 v0, 0x40000

    const-string v2, "copyApk"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 92
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/pm/FileInstallArgs;->doCopyApk()I

    move-result v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 94
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    return v2

    .line 94
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 95
    throw v2
.end method

.method doPostDeleteLI(Z)Z
    .registers 3
    .param p1, "delete"    # Z

    .line 265
    invoke-virtual {p0}, Lcom/android/server/pm/FileInstallArgs;->cleanUpResourcesLI()V

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .registers 4
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .line 210
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 211
    invoke-direct {p0}, Lcom/android/server/pm/FileInstallArgs;->cleanUp()Z

    .line 213
    :cond_6
    return p1
.end method

.method doPreInstall(I)I
    .registers 3
    .param p1, "status"    # I

    .line 140
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 141
    invoke-direct {p0}, Lcom/android/server/pm/FileInstallArgs;->cleanUp()Z

    .line 143
    :cond_6
    return p1
.end method

.method doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
    .registers 12
    .param p1, "status"    # I
    .param p2, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 148
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_8

    .line 149
    invoke-direct {p0}, Lcom/android/server/pm/FileInstallArgs;->cleanUp()Z

    .line 150
    return v1

    .line 153
    :cond_8
    invoke-direct {p0}, Lcom/android/server/pm/FileInstallArgs;->resolveTargetDir()Ljava/io/File;

    move-result-object v2

    .line 154
    .local v2, "targetDir":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    .line 155
    .local v3, "beforeCodeFile":Ljava/io/File;
    nop

    .line 156
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 158
    .local v4, "afterCodeFile":Ljava/io/File;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    const-string v6, "PackageManager"

    if-eqz v5, :cond_3d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Renaming "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3d
    iget-object v5, p0, Lcom/android/server/pm/FileInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v5, :cond_4f

    .line 160
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    move v5, v0

    goto :goto_50

    :cond_4f
    move v5, v1

    .line 162
    .local v5, "onIncremental":Z
    :goto_50
    :try_start_50
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    const/16 v8, 0x1fd

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    .line 163
    if-eqz v5, :cond_63

    .line 166
    iget-object v7, p0, Lcom/android/server/pm/FileInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v7, v3, v4}, Landroid/os/incremental/IncrementalManager;->linkCodePath(Ljava/io/File;Ljava/io/File;)V

    goto :goto_6e

    .line 168
    :cond_63
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_6e} :catch_b8
    .catch Landroid/system/ErrnoException; {:try_start_50 .. :try_end_6e} :catch_b8

    .line 173
    :goto_6e
    nop

    .line 175
    if-nez v5, :cond_7d

    invoke-static {v4}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_7d

    .line 176
    const-string v0, "Failed to restorecon"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v1

    .line 181
    :cond_7d
    iput-object v4, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    .line 185
    :try_start_7f
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_86} :catch_a0

    .line 189
    nop

    .line 190
    nop

    .line 191
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v3, v4, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 192
    nop

    .line 193
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v3, v4, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 195
    return v0

    .line 186
    :catch_a0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    return v1

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b8
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Failed to rename"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    return v1
.end method

.method getCodePath()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V
    .registers 10
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 247
    .local p1, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 248
    if-eqz p2, :cond_2f

    .line 251
    invoke-static {p2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    .local v2, "codePath":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_2e

    aget-object v5, v0, v4

    .line 255
    .local v5, "dexCodeInstructionSet":Ljava/lang/String;
    :try_start_22
    iget-object v6, p0, Lcom/android/server/pm/FileInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v2, v5}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_22 .. :try_end_29} :catch_2a

    .line 257
    goto :goto_2b

    .line 256
    :catch_2a
    move-exception v6

    .line 253
    .end local v5    # "dexCodeInstructionSet":Ljava/lang/String;
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 259
    .end local v2    # "codePath":Ljava/lang/String;
    :cond_2e
    goto :goto_10

    .line 249
    .end local v0    # "dexCodeInstructionSets":[Ljava/lang/String;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "instructionSet == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_37
    return-void
.end method
