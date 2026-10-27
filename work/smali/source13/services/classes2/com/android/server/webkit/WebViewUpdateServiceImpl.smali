.class Lcom/android/server/webkit/WebViewUpdateServiceImpl;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;,
        Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
    }
.end annotation


# static fields
.field private static final MULTIPROCESS_SETTING_OFF_VALUE:I = -0x80000000

.field private static final MULTIPROCESS_SETTING_ON_VALUE:I = 0x7fffffff

.field private static final NS_PER_MS:J = 0xf4240L

.field private static final NUMBER_OF_RELROS_UNKNOWN:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;

.field private static final VALIDITY_INCORRECT_SDK_VERSION:I = 0x1

.field private static final VALIDITY_INCORRECT_SIGNATURE:I = 0x3

.field private static final VALIDITY_INCORRECT_VERSION_CODE:I = 0x2

.field private static final VALIDITY_NO_LIBRARY_FLAG:I = 0x4

.field private static final VALIDITY_OK:I = 0x0

.field private static final WAIT_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private mAnyWebViewInstalled:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field private final mLock:Ljava/lang/Object;

.field private mMinimumVersionCode:J

.field private mNumRelroCreationsFinished:I

.field private mNumRelroCreationsStarted:I

.field private final mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewPackageDirty:Z


# direct methods
.method public static synthetic $r8$lambda$GfOd5F9zlirnEiPtEI33ofMPlZQ(Lcom/android/server/webkit/WebViewUpdateServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->startZygoteWhenReady()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 67
    const-class v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mMinimumVersionCode:J

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    .line 98
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    .line 100
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 113
    return-void
.end method

.method private checkIfRelrosDoneLocked()V
    .registers 3

    .line 491
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1f

    .line 492
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_1a

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    .line 497
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 498
    .local v0, "newPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_14
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException; {:try_start_d .. :try_end_14} :catch_15

    .end local v0    # "newPackage":Landroid/content/pm/PackageInfo;
    goto :goto_19

    .line 499
    :catch_15
    move-exception v0

    .line 500
    .local v0, "e":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 505
    .end local v0    # "e":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
    :goto_19
    goto :goto_1f

    .line 507
    :cond_1a
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 510
    :cond_1f
    :goto_1f
    return-void
.end method

.method private dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 685
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 686
    .local v0, "allProviders":[Landroid/webkit/WebViewProviderInfo;
    const-string v1, "  WebView packages:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_a3

    aget-object v4, v0, v3

    .line 688
    .local v4, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 689
    invoke-interface {v5, v6, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 690
    .local v5, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    nop

    .line 691
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/UserPackage;

    invoke-virtual {v6}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 692
    .local v6, "systemUserPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v7, 0x1

    if-nez v6, :cond_38

    .line 693
    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    aput-object v8, v7, v2

    const-string v8, "    %s is NOT installed."

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    goto :goto_9f

    .line 697
    :cond_38
    invoke-direct {p0, v4, v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v8

    .line 698
    .local v8, "validity":I
    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v11, v10, v2

    .line 701
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 702
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 698
    const-string/jumbo v11, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 703
    .local v10, "packageDetails":Ljava/lang/String;
    if-nez v8, :cond_88

    .line 704
    iget-object v11, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v13, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 705
    invoke-interface {v11, v13, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v11

    .line 704
    invoke-static {v11}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v11

    .line 706
    .local v11, "installedForAllUsers":Z
    new-array v9, v9, [Ljava/lang/Object;

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v13, v9, v2

    aput-object v10, v9, v7

    .line 710
    if-eqz v11, :cond_7a

    const-string v7, ""

    goto :goto_7c

    :cond_7a
    const-string v7, "NOT"

    :goto_7c
    aput-object v7, v9, v12

    .line 706
    const-string v7, "    Valid package %s (%s) is %s installed/enabled for all users"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    .end local v11    # "installedForAllUsers":Z
    goto :goto_9f

    .line 712
    :cond_88
    new-array v9, v9, [Ljava/lang/Object;

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v11, v9, v2

    aput-object v10, v9, v7

    .line 715
    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getInvalidityReason(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v12

    .line 712
    const-string v7, "    Invalid package %s (%s), reason: %s"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    .end local v4    # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v5    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    .end local v6    # "systemUserPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "validity":I
    .end local v10    # "packageDetails":Ljava/lang/String;
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 718
    :cond_a3
    return-void
.end method

.method private findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
        }
    .end annotation

    .line 414
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;

    move-result-object v0

    .line 416
    .local v0, "providers":[Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "userChosenProvider":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_33

    aget-object v5, v0, v4

    .line 421
    .local v5, "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-object v6, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 423
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 424
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 426
    .local v6, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 427
    iget-object v2, v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v2

    .line 420
    .end local v5    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;
    .end local v6    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 435
    :cond_33
    array-length v2, v0

    move v4, v3

    :goto_35
    if-ge v4, v2, :cond_55

    aget-object v5, v0, v4

    .line 436
    .restart local v5    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v6, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_52

    .line 438
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 439
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 441
    .restart local v6    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 442
    iget-object v2, v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v2

    .line 435
    .end local v5    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;
    .end local v6    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 448
    :cond_55
    iput-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    .line 449
    new-instance v2, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;

    const-string v3, "Could not find a loadable WebView package"

    invoke-direct {v2, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;
    .registers 5
    .param p0, "webviewPackages"    # [Landroid/webkit/WebViewProviderInfo;

    .line 615
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 616
    .local v2, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v3, v2, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v3, :cond_b

    .line 617
    return-object v2

    .line 615
    .end local v2    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 620
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getInvalidityReason(I)Ljava/lang/String;
    .registers 2
    .param p0, "invalidityReason"    # I

    .line 721
    packed-switch p0, :pswitch_data_12

    .line 731
    const-string v0, "Unexcepted validity-reason"

    return-object v0

    .line 729
    :pswitch_6
    const-string v0, "No WebView-library manifest flag"

    return-object v0

    .line 727
    :pswitch_9
    const-string v0, "Incorrect signature"

    return-object v0

    .line 725
    :pswitch_c
    const-string v0, "Version code too low"

    return-object v0

    .line 723
    :pswitch_f
    const-string v0, "SDK version too low"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getMinimumVersionCode()J
    .registers 12

    .line 569
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mMinimumVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    .line 570
    return-wide v0

    .line 573
    :cond_9
    const-wide/16 v0, -0x1

    .line 574
    .local v0, "minimumVersionCode":J
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v4}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_31

    aget-object v7, v4, v6

    .line 575
    .local v7, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_2e

    .line 577
    :try_start_1b
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v9, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 578
    invoke-interface {v8, v9}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_23} :catch_2d

    .line 579
    .local v8, "versionCode":J
    cmp-long v10, v0, v2

    if-ltz v10, :cond_2b

    cmp-long v10, v8, v0

    if-gez v10, :cond_2c

    .line 580
    :cond_2b
    move-wide v0, v8

    .line 584
    .end local v8    # "versionCode":J
    :cond_2c
    goto :goto_2e

    .line 582
    :catch_2d
    move-exception v8

    .line 574
    .end local v7    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_2e
    :goto_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 588
    :cond_31
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mMinimumVersionCode:J

    .line 589
    return-wide v0
.end method

.method private getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;
    .registers 7

    .line 391
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 392
    .local v0, "allProviders":[Landroid/webkit/WebViewProviderInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_2e

    .line 395
    :try_start_f
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v4, v0, v2

    .line 396
    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 397
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    aget-object v4, v0, v2

    invoke-direct {p0, v4, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v4

    if-nez v4, :cond_29

    .line 398
    new-instance v4, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_29} :catch_2a

    .line 402
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_29
    goto :goto_2b

    .line 400
    :catch_2a
    move-exception v3

    .line 393
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 404
    .end local v2    # "n":I
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;

    return-object v2
.end method

.method private handleUserChange()V
    .registers 2

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 233
    return-void
.end method

.method private static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;)Z"
        }
    .end annotation

    .line 459
    .local p0, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/UserPackage;

    .line 460
    .local v1, "userPackage":Landroid/webkit/UserPackage;
    invoke-virtual {v1}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_1e

    .line 463
    .end local v1    # "userPackage":Landroid/webkit/UserPackage;
    :cond_1d
    goto :goto_4

    .line 461
    .restart local v1    # "userPackage":Landroid/webkit/UserPackage;
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    return v0

    .line 464
    .end local v1    # "userPackage":Landroid/webkit/UserPackage;
    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method private onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .registers 6
    .param p1, "newPackage"    # Landroid/content/pm/PackageInfo;

    .line 340
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    .line 342
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_22

    .line 343
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 348
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    .line 349
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    .line 350
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 351
    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    .line 354
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->checkIfRelrosDoneLocked()V

    goto :goto_24

    .line 356
    :cond_22
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    .line 358
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_36

    .line 362
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 363
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/webkit/WebViewUpdateServiceImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 365
    :cond_35
    return-void

    .line 358
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .registers 10
    .param p0, "provider"    # Landroid/webkit/WebViewProviderInfo;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    .line 595
    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 598
    :cond_8
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 601
    :cond_11
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    return v2

    .line 604
    :cond_18
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_2e

    aget-object v5, v0, v4

    .line 605
    .local v5, "signature":Landroid/content/pm/Signature;
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    return v1

    .line 604
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 608
    :cond_2e
    return v2
.end method

.method private startZygoteWhenReady()V
    .registers 2

    .line 209
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    .line 210
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->ensureZygoteStarted()V

    .line 211
    return-void
.end method

.method private updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 11
    .param p1, "newProviderName"    # Ljava/lang/String;

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "oldPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 301
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 302
    .local v2, "providerChanged":Z
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 303
    :try_start_6
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    move-object v0, v4

    .line 305
    if-eqz p1, :cond_12

    .line 306
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_59

    .line 310
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v1, v4

    .line 311
    if-eqz v0, :cond_26

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 312
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_21
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException; {:try_start_12 .. :try_end_21} :catch_3b
    .catchall {:try_start_12 .. :try_end_21} :catchall_59

    if-nez v4, :cond_24

    goto :goto_26

    :cond_24
    const/4 v4, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v4, 0x1

    :goto_27
    move v2, v4

    .line 319
    nop

    .line 321
    if-eqz v2, :cond_2e

    .line 322
    :try_start_2b
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 324
    :cond_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_59

    .line 326
    if-eqz v2, :cond_3a

    if-eqz v0, :cond_3a

    .line 327
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 332
    :cond_3a
    return-object v1

    .line 313
    :catch_3b
    move-exception v4

    .line 316
    .local v4, "e":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
    const/4 v5, 0x0

    :try_start_3d
    iput-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 317
    sget-object v6, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find WebView package to use "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit v3

    return-object v5

    .line 324
    .end local v4    # "e":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
    :catchall_59
    move-exception v4

    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_3d .. :try_end_5b} :catchall_59

    throw v4
.end method

.method private validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .registers 7
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 514
    invoke-static {p2}, Landroid/webkit/UserPackage;->hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 515
    const/4 v0, 0x1

    return v0

    .line 517
    :cond_8
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getMinimumVersionCode()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->versionCodeGE(JJ)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 518
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-nez v0, :cond_20

    .line 521
    const/4 v0, 0x2

    return v0

    .line 523
    :cond_20
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 524
    const/4 v0, 0x3

    return v0

    .line 526
    :cond_2a
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    .line 527
    const/4 v0, 0x4

    return v0

    .line 529
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method private static versionCodeGE(JJ)Z
    .registers 9
    .param p0, "versionCode1"    # J
    .param p2, "versionCode2"    # J

    .line 552
    const-wide/32 v0, 0x186a0

    div-long v2, p0, v0

    .line 553
    .local v2, "v1":J
    div-long v0, p2, v0

    .line 555
    .local v0, "v2":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    return v4
.end method

.method private webViewIsReadyLocked()Z
    .registers 3

    .line 482
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "newProviderName"    # Ljava/lang/String;

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 289
    .local v0, "newPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_9

    const-string v1, ""

    return-object v1

    .line 290
    :cond_9
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v1
.end method

.method dumpState(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 648
    const-string v0, "Current WebView Update Service state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const-string v0, "  Multiprocess enabled: %b"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v3, 0x2

    if-nez v2, :cond_2a

    .line 652
    const-string v2, "  Current WebView package is null"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3f

    .line 654
    :cond_2a
    const-string v5, "  Current WebView package (name, version): (%s, %s)"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v2, v6, v4

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    :goto_3f
    const-string v2, "  Minimum targetSdkVersion: %d"

    new-array v5, v1, [Ljava/lang/Object;

    const/16 v6, 0x21

    .line 659
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 658
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    const-string v2, "  Minimum WebView version code: %d"

    new-array v5, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mMinimumVersionCode:J

    .line 661
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 660
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    const-string v2, "  Number of relros started: %d"

    new-array v5, v1, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    .line 663
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 662
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    const-string v2, "  Number of relros finished: %d"

    new-array v5, v1, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    .line 665
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 664
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    const-string v2, "  WebView package dirty: %b"

    new-array v5, v1, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    const-string v2, "  Any WebView package installed: %b"

    new-array v5, v1, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    .line 668
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 667
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_1f .. :try_end_b1} :catchall_da

    .line 671
    :try_start_b1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 672
    .local v2, "preferredWebViewPackage":Landroid/content/pm/PackageInfo;
    const-string v5, "  Preferred WebView package (name, version): (%s, %s)"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v3, v4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c8
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException; {:try_start_b1 .. :try_end_c8} :catch_c9
    .catchall {:try_start_b1 .. :try_end_c8} :catchall_da

    .line 678
    .end local v2    # "preferredWebViewPackage":Landroid/content/pm/PackageInfo;
    goto :goto_d5

    .line 676
    :catch_c9
    move-exception v1

    .line 677
    .local v1, "e":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
    :try_start_ca
    const-string v2, "  Preferred WebView package: none"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    .end local v1    # "e":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
    :goto_d5
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V

    .line 681
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_da
    move-exception v1

    monitor-exit v0
    :try_end_dc
    .catchall {:try_start_ca .. :try_end_dc} :catchall_da

    throw v1
.end method

.method enableMultiProcess(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 635
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 636
    .local v0, "current":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 637
    if-eqz p1, :cond_e

    const v3, 0x7fffffff

    goto :goto_10

    :cond_e
    const/high16 v3, -0x80000000

    .line 636
    :goto_10
    invoke-interface {v1, v2, v3}, Lcom/android/server/webkit/SystemInterface;->setMultiProcessSetting(Landroid/content/Context;I)V

    .line 638
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->notifyZygote(Z)V

    .line 639
    if-eqz v0, :cond_21

    .line 640
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 642
    :cond_21
    return-void
.end method

.method getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 3

    .line 472
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_3
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object v1

    .line 474
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 5

    .line 371
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;

    move-result-object v0

    .line 372
    .local v0, "providersAndPackageInfos":[Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;
    array-length v1, v0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    .line 374
    .local v1, "providers":[Landroid/webkit/WebViewProviderInfo;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_14

    .line 375
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v3, v1, v2

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 377
    .end local v2    # "n":I
    :cond_14
    return-object v1
.end method

.method getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 2

    .line 468
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method handleNewUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 217
    if-nez p1, :cond_3

    return-void

    .line 218
    :cond_3
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserChange()V

    .line 219
    return-void
.end method

.method handleUserRemoved(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 222
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserChange()V

    .line 223
    return-void
.end method

.method isMultiProcessEnabled()Z
    .registers 5

    .line 624
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->getMultiProcessSetting(Landroid/content/Context;)I

    move-result v0

    .line 625
    .local v0, "settingValue":I
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->isMultiProcessDefaultEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    .line 627
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    return v2

    .line 630
    :cond_19
    const v1, 0x7fffffff

    if-lt v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    return v2
.end method

.method notifyRelroCreationCompleted()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    .line 238
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->checkIfRelrosDoneLocked()V

    .line 239
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method packageStateChanged(Ljava/lang/String;II)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedState"    # I
    .param p3, "userId"    # I

    .line 119
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_7d

    aget-object v4, v0, v3

    .line 120
    .local v4, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v5, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 122
    .local v5, "webviewPackage":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "updateWebView":Z
    const/4 v1, 0x0

    .line 125
    .local v1, "removedOrChangedOldPackage":Z
    const/4 v3, 0x0

    .line 126
    .local v3, "oldProviderName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 127
    .local v6, "newPackage":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 129
    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v8

    move-object v6, v8

    .line 130
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_28

    .line 131
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v3, v8

    .line 136
    :cond_28
    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 137
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 138
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-nez v8, :cond_3f

    :cond_3e
    const/4 v2, 0x1

    :cond_3f
    move v0, v2

    .line 142
    iget-object v2, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    .line 144
    if-eqz v0, :cond_4c

    .line 145
    invoke-direct {p0, v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_4c
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException; {:try_start_1c .. :try_end_4c} :catch_4f
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4d

    .line 151
    :cond_4c
    goto :goto_6b

    .line 152
    :catchall_4d
    move-exception v2

    goto :goto_78

    .line 147
    :catch_4f
    move-exception v2

    .line 148
    .local v2, "e":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
    const/4 v8, 0x0

    :try_start_51
    iput-object v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 149
    sget-object v8, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find valid WebView package to create relro with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v2    # "e":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewPackageMissingException;
    :goto_6b
    monitor-exit v7
    :try_end_6c
    .catchall {:try_start_51 .. :try_end_6c} :catchall_4d

    .line 153
    if-eqz v0, :cond_77

    if-nez v1, :cond_77

    if-eqz v3, :cond_77

    .line 159
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2, v3}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 161
    :cond_77
    return-void

    .line 152
    :goto_78
    :try_start_78
    monitor-exit v7
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_4d

    throw v2

    .line 119
    .end local v0    # "updateWebView":Z
    .end local v1    # "removedOrChangedOldPackage":Z
    .end local v3    # "oldProviderName":Ljava/lang/String;
    .end local v4    # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v5    # "webviewPackage":Ljava/lang/String;
    .end local v6    # "newPackage":Landroid/content/pm/PackageInfo;
    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 164
    :cond_7d
    return-void
.end method

.method prepareWebViewInSystemServer()V
    .registers 7

    .line 167
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->notifyZygote(Z)V

    .line 169
    :try_start_9
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3b

    .line 170
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 171
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "userSetting":Ljava/lang/String;
    if-eqz v1, :cond_31

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 179
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    :cond_31
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 183
    .end local v1    # "userSetting":Ljava/lang/String;
    monitor-exit v0

    .line 187
    goto :goto_43

    .line 183
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_38

    .end local p0    # "this":Lcom/android/server/webkit/WebViewUpdateServiceImpl;
    :try_start_3a
    throw v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 184
    .restart local p0    # "this":Lcom/android/server/webkit/WebViewUpdateServiceImpl;
    :catchall_3b
    move-exception v0

    .line 186
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "error preparing webview provider from system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_43
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_81

    .line 194
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 195
    .local v0, "webviewProviders":[Landroid/webkit/WebViewProviderInfo;
    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    .line 196
    .local v1, "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    if-eqz v1, :cond_7a

    .line 197
    sget-object v2, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid provider, trying to enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/webkit/SystemInterface;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_81

    .line 201
    :cond_7a
    sget-object v2, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "No valid provider and no fallback available."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0    # "webviewProviders":[Landroid/webkit/WebViewProviderInfo;
    .end local v1    # "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    :cond_81
    :goto_81
    return-void
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .registers 14

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "webViewPackage":Landroid/content/pm/PackageInfo;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v1, v5

    .line 245
    .local v1, "timeoutTimeMs":J
    const/4 v5, 0x0

    .line 246
    .local v5, "webViewReady":Z
    const/4 v6, 0x0

    .line 247
    .local v6, "webViewStatus":I
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 248
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->webViewIsReadyLocked()Z

    move-result v8

    move v5, v8

    .line 249
    :goto_16
    if-nez v5, :cond_31

    .line 250
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v3
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_86

    .line 251
    .local v8, "timeNowMs":J
    cmp-long v10, v8, v1

    if-ltz v10, :cond_22

    goto :goto_31

    .line 253
    :cond_22
    :try_start_22
    iget-object v10, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mLock:Ljava/lang/Object;

    sub-long v11, v1, v8

    invoke-virtual {v10, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_29} :catch_2a
    .catchall {:try_start_22 .. :try_end_29} :catchall_86

    .line 256
    goto :goto_2b

    .line 254
    :catch_2a
    move-exception v10

    .line 257
    :goto_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->webViewIsReadyLocked()Z

    move-result v10

    move v5, v10

    .line 258
    .end local v8    # "timeNowMs":J
    goto :goto_16

    .line 260
    :cond_31
    :goto_31
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    move-object v0, v3

    .line 261
    if-eqz v5, :cond_37

    goto :goto_76

    .line 263
    :cond_37
    iget-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mAnyWebViewInstalled:Z

    if-nez v3, :cond_3e

    .line 264
    const/4 v3, 0x4

    move v6, v3

    .end local v6    # "webViewStatus":I
    .local v3, "webViewStatus":I
    goto :goto_76

    .line 268
    .end local v3    # "webViewStatus":I
    .restart local v6    # "webViewStatus":I
    :cond_3e
    const/4 v6, 0x3

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsStarted:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " relros finished "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mNumRelroCreationsFinished:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package dirty? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewPackageDirty:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "timeoutError":Ljava/lang/String;
    sget-object v4, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 276
    .end local v3    # "timeoutError":Ljava/lang/String;
    :goto_76
    monitor-exit v7
    :try_end_77
    .catchall {:try_start_2b .. :try_end_77} :catchall_86

    .line 277
    if-nez v5, :cond_80

    sget-object v3, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "creating relro file timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_80
    new-instance v3, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v3, v0, v6}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v3

    .line 276
    :catchall_86
    move-exception v3

    :try_start_87
    monitor-exit v7
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v3
.end method
