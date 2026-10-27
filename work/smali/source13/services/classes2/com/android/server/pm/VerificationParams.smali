.class final Lcom/android/server/pm/VerificationParams;
.super Lcom/android/server/pm/HandlerParams;
.source "VerificationParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLE_ROLLBACK_TIMEOUT_MILLIS:J = 0x2710L

.field private static final DEFAULT_INTEGRITY_VERIFICATION_TIMEOUT:J = 0x7530L

.field private static final DEFAULT_INTEGRITY_VERIFY_ENABLE:Z = true

.field private static final DEFAULT_VERIFY_ENABLE:Z = true

.field private static final PROPERTY_ENABLE_ROLLBACK_TIMEOUT_MILLIS:Ljava/lang/String; = "enable_rollback_timeout"


# instance fields
.field final mDataLoaderType:I

.field private mErrorMessage:Ljava/lang/String;

.field final mInstallFlags:I

.field final mInstallSource:Lcom/android/server/pm/InstallSource;

.field final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field final mPackageAbiOverride:Ljava/lang/String;

.field final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field mParentVerificationParams:Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

.field final mRequiredInstalledVersionCode:J

.field private mRet:I

.field final mSessionId:I

.field final mSigningDetails:Landroid/content/pm/SigningDetails;

.field final mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

.field private mWaitForEnableRollbackToComplete:Z

.field private mWaitForIntegrityVerificationToComplete:Z

.field private mWaitForVerificationToComplete:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmErrorMessage(Lcom/android/server/pm/VerificationParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRet(Lcom/android/server/pm/VerificationParams;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetIntegrityVerificationTimeout(Lcom/android/server/pm/VerificationParams;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/pm/VerificationParams;->getIntegrityVerificationTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mstartVerificationTimeoutCountdown(Lcom/android/server/pm/VerificationParams;IZLcom/android/server/pm/PackageVerificationResponse;J)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/VerificationParams;->startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V

    return-void
.end method

.method constructor <init>(Landroid/os/UserHandle;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .registers 15
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "stagedDir"    # Ljava/io/File;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p5, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p6, "installerUid"    # I
    .param p7, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p8, "sessionId"    # I
    .param p9, "lite"    # Landroid/content/pm/parsing/PackageLite;
    .param p10, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 139
    invoke-direct {p0, p1, p10}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    .line 140
    invoke-static {p2}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 141
    iput-object p3, p0, Lcom/android/server/pm/VerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 142
    iget v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v0, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    .line 143
    iput-object p5, p0, Lcom/android/server/pm/VerificationParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 144
    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPackageAbiOverride:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/android/server/pm/VerificationInfo;

    iget-object v1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object v2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget v3, p4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-direct {v0, v1, v2, v3, p6}, Lcom/android/server/pm/VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    .line 151
    iput-object p7, p0, Lcom/android/server/pm/VerificationParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 152
    iget-wide v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/VerificationParams;->mRequiredInstalledVersionCode:J

    .line 153
    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_39

    .line 154
    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    iput v0, p0, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    .line 155
    iput p8, p0, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    .line 156
    iput-object p9, p0, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 157
    return-void
.end method

.method private getIntegrityVerificationTimeout()J
    .registers 5

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_integrity_verification_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 322
    .local v0, "timeout":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z
    .registers 7
    .param p1, "pkgInfoLite"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "userId"    # I
    .param p3, "requestedDisableVerification"    # Z

    .line 591
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "ensure_verify_apps"

    invoke-virtual {v0, p2, v1}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 592
    return v1

    .line 595
    :cond_c
    if-eqz p3, :cond_1b

    .line 596
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/VerificationParams;->packageExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 598
    return v1

    .line 601
    :cond_17
    iget-boolean v0, p1, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    xor-int/2addr v0, v1

    return v0

    .line 603
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "verifier_verify_adb_installs"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method private isIntegrityVerificationEnabled()Z
    .registers 2

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method private isVerificationEnabled(Landroid/content/pm/PackageInfoLite;I)Z
    .registers 9
    .param p1, "pkgInfoLite"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "userId"    # I

    .line 617
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    .line 618
    .local v0, "installerUid":I
    :goto_8
    iget v1, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    .line 621
    .local v1, "installFlags":I
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerServiceStub;->isVerificationEnabled(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    .line 622
    return v3

    .line 627
    :cond_16
    and-int/lit8 v2, v1, 0x20

    const/4 v4, 0x1

    if-eqz v2, :cond_29

    .line 628
    iget v2, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    const/high16 v5, 0x80000

    and-int/2addr v2, v5

    if-eqz v2, :cond_23

    move v3, v4

    :cond_23
    move v2, v3

    .line 630
    .local v2, "requestedDisableVerification":Z
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/pm/VerificationParams;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result v3

    return v3

    .line 635
    .end local v2    # "requestedDisableVerification":Z
    :cond_29
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_63

    .line 636
    iget-object v2, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 637
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 640
    :try_start_43
    iget-object v2, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iget-object v5, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 641
    invoke-virtual {v2, v0, v5}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 642
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    if-eqz v2, :cond_61

    .line 643
    const-string v2, "PackageManager"

    const-string v5, "disable verification for instant app"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/SecurityException; {:try_start_43 .. :try_end_61} :catch_62

    .line 645
    :cond_61
    return v3

    .line 646
    :catch_62
    move-exception v2

    .line 649
    :cond_63
    return v4
.end method

.method private static matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 687
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 689
    .local v0, "targetReceiver":Landroid/content/pm/ActivityInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 690
    .local v1, "nr":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_23

    .line 691
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 692
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_13

    .line 693
    goto :goto_20

    .line 696
    :cond_13
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 697
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 698
    goto :goto_23

    .line 690
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 702
    .end local v2    # "i":I
    :cond_23
    :goto_23
    if-nez v0, :cond_27

    .line 703
    const/4 v2, 0x0

    return-object v2

    .line 706
    :cond_27
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    .registers 12
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfoLite;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/PackageVerificationState;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 654
    .local p2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    if-eqz v0, :cond_5c

    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_5c

    .line 658
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v0, v0

    .line 659
    .local v0, "n":I
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 660
    .local v1, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_5b

    .line 661
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    aget-object v3, v3, v2

    .line 663
    .local v3, "verifierInfo":Landroid/content/pm/VerifierInfo;
    iget-object v4, v3, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/android/server/pm/VerificationParams;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    .line 665
    .local v4, "comp":Landroid/content/ComponentName;
    if-nez v4, :cond_24

    .line 666
    goto :goto_58

    .line 669
    :cond_24
    iget-object v5, p0, Lcom/android/server/pm/VerificationParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/InstallPackageHelper;->getUidForVerifier(Landroid/content/pm/VerifierInfo;)I

    move-result v5

    .line 670
    .local v5, "verifierUid":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2e

    .line 671
    goto :goto_58

    .line 674
    :cond_2e
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    if-eqz v6, :cond_52

    .line 675
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added sufficient verifier "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with the correct signature"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_52
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {p3, v5}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    .line 660
    .end local v3    # "verifierInfo":Landroid/content/pm/VerifierInfo;
    .end local v4    # "comp":Landroid/content/ComponentName;
    .end local v5    # "verifierUid":I
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 682
    .end local v2    # "i":I
    :cond_5b
    return-object v1

    .line 655
    .end local v0    # "n":I
    .end local v1    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_5c
    :goto_5c
    const/4 v0, 0x0

    return-object v0
.end method

.method private packageExists(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 585
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 586
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V
    .registers 5
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 192
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    move v0, v1

    .line 194
    .local v0, "verificationId":I
    new-instance v1, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/VerificationParams;)V

    .line 196
    .local v1, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v2, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 198
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/VerificationParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    .line 199
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/VerificationParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    .line 203
    invoke-virtual {v1}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 204
    iget-object v2, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 206
    :cond_28
    return-void
.end method

.method private sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .registers 46
    .param p1, "verificationId"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;

    .line 344
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerificationParams;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 345
    .local v0, "verifierUser":Landroid/os/UserHandle;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v0, v1, :cond_14

    .line 346
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v15, v0

    goto :goto_15

    .line 345
    :cond_14
    move-object v15, v0

    .line 348
    .end local v0    # "verifierUser":Landroid/os/UserHandle;
    .local v15, "verifierUser":Landroid/os/UserHandle;
    :goto_15
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 350
    .local v9, "verifierUserId":I
    iget-object v0, v11, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 351
    .local v0, "requiredVerifierPackage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 355
    .local v1, "requiredVerifierPackageOverridden":Z
    iget v2, v11, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_4a

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-nez v2, :cond_4a

    .line 357
    const-string v2, "debug.pm.adb_verifier_override_package"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "adbVerifierOverridePackage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 361
    invoke-direct {v11, v2}, Lcom/android/server/pm/VerificationParams;->packageExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 363
    const/4 v3, 0x1

    .line 366
    .local v3, "requestedDisableVerification":Z
    invoke-direct {v11, v13, v9, v3}, Lcom/android/server/pm/VerificationParams;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 368
    move-object v0, v2

    .line 369
    const/4 v1, 0x1

    move-object v10, v0

    move/from16 v26, v1

    goto :goto_4d

    .line 378
    .end local v2    # "adbVerifierOverridePackage":Ljava/lang/String;
    .end local v3    # "requestedDisableVerification":Z
    :cond_4a
    move-object v10, v0

    move/from16 v26, v1

    .end local v0    # "requiredVerifierPackage":Ljava/lang/String;
    .end local v1    # "requiredVerifierPackageOverridden":Z
    .local v10, "requiredVerifierPackage":Ljava/lang/String;
    .local v26, "requiredVerifierPackageOverridden":Z
    :goto_4d
    iget-object v0, v11, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    .line 379
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    if-nez v10, :cond_57

    const/4 v0, -0x1

    goto :goto_5e

    .line 380
    :cond_57
    const-wide/32 v0, 0x10000000

    invoke-interface {v8, v10, v0, v1, v9}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    :goto_5e
    move v7, v0

    .line 382
    .local v7, "requiredUid":I
    invoke-virtual {v14, v7}, Lcom/android/server/pm/PackageVerificationState;->setRequiredVerifierUid(I)V

    .line 383
    invoke-direct {v11, v13, v9}, Lcom/android/server/pm/VerificationParams;->isVerificationEnabled(Landroid/content/pm/PackageInfoLite;I)Z

    move-result v27

    .line 386
    .local v27, "isVerificationEnabled":Z
    iget-object v0, v11, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    const/4 v6, 0x1

    if-nez v0, :cond_2fb

    if-nez v27, :cond_7a

    move v13, v6

    move v1, v7

    move-object/from16 v41, v8

    move/from16 v38, v9

    move-object/from16 v39, v10

    move-object v4, v15

    goto/16 :goto_304

    .line 391
    :cond_7a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 392
    .local v4, "verification":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    new-instance v0, Ljava/io/File;

    iget-object v1, v11, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    iget-object v0, v11, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v16, 0x0

    const-string v3, "application/vnd.android.package-archive"

    move-object v1, v8

    move-object v2, v4

    move-object/from16 v28, v4

    .end local v4    # "verification":Landroid/content/Intent;
    .local v28, "verification":Landroid/content/Intent;
    move-wide/from16 v4, v16

    move/from16 v16, v7

    move v7, v6

    .end local v7    # "requiredUid":I
    .local v16, "requiredUid":I
    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v29

    .line 401
    .local v29, "receivers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    const-string v6, "PackageManager"

    if-eqz v0, :cond_f5

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " verifiers for intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v13, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " optional verifiers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_f5
    const-string v0, "android.content.pm.extra.VERIFICATION_ID"

    move-object/from16 v5, v28

    .end local v28    # "verification":Landroid/content/Intent;
    .local v5, "verification":Landroid/content/Intent;
    invoke-virtual {v5, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    iget v0, v11, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    iget-object v0, v13, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget v0, v13, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v1, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    nop

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v0

    .line 418
    const-string v2, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v5, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 422
    iget-object v0, v11, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "baseCodePath":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "splitCodePaths":[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "rootHashString":Ljava/lang/String;
    if-eqz v2, :cond_132

    .line 428
    const-string v0, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    :cond_132
    iget v0, v11, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    const-string v1, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    iget v0, v11, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    invoke-virtual {v11, v5}, Lcom/android/server/pm/VerificationParams;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 440
    iget v0, v11, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_159

    iget-object v0, v11, Lcom/android/server/pm/VerificationParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 441
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_159

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerificationParams;->getDefaultVerificationResponse()I

    move-result v0

    if-ne v0, v7, :cond_159

    move v0, v7

    goto :goto_15a

    :cond_159
    const/4 v0, 0x0

    :goto_15a
    move v1, v0

    .line 444
    .local v1, "streaming":Z
    iget-object v0, v11, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/pm/VerificationUtils;->getVerificationTimeout(Landroid/content/Context;Z)J

    move-result-wide v30

    .line 447
    .local v30, "verificationTimeout":J
    nop

    .line 448
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 447
    invoke-direct {v11, v13, v0, v14}, Lcom/android/server/pm/VerificationParams;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v0

    .line 451
    .local v0, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-boolean v7, v13, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    if-eqz v7, :cond_192

    .line 452
    if-nez v0, :cond_178

    .line 453
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v7

    .line 455
    :cond_178
    new-instance v7, Landroid/content/ComponentName;

    move/from16 v24, v1

    .end local v1    # "streaming":Z
    .local v24, "streaming":Z
    const-string v1, "android"

    move-object/from16 v25, v2

    .end local v2    # "rootHashString":Ljava/lang/String;
    .local v25, "rootHashString":Ljava/lang/String;
    const-string v2, "com.android.server.sdksandbox.SdkSandboxVerifierReceiver"

    invoke-direct {v7, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 457
    .local v1, "sdkSandboxComponentName":Landroid/content/ComponentName;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    move-object v7, v0

    goto :goto_197

    .line 451
    .end local v24    # "streaming":Z
    .end local v25    # "rootHashString":Ljava/lang/String;
    .local v1, "streaming":Z
    .restart local v2    # "rootHashString":Ljava/lang/String;
    :cond_192
    move/from16 v24, v1

    move-object/from16 v25, v2

    .end local v1    # "streaming":Z
    .end local v2    # "rootHashString":Ljava/lang/String;
    .restart local v24    # "streaming":Z
    .restart local v25    # "rootHashString":Ljava/lang/String;
    move-object v7, v0

    .line 463
    .end local v0    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v7, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_197
    iget-object v0, v11, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 464
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/server/DeviceIdleInternal;

    .line 465
    .local v28, "idleController":Lcom/android/server/DeviceIdleInternal;
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v32

    .line 466
    .local v32, "options":Landroid/app/BroadcastOptions;
    const/16 v20, 0x0

    const/16 v21, 0x131

    const-string v22, ""

    move-object/from16 v17, v32

    move-wide/from16 v18, v30

    invoke-virtual/range {v17 .. v22}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 474
    if-eqz v7, :cond_25a

    .line 475
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 476
    .local v2, "n":I
    if-nez v2, :cond_1da

    .line 477
    const-string v0, "Additional verifiers required, but none installed."

    .line 478
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v1, -0x16

    invoke-virtual {v11, v1, v0}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    .line 480
    .end local v0    # "errorMsg":Ljava/lang/String;
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    move-object v13, v6

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move/from16 v39, v16

    move/from16 v34, v24

    move-object/from16 v35, v25

    move-object v8, v5

    goto/16 :goto_26a

    .line 481
    :cond_1da
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_1dc
    if-ge v1, v2, :cond_245

    .line 482
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 483
    .local v0, "verifierComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    .line 484
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x131

    .line 483
    const-string/jumbo v21, "package verifier"

    move-object/from16 v33, v0

    .end local v0    # "verifierComponent":Landroid/content/ComponentName;
    .local v33, "verifierComponent":Landroid/content/ComponentName;
    move-object/from16 v0, v28

    move/from16 v22, v1

    move/from16 v34, v24

    .end local v1    # "i":I
    .end local v24    # "streaming":Z
    .local v22, "i":I
    .local v34, "streaming":Z
    move/from16 v1, v17

    move/from16 v17, v2

    move-object/from16 v35, v25

    .end local v2    # "n":I
    .end local v25    # "rootHashString":Ljava/lang/String;
    .local v17, "n":I
    .local v35, "rootHashString":Ljava/lang/String;
    move-object/from16 v2, v18

    move-object/from16 v36, v3

    move-object/from16 v37, v4

    .end local v3    # "baseCodePath":Ljava/lang/String;
    .end local v4    # "splitCodePaths":[Ljava/lang/String;
    .local v36, "baseCodePath":Ljava/lang/String;
    .local v37, "splitCodePaths":[Ljava/lang/String;
    move-wide/from16 v3, v30

    move-object/from16 v38, v5

    .end local v5    # "verification":Landroid/content/Intent;
    .local v38, "verification":Landroid/content/Intent;
    move v5, v9

    move-object v13, v6

    move/from16 v6, v19

    move-object/from16 v40, v7

    move/from16 v39, v16

    .end local v7    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v16    # "requiredUid":I
    .local v39, "requiredUid":I
    .local v40, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move/from16 v7, v20

    move-object/from16 v41, v8

    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .local v41, "snapshot":Lcom/android/server/pm/Computer;
    move-object/from16 v8, v21

    invoke-interface/range {v0 .. v8}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 488
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v8, v38

    .end local v38    # "verification":Landroid/content/Intent;
    .local v8, "verification":Landroid/content/Intent;
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 489
    .local v0, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v1, v33

    .end local v33    # "verifierComponent":Landroid/content/ComponentName;
    .local v1, "verifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 490
    iget-object v2, v11, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    .line 492
    invoke-virtual/range {v32 .. v32}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 490
    invoke-virtual {v2, v0, v15, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 481
    .end local v0    # "sufficientIntent":Landroid/content/Intent;
    .end local v1    # "verifierComponent":Landroid/content/ComponentName;
    add-int/lit8 v1, v22, 0x1

    move-object v5, v8

    move-object v6, v13

    move/from16 v2, v17

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    move-object/from16 v7, v40

    move-object/from16 v8, v41

    move-object/from16 v13, p2

    .end local v22    # "i":I
    .local v1, "i":I
    goto :goto_1dc

    .end local v17    # "n":I
    .end local v34    # "streaming":Z
    .end local v35    # "rootHashString":Ljava/lang/String;
    .end local v36    # "baseCodePath":Ljava/lang/String;
    .end local v37    # "splitCodePaths":[Ljava/lang/String;
    .end local v39    # "requiredUid":I
    .end local v40    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v41    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v2    # "n":I
    .restart local v3    # "baseCodePath":Ljava/lang/String;
    .restart local v4    # "splitCodePaths":[Ljava/lang/String;
    .restart local v5    # "verification":Landroid/content/Intent;
    .restart local v7    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    .restart local v16    # "requiredUid":I
    .restart local v24    # "streaming":Z
    .restart local v25    # "rootHashString":Ljava/lang/String;
    :cond_245
    move/from16 v22, v1

    move/from16 v17, v2

    move-object/from16 v36, v3

    move-object/from16 v37, v4

    move-object v13, v6

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move/from16 v39, v16

    move/from16 v34, v24

    move-object/from16 v35, v25

    move-object v8, v5

    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "baseCodePath":Ljava/lang/String;
    .end local v4    # "splitCodePaths":[Ljava/lang/String;
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v7    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v16    # "requiredUid":I
    .end local v24    # "streaming":Z
    .end local v25    # "rootHashString":Ljava/lang/String;
    .local v8, "verification":Landroid/content/Intent;
    .restart local v17    # "n":I
    .restart local v22    # "i":I
    .restart local v34    # "streaming":Z
    .restart local v35    # "rootHashString":Ljava/lang/String;
    .restart local v36    # "baseCodePath":Ljava/lang/String;
    .restart local v37    # "splitCodePaths":[Ljava/lang/String;
    .restart local v39    # "requiredUid":I
    .restart local v40    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v41    # "snapshot":Lcom/android/server/pm/Computer;
    goto :goto_26a

    .line 474
    .end local v17    # "n":I
    .end local v22    # "i":I
    .end local v34    # "streaming":Z
    .end local v35    # "rootHashString":Ljava/lang/String;
    .end local v36    # "baseCodePath":Ljava/lang/String;
    .end local v37    # "splitCodePaths":[Ljava/lang/String;
    .end local v39    # "requiredUid":I
    .end local v40    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v41    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v3    # "baseCodePath":Ljava/lang/String;
    .restart local v4    # "splitCodePaths":[Ljava/lang/String;
    .restart local v5    # "verification":Landroid/content/Intent;
    .restart local v7    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    .restart local v16    # "requiredUid":I
    .restart local v24    # "streaming":Z
    .restart local v25    # "rootHashString":Ljava/lang/String;
    :cond_25a
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    move-object v13, v6

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move/from16 v39, v16

    move/from16 v34, v24

    move-object/from16 v35, v25

    move-object v8, v5

    .line 497
    .end local v3    # "baseCodePath":Ljava/lang/String;
    .end local v4    # "splitCodePaths":[Ljava/lang/String;
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v7    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v16    # "requiredUid":I
    .end local v24    # "streaming":Z
    .end local v25    # "rootHashString":Ljava/lang/String;
    .local v8, "verification":Landroid/content/Intent;
    .restart local v34    # "streaming":Z
    .restart local v35    # "rootHashString":Ljava/lang/String;
    .restart local v36    # "baseCodePath":Ljava/lang/String;
    .restart local v37    # "splitCodePaths":[Ljava/lang/String;
    .restart local v39    # "requiredUid":I
    .restart local v40    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v41    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_26a
    if-nez v10, :cond_272

    .line 498
    const-string v0, "Required verifier is null"

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 503
    :cond_272
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerificationParams;->getDefaultVerificationResponse()I

    move-result v0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_27c

    .line 504
    const/4 v0, 0x2

    move v7, v0

    .local v0, "verificationCodeAtTimeout":I
    goto :goto_27e

    .line 506
    .end local v0    # "verificationCodeAtTimeout":I
    :cond_27c
    const/4 v0, -0x1

    move v7, v0

    .line 508
    .local v7, "verificationCodeAtTimeout":I
    :goto_27e
    new-instance v3, Lcom/android/server/pm/PackageVerificationResponse;

    move/from16 v6, v39

    .end local v39    # "requiredUid":I
    .local v6, "requiredUid":I
    invoke-direct {v3, v7, v6}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 516
    .local v3, "response":Lcom/android/server/pm/PackageVerificationResponse;
    if-nez v26, :cond_294

    .line 517
    nop

    .line 518
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 517
    invoke-static {v10, v0}, Lcom/android/server/pm/VerificationParams;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 519
    .local v0, "requiredVerifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 520
    .end local v0    # "requiredVerifierComponent":Landroid/content/ComponentName;
    goto :goto_297

    .line 521
    :cond_294
    invoke-virtual {v8, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    :goto_297
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    const/16 v22, 0x0

    const/16 v23, 0x131

    const-string/jumbo v24, "package verifier"

    move-object/from16 v16, v28

    move-object/from16 v18, v10

    move-wide/from16 v19, v30

    move/from16 v21, v9

    invoke-interface/range {v16 .. v24}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 528
    if-eqz v34, :cond_2ba

    .line 530
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v34

    move-wide/from16 v4, v30

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/VerificationParams;->startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V

    .line 534
    :cond_2ba
    iget-object v0, v11, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/16 v19, -0x1

    .line 537
    invoke-virtual/range {v32 .. v32}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v20

    new-instance v21, Lcom/android/server/pm/VerificationParams$2;

    move-object/from16 v4, v21

    move-object/from16 v5, p0

    move v1, v6

    .end local v6    # "requiredUid":I
    .local v1, "requiredUid":I
    move/from16 v6, v34

    move v2, v7

    .end local v7    # "verificationCodeAtTimeout":I
    .local v2, "verificationCodeAtTimeout":I
    move/from16 v7, p1

    move-object/from16 v33, v8

    .end local v8    # "verification":Landroid/content/Intent;
    .local v33, "verification":Landroid/content/Intent;
    move-object v8, v3

    move/from16 v38, v9

    move-object/from16 v39, v10

    .end local v9    # "verifierUserId":I
    .end local v10    # "requiredVerifierPackage":Ljava/lang/String;
    .local v38, "verifierUserId":I
    .local v39, "requiredVerifierPackage":Ljava/lang/String;
    move-wide/from16 v9, v30

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/VerificationParams$2;-><init>(Lcom/android/server/pm/VerificationParams;ZILcom/android/server/pm/PackageVerificationResponse;J)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 534
    const-string v18, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object v4, v15

    .end local v15    # "verifierUser":Landroid/os/UserHandle;
    .local v4, "verifierUser":Landroid/os/UserHandle;
    move-object v15, v0

    move-object/from16 v16, v33

    move-object/from16 v17, v4

    invoke-virtual/range {v15 .. v25}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 550
    const-wide/32 v5, 0x40000

    const-string/jumbo v0, "verification"

    invoke-static {v5, v6, v0, v12}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 556
    iput-boolean v13, v11, Lcom/android/server/pm/VerificationParams;->mWaitForVerificationToComplete:Z

    .line 557
    return-void

    .line 386
    .end local v1    # "requiredUid":I
    .end local v2    # "verificationCodeAtTimeout":I
    .end local v3    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v4    # "verifierUser":Landroid/os/UserHandle;
    .end local v28    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .end local v29    # "receivers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    .end local v30    # "verificationTimeout":J
    .end local v32    # "options":Landroid/app/BroadcastOptions;
    .end local v33    # "verification":Landroid/content/Intent;
    .end local v34    # "streaming":Z
    .end local v35    # "rootHashString":Ljava/lang/String;
    .end local v36    # "baseCodePath":Ljava/lang/String;
    .end local v37    # "splitCodePaths":[Ljava/lang/String;
    .end local v38    # "verifierUserId":I
    .end local v39    # "requiredVerifierPackage":Ljava/lang/String;
    .end local v40    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v41    # "snapshot":Lcom/android/server/pm/Computer;
    .local v7, "requiredUid":I
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "verifierUserId":I
    .restart local v10    # "requiredVerifierPackage":Ljava/lang/String;
    .restart local v15    # "verifierUser":Landroid/os/UserHandle;
    :cond_2fb
    move v13, v6

    move v1, v7

    move-object/from16 v41, v8

    move/from16 v38, v9

    move-object/from16 v39, v10

    move-object v4, v15

    .line 387
    .end local v7    # "requiredUid":I
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "verifierUserId":I
    .end local v10    # "requiredVerifierPackage":Ljava/lang/String;
    .end local v15    # "verifierUser":Landroid/os/UserHandle;
    .restart local v1    # "requiredUid":I
    .restart local v4    # "verifierUser":Landroid/os/UserHandle;
    .restart local v38    # "verifierUserId":I
    .restart local v39    # "requiredVerifierPackage":Ljava/lang/String;
    .restart local v41    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_304
    invoke-virtual {v14, v1, v13}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 388
    return-void
.end method

.method private sendVerificationCompleteNotification()V
    .registers 6

    .line 774
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mParentVerificationParams:Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

    if-eqz v0, :cond_8

    .line 775
    invoke-virtual {v0, p0}, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->trySendVerificationCompleteNotification(Lcom/android/server/pm/VerificationParams;)V

    goto :goto_20

    .line 778
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    iget-object v3, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_18

    .line 782
    goto :goto_20

    .line 780
    :catch_18
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V
    .registers 8
    .param p1, "verificationId"    # I
    .param p2, "streaming"    # Z
    .param p3, "response"    # Lcom/android/server/pm/PackageVerificationResponse;
    .param p4, "verificationTimeout"    # J

    .line 561
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 562
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 563
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 564
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 565
    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 566
    return-void
.end method


# virtual methods
.method getDefaultVerificationResponse()I
    .registers 4

    .line 574
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 575
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 574
    const-string v2, "ensure_verify_apps"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 576
    const/4 v0, -0x1

    return v0

    .line 578
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "verifier_default_response"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method handleIntegrityVerificationFinished()V
    .registers 2

    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    .line 749
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    .line 750
    return-void
.end method

.method handleReturnCode()V
    .registers 2

    .line 762
    iget-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForVerificationToComplete:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForEnableRollbackToComplete:Z

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 768
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/OriginInfo;->getTiming()Lcom/android/server/pm/InstallationTiming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/InstallationTiming;->setGoogleVerificationFinished()V

    .line 770
    invoke-direct {p0}, Lcom/android/server/pm/VerificationParams;->sendVerificationCompleteNotification()V

    .line 771
    return-void

    .line 764
    :cond_1a
    :goto_1a
    return-void
.end method

.method handleRollbackEnabled()V
    .registers 2

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForEnableRollbackToComplete:Z

    .line 757
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    .line 758
    return-void
.end method

.method public handleStartCopy()V
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v2, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    iget-object v4, p0, Lcom/android/server/pm/VerificationParams;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 169
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-wide v2, p0, Lcom/android/server/pm/VerificationParams;->mRequiredInstalledVersionCode:J

    iget v4, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v1

    .line 171
    .local v1, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    .line 172
    iget v2, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_31

    .line 173
    return-void

    .line 178
    :cond_31
    iget-object v2, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v2, v2, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v2, :cond_54

    .line 180
    iget-object v2, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    invoke-virtual {v2}, Lcom/android/server/pm/OriginInfo;->getTiming()Lcom/android/server/pm/InstallationTiming;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/InstallationTiming;->setGoogleVerificationStarted()V

    .line 181
    iget v2, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-nez v2, :cond_4a

    .line 183
    invoke-direct {p0, v0}, Lcom/android/server/pm/VerificationParams;->sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V

    .line 185
    :cond_4a
    iget v2, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_54

    .line 186
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->sendEnableRollbackRequest()V

    .line 189
    :cond_54
    return-void
.end method

.method handleVerificationFinished()V
    .registers 2

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForVerificationToComplete:Z

    .line 744
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    .line 745
    return-void
.end method

.method populateInstallerExtras(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 710
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-eqz v0, :cond_47

    .line 714
    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_1a

    .line 715
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 718
    :cond_1a
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    if-eqz v0, :cond_29

    .line 719
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 722
    :cond_29
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    if-ltz v0, :cond_38

    .line 723
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    :cond_38
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    if-ltz v0, :cond_47

    .line 727
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    :cond_47
    return-void
.end method

.method sendEnableRollbackRequest()V
    .registers 7

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    move v0, v1

    .line 210
    .local v0, "enableRollbackToken":I
    const-wide/32 v1, 0x40000

    const-string v3, "enable_rollback"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 212
    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "enableRollbackIntent":Landroid/content/Intent;
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget v2, p0, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    const-string v3, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    iget-object v3, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v5, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 234
    iput-boolean v2, p0, Lcom/android/server/pm/VerificationParams;->mWaitForEnableRollbackToComplete:Z

    .line 237
    const-string/jumbo v2, "rollback"

    const-string v3, "enable_rollback_timeout"

    const-wide/16 v4, 0x2710

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 241
    .local v2, "rollbackTimeout":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_59

    .line 242
    const-wide/16 v2, 0x2710

    .line 244
    :cond_59
    iget-object v4, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 245
    .local v4, "msg":Landroid/os/Message;
    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 246
    iget v5, p0, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 247
    iget-object v5, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    return-void
.end method

.method sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .registers 23
    .param p1, "verificationId"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;

    .line 257
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/VerificationParams;->isIntegrityVerificationEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_13

    .line 259
    move-object/from16 v3, p3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    .line 261
    return-void

    .line 264
    :cond_13
    move-object/from16 v3, p3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v5, "integrityVerification":Landroid/content/Intent;
    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const v6, 0x50000001

    .line 273
    .local v6, "flags":I
    const v7, 0x50000001

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    const-string v7, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object v7, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v8, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget v7, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v8, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v7

    const-string v9, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v5, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 279
    invoke-virtual {v0, v5}, Lcom/android/server/pm/VerificationParams;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 282
    const-string v7, "android"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v18

    .line 286
    .local v18, "options":Landroid/app/BroadcastOptions;
    iget-object v7, v0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 289
    invoke-virtual/range {v18 .. v18}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    new-instance v13, Lcom/android/server/pm/VerificationParams$1;

    invoke-direct {v13, v0, v1}, Lcom/android/server/pm/VerificationParams$1;-><init>(Lcom/android/server/pm/VerificationParams;I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 286
    move-object v8, v5

    invoke-virtual/range {v7 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 303
    const-wide/32 v7, 0x40000

    const-string v9, "integrity_verification"

    invoke-static {v7, v8, v9, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 307
    iput-boolean v4, v0, Lcom/android/server/pm/VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    .line 308
    return-void
.end method

.method setReturnCode(ILjava/lang/String;)V
    .registers 5
    .param p1, "ret"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 734
    iget v0, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 737
    iput p1, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    .line 738
    iput-object p2, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    .line 740
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyStage()V
    .registers 3

    .line 787
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/VerificationParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 788
    return-void
.end method

.method public verifyStage(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 792
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/VerificationParams;>;"
    new-instance v0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;-><init>(Lcom/android/server/pm/VerificationParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 794
    .local v0, "params":Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;
    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    return-void
.end method
