.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Landroid/permission/IPermissionManager$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;,
        Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;,
        Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;,
        Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

.field private mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

.field private final mContext:Landroid/content/Context;

.field private mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

.field private final mLock:Ljava/lang/Object;

.field private final mOneTimePermissionUserManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/OneTimePermissionUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private final mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field private final mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckPermission(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckUidPermission(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAllUserIds(Lcom/android/server/pm/permission/PermissionManagerService;)[I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDelegatedShellPermissionsInternal(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getDelegatedShellPermissionsInternal()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetAutoRevokeExemptedInternal(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartShellPermissionIdentityDelegationInternal(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->startShellPermissionIdentityDelegationInternal(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopShellPermissionIdentityDelegationInternal(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->stopShellPermissionIdentityDelegationInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 103
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->LOG_TAG:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p2, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    invoke-direct {p0}, Landroid/permission/IPermissionManager$Stub;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 144
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 145
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 147
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 148
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 149
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 150
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 155
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    .line 157
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl-IA;)V

    .line 159
    .local v0, "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 160
    const-class v1, Landroid/permission/PermissionManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 162
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/util/ArrayMap;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 164
    return-void
.end method

.method private checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 295
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 296
    return v0

    .line 299
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_10

    move v0, v2

    .line 302
    .local v0, "isCallerPrivileged":Z
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 303
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v1

    .line 305
    .local v1, "isCallerInstallerOnRecord":Z
    if-nez v0, :cond_23

    if-eqz v1, :cond_1b

    goto :goto_23

    .line 306
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller must either hold android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS or be the installer on record"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_23
    :goto_23
    return v2
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 221
    if-eqz p1, :cond_26

    if-nez p2, :cond_5

    goto :goto_26

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 228
    .local v1, "checkPermissionDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_23

    .line 230
    if-nez v1, :cond_14

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 233
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 234
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    .line 233
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I

    move-result v0

    return v0

    .line 228
    .end local v1    # "checkPermissionDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1

    .line 222
    :cond_26
    :goto_26
    const/4 v0, -0x1

    return v0
.end method

.method private checkUidPermission(ILjava/lang/String;)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;

    .line 239
    const/4 v0, -0x1

    if-nez p2, :cond_4

    .line 240
    return v0

    .line 243
    :cond_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PackageManagerServiceStub;->preCheckUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_f

    .line 245
    return v0

    .line 249
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_12
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 251
    .local v1, "checkPermissionDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_2d

    .line 253
    if-nez v1, :cond_1e

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 256
    :cond_1e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 257
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    .line 256
    invoke-interface {v1, p1, p2, v2}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->checkUidPermission(ILjava/lang/String;Ljava/util/function/BiFunction;)I

    move-result v0

    return v0

    .line 251
    .end local v1    # "checkPermissionDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public static create(Landroid/content/Context;Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;"
        }
    .end annotation

    .line 178
    .local p1, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 179
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 180
    .local v0, "permMgrInt":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    if-eqz v0, :cond_b

    .line 181
    return-object v0

    .line 183
    :cond_b
    nop

    .line 184
    const-string/jumbo v1, "permissionmgr"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerService;

    .line 185
    .local v2, "permissionService":Lcom/android/server/pm/permission/PermissionManagerService;
    if-nez v2, :cond_2b

    .line 186
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Landroid/util/ArrayMap;)V

    move-object v2, v3

    .line 187
    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 188
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "permission_checker"

    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 190
    :cond_2b
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v1
.end method

.method private getAllUserIds()[I
    .registers 2

    .line 856
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    return-object v0
.end method

.method private getDelegatedShellPermissionsInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    if-nez v1, :cond_b

    .line 362
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 364
    :cond_b
    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->getDelegatedPermissionNames()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 365
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .registers 7
    .param p1, "userId"    # I

    .line 378
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 380
    .local v1, "oneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    if-eqz v1, :cond_f

    .line 381
    monitor-exit v0

    return-object v1

    .line 383
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3f

    .line 388
    new-instance v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 389
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .line 391
    .local v2, "newOneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 392
    :try_start_24
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-object v1, v0

    .line 393
    if-eqz v1, :cond_31

    .line 394
    monitor-exit v3

    return-object v1

    .line 396
    :cond_31
    move-object v1, v2

    .line 397
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_3c

    .line 399
    invoke-virtual {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->registerUninstallListener()V

    .line 400
    return-object v1

    .line 398
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    .line 383
    .end local v1    # "oneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .end local v2    # "newOneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private getPackagesWithAutoRevokePolicy(II)Ljava/util/List;
    .registers 6
    .param p1, "autoRevokePolicy"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v2, "Must hold android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 469
    return-object v0
.end method

.method public static killUid(IILjava/lang/String;)V
    .registers 7
    .param p0, "appId"    # I
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 206
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    .line 207
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_f

    .line 209
    :try_start_a
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 212
    goto :goto_f

    .line 210
    :catch_e
    move-exception v3

    .line 215
    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_f
    :goto_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    nop

    .line 217
    return-void

    .line 215
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    throw v2
.end method

.method static synthetic lambda$getPackagesWithAutoRevokePolicy$0(ILjava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4
    .param p0, "autoRevokePolicy"    # I
    .param p1, "result"    # Ljava/util/List;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 465
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAutoRevokePermissions()I

    move-result v0

    if-ne v0, p0, :cond_d

    .line 466
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_d
    return-void
.end method

.method private setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "exempted"    # Z
    .param p3, "userId"    # I

    .line 277
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 278
    .local v0, "packageUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 279
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 278
    const/16 v3, 0x62

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 281
    return v2

    .line 284
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 286
    .local v3, "identity":J
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x61

    .line 287
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz p2, :cond_28

    move v2, v7

    .line 286
    :cond_28
    invoke-virtual {v1, v5, v0, v6, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_30

    .line 289
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    nop

    .line 291
    return v7

    .line 289
    :catchall_30
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    throw v1
.end method

.method private setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 369
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    if-eqz v0, :cond_9

    .line 370
    :cond_6
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 372
    :cond_9
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 373
    return-void
.end method

.method private startShellPermissionIdentityDelegationInternal(ILjava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 341
    .local p3, "permissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 343
    .local v1, "oldDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    if-eqz v1, :cond_16

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->getDelegatedUid()I

    move-result v2

    if-ne v2, p1, :cond_e

    goto :goto_16

    .line 344
    :cond_e
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Shell can delegate permissions only to one UID at a time"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "permissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v2

    .line 347
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "permissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    :goto_16
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V

    .line 348
    .local v2, "delegate":Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V

    .line 349
    .end local v1    # "oldDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    .end local v2    # "delegate":Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private stopShellPermissionIdentityDelegationInternal()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method


# virtual methods
.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 554
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 536
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 537
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 4
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 508
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0

    return v0
.end method

.method public getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 482
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 455
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 519
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 518
    return v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 487
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSplitPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 567
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 568
    return-void
.end method

.method public isAutoRevokeExempted(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 315
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 318
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 319
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    .line 320
    return v3

    .line 323
    :cond_17
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 324
    return v3

    .line 327
    :cond_1e
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 329
    .local v2, "packageUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 331
    .local v4, "identity":J
    :try_start_2a
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v7, 0x61

    invoke-virtual {v6, v7, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_3a

    const/4 v7, 0x1

    if-ne v6, v7, :cond_36

    move v3, v7

    .line 335
    :cond_36
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    return v3

    .line 335
    :catchall_3a
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    throw v3
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 601
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 602
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 601
    return v0
.end method

.method public isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z
    .registers 4
    .param p1, "source"    # Landroid/content/AttributionSourceState;

    .line 444
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 445
    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v0

    .line 444
    return v0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 498
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 499
    .local v0, "permissionInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-nez v0, :cond_a

    .line 500
    const/4 v1, 0x0

    return-object v1

    .line 503
    :cond_a
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public registerAttributionSource(Landroid/content/AttributionSourceState;)V
    .registers 4
    .param p1, "source"    # Landroid/content/AttributionSourceState;

    .line 438
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 439
    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->registerAttributionSource(Landroid/content/AttributionSource;)V

    .line 440
    return-void
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 561
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 541
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 542
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removePermission(Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 587
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V

    .line 589
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 579
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 575
    return-void
.end method

.method public revokeRuntimePermissionNotKill(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 582
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionNotKill(Ljava/lang/String;Ljava/lang/String;I)V

    .line 583
    return-void
.end method

.method public setAutoRevokeExempted(Ljava/lang/String;ZI)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "exempted"    # Z
    .param p3, "userId"    # I

    .line 263
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 266
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 268
    .local v1, "callingUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 269
    const/4 v2, 0x0

    return v2

    .line 272
    :cond_15
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z

    move-result v2

    return v2
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 594
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startOneTimePermissionSession(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeoutMillis"    # J
    .param p5, "revokeAfterKilledDelayMillis"    # J

    .line 406
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to register permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 414
    .local v0, "token":J
    :try_start_10
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->startPackageOneTimeSession(Ljava/lang/String;JJ)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1f

    .line 417
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    nop

    .line 419
    return-void

    .line 417
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    throw v2
.end method

.method public stopOneTimePermissionSession(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 423
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to remove permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 430
    .local v0, "token":J
    :try_start_10
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->stopPackageOneTimeSession(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1c

    .line 432
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    nop

    .line 434
    return-void

    .line 432
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    throw v2
.end method

.method updatePackageInstallerPermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "androidPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePackageInstallerPermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 475
    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "checkAdjustPolicyFlagPermission"    # Z
    .param p6, "userId"    # I

    .line 525
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 527
    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .registers 5
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I

    .line 531
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsForAllApps(III)V

    .line 532
    return-void
.end method
