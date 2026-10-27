.class public Lcom/android/server/webkit/WebViewUpdateServiceImpl2;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl2.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WebViewUpdateServiceImpl2"


# instance fields
.field public mAnyWebViewInstalled:Z

.field public mAttemptedToRepairBefore:Z

.field public mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field public final mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

.field public final mLock:Ljava/lang/Object;

.field public mMinimumVersionCode:J

.field public mNumRelroCreationsFinished:I

.field public mNumRelroCreationsStarted:I

.field public final mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field public mWebViewPackageDirty:Z


# direct methods
.method public static synthetic $r8$lambda$XXuU2jy5ieCy09in8MCscEXoIck(Lcom/android/server/webkit/WebViewUpdateServiceImpl2;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->startZygoteWhenReady()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/webkit/SystemInterface;)V
    .registers 7

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 90
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 94
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 96
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 107
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p1

    .line 114
    array-length v2, p1

    :goto_23
    if-ge v0, v2, :cond_30

    aget-object v3, p1, v0

    .line 115
    iget-boolean v4, v3, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v4, :cond_2d

    move-object v1, v3

    goto :goto_30

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_30
    :goto_30
    if-eqz v1, :cond_35

    .line 125
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    return-void

    .line 123
    :cond_35
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "No available by default WebView Provider."

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInvalidityReason(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    .line 798
    const-string p0, "Unexcepted validity-reason"

    return-object p0

    .line 796
    :cond_f
    const-string p0, "No WebView-library manifest flag"

    return-object p0

    .line 794
    :cond_12
    const-string p0, "Incorrect signature"

    return-object p0

    .line 792
    :cond_15
    const-string p0, "Version code too low"

    return-object p0

    .line 790
    :cond_18
    const-string p0, "SDK version too low"

    return-object p0
.end method

.method public static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .registers 3

    .line 536
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UserPackage;

    .line 537
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1c
    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .registers 8

    .line 672
    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    return v0

    .line 675
    :cond_8
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_11

    return v0

    .line 678
    :cond_11
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_18

    return v1

    .line 681
    :cond_18
    iget-object p0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p0

    move v2, v1

    :goto_1c
    if-ge v2, p2, :cond_2e

    aget-object v3, p0, v2

    .line 682
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return v0

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2e
    return v1
.end method

.method public static versionCodeGE(JJ)Z
    .registers 6

    const-wide/32 v0, 0x186a0

    .line 629
    div-long/2addr p0, v0

    .line 630
    div-long/2addr p2, v0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final attemptRepair()V
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    if-eqz v1, :cond_b

    .line 206
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_3c

    :cond_b
    const/4 v1, 0x1

    .line 208
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    .line 209
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_9

    .line 210
    sget-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider available for all users, trying to install and enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v3, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/server/webkit/SystemInterface;->installExistingPackageForAllUsers(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object p0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/android/server/webkit/SystemInterface;->enablePackageForAllUsers(Ljava/lang/String;Z)V

    return-void

    .line 209
    :goto_3c
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_9

    throw p0
.end method

.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_9

    .line 333
    const-string p0, ""

    return-object p0

    .line 334
    :cond_9
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final checkIfRelrosDoneLocked()V
    .registers 3

    .line 568
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1e

    .line 569
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 570
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 574
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_14
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_d .. :try_end_14} :catch_15

    return-void

    :catch_15
    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    return-void

    .line 584
    :cond_19
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1e
    return-void
.end method

.method public final dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .registers 12

    .line 746
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 747
    const-string v1, "  WebView packages:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_8d

    aget-object v4, v0, v3

    .line 749
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 750
    invoke-interface {v5, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 752
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/UserPackage;

    invoke-virtual {v5}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_34

    .line 754
    iget-object v4, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 755
    const-string v5, "    %s is NOT installed."

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 754
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8a

    .line 759
    :cond_34
    invoke-virtual {p0, v4, v5}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v6

    .line 760
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 764
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 765
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 761
    const-string v8, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_77

    .line 767
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 769
    invoke-interface {v6, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v4

    .line 768
    invoke-static {v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v4

    .line 770
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_67

    .line 775
    const-string v4, ""

    goto :goto_69

    :cond_67
    const-string v4, "NOT"

    :goto_69
    filled-new-array {v5, v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 771
    const-string v5, "    Valid package %s (%s) is %s installed/enabled for all users"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 770
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8a

    .line 777
    :cond_77
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 782
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getInvalidityReason(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v7, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 778
    const-string v5, "    Invalid package %s (%s), reason: %s"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 777
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_8d
    return-void
.end method

.method public dumpState(Ljava/io/PrintWriter;)V
    .registers 6

    .line 702
    const-string v0, "Current WebView Update Service state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_8
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_15

    .line 705
    const-string v1, "  Current WebView package is null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    :catchall_12
    move-exception p0

    goto/16 :goto_b8

    .line 707
    :cond_15
    const-string v2, "  Current WebView package (name, version): (%s, %s)"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 708
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    :goto_26
    const-string v1, "  Minimum targetSdkVersion: %d"

    const/16 v2, 0x21

    .line 715
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 714
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    const-string v1, "  Minimum WebView version code: %d"

    iget-wide v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    .line 718
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 717
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    const-string v1, "  Number of relros started: %d"

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 721
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 720
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    const-string v1, "  Number of relros finished: %d"

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 724
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 723
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    const-string v1, "  WebView package dirty: %b"

    iget-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    const-string v1, "  Any WebView package installed: %b"

    iget-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 728
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 727
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_8 .. :try_end_98} :catchall_12

    .line 731
    :try_start_98
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 732
    const-string v2, "  Preferred WebView package (name, version): (%s, %s)"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 733
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ad
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_98 .. :try_end_ad} :catch_ae
    .catchall {:try_start_98 .. :try_end_ad} :catchall_12

    goto :goto_b3

    .line 738
    :catch_ae
    :try_start_ae
    const-string v1, "  Preferred WebView package: none"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    :goto_b3
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V

    .line 742
    monitor-exit v0

    return-void

    :goto_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_ae .. :try_end_b9} :catchall_12

    throw p0
.end method

.method public final findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 6

    .line 477
    const-string v0, "webview.value_find_preferred_webview_package_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getWebViewProviderForPackage(Ljava/lang/String;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    .line 483
    const-string v2, ") not found"

    if-eqz v1, :cond_45

    .line 485
    :try_start_13
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 486
    invoke-interface {v3, v1}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 487
    invoke-virtual {p0, v1, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v4

    if-nez v4, :cond_45

    .line 488
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 489
    invoke-interface {v4, v1}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v1

    .line 490
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v0
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_29} :catch_2c

    if-eqz v0, :cond_45

    return-object v3

    .line 495
    :catch_2c
    sget-object v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User chosen WebView package ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v1

    if-nez v1, :cond_56

    return-object v0

    .line 507
    :cond_56
    const-string v0, "webview.value_default_webview_package_invalid_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_5b} :catch_5c

    goto :goto_79

    .line 510
    :catch_5c
    sget-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default WebView package ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v3, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_79
    const-string v0, "webview.value_webview_not_usable_for_all_users_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 516
    new-instance p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException;

    const-string v0, "Could not find a loadable WebView package"

    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 549
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_3
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 551
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    return-object p0
.end method

.method public final getMinimumVersionCode()J
    .registers 11

    .line 646
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    return-wide v0

    .line 651
    :cond_9
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    array-length v1, v0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v1, :cond_2f

    aget-object v7, v0, v6

    .line 652
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_2c

    .line 654
    :try_start_1b
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 655
    invoke-interface {v8, v7}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_23} :catch_2c

    cmp-long v9, v4, v2

    if-ltz v9, :cond_2b

    cmp-long v9, v7, v4

    if-gez v9, :cond_2c

    :cond_2b
    move-wide v4, v7

    :catch_2c
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 665
    :cond_2f
    iput-wide v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    return-wide v4
.end method

.method public getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 4

    .line 427
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    move-result-object p0

    .line 428
    array-length v0, p0

    new-array v0, v0, [Landroid/webkit/WebViewProviderInfo;

    const/4 v1, 0x0

    .line 430
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 431
    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-object v0
.end method

.method public final getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;
    .registers 7

    .line 455
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 457
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_2c

    .line 459
    :try_start_f
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v4, v0, v2

    .line 460
    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 461
    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v4

    if-nez v4, :cond_29

    .line 462
    new-instance v4, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 468
    :cond_2c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    return-object p0
.end method

.method public getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 1

    .line 545
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getWebViewProviderForPackage(Ljava/lang/String;)Landroid/webkit/WebViewProviderInfo;
    .registers 4

    .line 520
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p0

    const/4 v0, 0x0

    .line 521
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_18

    .line 522
    aget-object v1, p0, v0

    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 523
    aget-object p0, p0, v0

    return-object p0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleNewUser(I)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 262
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->handleUserChange()V

    return-void
.end method

.method public final handleUserChange()V
    .registers 2

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public handleUserRemoved(I)V
    .registers 2

    .line 266
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->handleUserChange()V

    return-void
.end method

.method public notifyRelroCreationCompleted()V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 282
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->checkIfRelrosDoneLocked()V

    .line 283
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .registers 6

    .line 393
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 394
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 395
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_44

    .line 396
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->pinWebviewIfRequired(Landroid/content/pm/ApplicationInfo;)V

    .line 397
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const v1, 0x7fffffff

    .line 402
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    const/4 v1, 0x0

    .line 403
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 404
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 405
    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 406
    const-string v1, "webview.value_on_webview_provider_changed_counter"

    invoke-static {v1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 407
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 408
    const-string p1, "webview.value_on_webview_provider_changed_with_default_package_counter"

    invoke-static {p1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    goto :goto_40

    :catchall_3e
    move-exception p0

    goto :goto_52

    .line 414
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->checkIfRelrosDoneLocked()V

    goto :goto_46

    .line 416
    :cond_44
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 418
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_3e

    .line 422
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/webkit/WebViewUpdateServiceImpl2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 418
    :goto_52
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_3e

    throw p0
.end method

.method public packageStateChanged(Ljava/lang/String;II)V
    .registers 10

    .line 132
    iget-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, p3, :cond_8f

    aget-object v2, p2, v1

    .line 133
    iget-object v3, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 135
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 141
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 p1, 0x0

    .line 143
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 144
    iget-object p3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz p3, :cond_2b

    .line 145
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_23
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_19 .. :try_end_23} :catch_27
    .catchall {:try_start_19 .. :try_end_23} :catchall_24

    goto :goto_2c

    :catchall_24
    move-exception p0

    goto/16 :goto_89

    :catch_27
    move-exception p2

    move-object p3, p1

    :goto_29
    move v1, v0

    goto :goto_58

    :cond_2b
    move-object p3, p1

    .line 150
    :goto_2c
    :try_start_2c
    iget-object v1, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_40
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_2c .. :try_end_40} :catch_45
    .catchall {:try_start_2c .. :try_end_40} :catchall_24

    if-nez v1, :cond_43

    goto :goto_47

    :cond_43
    move v1, v0

    goto :goto_48

    :catch_45
    move-exception p2

    goto :goto_29

    :cond_47
    :goto_47
    const/4 v1, 0x1

    .line 156
    :goto_48
    :try_start_48
    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 157
    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_73

    .line 159
    invoke-virtual {p0, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_53
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_48 .. :try_end_53} :catch_54
    .catchall {:try_start_48 .. :try_end_53} :catchall_24

    goto :goto_73

    :catch_54
    move-exception p2

    move v5, v1

    move v1, v0

    move v0, v5

    .line 162
    :goto_58
    :try_start_58
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 163
    sget-object p1, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find valid WebView package to create relro with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v1

    move v1, v0

    move v0, v5

    .line 166
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    move-result p1

    .line 167
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_58 .. :try_end_78} :catchall_24

    if-eqz v1, :cond_83

    if-nez v0, :cond_83

    if-eqz p3, :cond_83

    .line 174
    iget-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p2, p3}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    :cond_83
    if-eqz p1, :cond_8f

    .line 177
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V

    goto :goto_8f

    .line 167
    :goto_89
    :try_start_89
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_24

    throw p0

    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_8f
    :goto_8f
    return-void
.end method

.method public prepareWebViewInSystemServer()V
    .registers 5

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_0 .. :try_end_3} :catch_42
    .catchall {:try_start_0 .. :try_end_3} :catchall_39

    .line 222
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 223
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    move-result v1

    .line 224
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 225
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 232
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Ljava/lang/String;)V

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_37

    .line 234
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 235
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_29

    if-eqz v1, :cond_4a

    .line 238
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V
    :try_end_36
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_33 .. :try_end_36} :catch_42
    .catchall {:try_start_33 .. :try_end_36} :catchall_39

    return-void

    .line 235
    :goto_37
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_29

    :try_start_38
    throw p0
    :try_end_39
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_38 .. :try_end_39} :catch_42
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    .line 246
    sget-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    const-string v1, "error preparing webview provider from system server"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    :catch_42
    move-exception p0

    .line 242
    sget-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    const-string v1, "Could not find valid WebView package to create relro with"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    :goto_4a
    return-void
.end method

.method public final shouldTriggerRepairLocked()Z
    .registers 5

    .line 185
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x1

    if-nez v0, :cond_c

    return v2

    .line 191
    :cond_c
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v3, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 192
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 193
    invoke-interface {v0, p0}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object p0

    .line 194
    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_26
    return v1
.end method

.method public final startZygoteWhenReady()V
    .registers 1

    .line 253
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    .line 254
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p0}, Lcom/android/server/webkit/SystemInterface;->ensureZygoteStarted()V

    return-void
.end method

.method public final updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 8

    .line 347
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_f

    .line 351
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_5e

    .line 355
    :cond_f
    :goto_f
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    .line 356
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1e
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_f .. :try_end_1e} :catch_23
    .catchall {:try_start_f .. :try_end_1e} :catchall_d

    if-nez v4, :cond_21

    goto :goto_25

    :cond_21
    move v4, v3

    goto :goto_26

    :catch_23
    move-exception p1

    goto :goto_43

    :cond_25
    :goto_25
    const/4 v4, 0x1

    :goto_26
    if-eqz v4, :cond_2b

    .line 367
    :try_start_28
    invoke-virtual {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    :cond_2b
    if-nez p1, :cond_31

    .line 372
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    move-result v3

    .line 374
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_d

    if-eqz v4, :cond_3d

    if-eqz v1, :cond_3d

    .line 377
    iget-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    :cond_3d
    if-eqz v3, :cond_42

    .line 380
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V

    :cond_42
    return-object v2

    :goto_43
    const/4 v1, 0x0

    .line 361
    :try_start_44
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 362
    sget-object p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find WebView package to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    monitor-exit v0

    return-object v1

    .line 374
    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_d

    throw p0
.end method

.method public final validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .registers 7

    .line 591
    invoke-static {p2}, Landroid/webkit/UserPackage;->hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 594
    :cond_8
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getMinimumVersionCode()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->versionCodeGE(JJ)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 595
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 p0, 0x2

    return p0

    .line 600
    :cond_20
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result p0

    if-nez p0, :cond_2a

    const/4 p0, 0x3

    return p0

    .line 603
    :cond_2a
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_34

    const/4 p0, 0x4

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .registers 10

    .line 288
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    .line 291
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 292
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->webViewIsReadyLocked()Z

    move-result v5

    :goto_12
    if-nez v5, :cond_2d

    .line 294
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v2
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_26

    cmp-long v8, v6, v0

    if-ltz v8, :cond_1e

    goto :goto_2d

    .line 297
    :cond_1e
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_25} :catch_28
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_7b

    .line 301
    :catch_28
    :goto_28
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->webViewIsReadyLocked()Z

    move-result v5

    goto :goto_12

    .line 304
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_33

    const/4 p0, 0x0

    goto :goto_6b

    .line 307
    :cond_33
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    if-nez v1, :cond_39

    const/4 p0, 0x4

    goto :goto_6b

    .line 313
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " relros finished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package dirty? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 317
    sget-object v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x40

    .line 318
    invoke-static {v1, v2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    const/4 p0, 0x3

    .line 320
    :goto_6b
    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_28 .. :try_end_6c} :catchall_26

    if-nez v5, :cond_75

    .line 321
    sget-object v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->TAG:Ljava/lang/String;

    const-string v2, "creating relro file timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_75
    new-instance v1, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v1, v0, p0}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v1

    .line 320
    :goto_7b
    :try_start_7b
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_26

    throw p0
.end method

.method public final webViewIsReadyLocked()Z
    .registers 3

    .line 559
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_10

    iget-boolean p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
