.class final Lcom/android/server/pm/MoveInstallArgs;
.super Lcom/android/server/pm/InstallArgs;
.source "MoveInstallArgs.java"


# instance fields
.field private mCodeFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstallParams;)V
    .registers 2
    .param p1, "params"    # Lcom/android/server/pm/InstallParams;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    .line 42
    return-void
.end method

.method private cleanUp(Ljava/lang/String;)V
    .registers 16
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "toPathName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v1, "codeFile":Ljava/io/File;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v4, v4, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Lcom/android/server/pm/MoveInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 104
    .local v2, "userIds":[I
    iget-object v3, p0, Lcom/android/server/pm/MoveInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 112
    const v4, 0x20003

    .line 114
    .local v4, "flags":I
    :try_start_4c
    array-length v5, v2

    const/4 v6, 0x0

    :goto_4e
    if-ge v6, v5, :cond_71

    aget v10, v2, v6
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_78

    .line 116
    .local v10, "userId":I
    :try_start_52
    iget-object v7, p0, Lcom/android/server/pm/MoveInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v8, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v9, v8, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    const v11, 0x20003

    const-wide/16 v12, 0x0

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_63
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_52 .. :try_end_63} :catch_64
    .catchall {:try_start_52 .. :try_end_63} :catchall_78

    .line 120
    goto :goto_6e

    .line 118
    :catch_64
    move-exception v7

    .line 119
    .local v7, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_65
    const-string v8, "PackageManager"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v7    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v10    # "userId":I
    :goto_6e
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 122
    :cond_71
    iget-object v5, p0, Lcom/android/server/pm/MoveInstallArgs;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    .line 123
    .end local v4    # "flags":I
    monitor-exit v3

    .line 124
    return-void

    .line 123
    :catchall_78
    move-exception v4

    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_65 .. :try_end_7a} :catchall_78

    throw v4
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .registers 2

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method copyApk()I
    .registers 11

    .line 45
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_3c

    .line 46
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_3c
    iget-object v0, p0, Lcom/android/server/pm/MoveInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v0

    .line 51
    :try_start_41
    iget-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v3, v1, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v4, v1, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v5, v1, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget v6, v1, Lcom/android/server/pm/MoveInfo;->mAppId:I

    iget-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v7, v1, Lcom/android/server/pm/MoveInfo;->mSeInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget v8, v1, Lcom/android/server/pm/MoveInfo;->mTargetSdkVersion:I

    iget-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v9, v1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_64
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_41 .. :try_end_64} :catch_a4
    .catchall {:try_start_41 .. :try_end_64} :catchall_a2

    .line 57
    nop

    .line 58
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_a2

    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "toPathName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mCodeFile:Ljava/io/File;

    .line 62
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v1, :cond_a0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "codeFile after move is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/MoveInstallArgs;->mCodeFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_a0
    const/4 v1, 0x1

    return v1

    .line 58
    .end local v0    # "toPathName":Ljava/lang/String;
    :catchall_a2
    move-exception v1

    goto :goto_b0

    .line 54
    :catch_a4
    move-exception v1

    .line 55
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_a5
    const-string v2, "PackageManager"

    const-string v3, "Failed to move app"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/16 v2, -0x6e

    monitor-exit v0

    return v2

    .line 58
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_a5 .. :try_end_b1} :catchall_a2

    throw v1
.end method

.method doPostDeleteLI(Z)Z
    .registers 3
    .param p1, "delete"    # Z

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method doPostInstall(II)I
    .registers 4
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .line 85
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/MoveInstallArgs;->cleanUp(Ljava/lang/String;)V

    goto :goto_12

    .line 88
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/MoveInstallArgs;->cleanUp(Ljava/lang/String;)V

    .line 90
    :goto_12
    return p1
.end method

.method doPreInstall(I)I
    .registers 3
    .param p1, "status"    # I

    .line 68
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    .line 69
    iget-object v0, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/MoveInstallArgs;->cleanUp(Ljava/lang/String;)V

    .line 71
    :cond_a
    return p1
.end method

.method doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
    .registers 4
    .param p1, "status"    # I
    .param p2, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 76
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/android/server/pm/MoveInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/MoveInstallArgs;->cleanUp(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_c
    return v0
.end method

.method getCodePath()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/MoveInstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method
