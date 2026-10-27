.class public Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;
.super Ljava/lang/Object;
.source "PackageInfoWithoutStateUtils.java"


# static fields
.field public static final SYSTEM_DATA_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appInfoFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;

    .line 834
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isExternalStorage()Z

    move-result v0

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v0

    .line 835
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isBaseHardwareAccelerated()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 836
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isAllowBackup()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 837
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isKillAfterRestore()Z

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 838
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isRestoreAnyVersion()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 839
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isFullBackupOnly()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 840
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isPersistent()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 841
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isDebuggable()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 842
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isVmSafeMode()Z

    move-result v1

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 843
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isHasCode()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 844
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isAllowTaskReparenting()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 845
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isAllowClearUserData()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 846
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isLargeHeap()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 847
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isUsesCleartextTraffic()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 848
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSupportsRtl()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 849
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isTestOnly()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 850
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isMultiArch()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 851
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isExtractNativeLibs()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 852
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isGame()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 853
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSupportsSmallScreens()Z

    move-result v1

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 854
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSupportsNormalScreens()Z

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 855
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSupportsLargeScreens()Z

    move-result v1

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 856
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSupportsExtraLargeScreens()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 857
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isResizeable()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 858
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isAnyDensity()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 834
    return v0
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;

    .line 865
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isStaticSharedLibrary()Z

    move-result v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v0

    .line 866
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isOverlay()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 867
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isIsolatedSplitLoading()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 868
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isHasDomainUrls()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 869
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isProfileableByShell()Z

    move-result v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 870
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isBackupInForeground()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 871
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isUseEmbeddedDex()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 872
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isDefaultToDeviceProtectedStorage()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 873
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isDirectBootAware()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 874
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isPartiallyDirectBootAware()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 875
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isAllowClearUserDataOnFailedRestore()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 876
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isAllowAudioPlaybackCapture()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 877
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isRequestLegacyExternalStorage()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 878
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isUsesNonSdkApi()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 879
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isHasFragileUserData()Z

    move-result v1

    const/high16 v2, 0x1000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 880
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isCantSaveState()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 881
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 882
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isAllowNativeHeapPointerTagging()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 885
    .local v0, "privateFlags":I
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v1

    .line 886
    .local v1, "resizeableActivity":Ljava/lang/Boolean;
    if-eqz v1, :cond_d6

    .line 887
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 888
    or-int/lit16 v0, v0, 0x400

    goto :goto_d6

    .line 890
    :cond_d4
    or-int/lit16 v0, v0, 0x800

    .line 894
    :cond_d6
    :goto_d6
    return v0
.end method

.method public static appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I
    .registers 5
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;

    .line 900
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getHiddenApiWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v0

    .line 901
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 904
    .local v0, "isAllowlistedForHiddenApis":Z
    nop

    .line 905
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isProfileable()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    .line 906
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->hasRequestForegroundServiceExemption()Z

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v2

    or-int/2addr v1, v2

    .line 908
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->areAttributionsUserVisible()Z

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v2

    or-int/2addr v1, v2

    .line 910
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isOnBackInvokedCallbackEnabled()Z

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v2

    or-int/2addr v1, v2

    .line 914
    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v2

    or-int/2addr v1, v2

    .line 917
    .local v1, "privateFlagsExt":I
    return v1
.end method

.method private static assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V
    .registers 3
    .param p0, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p1, "mainComponent"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 800
    invoke-static {p0, p1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 801
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 802
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 803
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 804
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 805
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    .line 806
    return-void
.end method

.method private static assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;)V
    .registers 3
    .param p0, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "component"    # Lcom/android/server/pm/pkg/component/ParsedComponent;

    .line 810
    invoke-static {p1}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->getNonLocalizedLabel(Lcom/android/server/pm/pkg/component/ParsedComponent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 811
    invoke-static {p1}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->getIcon(Lcom/android/server/pm/pkg/component/ParsedComponent;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 813
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 814
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 815
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 816
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 817
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 818
    return-void
.end method

.method private static assignUserFields(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/content/pm/ApplicationInfo;I)V
    .registers 8
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 955
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 957
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 959
    sget-object v1, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 960
    return-void

    .line 964
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 965
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, "baseDataDirPrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 967
    .local v2, "userIdPkgSuffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "user_de"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 971
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isDefaultToDeviceProtectedStorage()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 973
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v3, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_98

    .line 975
    :cond_94
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v3, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 977
    :goto_98
    return-void
.end method

.method private static assignUserFields(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/content/pm/InstrumentationInfo;I)V
    .registers 8
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "info"    # Landroid/content/pm/InstrumentationInfo;
    .param p2, "userId"    # I

    .line 981
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 983
    sget-object v1, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 984
    return-void

    .line 988
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 989
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 990
    .local v1, "baseDataDirPrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 991
    .local v2, "userIdPkgSuffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 993
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "user_de"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 995
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isDefaultToDeviceProtectedStorage()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 997
    iget-object v3, p1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v3, p1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto :goto_8c

    .line 999
    :cond_88
    iget-object v3, p1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v3, p1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 1001
    :goto_8c
    return-void
.end method

.method private static checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z
    .registers 5
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p2, "flags"    # J

    .line 923
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v0

    return v0
.end method

.method private static checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .registers 12
    .param p0, "flags"    # J
    .param p2, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 784
    const-wide/32 v0, 0x20000000

    and-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_19

    .line 785
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_19

    if-eqz p3, :cond_19

    iget-boolean v2, p3, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v2, :cond_19

    .line 787
    return v3

    .line 792
    :cond_19
    invoke-static {p2, p0, p1}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v2

    if-nez v2, :cond_36

    if-eqz p3, :cond_35

    .line 793
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_35

    const-wide/32 v6, 0x402000

    and-long/2addr v6, p0

    cmp-long v2, v6, v4

    if-nez v2, :cond_34

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_35

    :cond_34
    goto :goto_36

    :cond_35
    goto :goto_37

    :cond_36
    :goto_36
    const/4 v3, 0x1

    .line 792
    :goto_37
    return v3
.end method

.method private static flag(ZI)I
    .registers 3
    .param p0, "hasFlag"    # Z
    .param p1, "flag"    # I

    .line 822
    if-eqz p0, :cond_3

    .line 823
    return p1

    .line 825
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;
    .registers 15
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p2, "flags"    # I

    .line 93
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    int-to-long v2, p2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    .line 94
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 93
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v11, p1

    invoke-static/range {v0 .. v11}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateWithComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 23
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "gids"    # [I
    .param p2, "flags"    # J
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p9, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 87
    .local p8, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v11}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateWithComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "a"    # Lcom/android/server/pm/pkg/component/ParsedActivity;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p5, "userId"    # I

    .line 565
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 9
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "a"    # Lcom/android/server/pm/pkg/component/ParsedActivity;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "userId"    # I

    .line 496
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 497
    :cond_4
    invoke-static {p0, p4, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_b

    .line 498
    return-object v0

    .line 500
    :cond_b
    if-nez p5, :cond_11

    .line 501
    invoke-static {p0, p2, p3, p4, p6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    .line 503
    :cond_11
    if-nez p5, :cond_14

    .line 504
    return-object v0

    .line 507
    :cond_14
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateActivityInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;
    .registers 9
    .param p0, "a"    # Lcom/android/server/pm/pkg/component/ParsedActivity;
    .param p1, "flags"    # J
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 522
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 523
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    invoke-static {v0, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    .line 524
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 525
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 526
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 527
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 528
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 529
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 530
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 531
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 532
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 533
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 534
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 535
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 536
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 537
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 538
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 539
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPersistableMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 540
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 541
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 542
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 543
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 544
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 545
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 546
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 547
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getRotationAnimation()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 548
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getColorMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 549
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 550
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getAttributionTags()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    .line 551
    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c4

    .line 552
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    .line 554
    .local v1, "metaData":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c1

    const/4 v2, 0x0

    goto :goto_c2

    :cond_c1
    move-object v2, v1

    :goto_c2
    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 556
    .end local v1    # "metaData":Landroid/os/Bundle;
    :cond_c4
    iput-object p3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 557
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 558
    return-object v0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 13
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "flags"    # J
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p4, "userId"    # I

    .line 376
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 377
    return-object v0

    .line 380
    :cond_4
    invoke-static {p0, p3, p1, p2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_b

    .line 381
    return-object v0

    .line 384
    :cond_b
    const/4 v7, 0x1

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfoUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfoUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;IZ)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "flags"    # J
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p4, "userId"    # I
    .param p5, "assignUserFields"    # Z

    .line 405
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 407
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz p5, :cond_c

    .line 408
    invoke-static {p0, v0, p4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignUserFields(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/content/pm/ApplicationInfo;I)V

    .line 411
    :cond_c
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    .line 413
    return-object v0
.end method

.method public static generateAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Landroid/content/pm/Attribution;
    .registers 4
    .param p0, "pa"    # Lcom/android/server/pm/pkg/component/ParsedAttribution;

    .line 777
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 778
    :cond_4
    new-instance v0, Landroid/content/pm/Attribution;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getLabel()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/Attribution;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 7
    .param p0, "a"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # J
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p4, "userId"    # I

    .line 481
    if-eqz p0, :cond_19

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_19

    .line 486
    :cond_b
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 487
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 488
    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 489
    return-object v0

    .line 482
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # J
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p4, "userId"    # I

    .line 464
    if-eqz p0, :cond_25

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_25

    .line 469
    :cond_9
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    move-object p0, v0

    .line 470
    invoke-virtual {p0, p4}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 471
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    goto :goto_1f

    .line 472
    :cond_1d
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    :goto_1f
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 473
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    .line 474
    return-object p0

    .line 465
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JIZ)Landroid/content/pm/InstrumentationInfo;
    .registers 12
    .param p0, "i"    # Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "assignUserFields"    # Z

    .line 693
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 695
    :cond_4
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 696
    .local v1, "ii":Landroid/content/pm/InstrumentationInfo;
    invoke-static {v1, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 697
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 698
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 699
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->isHandleProfiling()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 700
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->isFunctionalTest()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 702
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 703
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 704
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    .line 705
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3f

    move-object v2, v0

    goto :goto_43

    :cond_3f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_43
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 706
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_4e

    .line 707
    move-object v2, v0

    goto :goto_52

    :cond_4e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_52
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 708
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_60

    .line 709
    move-object v2, v0

    goto :goto_64

    :cond_60
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    :goto_64
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 711
    if-eqz p5, :cond_6b

    .line 712
    invoke-static {p1, v1, p4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignUserFields(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/content/pm/InstrumentationInfo;I)V

    .line 715
    :cond_6b
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_75

    .line 716
    return-object v1

    .line 718
    :cond_75
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 720
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_80

    goto :goto_81

    :cond_80
    move-object v0, v2

    :goto_81
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 721
    return-object v1
.end method

.method public static generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;
    .registers 9
    .param p0, "pg"    # Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    .param p1, "flags"    # J

    .line 752
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 754
    :cond_4
    new-instance v1, Landroid/content/pm/PermissionGroupInfo;

    .line 755
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getRequestDetailRes()I

    move-result v2

    .line 756
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestRes()I

    move-result v3

    .line 757
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestDetailRes()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PermissionGroupInfo;-><init>(III)V

    .line 760
    .local v1, "pgi":Landroid/content/pm/PermissionGroupInfo;
    invoke-static {v1, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 761
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 762
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getPriority()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 763
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 764
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 766
    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    .line 767
    return-object v1

    .line 769
    :cond_3a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 771
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_46

    :cond_45
    move-object v0, v2

    :goto_46
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 772
    return-object v1
.end method

.method public static generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .registers 9
    .param p0, "p"    # Lcom/android/server/pm/pkg/component/ParsedPermission;
    .param p1, "flags"    # J

    .line 727
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 729
    :cond_4
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    .line 731
    .local v1, "pi":Landroid/content/pm/PermissionInfo;
    invoke-static {v1, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 733
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 734
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 735
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 736
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 737
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 738
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getKnownCerts()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 740
    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3e

    .line 741
    return-object v1

    .line 743
    :cond_3e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 745
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_4a

    :cond_49
    move-object v0, v2

    :goto_4a
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 746
    return-object v1
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .registers 13
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "p"    # Lcom/android/server/pm/pkg/component/ParsedProvider;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p5, "userId"    # I

    .line 682
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;
    .registers 9
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "p"    # Lcom/android/server/pm/pkg/component/ParsedProvider;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "userId"    # I

    .line 625
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 626
    :cond_4
    invoke-static {p0, p4, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_b

    .line 627
    return-object v0

    .line 629
    :cond_b
    if-nez p5, :cond_11

    .line 630
    invoke-static {p0, p2, p3, p4, p6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    .line 632
    :cond_11
    if-nez p5, :cond_14

    .line 633
    return-object v0

    .line 636
    :cond_14
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateProviderInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateProviderInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;
    .registers 11
    .param p0, "p"    # Lcom/android/server/pm/pkg/component/ParsedProvider;
    .param p1, "flags"    # J
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 651
    new-instance v0, Landroid/content/pm/ProviderInfo;

    invoke-direct {v0}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 652
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    invoke-static {v0, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    .line 653
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 654
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 655
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 656
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 657
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 658
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 659
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 660
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 661
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 662
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 663
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 664
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/os/PatternMatcher;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PatternMatcher;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 665
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object v1

    new-array v2, v2, [Landroid/content/pm/PathPermission;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/PathPermission;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 666
    const-wide/16 v1, 0x800

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_73

    .line 667
    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 669
    :cond_73
    const-wide/16 v5, 0x80

    and-long/2addr v5, p1

    cmp-long v1, v5, v3

    if-eqz v1, :cond_88

    .line 670
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    .line 672
    .local v1, "metaData":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_85

    goto :goto_86

    :cond_85
    move-object v2, v1

    :goto_86
    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 674
    .end local v1    # "metaData":Landroid/os/Bundle;
    :cond_88
    iput-object p3, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 675
    return-object v0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .registers 13
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "s"    # Lcom/android/server/pm/pkg/component/ParsedService;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p5, "userId"    # I

    .line 618
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ServiceInfo;
    .registers 9
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "s"    # Lcom/android/server/pm/pkg/component/ParsedService;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "userId"    # I

    .line 572
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 573
    :cond_4
    invoke-static {p0, p4, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_b

    .line 574
    return-object v0

    .line 576
    :cond_b
    if-nez p5, :cond_11

    .line 577
    invoke-static {p0, p2, p3, p4, p6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    .line 579
    :cond_11
    if-nez p5, :cond_14

    .line 580
    return-object v0

    .line 583
    :cond_14
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateServiceInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateServiceInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;
    .registers 9
    .param p0, "s"    # Lcom/android/server/pm/pkg/component/ParsedService;
    .param p1, "flags"    # J
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 598
    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 599
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v0, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    .line 600
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedService;->isExported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 601
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedService;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 602
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 603
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedService;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 604
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedService;->getForegroundServiceType()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 605
    iput-object p3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 606
    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_40

    .line 607
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    .line 609
    .local v1, "metaData":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3d
    move-object v2, v1

    :goto_3e
    iput-object v2, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 611
    .end local v1    # "metaData":Landroid/os/Bundle;
    :cond_40
    return-object v0
.end method

.method private static generateWithComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;)Landroid/content/pm/PackageInfo;
    .registers 32
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "gids"    # [I
    .param p2, "flags"    # J
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p9, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p10, "userId"    # I
    .param p11, "apexInfo"    # Landroid/apex/ApexInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 102
    .local p8, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-wide/from16 v13, p2

    move-object/from16 v15, p0

    move-object/from16 v12, p9

    move/from16 v11, p10

    invoke-static {v15, v13, v14, v12, v11}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 103
    .local v16, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v17, 0x0

    if-nez v16, :cond_11

    .line 104
    return-object v17

    .line 106
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, v16

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateWithoutComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 109
    .local v7, "info":Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_2c

    .line 110
    return-object v17

    .line 113
    :cond_2c
    const-wide/16 v0, 0x1

    and-long/2addr v0, v13

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_9b

    .line 114
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 115
    .local v10, "N":I
    if-lez v10, :cond_9b

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "num":I
    new-array v11, v10, [Landroid/content/pm/ActivityInfo;

    .line 118
    .local v11, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    move v12, v0

    move v6, v1

    .end local v0    # "num":I
    .local v6, "i":I
    .local v12, "num":I
    :goto_45
    if-ge v6, v10, :cond_91

    .line 119
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 120
    .local v17, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    const/4 v1, 0x0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object/from16 v3, v17

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 122
    sget-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 123
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 124
    move/from16 v19, v6

    goto :goto_8e

    .line 126
    :cond_73
    add-int/lit8 v18, v12, 0x1

    .end local v12    # "num":I
    .local v18, "num":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object/from16 v5, v16

    move/from16 v19, v6

    .end local v6    # "i":I
    .local v19, "i":I
    move/from16 v6, p10

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v11, v12

    move/from16 v12, v18

    goto :goto_8e

    .line 120
    .end local v18    # "num":I
    .end local v19    # "i":I
    .restart local v6    # "i":I
    .restart local v12    # "num":I
    :cond_8c
    move/from16 v19, v6

    .line 118
    .end local v6    # "i":I
    .end local v17    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .restart local v19    # "i":I
    :goto_8e
    add-int/lit8 v6, v19, 0x1

    .end local v19    # "i":I
    .restart local v6    # "i":I
    goto :goto_45

    :cond_91
    move/from16 v19, v6

    .line 130
    .end local v6    # "i":I
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 133
    .end local v10    # "N":I
    .end local v11    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v12    # "num":I
    :cond_9b
    const-wide/16 v0, 0x2

    and-long/2addr v0, v13

    cmp-long v0, v0, v8

    if-eqz v0, :cond_f9

    .line 134
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 135
    .local v10, "size":I
    if-lez v10, :cond_f9

    .line 136
    const/4 v0, 0x0

    .line 137
    .restart local v0    # "num":I
    new-array v11, v10, [Landroid/content/pm/ActivityInfo;

    .line 138
    .restart local v11    # "res":[Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    move v12, v0

    move v6, v1

    .end local v0    # "num":I
    .restart local v6    # "i":I
    .restart local v12    # "num":I
    :goto_b2
    if-ge v6, v10, :cond_ef

    .line 139
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 140
    .restart local v17    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    const/4 v1, 0x0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object/from16 v3, v17

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 142
    add-int/lit8 v18, v12, 0x1

    .end local v12    # "num":I
    .restart local v18    # "num":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object/from16 v5, v16

    move/from16 v19, v6

    .end local v6    # "i":I
    .restart local v19    # "i":I
    move/from16 v6, p10

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v11, v12

    move/from16 v12, v18

    goto :goto_ec

    .line 140
    .end local v18    # "num":I
    .end local v19    # "i":I
    .restart local v6    # "i":I
    .restart local v12    # "num":I
    :cond_ea
    move/from16 v19, v6

    .line 138
    .end local v6    # "i":I
    .end local v17    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .restart local v19    # "i":I
    :goto_ec
    add-int/lit8 v6, v19, 0x1

    .end local v19    # "i":I
    .restart local v6    # "i":I
    goto :goto_b2

    :cond_ef
    move/from16 v19, v6

    .line 146
    .end local v6    # "i":I
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 149
    .end local v10    # "size":I
    .end local v11    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v12    # "num":I
    :cond_f9
    const-wide/16 v0, 0x4

    and-long/2addr v0, v13

    cmp-long v0, v0, v8

    if-eqz v0, :cond_157

    .line 150
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 151
    .restart local v10    # "size":I
    if-lez v10, :cond_157

    .line 152
    const/4 v0, 0x0

    .line 153
    .restart local v0    # "num":I
    new-array v11, v10, [Landroid/content/pm/ServiceInfo;

    .line 154
    .local v11, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    move v12, v0

    move v6, v1

    .end local v0    # "num":I
    .restart local v6    # "i":I
    .restart local v12    # "num":I
    :goto_110
    if-ge v6, v10, :cond_14d

    .line 155
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 156
    .local v17, "s":Lcom/android/server/pm/pkg/component/ParsedService;
    const/4 v1, 0x0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object/from16 v3, v17

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 158
    add-int/lit8 v18, v12, 0x1

    .end local v12    # "num":I
    .restart local v18    # "num":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object/from16 v5, v16

    move/from16 v19, v6

    .end local v6    # "i":I
    .restart local v19    # "i":I
    move/from16 v6, p10

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    aput-object v0, v11, v12

    move/from16 v12, v18

    goto :goto_14a

    .line 156
    .end local v18    # "num":I
    .end local v19    # "i":I
    .restart local v6    # "i":I
    .restart local v12    # "num":I
    :cond_148
    move/from16 v19, v6

    .line 154
    .end local v6    # "i":I
    .end local v17    # "s":Lcom/android/server/pm/pkg/component/ParsedService;
    .restart local v19    # "i":I
    :goto_14a
    add-int/lit8 v6, v19, 0x1

    .end local v19    # "i":I
    .restart local v6    # "i":I
    goto :goto_110

    :cond_14d
    move/from16 v19, v6

    .line 162
    .end local v6    # "i":I
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ServiceInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 165
    .end local v10    # "size":I
    .end local v11    # "res":[Landroid/content/pm/ServiceInfo;
    .end local v12    # "num":I
    :cond_157
    const-wide/16 v0, 0x8

    and-long/2addr v0, v13

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1b5

    .line 166
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 167
    .restart local v10    # "size":I
    if-lez v10, :cond_1b5

    .line 168
    const/4 v0, 0x0

    .line 169
    .restart local v0    # "num":I
    new-array v11, v10, [Landroid/content/pm/ProviderInfo;

    .line 170
    .local v11, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v1, 0x0

    move v12, v0

    move v6, v1

    .end local v0    # "num":I
    .restart local v6    # "i":I
    .restart local v12    # "num":I
    :goto_16e
    if-ge v6, v10, :cond_1ab

    .line 171
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 173
    .local v17, "pr":Lcom/android/server/pm/pkg/component/ParsedProvider;
    const/4 v1, 0x0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object/from16 v3, v17

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 175
    add-int/lit8 v18, v12, 0x1

    .end local v12    # "num":I
    .restart local v18    # "num":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object/from16 v5, v16

    move/from16 v19, v6

    .end local v6    # "i":I
    .restart local v19    # "i":I
    move/from16 v6, p10

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    aput-object v0, v11, v12

    move/from16 v12, v18

    goto :goto_1a8

    .line 173
    .end local v18    # "num":I
    .end local v19    # "i":I
    .restart local v6    # "i":I
    .restart local v12    # "num":I
    :cond_1a6
    move/from16 v19, v6

    .line 170
    .end local v6    # "i":I
    .end local v17    # "pr":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .restart local v19    # "i":I
    :goto_1a8
    add-int/lit8 v6, v19, 0x1

    .end local v19    # "i":I
    .restart local v6    # "i":I
    goto :goto_16e

    :cond_1ab
    move/from16 v19, v6

    .line 179
    .end local v6    # "i":I
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 182
    .end local v10    # "size":I
    .end local v11    # "res":[Landroid/content/pm/ProviderInfo;
    .end local v12    # "num":I
    :cond_1b5
    const-wide/16 v0, 0x10

    and-long/2addr v0, v13

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1ea

    .line 183
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 184
    .local v6, "N":I
    if-lez v6, :cond_1ea

    .line 185
    new-array v0, v6, [Landroid/content/pm/InstrumentationInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 186
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_1cc
    if-ge v8, v6, :cond_1ea

    .line 187
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 188
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    const/4 v5, 0x1

    .line 187
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v4, p10

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JIZ)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    aput-object v0, v9, v8

    .line 186
    add-int/lit8 v8, v8, 0x1

    goto :goto_1cc

    .line 194
    .end local v6    # "N":I
    .end local v8    # "i":I
    :cond_1ea
    return-object v7
.end method

.method public static generateWithoutComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;
    .registers 14
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "gids"    # [I
    .param p2, "flags"    # J
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p9, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p10, "userId"    # I
    .param p11, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p12, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 202
    .local p8, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p9, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 203
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_8
    invoke-static/range {p0 .. p12}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateWithoutComponentsUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateWithoutComponentsUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;
    .registers 32
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "gids"    # [I
    .param p2, "flags"    # J
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p9, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p10, "userId"    # I
    .param p11, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p12, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 222
    .local p8, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    move-object/from16 v3, p11

    new-instance v4, Landroid/content/pm/PackageInfo;

    invoke-direct {v4}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 223
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 224
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 225
    move-object/from16 v5, p0

    check-cast v5, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;->getVersionCode()I

    move-result v5

    iput v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 226
    move-object/from16 v5, p0

    check-cast v5, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;->getVersionCodeMajor()I

    move-result v5

    iput v5, v4, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 227
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getBaseRevisionCode()I

    move-result v5

    iput v5, v4, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 228
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitRevisionCodes()[I

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 229
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getVersionName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 230
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSharedUserId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 231
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSharedUserLabel()I

    move-result v5

    iput v5, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 232
    move-object/from16 v5, p12

    iput-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 233
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getInstallLocation()I

    move-result v6

    iput v6, v4, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 234
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_63

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_69

    .line 236
    :cond_63
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isRequiredForAllUsers()Z

    move-result v6

    iput-boolean v6, v4, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 238
    :cond_69
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getRestrictedAccountType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 239
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getRequiredAccountType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 240
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOverlayTarget()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 241
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 242
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOverlayCategory()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 243
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOverlayPriority()I

    move-result v6

    iput v6, v4, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 244
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isOverlayIsStatic()Z

    move-result v6

    iput-boolean v6, v4, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 245
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getCompileSdkVersion()I

    move-result v6

    iput v6, v4, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getCompileSdkVersionCodeName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 247
    move-wide/from16 v8, p4

    iput-wide v8, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 248
    move-wide/from16 v10, p6

    iput-wide v10, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 249
    const-wide/16 v12, 0x100

    and-long/2addr v12, v0

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-eqz v6, :cond_b5

    .line 250
    move-object/from16 v6, p1

    iput-object v6, v4, Landroid/content/pm/PackageInfo;->gids:[I

    goto :goto_b7

    .line 249
    :cond_b5
    move-object/from16 v6, p1

    .line 252
    :goto_b7
    const-wide/16 v12, 0x4000

    and-long/2addr v12, v0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_103

    .line 253
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getConfigPreferences()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 254
    .local v12, "size":I
    if-lez v12, :cond_d5

    .line 255
    new-array v13, v12, [Landroid/content/pm/ConfigurationInfo;

    iput-object v13, v4, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 256
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getConfigPreferences()Ljava/util/List;

    move-result-object v13

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface {v13, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 258
    :cond_d5
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getRequestedFeatures()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 259
    .end local v12    # "size":I
    .local v7, "size":I
    if-lez v7, :cond_ec

    .line 260
    new-array v12, v7, [Landroid/content/pm/FeatureInfo;

    iput-object v12, v4, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 261
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getRequestedFeatures()Ljava/util/List;

    move-result-object v12

    iget-object v13, v4, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 263
    :cond_ec
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getFeatureGroups()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    .line 264
    if-lez v7, :cond_103

    .line 265
    new-array v12, v7, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v12, v4, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 266
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getFeatureGroups()Ljava/util/List;

    move-result-object v12

    iget-object v13, v4, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 269
    .end local v7    # "size":I
    :cond_103
    const-wide/16 v12, 0x1000

    and-long/2addr v12, v0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_188

    .line 270
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPermissions()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v7

    .line 271
    .restart local v7    # "size":I
    if-lez v7, :cond_132

    .line 272
    new-array v12, v7, [Landroid/content/pm/PermissionInfo;

    iput-object v12, v4, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 273
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_119
    if-ge v12, v7, :cond_132

    .line 274
    iget-object v13, v4, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPermissions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-static {v14, v0, v1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v14

    aput-object v14, v13, v12

    .line 273
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v14, 0x0

    goto :goto_119

    .line 278
    .end local v12    # "i":I
    :cond_132
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesPermissions()Ljava/util/List;

    move-result-object v12

    .line 279
    .local v12, "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    .line 280
    if-lez v7, :cond_188

    .line 281
    new-array v13, v7, [Ljava/lang/String;

    iput-object v13, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 282
    new-array v13, v7, [I

    iput-object v13, v4, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 283
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_145
    if-ge v13, v7, :cond_188

    .line 284
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;

    .line 285
    .local v14, "usesPermission":Lcom/android/server/pm/pkg/component/ParsedUsesPermission;
    iget-object v15, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v13

    .line 287
    iget-object v15, v4, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v17, v15, v13

    const/16 v16, 0x1

    or-int/lit8 v17, v17, 0x1

    aput v17, v15, v13

    .line 289
    if-eqz v2, :cond_173

    .line 290
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_173

    .line 291
    iget-object v15, v4, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v17, v15, v13

    or-int/lit8 v17, v17, 0x2

    aput v17, v15, v13

    .line 294
    :cond_173
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v15

    const/high16 v17, 0x10000

    and-int v15, v15, v17

    if-eqz v15, :cond_185

    .line 296
    iget-object v15, v4, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v18, v15, v13

    or-int v17, v18, v17

    aput v17, v15, v13

    .line 283
    .end local v14    # "usesPermission":Lcom/android/server/pm/pkg/component/ParsedUsesPermission;
    :cond_185
    add-int/lit8 v13, v13, 0x1

    goto :goto_145

    .line 302
    .end local v7    # "size":I
    .end local v12    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v13    # "i":I
    :cond_188
    const-wide/32 v12, -0x80000000

    and-long/2addr v12, v0

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_1d0

    .line 303
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v7

    .line 304
    .restart local v7    # "size":I
    if-lez v7, :cond_1b8

    .line 305
    new-array v12, v7, [Landroid/content/pm/Attribution;

    iput-object v12, v4, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    .line 306
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1a1
    if-ge v12, v7, :cond_1b8

    .line 307
    iget-object v13, v4, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/component/ParsedAttribution;

    invoke-static {v14}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Landroid/content/pm/Attribution;

    move-result-object v14

    aput-object v14, v13, v12

    .line 306
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a1

    .line 310
    .end local v12    # "i":I
    :cond_1b8
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->areAttributionsUserVisible()Z

    move-result v12

    if-eqz v12, :cond_1c7

    .line 311
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_1cf

    .line 314
    :cond_1c7
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v13, v13, -0x5

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 317
    .end local v7    # "size":I
    :goto_1cf
    goto :goto_1d8

    .line 318
    :cond_1d0
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v7, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v12, v12, -0x5

    iput v12, v7, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 322
    :goto_1d8
    if-eqz v3, :cond_231

    .line 323
    new-instance v7, Ljava/io/File;

    iget-object v12, v3, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v7, "apexFile":Ljava/io/File;
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 326
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 327
    iget-boolean v12, v3, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v12, :cond_206

    .line 328
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v14, 0x1

    or-int/2addr v13, v14

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 329
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, -0x81

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_216

    .line 331
    :cond_206
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, -0x2

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 332
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v13, v13, 0x80

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 334
    :goto_216
    iget-boolean v12, v3, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v12, :cond_224

    .line 335
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x800000

    or-int/2addr v13, v14

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_22e

    .line 337
    :cond_224
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const v14, -0x800001

    and-int/2addr v13, v14

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 339
    :goto_22e
    const/4 v12, 0x1

    iput-boolean v12, v4, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 342
    .end local v7    # "apexFile":Ljava/io/File;
    :cond_231
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    .line 344
    .local v7, "signingDetails":Landroid/content/pm/SigningDetails;
    const-wide/16 v12, 0x40

    and-long/2addr v12, v0

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_26d

    .line 345
    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_255

    .line 348
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/content/pm/Signature;

    iput-object v12, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 349
    iget-object v12, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v14

    aget-object v14, v14, v13

    aput-object v14, v12, v13

    goto :goto_26d

    .line 350
    :cond_255
    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    move-result v12

    if-eqz v12, :cond_26d

    .line 352
    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v12

    array-length v12, v12

    .line 353
    .local v12, "numberOfSigs":I
    new-array v14, v12, [Landroid/content/pm/Signature;

    iput-object v14, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 354
    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v14

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v14, v13, v15, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    .end local v12    # "numberOfSigs":I
    :cond_26d
    :goto_26d
    const-wide/32 v12, 0x8000000

    and-long/2addr v12, v0

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_286

    .line 361
    sget-object v12, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v7, v12, :cond_283

    .line 363
    new-instance v12, Landroid/content/pm/SigningInfo;

    invoke-direct {v12, v7}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v12, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_286

    .line 365
    :cond_283
    const/4 v12, 0x0

    iput-object v12, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 369
    :cond_286
    :goto_286
    return-object v4
.end method

.method public static getCredentialProtectedDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "userId"    # I

    .line 948
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 948
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "userId"    # I

    .line 928
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 929
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 932
    :cond_11
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 934
    invoke-static {p0, p1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->getDeviceProtectedDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 936
    :cond_1c
    invoke-static {p0, p1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->getCredentialProtectedDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceProtectedDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p1, "userId"    # I

    .line 942
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 942
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V
    .registers 12
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # J
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserState;

    .line 418
    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 419
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 421
    :cond_c
    const-wide/16 v4, 0x400

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_17

    .line 422
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 423
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 427
    :cond_17
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_1e

    .line 428
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 431
    :cond_1e
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v1

    const/high16 v4, 0x200000

    invoke-static {v1, v4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    .line 432
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    const/high16 v5, 0x800000

    invoke-static {v4, v5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v1, v4

    .line 433
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v1, v4

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 434
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    const/16 v4, 0x80

    invoke-static {v1, v4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    .line 435
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v4

    const/high16 v5, 0x10000

    invoke-static {v4, v5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v1, v4

    .line 436
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v1, v4

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 438
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v5, :cond_71

    .line 439
    iput-boolean v5, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_95

    .line 440
    :cond_71
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_85

    .line 442
    const-wide/32 v6, 0x8000

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_81

    goto :goto_82

    :cond_81
    move v5, v1

    :goto_82
    iput-boolean v5, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_95

    .line 443
    :cond_85
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_93

    .line 444
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_95

    .line 446
    :cond_93
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 448
    :cond_95
    :goto_95
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 449
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a8

    .line 450
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 452
    :cond_a8
    invoke-static {p3}, Lcom/android/server/pm/pkg/SELinuxUtil;->getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 453
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v0

    .line 454
    .local v0, "overlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    if-eqz v0, :cond_d0

    .line 455
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 456
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 458
    :cond_d0
    return-void
.end method
