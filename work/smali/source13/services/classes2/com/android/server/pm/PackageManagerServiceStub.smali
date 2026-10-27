.class public Lcom/android/server/pm/PackageManagerServiceStub;
.super Ljava/lang/Object;
.source "PackageManagerServiceStub.java"


# static fields
.field public static final IS_INTERNATIONAL_BUILD:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    nop

    .line 31
    const-string/jumbo v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceStub;->IS_INTERNATIONAL_BUILD:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/pm/PackageManagerServiceStub;
    .registers 1

    .line 34
    const-class v0, Lcom/android/server/pm/PackageManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method addMiuiSharedUids()V
    .registers 1

    .line 41
    return-void
.end method

.method assertValidApkAndInstaller(Ljava/lang/String;Landroid/content/pm/SigningDetails;ILjava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p3, "callingUid"    # I
    .param p4, "installerPkg"    # Ljava/lang/String;
    .param p5, "isManuallyAccepted"    # Z
    .param p6, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public asyncDexMetadataDexopt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IZ)V
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # [I
    .param p3, "isAutoUpdate"    # Z

    .line 150
    return-void
.end method

.method public beforeSystemReady()V
    .registers 1

    .line 43
    return-void
.end method

.method canBeDisabled(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method canCarrierAppBeDisabled(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method checkEnterpriseRestriction(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public checkParentalControlPermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 185
    return-void
.end method

.method clearNoHistoryFlagIfNeed(Ljava/util/List;Landroid/content/Intent;)V
    .registers 3
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 60
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-void
.end method

.method public enablePackageEventRecorder()Z
    .registers 2

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public exemptApplink(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 147
    .local p2, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    return v0
.end method

.method filterOutThirdPartyPkgs(Ljava/util/List;I)V
    .registers 3
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 93
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    return-void
.end method

.method getApplicationInfoBySelf(IIJI)Ljava/util/List;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDexOptResult()I
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getDexoptSecondaryResult()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method getPackageInfoBySelf(IIJI)Ljava/util/List;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJI)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method getPersistentAppsForOtherUser(Lcom/android/server/pm/PackageManagerService;ZII)Ljava/util/List;
    .registers 6
    .param p1, "pkms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "safeMode"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "ZII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/android/server/pm/PackageManagerService;
    .registers 2

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method hookChooseBestActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p6, "userId"    # I
    .param p7, "defaultValue"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 89
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object p7
.end method

.method hookPkgInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;J)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "origPkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # J

    .line 65
    return-object p1
.end method

.method init(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Landroid/content/Context;)V
    .registers 4
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "settings"    # Lcom/android/server/pm/Settings;
    .param p3, "context"    # Landroid/content/Context;

    .line 37
    return-void
.end method

.method initIPackageManagerImpl(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)V
    .registers 2
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 39
    return-void
.end method

.method initIgnoreApps()V
    .registers 1

    .line 70
    return-void
.end method

.method isCallerAllowedToSilentlyUninstall(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method isPreinstallApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method isVerificationEnabled(I)Z
    .registers 3
    .param p1, "installerUid"    # I

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method markCoreAppDexopt(JJ)V
    .registers 5
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 141
    return-void
.end method

.method markPackageOptimized(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 143
    return-void
.end method

.method markPmsScanDetail(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 139
    return-void
.end method

.method public performDexOptAsyncTask(Lcom/android/server/pm/dex/DexoptOptions;)V
    .registers 2
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 107
    return-void
.end method

.method public performDexOptSecondary(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 116
    return-void
.end method

.method performPreinstallApp()V
    .registers 1

    .line 45
    return-void
.end method

.method public performPrimaryDexOptStaus(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/concurrent/CountDownLatch;II)I
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "compilationReason"    # I
    .param p4, "dexoptFlags"    # I

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public preCheckUidPermission(Ljava/lang/String;I)I
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public processAppLoadSecondaryDexReason(Lcom/android/server/pm/PackageDexOptimizer;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Ljava/lang/String;I)V
    .registers 6
    .param p1, "pdo"    # Lcom/android/server/pm/PackageDexOptimizer;
    .param p2, "loaderAppinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "dexPath"    # Ljava/lang/String;
    .param p5, "reason"    # I

    .line 112
    return-void
.end method

.method protectAppFromDeleting(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;III)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p5, "deleteFlags"    # I

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public recordPackageRemove([ILjava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;
    .registers 6
    .param p1, "userIds"    # [I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "isRemovedFully"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public recordPackageUpdate([ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 7
    .param p1, "userIds"    # [I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "timeMillis"    # J

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method removePackageFromSharedUser(Lcom/android/server/pm/PackageSetting;)V
    .registers 2
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 48
    return-void
.end method

.method setCallingPackage(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .registers 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "callingPackageName"    # Ljava/lang/String;

    .line 96
    return-void
.end method

.method shouldIgnoreApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipInstallForNewUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipInstallForUserType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method updateSystemAppDefaultStateForAllUsers()V
    .registers 1

    .line 52
    return-void
.end method

.method updateSystemAppDefaultStateForUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 54
    return-void
.end method

.method public useMiuiDefaultCrossProfileIntentFilter()Z
    .registers 2

    .line 161
    const/4 v0, 0x0

    return v0
.end method
