.class public abstract Lcom/android/server/pm/parsing/PackageInfoUtils;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# static fields
.field public static final SYSTEM_DATA_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    return-void
.end method

.method public static appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 3

    if-eqz p1, :cond_d

    .line 991
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result p1

    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result p1

    or-int/2addr p0, p1

    :cond_d
    return p0
.end method

.method public static appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 5

    .line 953
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v0

    .line 954
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHardwareAccelerated()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 955
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupAllowed()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 956
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isKillAfterRestoreAllowed()Z

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 957
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRestoreAnyVersion()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 958
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFullBackupOnly()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 959
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 960
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 961
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result v1

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 962
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 963
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTaskReparentingAllowed()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 964
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataAllowed()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 965
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeHeap()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 966
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCleartextTrafficAllowed()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 967
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRtlSupported()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 968
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTestOnly()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 969
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 970
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 971
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isGame()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 972
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    move-result v1

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 973
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 974
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    move-result v1

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 975
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 976
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 977
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 978
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 979
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFactoryTest()Z

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result p0

    or-int/2addr p0, v0

    .line 981
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public static appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 2

    .line 0
    return p0
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 5

    .line 1001
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v0

    .line 1002
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResourceOverlay()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1003
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1004
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHasDomainUrls()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1005
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isProfileableByShell()Z

    move-result v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1006
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupInForeground()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1007
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1008
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1009
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1010
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPartiallyDirectBootAware()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1011
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataOnFailedRestoreAllowed()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1012
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowAudioPlaybackCapture()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1013
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1014
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1015
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUserDataFragile()Z

    move-result v1

    const/high16 v2, 0x1000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1016
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSaveStateDisallowed()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1017
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1018
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowNativeHeapPointerTagging()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1019
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystemExt(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1020
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1021
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1022
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isVendor(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1023
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isProduct(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1024
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOdm(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1025
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1027
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_123

    .line 1029
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_121

    or-int/lit16 v0, v0, 0x400

    goto :goto_123

    :cond_121
    or-int/lit16 v0, v0, 0x800

    .line 1036
    :cond_123
    :goto_123
    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public static appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 3

    if-eqz p1, :cond_12

    .line 1071
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result p1

    or-int/2addr p0, p1

    :cond_12
    return p0
.end method

.method public static assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .registers 3

    .line 902
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 903
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 904
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 905
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 906
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 907
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    return-void
.end method

.method public static assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 4

    .line 924
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 926
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    move-result-object p1

    .line 928
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 929
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/content/pm/ComponentInfo;->icon:I

    return-void
.end method

.method public static assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .registers 3

    .line 912
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getNonLocalizedLabel(Lcom/android/internal/pm/pkg/component/ParsedComponent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 913
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 914
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 915
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 916
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 917
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 918
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 4

    .line 935
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 937
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    move-result-object p1

    .line 939
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 940
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    return-void
.end method

.method public static checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .registers 8

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 881
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz p3, :cond_18

    iget-boolean v0, p3, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v0, :cond_18

    return v1

    .line 888
    :cond_18
    invoke-static {p2, p0, p1}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p2

    if-nez p2, :cond_2e

    if-eqz p3, :cond_2d

    .line 889
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->matchUninstalledOrHidden(J)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    return v1

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0
.end method

.method public static checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z
    .registers 9

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v0, 0x0

    if-nez p0, :cond_1c

    .line 866
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    if-nez p0, :cond_1c

    .line 867
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result p0

    if-eqz p0, :cond_1c

    return v0

    .line 873
    :cond_1c
    invoke-static {p2, p3, p4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p0

    if-nez p0, :cond_30

    .line 874
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-static {p3, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->matchUninstalledOrHidden(J)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    return v0

    :cond_30
    :goto_30
    const/4 p0, 0x1

    return p0
.end method

.method public static flag(ZI)I
    .registers 2

    .line 0
    if-eqz p0, :cond_3

    return p1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static generate(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .registers 13

    .line 116
    invoke-static/range {p0 .. p12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .registers 15

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    .line 541
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .registers 16

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 554
    :cond_4
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-nez p5, :cond_17

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    .line 558
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    goto :goto_1a

    :cond_17
    move-wide v3, p2

    move v6, p6

    move-object v7, p7

    :goto_1a
    if-nez p5, :cond_1d

    return-object v0

    .line 566
    :cond_1d
    new-instance p0, Landroid/content/pm/ActivityInfo;

    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 567
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 568
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 569
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 570
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 571
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 572
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 573
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 574
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 575
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 576
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 577
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 578
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 579
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 580
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 581
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 582
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPersistableMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 583
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 584
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 585
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 586
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 587
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 588
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 589
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 590
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRotationAnimation()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 591
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getColorMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 592
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 593
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getAttributionTags()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    const-wide/16 p6, 0x0

    cmp-long p2, p2, p6

    if-eqz p2, :cond_de

    .line 595
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    .line 597
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_da

    goto :goto_db

    :cond_da
    move-object v0, p2

    :goto_db
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_e0

    .line 599
    :cond_de
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 601
    :goto_e0
    iput-object p5, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 602
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequiredDisplayCategory()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 603
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequireContentUriPermissionFromCaller()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    .line 604
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 605
    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 466
    :cond_4
    invoke-static {p0, p5, p3, p1, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 467
    invoke-static {p5, p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_a1

    .line 472
    :cond_12
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 474
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    .line 476
    invoke-static {v1, p0, p4, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V

    .line 479
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    .line 480
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result p1

    iput-boolean p1, v1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 481
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object p1

    .line 482
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object p0

    .line 483
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    move p4, p3

    .line 484
    :goto_35
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p4, v2, :cond_4b

    .line 485
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->getInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_35

    .line 487
    :cond_4b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_53

    move-object p0, v0

    goto :goto_5b

    .line 488
    :cond_53
    new-array p0, p3, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_5b
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 492
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_64

    move-object p2, v0

    :cond_64
    iput-object p2, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 493
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    .line 517
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_73

    .line 518
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getCategoryOverride()I

    move-result p0

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 521
    :cond_73
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 522
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 523
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 525
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p1

    or-int/2addr p0, p1

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 526
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p1

    or-int/2addr p0, p1

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 527
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p1

    or-int/2addr p0, p1

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    return-object v1

    :cond_a1
    :goto_a1
    return-object v0
.end method

.method public static generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 6

    if-eqz p0, :cond_19

    .line 613
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_19

    .line 618
    :cond_b
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 619
    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 620
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    if-eqz p0, :cond_22

    .line 441
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_22

    .line 445
    :cond_9
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 446
    invoke-virtual {v0, p4}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 447
    sget-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz p0, :cond_1a

    iget p0, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    if-eqz p0, :cond_1a

    goto :goto_1c

    .line 448
    :cond_1a
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    :goto_1c
    iput p0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 449
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    return-object v0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 731
    :cond_4
    invoke-static {p1, p6, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    .line 735
    :cond_b
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 736
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 737
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 738
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isHandleProfiling()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 739
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isFunctionalTest()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 741
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 742
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 743
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    .line 744
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_43

    move-object v2, v0

    goto :goto_47

    :cond_43
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_47
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 745
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_52

    move-object v2, v0

    goto :goto_56

    .line 746
    :cond_52
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_56
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 747
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_64

    move-object v2, v0

    goto :goto_68

    .line 748
    :cond_64
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    :goto_68
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 750
    invoke-static {v1, p1, p5, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V

    .line 752
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 753
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 754
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 755
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 757
    invoke-static {v1, p0, p6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    const-wide/16 p4, 0x80

    and-long p1, p2, p4

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_95

    .line 760
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object v1

    .line 762
    :cond_95
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 764
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a0

    goto :goto_a1

    :cond_a0
    move-object v0, p0

    :goto_a1
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 815
    :cond_4
    new-instance v1, Landroid/content/pm/PermissionGroupInfo;

    .line 816
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getRequestDetailRes()I

    move-result v2

    .line 817
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestRes()I

    move-result v3

    .line 818
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestDetailRes()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PermissionGroupInfo;-><init>(III)V

    .line 821
    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 822
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 823
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPriority()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 824
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 825
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_3c

    .line 828
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object v1

    .line 830
    :cond_3c
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 832
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_48

    :cond_47
    move-object v0, p0

    :goto_48
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 778
    :cond_4
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 782
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 783
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 784
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 785
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 786
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 787
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getKnownCerts()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 788
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isPurposeRequired()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/PermissionInfo;->requiresPurpose:Z

    .line 789
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getRequiresPurposeTargetSdkVersion()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requiresPurposeTargetSdkVersion:I

    .line 790
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getValidPurposes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_48
    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;

    if-eqz v3, :cond_48

    .line 792
    iget-object v4, v1, Landroid/content/pm/PermissionInfo;->validPurposes:Ljava/util/Map;

    .line 793
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/pm/ValidPurposeInfo;

    .line 795
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;->getName()Ljava/lang/String;

    move-result-object v7

    .line 796
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;->getMaxTargetSdkVersion()I

    move-result v3

    invoke-direct {v6, v7, v3}, Landroid/content/pm/ValidPurposeInfo;-><init>(Ljava/lang/String;I)V

    .line 793
    invoke-static {v4, v5, v6}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PermissionInfo;->validPurposes:Ljava/util/Map;

    goto :goto_48

    :cond_70
    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_7c

    .line 801
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object v1

    .line 803
    :cond_7c
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 805
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_87

    goto :goto_88

    :cond_87
    move-object v0, p0

    :goto_88
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;
    .registers 12

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 845
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    .line 846
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2, p1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 847
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 848
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 849
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ProcessInfo;

    .line 850
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/util/ArraySet;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 851
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    move-result v5

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    move-result v6

    .line 852
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v7

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->isUseEmbeddedDex()Z

    move-result v8

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/ProcessInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;IIIZ)V

    .line 849
    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_51
    return-object p2
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;
    .registers 16

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 682
    :cond_4
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-eqz p5, :cond_1e

    .line 685
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1e

    :cond_1a
    move-wide v3, p2

    move v6, p6

    move-object v7, p7

    goto :goto_50

    .line 686
    :cond_1e
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfo\'s package name is different. Expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_39

    .line 687
    const-string p5, "(null AppInfo)"

    goto :goto_3b

    .line 688
    :cond_39
    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_3b
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 686
    const-string v1, "PackageParsing"

    invoke-static {v1, p5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    .line 689
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    :goto_50
    if-nez p5, :cond_53

    return-object v0

    .line 696
    :cond_53
    new-instance p0, Landroid/content/pm/ProviderInfo;

    invoke-direct {p0}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 697
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 698
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 699
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 700
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 701
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 702
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 703
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 704
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 705
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 706
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 707
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 708
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    new-array p4, p3, [Landroid/os/PatternMatcher;

    invoke-interface {p2, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/PatternMatcher;

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 709
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object p2

    new-array p3, p3, [Landroid/content/pm/PathPermission;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/PathPermission;

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const-wide/16 p2, 0x800

    and-long/2addr p2, v3

    const-wide/16 p6, 0x0

    cmp-long p2, p2, p6

    if-nez p2, :cond_c2

    .line 711
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :cond_c2
    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    cmp-long p2, p2, p6

    if-eqz p2, :cond_d7

    .line 714
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    .line 716
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_d4

    goto :goto_d5

    :cond_d4
    move-object v0, p2

    :goto_d5
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 718
    :cond_d7
    iput-object p5, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 719
    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .registers 15

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    .line 631
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .registers 16

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 644
    :cond_4
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-nez p5, :cond_17

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    .line 648
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    goto :goto_1a

    :cond_17
    move-wide v3, p2

    move v6, p6

    move-object v7, p7

    :goto_1a
    if-nez p5, :cond_1d

    return-object v0

    .line 656
    :cond_1d
    new-instance p0, Landroid/content/pm/ServiceInfo;

    invoke-direct {p0}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 657
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 658
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 659
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 660
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 661
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getForegroundServiceType()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 662
    iput-object p5, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_59

    .line 664
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    .line 666
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_56

    goto :goto_57

    :cond_56
    move-object v0, p2

    :goto_57
    iput-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 668
    :cond_59
    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateWithComponents(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .registers 34

    move-object/from16 v6, p9

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p10

    move/from16 v4, p11

    move-object/from16 v5, p12

    .line 128
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-wide v8, v1

    const/4 v0, 0x0

    if-nez v7, :cond_15

    return-object v0

    .line 134
    :cond_15
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 135
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 136
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    move-object/from16 v2, p0

    .line 137
    invoke-static {v2, v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->fillVersionCodes(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfo;)V

    .line 138
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 139
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 140
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 141
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 142
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserLabelResourceId()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 143
    iput-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 144
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstallLocation()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 145
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_5d

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_63

    .line 147
    :cond_5d
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequiredForAllUsers()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 149
    :cond_63
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRestrictedAccountType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 150
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequiredAccountType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 151
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 152
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 153
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 154
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayPriority()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 155
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isOverlayIsStatic()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 156
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersion()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 157
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersionCodeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    move-wide/from16 v3, p4

    .line 158
    iput-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v3, p6

    .line 159
    iput-wide v3, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 160
    invoke-interface/range {p10 .. p10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v3

    if-eqz v3, :cond_b2

    .line 161
    invoke-interface/range {p10 .. p10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageInfo;->setArchiveTimeMillis(J)V

    :cond_b2
    const-wide/16 v3, 0x100

    and-long/2addr v3, v8

    const-wide/16 v18, 0x0

    cmp-long v3, v3, v18

    if-eqz v3, :cond_bf

    move-object/from16 v3, p1

    .line 164
    iput-object v3, v1, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_bf
    const-wide/16 v3, 0x4000

    and-long/2addr v3, v8

    cmp-long v3, v3, v18

    if-eqz v3, :cond_10b

    .line 167
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_dd

    .line 169
    new-array v3, v3, [Landroid/content/pm/ConfigurationInfo;

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 170
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 172
    :cond_dd
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f4

    .line 174
    new-array v3, v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 175
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 177
    :cond_f4
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10b

    .line 179
    new-array v3, v3, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 180
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_10b
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v8

    cmp-long v3, v3, v18

    const/4 v4, 0x0

    if-eqz v3, :cond_1c0

    .line 184
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v3

    if-lez v3, :cond_14c

    .line 186
    new-array v5, v3, [Landroid/content/pm/PermissionInfo;

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move v5, v4

    :goto_122
    if-ge v5, v3, :cond_14c

    .line 188
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 189
    invoke-static {v10, v8, v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v11

    .line 190
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, p8

    invoke-interface {v12, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_145

    .line 191
    iget v10, v11, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v13, 0x40000000    # 2.0f

    or-int/2addr v10, v13

    iput v10, v11, Landroid/content/pm/PermissionInfo;->flags:I

    .line 193
    :cond_145
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    aput-object v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_122

    .line 197
    :cond_14c
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissionMapping()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 198
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_1c0

    .line 200
    new-array v10, v5, [Ljava/lang/String;

    iput-object v10, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 201
    new-array v5, v5, [I

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 203
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    :goto_167
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 204
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    .line 206
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v12, v11, v5

    or-int/lit8 v12, v12, 0x1

    aput v12, v11, v5

    if-eqz v6, :cond_197

    .line 209
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_197

    .line 210
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v12, v11, v5

    or-int/lit8 v12, v12, 0x2

    aput v12, v11, v5

    .line 213
    :cond_197
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v10

    const/high16 v11, 0x10000

    and-int/2addr v10, v11

    if-eqz v10, :cond_1a7

    .line 215
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v12, v10, v5

    or-int/2addr v11, v12

    aput v11, v10, v5

    .line 218
    :cond_1a7
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1bd

    .line 219
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v11, v10, v5

    or-int/lit8 v11, v11, 0x4

    aput v11, v10, v5

    :cond_1bd
    add-int/lit8 v5, v5, 0x1

    goto :goto_167

    :cond_1c0
    const-wide v5, 0x80000000L

    and-long/2addr v5, v8

    cmp-long v3, v5, v18

    if-eqz v3, :cond_213

    .line 227
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v3

    if-lez v3, :cond_1fb

    .line 229
    new-array v5, v3, [Landroid/content/pm/Attribution;

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    move v5, v4

    :goto_1d9
    if-ge v5, v3, :cond_1fb

    .line 231
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    if-eqz v6, :cond_1f8

    .line 233
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    new-instance v11, Landroid/content/pm/Attribution;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v12

    .line 234
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getLabel()I

    move-result v6

    invoke-direct {v11, v12, v6}, Landroid/content/pm/Attribution;-><init>(Ljava/lang/String;I)V

    aput-object v11, v10, v5

    :cond_1f8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d9

    .line 238
    :cond_1fb
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isAttributionsUserVisible()Z

    move-result v3

    if-eqz v3, :cond_20a

    .line 239
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_21b

    .line 242
    :cond_20a
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v5, v5, -0x5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_21b

    .line 246
    :cond_213
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v5, v5, -0x5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 250
    :goto_21b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    .line 251
    invoke-static {v3, v8, v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;

    move-result-object v5

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-wide/32 v5, 0x8000000

    and-long/2addr v5, v8

    cmp-long v5, v5, v18

    if-eqz v5, :cond_23b

    .line 255
    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v3, v5, :cond_239

    .line 257
    new-instance v5, Landroid/content/pm/SigningInfo;

    invoke-direct {v5, v3}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_23b

    .line 259
    :cond_239
    iput-object v0, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 263
    :cond_23b
    :goto_23b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 264
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isCoreApp()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 265
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 267
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v3

    if-nez v3, :cond_257

    .line 269
    iput-object v0, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 270
    iput v4, v1, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    :cond_257
    const-wide/16 v5, 0x1

    and-long/2addr v5, v8

    cmp-long v0, v5, v18

    if-eqz v0, :cond_2ec

    .line 274
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2ec

    const-wide v5, 0x200000000L

    or-long v16, v8, v5

    .line 280
    new-array v3, v0, [Landroid/content/pm/ActivityInfo;

    move v5, v4

    move v6, v5

    :goto_273
    if-ge v5, v0, :cond_2de

    .line 282
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v20, v10

    check-cast v20, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 283
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v12

    .line 284
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    move-result v13

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v14

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p10

    .line 283
    invoke-static/range {v10 .. v17}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v11

    if-eqz v11, :cond_2a9

    .line 285
    sget-object v10, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 286
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v11

    .line 285
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b3

    :cond_2a9
    move v13, v0

    move-object v12, v1

    move-object v14, v3

    move v15, v5

    move v11, v6

    move-wide/from16 v2, v16

    move-object/from16 v16, v7

    goto :goto_2d0

    :cond_2b3
    add-int/lit8 v10, v6, 0x1

    move-object/from16 v4, p10

    move v13, v0

    move-object v12, v1

    move-object v0, v2

    move-object v14, v3

    move v15, v5

    move v11, v6

    move-object v5, v7

    move-wide/from16 v2, v16

    move-object/from16 v1, v20

    move/from16 v6, p11

    move-object/from16 v7, p12

    .line 289
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    move-object/from16 v16, v5

    aput-object v1, v14, v11

    move v6, v10

    goto :goto_2d1

    :goto_2d0
    move v6, v11

    :goto_2d1
    add-int/lit8 v5, v15, 0x1

    move-object v1, v12

    move v0, v13

    move-object/from16 v7, v16

    const/4 v4, 0x0

    move-wide/from16 v16, v2

    move-object v3, v14

    move-object/from16 v2, p0

    goto :goto_273

    :cond_2de
    move-object v12, v1

    move-object v14, v3

    move v11, v6

    move-object/from16 v16, v7

    .line 293
    invoke-static {v14, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_2ef

    :cond_2ec
    move-object v12, v1

    move-object/from16 v16, v7

    :goto_2ef
    const-wide/16 v0, 0x2

    and-long/2addr v0, v8

    cmp-long v0, v0, v18

    if-eqz v0, :cond_351

    .line 297
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_351

    .line 300
    new-array v11, v10, [Landroid/content/pm/ActivityInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_304
    if-ge v13, v10, :cond_349

    .line 302
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 303
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    .line 304
    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    move-result v3

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v4

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p10

    move-wide v6, v8

    .line 303
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_344

    add-int/lit8 v8, v14, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    move-object v1, v15

    move-object/from16 v5, v16

    .line 305
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    aput-object v1, v11, v14

    move v14, v8

    :cond_344
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v8, p2

    goto :goto_304

    .line 309
    :cond_349
    invoke-static {v11, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_351
    const-wide/16 v0, 0x4

    and-long v0, p2, v0

    cmp-long v0, v0, v18

    if-eqz v0, :cond_3b3

    .line 313
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3b3

    .line 316
    new-array v9, v8, [Landroid/content/pm/ServiceInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_367
    if-ge v10, v8, :cond_3ab

    .line 318
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 319
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    .line 320
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedService;->isEnabled()Z

    move-result v3

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedService;->isDirectBootAware()Z

    move-result v4

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v6, p2

    move-object/from16 v0, p10

    .line 319
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_3a8

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    move-object v1, v13

    move-object/from16 v5, v16

    .line 321
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    aput-object v1, v9, v11

    move v11, v14

    :cond_3a8
    add-int/lit8 v10, v10, 0x1

    goto :goto_367

    .line 325
    :cond_3ab
    invoke-static {v9, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ServiceInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_3b3
    const-wide/16 v0, 0x8

    and-long v0, p2, v0

    cmp-long v0, v0, v18

    if-eqz v0, :cond_41a

    .line 329
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_41a

    .line 332
    new-array v9, v8, [Landroid/content/pm/ProviderInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3c9
    if-ge v10, v8, :cond_412

    .line 334
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 335
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 336
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    .line 337
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isEnabled()Z

    move-result v3

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isDirectBootAware()Z

    move-result v4

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v6, p2

    move-object/from16 v0, p10

    .line 336
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_40b

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    move-object v1, v13

    move-object/from16 v5, v16

    .line 338
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    aput-object v1, v9, v11

    move v11, v14

    goto :goto_40d

    :cond_40b
    move-object/from16 v5, v16

    :goto_40d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v16, v5

    goto :goto_3c9

    .line 342
    :cond_412
    invoke-static {v9, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_41a
    const-wide/16 v0, 0x10

    and-long v0, p2, v0

    cmp-long v0, v0, v18

    if-eqz v0, :cond_452

    .line 346
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_452

    .line 348
    new-array v0, v7, [Landroid/content/pm/InstrumentationInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 v8, 0x0

    :goto_431
    if-ge v8, v7, :cond_452

    .line 350
    iget-object v9, v12, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 351
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v5, p11

    move-object/from16 v6, p12

    .line 350
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    aput-object v0, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_431

    :cond_452
    return-object v12
.end method

.method public static getDataDir(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/io/File;
    .registers 4

    .line 1179
    const-string v0, "android"

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1180
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 1183
    :cond_11
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1184
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 p0, 0x0

    return-object p0

    .line 1189
    :cond_27
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1191
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 1192
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1191
    invoke-static {v0, p1, p0}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 1194
    :cond_3a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1194
    invoke-static {v0, p1, p0}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;
    .registers 5

    const-wide/16 v0, 0x40

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_b

    return-object p2

    .line 367
    :cond_b
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    .line 370
    new-array p1, p1, [Landroid/content/pm/Signature;

    .line 371
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p0

    aget-object p0, p0, v0

    aput-object p0, p1, v0

    return-object p1

    .line 373
    :cond_1e
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 375
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p1

    array-length p1, p1

    .line 376
    new-array p2, p1, [Landroid/content/pm/Signature;

    .line 377
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    return-object p2
.end method

.method public static initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V
    .registers 8

    .line 1079
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 1080
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1083
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1084
    sget-object p1, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void

    .line 1088
    :cond_22
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p3

    if-nez p3, :cond_32

    const/4 p1, 0x0

    .line 1090
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void

    :cond_32
    if-nez p2, :cond_5f

    .line 1096
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1097
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1098
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1099
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_a7

    .line 1102
    :cond_5f
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 1103
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 1104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1105
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p3, -0x2

    add-int/lit8 p3, p3, -0x1

    .line 1106
    invoke-virtual {v2, v3, p3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1107
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1109
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, p3, -0x2

    add-int/lit8 p3, p3, -0x1

    .line 1112
    invoke-virtual {v2, v0, p3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1113
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1117
    :goto_a7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 1119
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void

    .line 1121
    :cond_b2
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void
.end method

.method public static initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V
    .registers 8

    .line 1129
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 1130
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1131
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1132
    sget-object p1, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void

    .line 1136
    :cond_14
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p3

    if-nez p3, :cond_24

    const/4 p1, 0x0

    .line 1138
    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void

    :cond_24
    if-nez p2, :cond_51

    .line 1144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1145
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_99

    .line 1150
    :cond_51
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 1151
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 1152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p3, -0x2

    add-int/lit8 p3, p3, -0x1

    .line 1154
    invoke-virtual {v2, v3, p3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1155
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1157
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, p3, -0x2

    add-int/lit8 p3, p3, -0x1

    .line 1160
    invoke-virtual {v2, v0, p3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1161
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1165
    :goto_99
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 1167
    iget-object p1, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void

    .line 1169
    :cond_a4
    iget-object p1, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void
.end method

.method public static matchUninstalledOrHidden(J)Z
    .registers 4

    .line 0
    const-wide v0, 0x120402000L

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V
    .registers 13

    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 387
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_c
    const-wide/16 v4, 0x400

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_17

    .line 390
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 391
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 395
    :cond_17
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_1e

    .line 396
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 399
    :cond_1e
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v4

    const/high16 v5, 0x200000

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v4

    .line 400
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    const/high16 v6, 0x800000

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    .line 401
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 402
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v4

    .line 403
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v5

    const/high16 v6, 0x10000

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    .line 404
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 405
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 406
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v4

    const/16 v5, 0x40

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v0, v4

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 407
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x0

    if-ne v0, v6, :cond_80

    .line 408
    iput-boolean v6, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_a4

    .line 409
    :cond_80
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_94

    const-wide/32 v7, 0x8000

    and-long/2addr p1, v7

    cmp-long p1, p1, v2

    if-eqz p1, :cond_90

    goto :goto_91

    :cond_90
    move v6, v4

    .line 411
    :goto_91
    iput-boolean v6, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_a4

    .line 412
    :cond_94
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_a2

    .line 413
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_a4

    .line 415
    :cond_a2
    iput-boolean v4, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 417
    :cond_a4
    :goto_a4
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p1

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 418
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_b7

    .line 419
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 421
    :cond_b7
    invoke-static {p3}, Lcom/android/server/pm/pkg/SELinuxUtil;->getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 422
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p1

    if-eqz p1, :cond_df

    .line 424
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 427
    :cond_df
    invoke-static {p3}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz p1, :cond_fb

    .line 429
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 431
    :cond_fb
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p1

    if-nez p1, :cond_109

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p1

    if-nez p1, :cond_109

    .line 433
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :cond_109
    return-void
.end method
