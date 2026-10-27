.class public final Lcom/android/server/pm/VerifyingSession;
.super Ljava/lang/Object;
.source "VerifyingSession.java"


# instance fields
.field public final mDataLoaderType:I

.field public mErrorMessage:Ljava/lang/String;

.field public final mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mIsInherit:Z

.field public final mIsStaged:Z

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSessionId:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mUser:Landroid/os/UserHandle;

.field public final mUserActionRequired:Z

.field public final mUserActionRequiredType:I

.field public final mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

.field public mWaitForEnableRollbackToComplete:Z

.field public mWaitForVerificationToComplete:Z


# direct methods
.method public static synthetic $r8$lambda$xNyXQ1No_dHYiE45ZanZzyDqER8(Lcom/android/server/pm/VerifyingSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;ZLcom/android/server/pm/PackageManagerService;)V
    .registers 14

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 120
    iput v0, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    .line 136
    iput-object p11, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 137
    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    .line 138
    invoke-static {p2}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 139
    iput-object p3, p0, Lcom/android/server/pm/VerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 140
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 141
    iput-object p5, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 142
    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 143
    new-instance p1, Lcom/android/server/pm/VerificationInfo;

    iget-object p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object p3, p4, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget p5, p4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-direct {p1, p2, p3, p5, p6}, Lcom/android/server/pm/VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    .line 149
    iput-object p7, p0, Lcom/android/server/pm/VerifyingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 150
    iget-wide p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p1, p0, Lcom/android/server/pm/VerifyingSession;->mRequiredInstalledVersionCode:J

    .line 151
    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 p2, 0x0

    if-eqz p1, :cond_3c

    .line 152
    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p1

    goto :goto_3d

    :cond_3c
    move p1, p2

    :goto_3d
    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    .line 153
    iput p8, p0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    .line 154
    iput-object p9, p0, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 155
    iput-boolean p10, p0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequired:Z

    .line 156
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequiredType:I

    .line 157
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, p2

    :goto_50
    iput-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mIsInherit:Z

    .line 158
    iget-boolean p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean p1, p0, Lcom/android/server/pm/VerifyingSession;->mIsStaged:Z

    .line 159
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mInstallReason:I

    return-void
.end method

.method public static matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    .registers 7

    .line 673
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x0

    if-ge v1, v0, :cond_21

    .line 675
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 676
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_13

    goto :goto_1e

    .line 680
    :cond_13
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 681
    iget-object p0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_22

    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    move-object p0, v2

    :goto_22
    if-nez p0, :cond_25

    return-object v2

    .line 690
    :cond_25
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getDataLoaderType()I
    .registers 1

    .line 798
    iget p0, p0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    return p0
.end method

.method public getDefaultVerificationResponse()I
    .registers 4

    .line 547
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 548
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 547
    const-string v2, "ensure_verify_apps"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, -0x1

    return p0

    .line 551
    :cond_16
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "verifier_default_response"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 1

    .line 789
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallerPackageUid()I
    .registers 1

    .line 810
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    return p0
.end method

.method public getRet()I
    .registers 1

    .line 786
    iget p0, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    return p0
.end method

.method public getSessionId()I
    .registers 1

    .line 795
    iget p0, p0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    return p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 1

    .line 792
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public getUserActionRequiredType()I
    .registers 1

    .line 801
    iget p0, p0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequiredType:I

    return p0
.end method

.method public handleReturnCode()V
    .registers 3

    .line 739
    iget-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    if-eqz v0, :cond_9

    goto :goto_14

    .line 743
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->sendVerificationCompleteNotification()V

    .line 744
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    .line 745
    invoke-static {p0}, Lcom/android/server/pm/PackageMetrics;->onVerificationFailed(Lcom/android/server/pm/VerifyingSession;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public handleRollbackEnabled()V
    .registers 2

    const/4 v0, 0x0

    .line 734
    iput-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    .line 735
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    return-void
.end method

.method public handleStartVerify()V
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    iget-object v4, p0, Lcom/android/server/pm/VerifyingSession;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-wide v2, p0, Lcom/android/server/pm/VerifyingSession;->mRequiredInstalledVersionCode:J

    iget v4, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v1

    .line 174
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    .line 175
    iget v1, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    goto :goto_56

    .line 181
    :cond_31
    iget-object v1, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v1, v1, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v1, :cond_56

    .line 182
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->isARollback()Z

    move-result v1

    .line 183
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->isApex()Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->isArchivedInstallation()Z

    move-result v2

    if-nez v2, :cond_4c

    if-nez v1, :cond_4c

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/server/pm/VerifyingSession;->sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V

    .line 187
    :cond_4c
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_56

    .line 188
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->sendEnableRollbackRequest()V

    :cond_56
    :goto_56
    return-void
.end method

.method public handleVerificationFinished()V
    .registers 2

    const/4 v0, 0x0

    .line 727
    iput-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    .line 728
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    return-void
.end method

.method public final isARollback()Z
    .registers 3

    .line 194
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    const-string v0, "android"

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z
    .registers 9

    .line 563
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 564
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 563
    const-string/jumbo v1, "verifier_verify_adb_installs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 567
    :goto_16
    iget-object v3, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v4, "ensure_verify_apps"

    invoke-virtual {v3, p2, v4}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2a

    if-nez v0, :cond_29

    .line 569
    const-string p0, "PackageManager"

    const-string p1, "Force verification of ADB install because of user restriction."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return v2

    :cond_2a
    if-nez v0, :cond_2d

    return v1

    :cond_2d
    if-eqz p3, :cond_3c

    .line 581
    iget-object p2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/VerifyingSession;->packageExists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    .line 586
    :cond_38
    iget-boolean p0, p1, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    xor-int/2addr p0, v2

    return p0

    :cond_3c
    return v2
.end method

.method public isApex()Z
    .registers 2

    .line 813
    iget p0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isArchivedInstallation()Z
    .registers 2

    .line 816
    iget p0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isInherit()Z
    .registers 1

    .line 807
    iget-boolean p0, p0, Lcom/android/server/pm/VerifyingSession;->mIsInherit:Z

    return p0
.end method

.method public isInstant()Z
    .registers 1

    .line 804
    iget p0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isStaged()Z
    .registers 1

    .line 819
    iget-boolean p0, p0, Lcom/android/server/pm/VerifyingSession;->mIsStaged:Z

    return p0
.end method

.method public final isVerificationEnabled(Landroid/content/pm/PackageInfoLite;ILjava/util/List;)Z
    .registers 9

    .line 603
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    .line 604
    :goto_8
    iget v1, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v4

    :goto_14
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1d

    .line 609
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/pm/VerifyingSession;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result p0

    return p0

    :cond_1d
    if-eqz v2, :cond_20

    return v4

    .line 617
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->isInstant()Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_54

    .line 618
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 619
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_32
    :cond_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_54

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 620
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 622
    :try_start_44
    iget-object v1, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 623
    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_53} :catch_32

    return v4

    :cond_54
    return v3
.end method

.method public final matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    .registers 10

    .line 638
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    if-eqz v0, :cond_34

    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_34

    .line 642
    :cond_8
    array-length v0, v0

    .line 643
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_33

    .line 645
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    aget-object v3, v3, v2

    .line 647
    iget-object v4, v3, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/android/server/pm/VerifyingSession;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_20

    goto :goto_30

    .line 653
    :cond_20
    iget-object v5, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageManagerService;->getUidForVerifier(Landroid/content/pm/VerifierInfo;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2a

    goto :goto_30

    .line 662
    :cond_2a
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {p3, v3}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_33
    return-object v1

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public final packageExists(Ljava/lang/String;)Z
    .registers 2

    .line 557
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 558
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public populateInstallerExtras(Landroid/content/Intent;)V
    .registers 4

    .line 694
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-eqz v0, :cond_37

    .line 698
    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_16

    .line 699
    const-string v1, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 702
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    if-eqz v0, :cond_21

    .line 703
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 706
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    if-ltz v0, :cond_2c

    .line 707
    const-string v1, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    :cond_2c
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget p0, p0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    if-ltz p0, :cond_37

    .line 711
    const-string v0, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_37
    return-void
.end method

.method public final sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V
    .registers 5

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 201
    new-instance v0, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/VerifyingSession;)V

    .line 203
    iget-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 205
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pm/VerifyingSession;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    .line 209
    invoke-virtual {v0}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 210
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_24
    return-void
.end method

.method public sendEnableRollbackRequest()V
    .registers 10

    .line 215
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    const-wide/32 v2, 0x40000

    .line 216
    const-string v0, "enable_rollback"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    iget v3, p0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10000001

    .line 228
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    .line 236
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    iget-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v4, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    .line 244
    const-string/jumbo v0, "rollback"

    const-string v2, "enable_rollback_timeout"

    const-wide/16 v3, 0x2710

    invoke-static {v0, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_5a

    goto :goto_5b

    :cond_5a
    move-wide v3, v5

    .line 251
    :goto_5b
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 252
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 253
    iget v1, p0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 254
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .registers 48

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 267
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 268
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v4, v5, :cond_1c

    .line 269
    iget-object v4, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 274
    :cond_1c
    iget-boolean v5, v2, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    if-eqz v5, :cond_22

    .line 275
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_22
    move-object v7, v4

    .line 277
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    .line 279
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 280
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    iget v5, v0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    and-int/lit8 v6, v5, 0x20

    const/16 v17, 0x0

    const/4 v15, 0x1

    if-eqz v6, :cond_83

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-nez v5, :cond_83

    .line 287
    const-string v5, "debug.pm.adb_verifier_override_packages"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_83

    .line 289
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 290
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 291
    array-length v8, v5

    move/from16 v9, v17

    :goto_5e
    if-ge v9, v8, :cond_74

    aget-object v10, v5, v9

    .line 292
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_71

    invoke-virtual {v0, v10}, Lcom/android/server/pm/VerifyingSession;->packageExists(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_71

    .line 293
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_71
    add-int/lit8 v9, v9, 0x1

    goto :goto_5e

    .line 297
    :cond_74
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_83

    .line 302
    invoke-virtual {v0, v2, v13, v15}, Lcom/android/server/pm/VerifyingSession;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result v5

    if-nez v5, :cond_83

    move/from16 v18, v15

    goto :goto_86

    :cond_83
    move-object v6, v4

    move/from16 v18, v17

    .line 311
    :goto_86
    iget-object v4, v0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v4, :cond_3b8

    invoke-virtual {v0, v2, v13, v6}, Lcom/android/server/pm/VerifyingSession;->isVerificationEnabled(Landroid/content/pm/PackageInfoLite;ILjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_94

    goto/16 :goto_3b8

    .line 321
    :cond_94
    iget-object v4, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v9

    .line 323
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v15

    .line 324
    :goto_9f
    const-string v5, "PackageManager"

    if-ltz v4, :cond_d4

    .line 325
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v9, v8, v7}, Lcom/android/server/pm/Computer;->isApplicationEffectivelyEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v8

    if-nez v8, :cond_d1

    .line 327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Required verifier: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is disabled"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 327
    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_d1
    add-int/lit8 v4, v4, -0x1

    goto :goto_9f

    .line 333
    :cond_d4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v8, v17

    :goto_da
    const-wide/32 v10, 0x10000000

    if-ge v8, v4, :cond_ef

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v8, v8, 0x1

    check-cast v12, Ljava/lang/String;

    .line 334
    invoke-interface {v9, v12, v10, v11, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v10

    .line 336
    invoke-virtual {v3, v10}, Lcom/android/server/pm/PackageVerificationState;->addRequiredVerifierUid(I)V

    goto :goto_da

    .line 339
    :cond_ef
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x10000000

    .line 340
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 341
    new-instance v14, Ljava/io/File;

    iget-object v10, v0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v10, v10, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "application/vnd.android.package-archive"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {v4, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v10, v8

    .line 346
    iget-object v8, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v14, v11

    const-string v11, "application/vnd.android.package-archive"

    move/from16 v21, v12

    move-object/from16 v16, v14

    move v14, v13

    const-wide/16 v12, 0x0

    move-object/from16 v23, v10

    move-object v10, v4

    move-object/from16 v4, v16

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v19

    move-object v8, v10

    move v13, v14

    .line 355
    const-string v10, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v8, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v11, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    iget v12, v0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v11, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    iget-object v12, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v11, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    iget v12, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const-string v11, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    move-object v12, v9

    move-object v14, v10

    .line 368
    invoke-virtual {v2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v9

    .line 366
    invoke-virtual {v8, v11, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 370
    iget-object v9, v0, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v9

    .line 371
    iget-object v10, v0, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v10}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v10

    .line 374
    invoke-static {v9}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v16, v14

    const-string v14, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    if-eqz v11, :cond_16b

    .line 375
    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 377
    invoke-virtual {v8, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_16c

    :cond_16b
    const/4 v9, 0x0

    .line 382
    :goto_16c
    iget v10, v0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    const-string v11, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    iget v10, v0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    move-object/from16 v21, v14

    const-string v14, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v8, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const-string v10, "android.content.pm.extra.USER_ACTION_REQUIRED"

    iget-boolean v15, v0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequired:Z

    invoke-virtual {v8, v10, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    invoke-virtual {v0, v8}, Lcom/android/server/pm/VerifyingSession;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 393
    iget v10, v0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    const/4 v15, 0x2

    if-ne v10, v15, :cond_19d

    iget-object v10, v0, Lcom/android/server/pm/VerifyingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 394
    invoke-virtual {v10}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v10

    const/4 v15, 0x4

    if-ne v10, v15, :cond_19d

    .line 395
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getDefaultVerificationResponse()I

    move-result v10

    const/4 v15, 0x1

    if-ne v10, v15, :cond_19e

    move v10, v15

    goto :goto_1a0

    :cond_19d
    const/4 v15, 0x1

    :cond_19e
    move/from16 v10, v17

    .line 397
    :goto_1a0
    iget-object v15, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v15, v10}, Lcom/android/server/pm/VerificationUtils;->getVerificationTimeout(Landroid/content/Context;Z)J

    move-result-wide v29

    .line 401
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v15

    .line 400
    invoke-virtual {v0, v2, v15, v3}, Lcom/android/server/pm/VerifyingSession;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v34, v8

    .line 404
    iget-boolean v8, v2, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    if-eqz v8, :cond_1d6

    if-nez v15, :cond_1bd

    .line 406
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 408
    :cond_1bd
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v35, v9

    const-string v9, "android"

    move/from16 v36, v10

    const-string v10, "com.android.server.sdksandbox.SdkSandboxVerifierReceiver"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    :goto_1d4
    move-object v3, v15

    goto :goto_1db

    :cond_1d6
    move-object/from16 v35, v9

    move/from16 v36, v10

    goto :goto_1d4

    .line 416
    :goto_1db
    iget-object v8, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v9, Lcom/android/server/DeviceIdleInternal;

    .line 417
    invoke-virtual {v8, v9}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/DeviceIdleInternal;

    .line 418
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v28

    const/16 v32, 0x131

    .line 419
    const-string v33, ""

    const/16 v31, 0x0

    invoke-virtual/range {v28 .. v33}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    if-eqz v3, :cond_206

    .line 428
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_21a

    .line 431
    const-string v3, "Additional verifiers required, but none installed."

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, -0x16

    .line 432
    invoke-virtual {v0, v9, v3}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    :cond_206
    move-object/from16 v20, v4

    move-object/from16 v41, v11

    move-object/from16 v39, v12

    move-object/from16 v40, v14

    move-object/from16 v43, v16

    move-object/from16 v42, v21

    move-object/from16 v3, v34

    const/4 v4, 0x1

    const/4 v11, 0x0

    const/16 v27, 0x2

    goto/16 :goto_27d

    :cond_21a
    move/from16 v10, v17

    :goto_21c
    if-ge v10, v9, :cond_206

    .line 435
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    move/from16 v31, v9

    .line 436
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    move/from16 v32, v10

    .line 437
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v33, v15

    const/16 v15, 0x131

    move-object/from16 v37, v16

    const-string/jumbo v16, "package verifier"

    move-object/from16 v38, v14

    const/4 v14, 0x0

    move-object/from16 p3, v3

    move-object/from16 v20, v4

    move-object/from16 v41, v11

    move-object/from16 v39, v12

    move-object/from16 v42, v21

    move-wide/from16 v11, v29

    move-object/from16 v1, v33

    move-object/from16 v3, v34

    move-object/from16 v43, v37

    move-object/from16 v40, v38

    const/4 v4, 0x1

    const/16 v27, 0x2

    .line 436
    invoke-interface/range {v8 .. v16}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 441
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 442
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 443
    iget-object v1, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 445
    invoke-virtual/range {v28 .. v28}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    const/4 v11, 0x0

    .line 443
    invoke-virtual {v1, v9, v7, v11, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v10, v32, 0x1

    move/from16 v1, p1

    move-object/from16 v4, v20

    move/from16 v9, v31

    move-object/from16 v12, v39

    move-object/from16 v14, v40

    move-object/from16 v11, v41

    move-object/from16 v16, v43

    move-object/from16 v3, p3

    goto :goto_21c

    .line 450
    :goto_27d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_289

    .line 451
    const-string v0, "No required verifiers"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 458
    :cond_289
    iget-object v1, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_294

    :goto_291
    move/from16 v1, v27

    goto :goto_29d

    .line 461
    :cond_294
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getDefaultVerificationResponse()I

    move-result v1

    if-ne v1, v4, :cond_29b

    goto :goto_291

    :cond_29b
    const/4 v15, -0x1

    move v1, v15

    .line 467
    :goto_29d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2a1
    move/from16 v5, v17

    if-ge v5, v2, :cond_3a9

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v17, v5, 0x1

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    move-object/from16 v5, v39

    const-wide/32 v14, 0x10000000

    .line 468
    invoke-interface {v5, v10, v14, v15, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v9

    if-eqz v18, :cond_2bf

    .line 473
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v4, :cond_2c8

    :cond_2bf
    move-object/from16 v11, v20

    move-object/from16 v4, v35

    move-object/from16 v38, v40

    move-object/from16 v14, v43

    goto :goto_31a

    .line 487
    :cond_2c8
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v14, v23

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v12, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v15, 0x10000000

    .line 489
    invoke-virtual {v12, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v4, 0x20

    .line 490
    invoke-virtual {v12, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 491
    new-instance v4, Ljava/io/File;

    iget-object v11, v0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v11, v11, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v11, v20

    invoke-virtual {v12, v4, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iget v4, v0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    move-object/from16 v14, v40

    invoke-virtual {v12, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget v4, v0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    move-object/from16 v38, v14

    move-object/from16 v14, v41

    invoke-virtual {v12, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v4, v35

    move-object/from16 v14, v42

    if-eqz v35, :cond_307

    .line 496
    invoke-virtual {v12, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    :cond_307
    invoke-virtual {v12, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v42, v14

    move/from16 v14, p1

    neg-int v15, v14

    move-object/from16 v14, v43

    .line 501
    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v27, 0x0

    :goto_316
    move-object/from16 v20, v12

    move v12, v9

    goto :goto_335

    .line 475
    :goto_31a
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-nez v18, :cond_32d

    .line 478
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v15

    .line 477
    invoke-static {v10, v15}, Lcom/android/server/pm/VerifyingSession;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v15

    .line 479
    invoke-virtual {v12, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_330

    .line 481
    :cond_32d
    invoke-virtual {v12, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    :goto_330
    const-string v15, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v27, v15

    goto :goto_316

    .line 506
    :goto_335
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    const/16 v15, 0x131

    const-string/jumbo v16, "package verifier"

    move-object/from16 v37, v14

    const/4 v14, 0x0

    move-object/from16 v22, v11

    move v0, v12

    move-object/from16 v24, v23

    move-wide/from16 v11, v29

    const/high16 v23, 0x10000000

    const-wide/32 v25, 0x10000000

    const/16 v29, 0x0

    invoke-interface/range {v8 .. v16}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    move-object/from16 v34, v3

    move-object/from16 v30, v8

    move/from16 v16, v13

    .line 510
    new-instance v3, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v3, v1, v0}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v35, v4

    move-object/from16 v39, v5

    move-wide v4, v11

    move-object/from16 v31, v29

    move/from16 v1, p1

    move-object/from16 v29, v22

    move/from16 v22, v2

    move/from16 v2, v36

    .line 513
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/VerifyingSession;->startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V

    move-wide v2, v4

    .line 518
    iget-object v4, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 519
    invoke-virtual/range {v28 .. v28}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    const/4 v14, 0x0

    move v4, v15

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 p2, v2

    move v2, v4

    move-object v4, v6

    move-object/from16 v6, v20

    move-object/from16 v8, v27

    .line 518
    invoke-virtual/range {v5 .. v15}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move-object v6, v4

    move/from16 v13, v16

    move/from16 v1, v21

    move-object/from16 v23, v24

    move-object/from16 v20, v29

    move-object/from16 v8, v30

    move-object/from16 v11, v31

    move-object/from16 v3, v34

    move-object/from16 v43, v37

    move-object/from16 v40, v38

    move-wide/from16 v29, p2

    move v4, v2

    move/from16 v2, v22

    goto/16 :goto_2a1

    :cond_3a9
    move/from16 v1, p1

    move v2, v4

    const-wide/32 v3, 0x40000

    .line 523
    const-string/jumbo v5, "verification"

    invoke-static {v3, v4, v5, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 529
    iput-boolean v2, v0, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    return-void

    .line 313
    :cond_3b8
    :goto_3b8
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->passRequiredVerification()V

    return-void
.end method

.method public final sendVerificationCompleteNotification()V
    .registers 5

    .line 750
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

    if-eqz v0, :cond_8

    .line 751
    invoke-virtual {v0, p0}, Lcom/android/server/pm/MultiPackageVerifyingSession;->trySendVerificationCompleteNotification(Lcom/android/server/pm/VerifyingSession;)V

    return-void

    .line 754
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v1, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, p0, v2}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_18

    return-void

    .line 757
    :catch_18
    const-string p0, "PackageManager"

    const-string v0, "Observer no longer exists."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setReturnCode(ILjava/lang/String;)V
    .registers 5

    .line 718
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 721
    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    .line 722
    iput-object p2, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public final start()V
    .registers 5

    .line 764
    const-string/jumbo v0, "queueVerify"

    .line 765
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 764
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 766
    const-string/jumbo v0, "start"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->handleStartVerify()V

    .line 768
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 769
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V
    .registers 8

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 535
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 536
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 537
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 538
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verifyStage()V
    .registers 5

    .line 773
    const-string/jumbo v0, "queueVerify"

    .line 774
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 773
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 775
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/VerifyingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public verifyStage(Ljava/util/List;)V
    .registers 3

    .line 780
    new-instance v0, Lcom/android/server/pm/MultiPackageVerifyingSession;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/MultiPackageVerifyingSession;-><init>(Lcom/android/server/pm/VerifyingSession;Ljava/util/List;)V

    .line 782
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/MultiPackageVerifyingSession;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
