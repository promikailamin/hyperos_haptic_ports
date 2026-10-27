.class abstract Lcom/android/server/pm/InstallArgs;
.super Ljava/lang/Object;
.source "InstallArgs.java"


# instance fields
.field final mAbiOverride:Ljava/lang/String;

.field final mAllowlistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAutoRevokePermissionsMode:I

.field final mDataLoaderType:I

.field final mForceQueryableOverride:Z

.field final mInstallFlags:I

.field final mInstallGrantPermissions:[Ljava/lang/String;

.field final mInstallReason:I

.field final mInstallScenario:I

.field final mInstallSource:Lcom/android/server/pm/InstallSource;

.field mInstructionSets:[Ljava/lang/String;

.field mIsAutoUpdate:Z

.field mIsRemoveDmAfterInstall:Z

.field final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field final mPackageSource:I

.field final mPm:Lcom/android/server/pm/PackageManagerService;

.field final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field final mSigningDetails:Landroid/content/pm/SigningDetails;

.field final mTraceCookie:I

.field final mTraceMethod:Ljava/lang/String;

.field final mUser:Landroid/os/UserHandle;

.field final mVolumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstallParams;)V
    .registers 25
    .param p1, "params"    # Lcom/android/server/pm/InstallParams;

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    .line 105
    iget-object v1, v15, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v2, v15, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v3, v15, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v4, v15, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    iget-object v5, v15, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v6, v15, Lcom/android/server/pm/InstallParams;->mVolumeUuid:Ljava/lang/String;

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    iget-object v9, v15, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    iget-object v10, v15, Lcom/android/server/pm/InstallParams;->mGrantedRuntimePermissions:[Ljava/lang/String;

    iget-object v11, v15, Lcom/android/server/pm/InstallParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget v12, v15, Lcom/android/server/pm/InstallParams;->mAutoRevokePermissionsMode:I

    iget-object v13, v15, Lcom/android/server/pm/InstallParams;->mTraceMethod:Ljava/lang/String;

    iget v14, v15, Lcom/android/server/pm/InstallParams;->mTraceCookie:I

    iget-object v8, v15, Lcom/android/server/pm/InstallParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move-object/from16 v22, v0

    move-object v0, v15

    move-object v15, v8

    iget v8, v0, Lcom/android/server/pm/InstallParams;->mInstallReason:I

    move/from16 v16, v8

    iget v8, v0, Lcom/android/server/pm/InstallParams;->mInstallScenario:I

    move/from16 v17, v8

    iget-boolean v8, v0, Lcom/android/server/pm/InstallParams;->mForceQueryableOverride:Z

    move/from16 v18, v8

    iget v8, v0, Lcom/android/server/pm/InstallParams;->mDataLoaderType:I

    move/from16 v19, v8

    iget v8, v0, Lcom/android/server/pm/InstallParams;->mPackageSource:I

    move/from16 v20, v8

    iget-object v8, v0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v21, v8

    .line 105
    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-direct/range {v0 .. v21}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIILcom/android/server/pm/PackageManagerService;)V

    .line 114
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/pm/InstallParams;->mIsRemoveDmAfterInstall:Z

    move-object/from16 v2, p0

    iput-boolean v1, v2, Lcom/android/server/pm/InstallArgs;->mIsRemoveDmAfterInstall:Z

    .line 115
    iget-boolean v1, v0, Lcom/android/server/pm/InstallParams;->mIsAutoUpdate:Z

    iput-boolean v1, v2, Lcom/android/server/pm/InstallArgs;->mIsAutoUpdate:Z

    .line 117
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIILcom/android/server/pm/PackageManagerService;)V
    .registers 38
    .param p1, "originInfo"    # Lcom/android/server/pm/OriginInfo;
    .param p2, "moveInfo"    # Lcom/android/server/pm/MoveInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p6, "volumeUuid"    # Ljava/lang/String;
    .param p7, "user"    # Landroid/os/UserHandle;
    .param p8, "instructionSets"    # [Ljava/lang/String;
    .param p9, "abiOverride"    # Ljava/lang/String;
    .param p10, "installGrantPermissions"    # [Ljava/lang/String;
    .param p12, "autoRevokePermissionsMode"    # I
    .param p13, "traceMethod"    # Ljava/lang/String;
    .param p14, "traceCookie"    # I
    .param p15, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p16, "installReason"    # I
    .param p17, "installScenario"    # I
    .param p18, "forceQueryableOverride"    # Z
    .param p19, "dataLoaderType"    # I
    .param p20, "packageSource"    # I
    .param p21, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/OriginInfo;",
            "Lcom/android/server/pm/MoveInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            "I",
            "Lcom/android/server/pm/InstallSource;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/SigningDetails;",
            "IIZII",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 78
    .local p11, "allowlistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p21

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 80
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 81
    move/from16 v4, p4

    iput v4, v0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    .line 82
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 83
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/InstallSource;

    iput-object v6, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 84
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    .line 85
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    .line 86
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/pm/InstallArgs;->mInstructionSets:[Ljava/lang/String;

    .line 87
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    .line 88
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/android/server/pm/InstallArgs;->mInstallGrantPermissions:[Ljava/lang/String;

    .line 89
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 90
    move/from16 v12, p12

    iput v12, v0, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    .line 91
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    .line 92
    move/from16 v14, p14

    iput v14, v0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    .line 93
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 94
    move/from16 v2, p16

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    .line 95
    move/from16 v2, p17

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    .line 96
    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    .line 97
    move/from16 v2, p19

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    .line 98
    move/from16 v2, p20

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    .line 99
    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 100
    new-instance v2, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {v2, v1}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 101
    return-void
.end method


# virtual methods
.method abstract cleanUpResourcesLI()V
.end method

.method abstract copyApk()I
.end method

.method doPostCopy(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(II)I
.end method

.method doPreCopy()I
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method getUser()Landroid/os/UserHandle;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected isEphemeral()Z
    .registers 2

    .line 155
    iget v0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
