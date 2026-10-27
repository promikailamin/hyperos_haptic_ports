.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.super Ljava/lang/Object;
.source "PermissionManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;,
        Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;,
        Lcom/android/server/pm/permission/PermissionManagerServiceImpl$UpdatePermissionFlags;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RATIONALE_CHANGE_ID:J = 0x8c7dff3L

.field private static final BACKUP_TIMEOUT_MILLIS:J

.field private static final BLOCKING_PERMISSION_FLAGS:I = 0x34

.field private static final EMPTY_INT_ARRAY:[I

.field private static final FULLER_PERMISSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOTIFICATION_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SKIP_KILL_APP_REASON_NOTIFICATION_TEST:Ljava/lang/String; = "skip permission revoke app kill for notification test"

.field private static final STORAGE_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field private static final USER_PERMISSION_FLAGS:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

.field private final mIsLeanback:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

.field private final mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Lcom/android/server/pm/permission/DevicePermissionState;

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$2i8MJWknOO3Xzi-Dmmn7HMNkzAQ(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smkillUid(IILjava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 176
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 182
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    .line 187
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    .line 204
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 206
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sput-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    .line 223
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    .line 226
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 229
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .registers 13
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

    .line 417
    .local p2, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 250
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 258
    new-instance v2, Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-direct {v2}, Lcom/android/server/pm/permission/DevicePermissionState;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 278
    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 279
    const-string/jumbo v2, "platform_compat"

    .line 280
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 279
    invoke-static {v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 283
    new-instance v2, Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-direct {v2}, Lcom/android/server/pm/permission/PermissionRegistry;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 304
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    .line 324
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 421
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 422
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 424
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 425
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 426
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 427
    const-string v2, "android.software.leanback"

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    .line 429
    const-string v2, "android"

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 432
    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 434
    const-string/jumbo v2, "ro.android.car.carservice.package"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "carServicePackage":Ljava/lang/String;
    if-eqz v2, :cond_86

    .line 437
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v2    # "carServicePackage":Ljava/lang/String;
    :cond_86
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "PackageManager"

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 443
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 444
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 445
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 447
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 448
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    .line 449
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    .line 450
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 454
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v2

    .line 455
    .local v2, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    monitor-enter v1

    .line 456
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d0
    :try_start_d0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_103

    .line 457
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 458
    .local v5, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    .line 459
    .local v6, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v6, :cond_f5

    .line 460
    new-instance v7, Lcom/android/server/pm/permission/Permission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v4}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    .line 461
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 463
    :cond_f5
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_100

    .line 464
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    .line 456
    .end local v5    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_100
    add-int/lit8 v3, v3, 0x1

    goto :goto_d0

    .line 467
    .end local v3    # "i":I
    :cond_103
    monitor-exit v1

    .line 468
    return-void

    .line 467
    :catchall_105
    move-exception v3

    monitor-exit v1
    :try_end_107
    .catchall {:try_start_d0 .. :try_end_107} :catchall_105

    throw v3
.end method

.method private addAllPermissionGroupsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 15
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2446
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2447
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 2448
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2449
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_b8

    .line 2450
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    .line 2451
    .local v4, "pg":Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v5

    .line 2452
    .local v5, "cur":Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    if-nez v5, :cond_27

    const/4 v6, 0x0

    goto :goto_2b

    :cond_27
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2453
    .local v6, "curPackageName":Ljava/lang/String;
    :goto_2b
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2454
    .local v7, "isPackageUpdate":Z
    const/16 v8, 0x100

    const/16 v9, 0x20

    if-eqz v5, :cond_91

    if-eqz v7, :cond_3c

    goto :goto_91

    .line 2468
    :cond_3c
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission group "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2469
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ignored: original from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2470
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2468
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v10, :cond_b4

    .line 2472
    if-nez v2, :cond_81

    .line 2473
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v9

    goto :goto_84

    .line 2475
    :cond_81
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2477
    :goto_84
    const-string v8, "DUP:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b4

    .line 2455
    :cond_91
    :goto_91
    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v10, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)V

    .line 2456
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v10, :cond_b4

    .line 2457
    if-nez v2, :cond_a3

    .line 2458
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v9

    goto :goto_a6

    .line 2460
    :cond_a3
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2462
    :goto_a6
    if-eqz v7, :cond_ad

    .line 2463
    const-string v8, "UPD:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2465
    :cond_ad
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    .end local v4    # "pg":Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    .end local v5    # "cur":Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    .end local v6    # "curPackageName":Ljava/lang/String;
    .end local v7    # "isPackageUpdate":Z
    :cond_b4
    :goto_b4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 2482
    .end local v3    # "i":I
    :cond_b8
    if-eqz v2, :cond_d6

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_d6

    .line 2483
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permission Groups: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    :cond_d6
    monitor-exit v0

    .line 2486
    return-void

    .line 2485
    :catchall_d8
    move-exception v1

    monitor-exit v0
    :try_end_da
    .catchall {:try_start_3 .. :try_end_da} :catchall_d8

    throw v1
.end method

.method private addAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .registers 13
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2388
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2389
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2390
    .local v1, "definitionChangedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_f9

    .line 2391
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 2394
    .local v3, "p":Lcom/android/server/pm/pkg/component/ParsedPermission;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v4

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/server/pm/pkg/component/ParsedComponent;I)V

    .line 2398
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2403
    :try_start_28
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x16

    if-le v5, v6, :cond_85

    .line 2404
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2405
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v5

    .line 2404
    invoke-static {v3, v5}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setParsedPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermission;Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)V

    .line 2407
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v5, :cond_85

    .line 2408
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_85

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v5

    if-nez v5, :cond_85

    .line 2409
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2410
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in an unknown group "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2409
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_85
    const-wide/16 v5, 0x80

    invoke-static {v3, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 2416
    .local v5, "permissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v6

    if-eqz v6, :cond_9c

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    goto :goto_a6

    .line 2417
    :cond_9c
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    :goto_a6
    nop

    .line 2418
    .local v6, "oldPermission":Lcom/android/server/pm/permission/Permission;
    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_28 .. :try_end_a8} :catchall_f6

    .line 2421
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6, v5, v4}, Lcom/android/server/pm/permission/Permission;->isOverridingSystemPermission(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v7

    .line 2423
    .local v7, "isOverridingSystemPermission":Z
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2424
    :try_start_b1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2425
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v4

    .line 2424
    invoke-static {v6, v5, p1, v4, v7}, Lcom/android/server/pm/permission/Permission;->createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    .line 2427
    .local v4, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v9

    if-eqz v9, :cond_c7

    .line 2428
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_cc

    .line 2430
    :cond_c7
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 2432
    :goto_cc
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isInstalled()Z

    move-result v9

    if-eqz v9, :cond_dd

    .line 2433
    nop

    .line 2434
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    or-int/2addr v9, v10

    .line 2433
    invoke-static {v3, v9}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/server/pm/pkg/component/ParsedComponent;I)V

    .line 2436
    :cond_dd
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDefinitionChanged()Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 2437
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2438
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/server/pm/permission/Permission;->setDefinitionChanged(Z)V

    .line 2440
    .end local v4    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_ee
    monitor-exit v8

    .line 2390
    .end local v3    # "p":Lcom/android/server/pm/pkg/component/ParsedPermission;
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v6    # "oldPermission":Lcom/android/server/pm/permission/Permission;
    .end local v7    # "isOverridingSystemPermission":Z
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    .line 2440
    .restart local v3    # "p":Lcom/android/server/pm/pkg/component/ParsedPermission;
    .restart local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v6    # "oldPermission":Lcom/android/server/pm/permission/Permission;
    .restart local v7    # "isOverridingSystemPermission":Z
    :catchall_f3
    move-exception v4

    monitor-exit v8
    :try_end_f5
    .catchall {:try_start_b1 .. :try_end_f5} :catchall_f3

    throw v4

    .line 2418
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v6    # "oldPermission":Lcom/android/server/pm/permission/Permission;
    .end local v7    # "isOverridingSystemPermission":Z
    :catchall_f6
    move-exception v5

    :try_start_f7
    monitor-exit v4
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v5

    .line 2442
    .end local v2    # "i":I
    .end local v3    # "p":Lcom/android/server/pm/pkg/component/ParsedPermission;
    :cond_f9
    return-object v1
.end method

.method private addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    .registers 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 5115
    .local p2, "allowlistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v0

    .line 5116
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    .line 5117
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 5118
    .local v1, "permissionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 5119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 5120
    .end local v1    # "permissionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_16

    .line 5121
    :cond_15
    move-object v0, p2

    .line 5123
    :goto_16
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V

    .line 5124
    return-void
.end method

.method private static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "callingUid"    # I
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "requireFullPermission"    # Z

    .line 4454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4455
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_f

    .line 4456
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4457
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4459
    :cond_f
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4460
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4461
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4462
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4463
    if-nez p3, :cond_2d

    .line 4464
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4465
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4467
    :cond_2d
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4468
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4469
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I
    .registers 6
    .param p1, "permissionTree"    # Lcom/android/server/pm/permission/Permission;

    .line 4475
    const/4 v0, 0x0

    .line 4476
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 4477
    .local v2, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/Permission;->calculateFootprint(Lcom/android/server/pm/permission/Permission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 4478
    .end local v2    # "permission":Lcom/android/server/pm/permission/Permission;
    goto :goto_b

    .line 4479
    :cond_1d
    return v0
.end method

.method private canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 10
    .param p1, "oldPackageName"    # Ljava/lang/String;
    .param p2, "newPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4823
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4824
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4825
    .local v0, "oldPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 4826
    return v1

    .line 4828
    :cond_a
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v2

    const-string v3, " to "

    const-string v4, "Unable to update from "

    const-string v5, "PackageManager"

    if-nez v2, :cond_41

    .line 4829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4830
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": old package not in system partition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4829
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    return v1

    .line 4834
    :cond_41
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 4835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4836
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": old package still exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4835
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4838
    return v1

    .line 4840
    :cond_78
    const/4 v1, 0x1

    return v1
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 6
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "permission"    # Ljava/lang/String;

    .line 3666
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3667
    return v1

    .line 3671
    :cond_8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3672
    .local v0, "granted":Ljava/lang/Boolean;
    if-eqz v0, :cond_22

    .line 3677
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 3673
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3674
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkCallingOrSelfPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 4447
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private checkCrossUserPermission(IIIZ)Z
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z

    .line 4432
    const/4 v0, 0x1

    if-ne p3, p2, :cond_4

    .line 4433
    return v0

    .line 4435
    :cond_4
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_27

    if-nez p1, :cond_b

    goto :goto_27

    .line 4438
    :cond_b
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_14

    .line 4439
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4442
    :cond_14
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 4443
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    nop

    .line 4442
    :goto_26
    return v0

    .line 4436
    :cond_27
    :goto_27
    return v0
.end method

.method private checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .registers 11
    .param p1, "permName"    # Ljava/lang/String;

    .line 1186
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1187
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    .line 1188
    .local v1, "bp":Lcom/android/server/pm/permission/Permission;
    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 1189
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    monitor-exit v0

    return v2

    .line 1192
    :cond_26
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1193
    .local v3, "permissionPackageName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_39

    .line 1194
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v4

    if-eqz v4, :cond_39

    move v4, v5

    goto :goto_3a

    :cond_39
    move v4, v2

    :goto_3a
    move v1, v4

    .line 1195
    .local v1, "isImmutablyRestrictedPermission":Z
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_8a

    .line 1197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1198
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1199
    .local v4, "callingUserId":I
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v3, v0, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1200
    const v6, 0x534e4554

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "186404356"

    aput-object v8, v7, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x2

    aput-object p1, v7, v5

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1201
    return v2

    .line 1204
    :cond_63
    if-eqz v1, :cond_89

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v2, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_70

    goto :goto_89

    .line 1207
    :cond_70
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot modify allowlisting of an immutably restricted permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1211
    :cond_89
    :goto_89
    return v5

    .line 1195
    .end local v0    # "callingUid":I
    .end local v1    # "isImmutablyRestrictedPermission":Z
    .end local v3    # "permissionPackageName":Ljava/lang/String;
    .end local v4    # "callingUserId":I
    :catchall_8a
    move-exception v1

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v1
.end method

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I[I)[I
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "userIds"    # [I
    .param p4, "updatedUserIds"    # [I

    .line 3212
    if-eqz p2, :cond_27

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3213
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3214
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3215
    :cond_20
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 3218
    :cond_27
    return-object p4
.end method

.method private checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .registers 14
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isPackageExplicit"    # Z
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 947
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 948
    .local v0, "callingUid":I
    const/4 v1, -0x1

    if-nez p2, :cond_17

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_17

    .line 953
    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 954
    return v1

    .line 949
    :cond_17
    :goto_17
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 950
    return v1

    .line 958
    :cond_20
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p4, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 959
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_33

    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    move v3, v4

    .line 961
    .local v3, "isInstantApp":Z
    :goto_34
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 962
    :try_start_37
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6

    .line 963
    .local v6, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v6, :cond_65

    .line 964
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    monitor-exit v5

    return v1

    .line 969
    :cond_65
    invoke-direct {p0, v6, p3, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 970
    monitor-exit v5

    return v4

    .line 973
    :cond_6d
    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v7, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 974
    .local v7, "fullerPermissionName":Ljava/lang/String;
    if-eqz v7, :cond_7f

    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 976
    monitor-exit v5

    return v4

    .line 978
    .end local v6    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v7    # "fullerPermissionName":Ljava/lang/String;
    :cond_7f
    monitor-exit v5

    .line 980
    return v1

    .line 978
    :catchall_81
    move-exception v1

    monitor-exit v5
    :try_end_83
    .catchall {:try_start_37 .. :try_end_83} :catchall_81

    throw v1
.end method

.method private checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;)Z
    .registers 14
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "packageSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "permission"    # Lcom/android/server/pm/permission/Permission;

    .line 3349
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 3350
    return v1

    .line 3352
    :cond_6
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3353
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "android"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3354
    return v1

    .line 3356
    :cond_13
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 3357
    return v1

    .line 3361
    :cond_1a
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v2

    if-nez v2, :cond_21

    .line 3362
    return v1

    .line 3366
    :cond_21
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 3367
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 3368
    return v1

    .line 3370
    :cond_2e
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3371
    .local v2, "permissionName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v3

    .line 3372
    .local v3, "apexManager":Lcom/android/server/pm/ApexManager;
    nop

    .line 3373
    invoke-virtual {v3, v0}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3374
    .local v4, "containingApexPackageName":Ljava/lang/String;
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isInSystemConfigPrivAppPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 3376
    return v1

    .line 3378
    :cond_42
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isInSystemConfigPrivAppDenyPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4a

    .line 3380
    return v6

    .line 3383
    :cond_4a
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 3392
    return v1

    .line 3395
    :cond_55
    iget-boolean v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    if-nez v5, :cond_e2

    .line 3396
    if-eqz v4, :cond_67

    .line 3397
    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-nez v5, :cond_67

    move v6, v1

    goto :goto_68

    :cond_67
    nop

    :goto_68
    move v5, v6

    .line 3400
    .local v5, "isInUpdatedApex":Z
    if-nez v5, :cond_e2

    .line 3401
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Privileged permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3402
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") not in privapp-permissions allowlist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3401
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    sget-boolean v6, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v6, :cond_e2

    .line 3405
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3406
    :try_start_a8
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v7, :cond_b3

    .line 3407
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 3409
    :cond_b3
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3411
    monitor-exit v6

    goto :goto_e2

    :catchall_df
    move-exception v1

    monitor-exit v6
    :try_end_e1
    .catchall {:try_start_a8 .. :try_end_e1} :catchall_df

    throw v1

    .line 3415
    .end local v5    # "isInUpdatedApex":Z
    :cond_e2
    :goto_e2
    sget-boolean v5, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/2addr v1, v5

    return v1
.end method

.method private checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "uidState"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "isInstantApp"    # Z

    .line 986
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 987
    return v1

    .line 990
    :cond_8
    const/4 v0, 0x1

    if-eqz p3, :cond_1b

    .line 991
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 992
    .local v2, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v3

    if-eqz v3, :cond_1a

    move v1, v0

    :cond_1a
    return v1

    .line 995
    .end local v2    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_1b
    return v0
.end method

.method private checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 1041
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1042
    .local v0, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_12

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I
    .registers 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "uid"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 1018
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1019
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1020
    .local v1, "userId":I
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v0

    return v0

    .line 1023
    .end local v1    # "userId":I
    :cond_c
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1024
    :try_start_f
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1025
    monitor-exit v1

    return v0

    .line 1028
    :cond_17
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1029
    .local v2, "fullerPermissionName":Ljava/lang/String;
    if-eqz v2, :cond_29

    .line 1030
    invoke-direct {p0, p2, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1031
    monitor-exit v1

    return v0

    .line 1033
    .end local v2    # "fullerPermissionName":Ljava/lang/String;
    :cond_29
    monitor-exit v1

    .line 1035
    const/4 v0, -0x1

    return v0

    .line 1033
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2142
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2143
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2144
    monitor-exit v0

    return-void

    .line 2146
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2147
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;>;"
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_29

    .line 2148
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2149
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_28

    .line 2150
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v3, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2149
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 2152
    .end local v2    # "i":I
    :cond_28
    return-void

    .line 2147
    .end local v0    # "listenerCount":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;>;"
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 4398
    if-ltz p2, :cond_24

    .line 4401
    if-eqz p4, :cond_a

    .line 4402
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 4404
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4405
    .local v0, "callingUserId":I
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCrossUserPermission(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4406
    return-void

    .line 4408
    :cond_15
    invoke-static {p1, p2, p5, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4410
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4399
    .end local v0    # "callingUserId":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;

    .line 4376
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4378
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4380
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_4e

    .line 4382
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " or "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4387
    :cond_4e
    :goto_4e
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .line 4365
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4367
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3c

    .line 4369
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4373
    :cond_3c
    :goto_3c
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V
    .registers 6
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"    # Lcom/android/server/pm/permission/Permission;

    .line 4486
    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1f

    .line 4487
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I

    move-result v0

    .line 4488
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_17

    goto :goto_1f

    .line 4489
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4492
    .end local v0    # "curTreeSize":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method private enforceShellRestriction(Ljava/lang/String;II)V
    .registers 7
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4419
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_51

    .line 4420
    if-ltz p3, :cond_28

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_28

    .line 4421
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4423
    :cond_28
    :goto_28
    if-gez p3, :cond_51

    .line 4424
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to check shell permission for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    .line 4425
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4424
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4428
    :cond_51
    return-void
.end method

.method private getAllUserIds()[I
    .registers 2

    .line 3077
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    return-object v0
.end method

.method private getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;
    .registers 13
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1121
    :try_start_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    .line 1122
    .local v1, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v1, :cond_32

    .line 1123
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing permissions state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1128
    :cond_32
    const/4 v2, 0x0

    .line 1129
    .local v2, "queryFlags":I
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_39

    .line 1130
    or-int/lit16 v2, v2, 0x1000

    .line 1132
    :cond_39
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_3f

    .line 1133
    or-int/lit16 v2, v2, 0x2000

    .line 1135
    :cond_3f
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_45

    .line 1136
    or-int/lit16 v2, v2, 0x800

    .line 1139
    :cond_45
    const/4 v3, 0x0

    .line 1141
    .local v3, "allowlistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    .line 1142
    .local v4, "permissionCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4f
    if-ge v5, v4, :cond_72

    .line 1143
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1144
    .local v6, "permissionName":Ljava/lang/String;
    nop

    .line 1145
    invoke-virtual {v1, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v7

    .line 1146
    .local v7, "currentFlags":I
    and-int v8, v7, v2

    if-eqz v8, :cond_6f

    .line 1147
    if-nez v3, :cond_6c

    .line 1148
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 1150
    :cond_6c
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v7    # "currentFlags":I
    :cond_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 1154
    .end local v5    # "i":I
    :cond_72
    monitor-exit v0

    return-object v3

    .line 1155
    .end local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v2    # "queryFlags":I
    .end local v3    # "allowlistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "permissionCount":I
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v1
.end method

.method private getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getAppOpPermissionPackages(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 507
    .local v1, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_f

    .line 508
    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 510
    :cond_f
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 511
    .end local v1    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2545
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2546
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_d

    .line 2547
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 2550
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2551
    :try_start_10
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/PackageStateInternal;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    .line 2552
    .local v2, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v2, :cond_3e

    .line 2553
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing permissions state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 2556
    :cond_3e
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 2557
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 2562
    :cond_4e
    new-instance v3, Landroid/util/ArraySet;

    .line 2563
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2564
    .local v3, "instantPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/pkg/PackageStateInternal;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2576
    monitor-exit v1

    return-object v3

    .line 2578
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "instantPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_61
    move-exception v2

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_10 .. :try_end_63} :catchall_61

    throw v2
.end method

.method private getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 699
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 700
    return v1

    .line 703
    :cond_a
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 704
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 710
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_22

    .line 711
    return v1

    .line 713
    :cond_22
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 714
    return v1

    .line 717
    :cond_2b
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 718
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_38

    .line 719
    monitor-exit v2

    return v1

    .line 722
    :cond_38
    invoke-direct {p0, v0, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    .line 723
    .local v3, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v3, :cond_62

    .line 724
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    monitor-exit v2

    return v1

    .line 728
    :cond_62
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 729
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_68
    move-exception v1

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_2e .. :try_end_6a} :catchall_68

    throw v1
.end method

.method private getPermissionGidsInternal(Ljava/lang/String;I)[I
    .registers 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2583
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2584
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    .line 2585
    .local v1, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v1, :cond_f

    .line 2586
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    monitor-exit v0

    return-object v2

    .line 2588
    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2589
    .end local v1    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "uid"    # I

    .line 595
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 596
    .local v0, "appId":I
    const/16 v1, 0x2710

    if-eqz v0, :cond_19

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_19

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_11

    goto :goto_19

    .line 601
    :cond_11
    if-nez p1, :cond_14

    .line 602
    return v1

    .line 604
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    return v1

    .line 599
    :cond_19
    :goto_19
    return v1
.end method

.method private getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 4
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;

    .line 3661
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3662
    .local v0, "sourcePackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    return-object v1
.end method

.method private getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/SigningDetails;
    .registers 4
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;

    .line 3652
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3653
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_9

    .line 3654
    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object v1

    .line 3656
    :cond_9
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method private getSplitPermissionInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 3329
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;
    .registers 5
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 4589
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v0

    .line 4590
    .local v0, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v0, :cond_a

    .line 4591
    const/4 v1, 0x0

    return-object v1

    .line 4593
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    return-object v1
.end method

.method private getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 4583
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    return-object v0
.end method

.method private getUidStateLocked(Lcom/android/server/pm/pkg/PackageStateInternal;I)Lcom/android/server/pm/permission/UidPermissionState;
    .registers 4
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "userId"    # I

    .line 4576
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    return-object v0
.end method

.method private static getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4530
    if-nez p0, :cond_5

    .line 4531
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 4533
    :cond_5
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4534
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4535
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 4537
    :cond_19
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4540
    :cond_1e
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private grantRequestedRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V
    .registers 28
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 3716
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move/from16 v12, p3

    const/16 v13, 0x14

    .line 3719
    .local v13, "immutableFlags":I
    const/16 v14, 0x48

    .line 3722
    .local v14, "compatFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_17

    move v0, v15

    goto :goto_19

    :cond_17
    move/from16 v0, v16

    :goto_19
    move/from16 v17, v0

    .line 3725
    .local v17, "supportsRuntimePermissions":Z
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v18

    .line 3727
    .local v18, "instantApp":Z
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    .line 3729
    .local v9, "myUid":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 3731
    .local v8, "permission":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3732
    :try_start_41
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_d1

    .line 3733
    .local v2, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v2, :cond_76

    :try_start_49
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    if-nez v3, :cond_55

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v3

    if-eqz v3, :cond_76

    :cond_55
    if-eqz v18, :cond_5d

    .line 3734
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v3

    if-eqz v3, :cond_76

    :cond_5d
    if-nez v17, :cond_65

    .line 3735
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v3

    if-nez v3, :cond_76

    :cond_65
    if-eqz v11, :cond_6d

    .line 3736
    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6b
    .catchall {:try_start_49 .. :try_end_6b} :catchall_6f

    if-eqz v3, :cond_76

    :cond_6d
    move v3, v15

    goto :goto_78

    .line 3737
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_6f
    move-exception v0

    move-object/from16 v23, v8

    move/from16 v21, v9

    goto/16 :goto_d6

    .line 3736
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_76
    move/from16 v3, v16

    :goto_78
    move/from16 v19, v3

    .line 3737
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .local v19, "shouldGrantPermission":Z
    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_d1

    .line 3738
    if-eqz v19, :cond_c9

    .line 3739
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1, v8, v9, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v20

    .line 3741
    .local v20, "flags":I
    if-eqz v17, :cond_a1

    .line 3743
    and-int/lit8 v1, v20, 0x14

    if-nez v1, :cond_9e

    .line 3744
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object/from16 v1, p0

    move-object v3, v8

    move v5, v9

    move/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    move/from16 v21, v9

    goto :goto_cd

    .line 3743
    :cond_9e
    move/from16 v21, v9

    goto :goto_cd

    .line 3750
    :cond_a1
    and-int/lit8 v1, v20, 0x48

    if-eqz v1, :cond_c4

    .line 3751
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/16 v21, 0x0

    iget-object v7, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object/from16 v1, p0

    move-object v3, v8

    move v6, v9

    move-object/from16 v22, v7

    move/from16 v7, p3

    move-object/from16 v23, v8

    .end local v8    # "permission":Ljava/lang/String;
    .local v23, "permission":Ljava/lang/String;
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9    # "myUid":I
    .local v21, "myUid":I
    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_cd

    .line 3750
    .end local v21    # "myUid":I
    .end local v23    # "permission":Ljava/lang/String;
    .restart local v8    # "permission":Ljava/lang/String;
    .restart local v9    # "myUid":I
    :cond_c4
    move-object/from16 v23, v8

    move/from16 v21, v9

    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "myUid":I
    .restart local v21    # "myUid":I
    .restart local v23    # "permission":Ljava/lang/String;
    goto :goto_cd

    .line 3738
    .end local v20    # "flags":I
    .end local v21    # "myUid":I
    .end local v23    # "permission":Ljava/lang/String;
    .restart local v8    # "permission":Ljava/lang/String;
    .restart local v9    # "myUid":I
    :cond_c9
    move-object/from16 v23, v8

    move/from16 v21, v9

    .line 3756
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "myUid":I
    .end local v19    # "shouldGrantPermission":Z
    .restart local v21    # "myUid":I
    :goto_cd
    move/from16 v9, v21

    goto/16 :goto_31

    .line 3737
    .end local v21    # "myUid":I
    .restart local v8    # "permission":Ljava/lang/String;
    .restart local v9    # "myUid":I
    :catchall_d1
    move-exception v0

    move-object/from16 v23, v8

    move/from16 v21, v9

    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "myUid":I
    .restart local v21    # "myUid":I
    .restart local v23    # "permission":Ljava/lang/String;
    :goto_d6
    :try_start_d6
    monitor-exit v1
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d8

    throw v0

    :catchall_d8
    move-exception v0

    goto :goto_d6

    .line 3757
    .end local v21    # "myUid":I
    .end local v23    # "permission":Ljava/lang/String;
    .restart local v9    # "myUid":I
    :cond_da
    return-void
.end method

.method private grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 27
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 1336
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1337
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return-void

    .line 1341
    :cond_2d
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "grantRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1350
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1351
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 1352
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_34a

    if-nez v2, :cond_55

    goto/16 :goto_34a

    .line 1356
    :cond_55
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_331

    .line 1362
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1363
    :try_start_60
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1364
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_315

    .line 1367
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v4

    .line 1368
    .local v4, "isRolePermission":Z
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v5

    .line 1369
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .local v5, "isSoftRestrictedPermission":Z
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_32e

    .line 1370
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v4, :cond_7d

    .line 1371
    invoke-direct {v7, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mayManageRolePermission(I)Z

    move-result v6

    if-eqz v6, :cond_7d

    move v6, v0

    goto :goto_7e

    :cond_7d
    move v6, v3

    .line 1372
    .local v6, "mayGrantRolePermission":Z
    :goto_7e
    if-eqz v5, :cond_95

    iget-object v13, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1374
    invoke-static {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 1375
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 1373
    invoke-static {v13, v14, v1, v15, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v13

    .line 1376
    invoke-virtual {v13}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v13

    if-eqz v13, :cond_95

    goto :goto_96

    :cond_95
    move v0, v3

    :goto_96
    move v13, v0

    .line 1380
    .local v13, "mayGrantSoftRestrictedPermission":Z
    iget-object v14, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1381
    :try_start_9a
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1382
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_2eb

    .line 1386
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    .line 1387
    .local v3, "isRuntimePermission":Z
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v15

    .line 1388
    .local v15, "permissionHasGids":Z
    if-nez v3, :cond_12d

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v16

    if-eqz v16, :cond_ba

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_133

    .line 1390
    :cond_ba
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v16
    :try_end_be
    .catchall {:try_start_9a .. :try_end_be} :catchall_30a

    if-eqz v16, :cond_fa

    .line 1391
    if-eqz v6, :cond_c9

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    goto :goto_133

    .line 1392
    :cond_c9
    move/from16 v16, v4

    .end local v4    # "isRolePermission":Z
    .local v16, "isRolePermission":Z
    :try_start_cb
    new-instance v4, Ljava/lang/SecurityException;
    :try_end_cd
    .catchall {:try_start_cb .. :try_end_cd} :catchall_f3

    move/from16 v17, v5

    .end local v5    # "isSoftRestrictedPermission":Z
    .local v17, "isSoftRestrictedPermission":Z
    :try_start_cf
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d4
    .catchall {:try_start_cf .. :try_end_d4} :catchall_ee

    move/from16 v18, v6

    .end local v6    # "mayGrantRolePermission":Z
    .local v18, "mayGrantRolePermission":Z
    :try_start_d6
    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is managed by role"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v4

    .line 1468
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "isRuntimePermission":Z
    .end local v15    # "permissionHasGids":Z
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v6    # "mayGrantRolePermission":Z
    .restart local v13    # "mayGrantSoftRestrictedPermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :catchall_ee
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "mayGrantRolePermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    goto/16 :goto_311

    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .restart local v5    # "isSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantRolePermission":Z
    :catchall_f3
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "isSoftRestrictedPermission":Z
    .end local v6    # "mayGrantRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    goto/16 :goto_311

    .line 1395
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "isRuntimePermission":Z
    .restart local v4    # "isRolePermission":Z
    .restart local v5    # "isSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantRolePermission":Z
    .restart local v15    # "permissionHasGids":Z
    :cond_fa
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v4    # "isRolePermission":Z
    .end local v5    # "isSoftRestrictedPermission":Z
    .end local v6    # "mayGrantRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requested by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1396
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a changeable permission type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v4

    .line 1388
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "isRolePermission":Z
    .restart local v5    # "isSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantRolePermission":Z
    .restart local v13    # "mayGrantSoftRestrictedPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_12d
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .line 1399
    .end local v4    # "isRolePermission":Z
    .end local v5    # "isSoftRestrictedPermission":Z
    .end local v6    # "mayGrantRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    :goto_133
    invoke-direct {v7, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v4

    .line 1400
    .local v4, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v4, :cond_161

    .line 1401
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing permissions state for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " and user "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    monitor-exit v14

    return-void

    .line 1406
    :cond_161
    invoke-virtual {v4, v9}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_199

    .line 1407
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_172

    goto :goto_199

    .line 1408
    :cond_172
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " has not requested permission "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v5

    .line 1416
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v13    # "mayGrantSoftRestrictedPermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_199
    :goto_199
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x17

    if-ge v5, v6, :cond_1a9

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_1a9

    .line 1417
    monitor-exit v14

    return-void

    .line 1420
    :cond_1a9
    invoke-virtual {v4, v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v5

    .line 1421
    .local v5, "flags":I
    and-int/lit8 v10, v5, 0x10

    if-eqz v10, :cond_1d7

    .line 1422
    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v15

    .end local v15    # "permissionHasGids":Z
    .local v19, "permissionHasGids":Z
    const-string v15, "Cannot grant system fixed permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    monitor-exit v14

    return-void

    .line 1426
    .end local v19    # "permissionHasGids":Z
    .restart local v15    # "permissionHasGids":Z
    :cond_1d7
    move/from16 v19, v15

    .end local v15    # "permissionHasGids":Z
    .restart local v19    # "permissionHasGids":Z
    if-nez p3, :cond_203

    and-int/lit8 v10, v5, 0x4

    if-eqz v10, :cond_203

    .line 1427
    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant policy fixed permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    monitor-exit v14

    return-void

    .line 1432
    :cond_203
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v10

    if-eqz v10, :cond_231

    and-int/lit16 v10, v5, 0x3800

    if-nez v10, :cond_231

    .line 1434
    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    monitor-exit v14

    return-void

    .line 1439
    :cond_231
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v10

    if-eqz v10, :cond_25d

    if-nez v13, :cond_25d

    .line 1440
    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant soft restricted permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    monitor-exit v14

    return-void

    .line 1445
    :cond_25d
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v10

    if-nez v10, :cond_2b5

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v10

    if-eqz v10, :cond_26a

    goto :goto_2b5

    .line 1454
    :cond_26a
    invoke-interface {v2, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_29e

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v10

    if-eqz v10, :cond_27b

    goto :goto_29e

    .line 1455
    :cond_27b
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant non-ephemeral permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v6

    .line 1459
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v13    # "mayGrantSoftRestrictedPermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_29e
    :goto_29e
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v10

    if-ge v10, v6, :cond_2ad

    .line 1460
    const-string v6, "PackageManager"

    const-string v10, "Cannot grant runtime permission to a legacy app"

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    monitor-exit v14

    return-void

    .line 1464
    :cond_2ad
    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_2bd

    .line 1465
    monitor-exit v14

    return-void

    .line 1450
    :cond_2b5
    :goto_2b5
    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_2bd

    .line 1451
    monitor-exit v14

    return-void

    .line 1468
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "flags":I
    :cond_2bd
    monitor-exit v14
    :try_end_2be
    .catchall {:try_start_d6 .. :try_end_2be} :catchall_313

    .line 1470
    if-eqz v3, :cond_2c5

    .line 1471
    const/16 v0, 0x4db

    invoke-direct {v7, v0, v9, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1475
    :cond_2c5
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1476
    .local v0, "uid":I
    if-eqz v12, :cond_2e5

    .line 1477
    if-eqz v3, :cond_2d5

    .line 1478
    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionGranted(II)V

    goto :goto_2d8

    .line 1480
    :cond_2d5
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionGranted()V

    .line 1482
    :goto_2d8
    if-eqz v19, :cond_2e5

    .line 1483
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v12, v4, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onGidsChanged(II)V

    .line 1487
    :cond_2e5
    if-eqz v3, :cond_2ea

    .line 1488
    invoke-direct {v7, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1490
    :cond_2ea
    return-void

    .line 1383
    .end local v3    # "isRuntimePermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local v19    # "permissionHasGids":Z
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    .local v4, "isRolePermission":Z
    .local v5, "isSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantRolePermission":Z
    :cond_2eb
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v4    # "isRolePermission":Z
    .end local v5    # "isSoftRestrictedPermission":Z
    .end local v6    # "mayGrantRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    :try_start_2f1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v3

    .line 1468
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "isRolePermission":Z
    .restart local v5    # "isSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantRolePermission":Z
    .restart local v13    # "mayGrantSoftRestrictedPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :catchall_30a
    move-exception v0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v4    # "isRolePermission":Z
    .end local v5    # "isSoftRestrictedPermission":Z
    .end local v6    # "mayGrantRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    :goto_311
    monitor-exit v14
    :try_end_312
    .catchall {:try_start_2f1 .. :try_end_312} :catchall_313

    throw v0

    :catchall_313
    move-exception v0

    goto :goto_311

    .line 1365
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    :cond_315
    :try_start_315
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v4

    .line 1369
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :catchall_32e
    move-exception v0

    monitor-exit v3
    :try_end_330
    .catchall {:try_start_315 .. :try_end_330} :catchall_32e

    throw v0

    .line 1357
    :cond_331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1353
    :cond_34a
    :goto_34a
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return-void
.end method

.method private handleAppIdMigration(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 23
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "previousAppId"    # I

    .line 5006
    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5007
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5009
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_cf

    .line 5016
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5017
    :try_start_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    array-length v6, v0

    :goto_1d
    if-ge v4, v6, :cond_c8

    aget v7, v0, v4

    .line 5018
    .local v7, "userId":I
    iget-object v8, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v8

    .line 5021
    .local v8, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    invoke-virtual {v8, v2}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v9

    .line 5022
    .local v9, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v9, :cond_33

    .line 5023
    move-object/from16 v16, v0

    move/from16 v17, v6

    goto/16 :goto_c0

    .line 5027
    :cond_33
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v10

    .line 5028
    .local v10, "sharedUidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v10, :cond_4e

    .line 5030
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-virtual {v8, v11, v9}, Lcom/android/server/pm/permission/UserPermissionState;->createUidStateWithExisting(ILcom/android/server/pm/permission/UidPermissionState;)Lcom/android/server/pm/permission/UidPermissionState;

    move-object/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v9

    goto/16 :goto_bd

    .line 5032
    :cond_4e
    invoke-virtual {v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v11

    .line 5033
    .local v11, "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 5034
    .local v12, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_57
    if-ge v13, v12, :cond_b5

    .line 5035
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/permission/PermissionState;

    .line 5036
    .local v14, "srcState":Lcom/android/server/pm/permission/PermissionState;
    nop

    .line 5037
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v15

    .line 5038
    .local v15, "destState":Lcom/android/server/pm/permission/PermissionState;
    if-eqz v15, :cond_93

    .line 5040
    nop

    .line 5041
    move-object/from16 v16, v0

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-direct {v1, v0, v14, v15}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mergePermissionState(ILcom/android/server/pm/permission/PermissionState;Lcom/android/server/pm/permission/PermissionState;)Landroid/util/Pair;

    move-result-object v0

    .line 5042
    .local v0, "newState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    move/from16 v17, v6

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    move/from16 v18, v7

    .end local v7    # "userId":I
    .local v18, "userId":I
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    .line 5043
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v19, v9

    .end local v9    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v19, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 5042
    invoke-virtual {v10, v6, v7, v9}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    .line 5044
    .end local v0    # "newState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto :goto_aa

    .line 5046
    .end local v18    # "userId":I
    .end local v19    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v7    # "userId":I
    .restart local v9    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_93
    move-object/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v9

    .end local v7    # "userId":I
    .end local v9    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v18    # "userId":I
    .restart local v19    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 5047
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v6

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v7

    .line 5046
    invoke-virtual {v10, v0, v6, v7}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    .line 5034
    .end local v14    # "srcState":Lcom/android/server/pm/permission/PermissionState;
    .end local v15    # "destState":Lcom/android/server/pm/permission/PermissionState;
    :goto_aa
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v9, v19

    goto :goto_57

    .end local v18    # "userId":I
    .end local v19    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v7    # "userId":I
    .restart local v9    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_b5
    move-object/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v9

    .line 5053
    .end local v7    # "userId":I
    .end local v9    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v11    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .end local v12    # "count":I
    .end local v13    # "i":I
    .restart local v18    # "userId":I
    .restart local v19    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_bd
    invoke-virtual {v8, v2}, Lcom/android/server/pm/permission/UserPermissionState;->removeUidState(I)V

    .line 5017
    .end local v8    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v10    # "sharedUidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v18    # "userId":I
    .end local v19    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_c0
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    move/from16 v6, v17

    goto/16 :goto_1d

    .line 5055
    :cond_c8
    monitor-exit v5

    move-object/from16 v11, p1

    goto :goto_118

    :catchall_cc
    move-exception v0

    monitor-exit v5
    :try_end_ce
    .catchall {:try_start_18 .. :try_end_ce} :catchall_cc

    throw v0

    .line 5065
    :cond_cf
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5066
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackagesForAppId(I)Ljava/util/List;

    move-result-object v5

    .line 5068
    .local v5, "origSharedUserPackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v6, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5069
    :try_start_d8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    array-length v7, v0

    :goto_dd
    if-ge v4, v7, :cond_115

    aget v8, v0, v4

    .line 5071
    .local v8, "userId":I
    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v9

    .line 5072
    .local v9, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v9, :cond_ec

    .line 5073
    move-object/from16 v11, p1

    goto :goto_112

    .line 5075
    :cond_ec
    invoke-virtual {v9, v2}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v10

    .line 5076
    .local v10, "prevUidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v10, :cond_f5

    .line 5077
    move-object/from16 v11, p1

    goto :goto_112

    .line 5081
    :cond_f5
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-virtual {v9, v11, v10}, Lcom/android/server/pm/permission/UserPermissionState;->createUidStateWithExisting(ILcom/android/server/pm/permission/UidPermissionState;)Lcom/android/server/pm/permission/UidPermissionState;

    .line 5085
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_10d

    .line 5086
    nop

    .line 5087
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 5086
    invoke-direct {v1, v2, v11, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V
    :try_end_10a
    .catchall {:try_start_d8 .. :try_end_10a} :catchall_119

    move-object/from16 v11, p1

    goto :goto_112

    .line 5089
    :cond_10d
    move-object/from16 v11, p1

    :try_start_10f
    invoke-direct {v1, v11, v2, v5, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/util/List;I)V

    .line 5069
    .end local v8    # "userId":I
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v10    # "prevUidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_112
    add-int/lit8 v4, v4, 0x1

    goto :goto_dd

    .line 5093
    :cond_115
    move-object/from16 v11, p1

    monitor-exit v6

    .line 5095
    .end local v5    # "origSharedUserPackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_118
    return-void

    .line 5093
    .restart local v5    # "origSharedUserPackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catchall_119
    move-exception v0

    move-object/from16 v11, p1

    :goto_11c
    monitor-exit v6
    :try_end_11d
    .catchall {:try_start_10f .. :try_end_11d} :catchall_11e

    throw v0

    :catchall_11e
    move-exception v0

    goto :goto_11c
.end method

.method private static hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 6
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "permName"    # Ljava/lang/String;

    .line 4545
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4546
    return v1

    .line 4549
    :cond_c
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_30

    .line 4550
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 4551
    return v2

    .line 4549
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 4554
    .end local v0    # "i":I
    :cond_30
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 12
    .param p2, "newPerm"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p4, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")V"
        }
    .end annotation

    .line 3164
    .local p1, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3165
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3166
    .local v1, "isGranted":Z
    const/4 v2, 0x0

    .line 3168
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 3169
    .local v3, "numSourcePerm":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    if-ge v4, v3, :cond_2d

    .line 3170
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3171
    .local v5, "sourcePerm":Ljava/lang/String;
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 3172
    if-nez v1, :cond_1c

    .line 3173
    const/4 v2, 0x0

    .line 3176
    :cond_1c
    const/4 v1, 0x1

    .line 3177
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_2a

    .line 3179
    :cond_23
    if-nez v1, :cond_2a

    .line 3180
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v2, v6

    .line 3169
    .end local v5    # "sourcePerm":Ljava/lang/String;
    :cond_2a
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 3185
    .end local v4    # "i":I
    :cond_2d
    if-eqz v1, :cond_62

    .line 3186
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_59

    .line 3187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inherits runtime perm grant from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_59
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 3195
    :cond_62
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    invoke-virtual {p3, v4, v2, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3196
    return-void
.end method

.method private static isCompatPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 8
    .param p0, "perm"    # Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3333
    const/4 v0, 0x0

    .line 3334
    .local v0, "allowed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v2, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    array-length v2, v2

    .local v2, "size":I
    :goto_5
    if-ge v1, v2, :cond_4a

    .line 3335
    sget-object v3, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    aget-object v3, v3, v1

    .line 3336
    .local v3, "info":Lcom/android/server/pm/permission/CompatibilityPermissionInfo;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3337
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v5

    if-ge v4, v5, :cond_47

    .line 3338
    const/4 v0, 0x1

    .line 3339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-granting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to old pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3340
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3339
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    goto :goto_4a

    .line 3334
    .end local v3    # "info":Lcom/android/server/pm/permission/CompatibilityPermissionInfo;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3344
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_4a
    :goto_4a
    return v0
.end method

.method private isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z
    .registers 7
    .param p1, "state"    # Lcom/android/server/pm/permission/PermissionState;

    .line 4844
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v0

    .line 4845
    .local v0, "flags":I
    const v1, 0x10048

    .line 4849
    .local v1, "denyMask":I
    and-int/lit8 v2, v0, 0x10

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    .line 4850
    return v3

    .line 4851
    :cond_d
    and-int/lit8 v2, v0, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    .line 4852
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v3, v4

    :goto_1e
    return v3

    .line 4853
    :cond_1f
    const v2, 0x10048

    and-int/2addr v2, v0

    if-eqz v2, :cond_26

    .line 4854
    return v4

    .line 4856
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v2

    return v2
.end method

.method private isInSystemConfigPrivAppDenyPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "containingApexPackageName"    # Ljava/lang/String;

    .line 3459
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 3461
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3462
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_45

    .line 3463
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3464
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_45

    .line 3465
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_22
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3466
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_45

    .line 3467
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_31
    if-eqz p3, :cond_3d

    .line 3468
    nop

    .line 3469
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3468
    invoke-virtual {v0, p3, v1}, Lcom/android/server/SystemConfig;->getApexPrivAppDenyPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_45

    .line 3471
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3d
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 3473
    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_45
    invoke-static {v1, p2}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isInSystemConfigPrivAppPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "containingApexPackageName"    # Ljava/lang/String;

    .line 3420
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 3422
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3423
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_97

    .line 3424
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3425
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_97

    .line 3426
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_24
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3427
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_97

    .line 3428
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_33
    if-eqz p3, :cond_8f

    .line 3429
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    .line 3430
    .local v1, "apexManager":Lcom/android/server/pm/ApexManager;
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3432
    .local v2, "apexName":Ljava/lang/String;
    nop

    .line 3433
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3432
    invoke-virtual {v0, v3}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    .line 3434
    .local v3, "privAppPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 3435
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3434
    invoke-virtual {v0, v2, v4}, Lcom/android/server/SystemConfig;->getApexPrivAppPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v4

    .line 3436
    .local v4, "apexPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_8c

    .line 3439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is an APK in APEX, but has permission allowlist on the system image. Please bundle the allowlist in the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " APEX instead."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    if-eqz v4, :cond_89

    .line 3443
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 3444
    .local v5, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v1, v5

    goto :goto_8e

    .line 3446
    .end local v5    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_89
    move-object v5, v3

    move-object v1, v5

    .restart local v5    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_8e

    .line 3449
    .end local v5    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8c
    move-object v5, v4

    move-object v1, v5

    .line 3451
    .end local v2    # "apexName":Ljava/lang/String;
    .end local v3    # "privAppPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "apexPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_8e
    goto :goto_97

    .line 3452
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8f
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 3454
    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_97
    invoke-static {v1, p2}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isPermissionDeclaredByDisabledSystemPkg(Lcom/android/server/pm/permission/Permission;)Z
    .registers 9
    .param p1, "permission"    # Lcom/android/server/pm/permission/Permission;

    .line 4246
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4247
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4246
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4248
    .local v0, "disabledSourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_45

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 4249
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4250
    .local v1, "permissionName":Ljava/lang/String;
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    .line 4251
    .local v2, "sourcePerms":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedPermission;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 4252
    .local v4, "sourcePerm":Lcom/android/server/pm/pkg/component/ParsedPermission;
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 4253
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v5

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v6

    if-ne v5, v6, :cond_44

    .line 4254
    const/4 v3, 0x1

    return v3

    .line 4256
    .end local v4    # "sourcePerm":Lcom/android/server/pm/pkg/component/ParsedPermission;
    :cond_44
    goto :goto_22

    .line 4258
    .end local v1    # "permissionName":Ljava/lang/String;
    .end local v2    # "sourcePerms":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedPermission;>;"
    :cond_45
    const/4 v1, 0x0

    return v1
.end method

.method private isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "targetSdk"    # I

    .line 1925
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v0

    .line 1926
    .local v0, "splitPerms":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1927
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    const/4 v3, 0x0

    if-ge v2, v1, :cond_40

    .line 1928
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1929
    .local v4, "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge p2, v5, :cond_3d

    .line 1930
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1931
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1932
    :try_start_25
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 1933
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    .line 1934
    .local v6, "perm":Lcom/android/server/pm/permission/Permission;
    if-eqz v6, :cond_38

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-nez v7, :cond_38

    const/4 v3, 0x1

    :cond_38
    monitor-exit v5

    return v3

    .line 1935
    .end local v6    # "perm":Lcom/android/server/pm/permission/Permission;
    :catchall_3a
    move-exception v3

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_3a

    throw v3

    .line 1927
    .end local v4    # "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1938
    .end local v2    # "i":I
    :cond_40
    return v3
.end method

.method private isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3692
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 3693
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 3694
    return v1

    .line 3698
    :cond_a
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x17

    if-lt v2, v3, :cond_13

    .line 3699
    return v1

    .line 3703
    :cond_13
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3704
    :try_start_16
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    .line 3705
    .local v3, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v3, :cond_44

    .line 3706
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    monitor-exit v2

    return v1

    .line 3710
    :cond_44
    invoke-virtual {v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionsReviewRequired()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 3711
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_4a
    move-exception v1

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_16 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private static isProfileOwner(I)Z
    .registers 4
    .param p0, "uid"    # I

    .line 3681
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3682
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3684
    .local v0, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 3685
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1

    .line 3687
    :cond_19
    return v1
.end method

.method private static killUid(IILjava/lang/String;)V
    .registers 7
    .param p0, "appId"    # I
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 489
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    .line 490
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_f

    .line 492
    :try_start_a
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 495
    goto :goto_f

    .line 493
    :catch_e
    move-exception v3

    .line 498
    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_f
    :goto_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    nop

    .line 500
    return-void

    .line 498
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    throw v2
.end method

.method static synthetic lambda$resetRuntimePermissionsInternal$3(II)V
    .registers 4
    .param p0, "revocationUID"    # I
    .param p1, "revocationUserId"    # I

    .line 1909
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-string/jumbo v1, "permissions revoked"

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$revokeSharedUserPermissionsForLeavingPackageInternal$8(II)V
    .registers 3
    .param p0, "appId"    # I
    .param p1, "userId"    # I

    .line 3968
    const-string/jumbo v0, "permission grant or revoke changed gids"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    .line 3969
    return-void
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4565
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4566
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 4567
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4569
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4570
    return-void
.end method

.method private mayManageRolePermission(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 1676
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1677
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1678
    .local v1, "packageNames":[Ljava/lang/String;
    if-nez v1, :cond_e

    .line 1679
    const/4 v2, 0x0

    return v2

    .line 1681
    :cond_e
    nop

    .line 1682
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1683
    .local v2, "permissionControllerPackageName":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private mergePermissionState(ILcom/android/server/pm/permission/PermissionState;Lcom/android/server/pm/permission/PermissionState;)Landroid/util/Pair;
    .registers 21
    .param p1, "appId"    # I
    .param p2, "srcState"    # Lcom/android/server/pm/permission/PermissionState;
    .param p3, "destState"    # Lcom/android/server/pm/permission/PermissionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/permission/PermissionState;",
            "Lcom/android/server/pm/permission/PermissionState;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4870
    move-object/from16 v0, p0

    const v1, 0x80003

    .line 4874
    .local v1, "userSettableMask":I
    const v2, 0x8020

    .line 4877
    .local v2, "defaultGrantMask":I
    const/16 v3, 0x14

    .line 4880
    .local v3, "priorityFixedMask":I
    const v4, 0x8034

    .line 4882
    .local v4, "priorityMask":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v5

    .line 4883
    .local v5, "destFlags":I
    move-object/from16 v6, p3

    invoke-direct {v0, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z

    move-result v7

    .line 4885
    .local v7, "destIsGranted":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v8

    .line 4886
    .local v8, "srcFlags":I
    move-object/from16 v9, p2

    invoke-direct {v0, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z

    move-result v10

    .line 4888
    .local v10, "srcIsGranted":Z
    or-int v11, v5, v8

    .line 4892
    .local v11, "combinedFlags":I
    const/4 v12, 0x0

    .line 4896
    .local v12, "newFlags":I
    const v13, 0x80003

    and-int/2addr v13, v5

    or-int/2addr v12, v13

    .line 4899
    and-int/lit16 v13, v11, 0x3800

    or-int/2addr v12, v13

    .line 4901
    and-int/lit16 v13, v12, 0x3800

    if-nez v13, :cond_32

    .line 4902
    or-int/lit16 v12, v12, 0x4000

    .line 4906
    :cond_32
    const v13, 0x8034

    and-int v14, v11, v13

    or-int/2addr v12, v14

    .line 4909
    and-int v14, v11, v13

    if-nez v14, :cond_3f

    .line 4910
    and-int/lit16 v14, v11, 0x80

    or-int/2addr v12, v14

    .line 4914
    :cond_3f
    and-int/lit8 v14, v12, 0x14

    if-nez v14, :cond_5f

    .line 4915
    const v14, 0x88023

    and-int/2addr v14, v12

    if-nez v14, :cond_59

    sget-object v14, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    .line 4916
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_59

    .line 4919
    and-int/lit8 v13, v11, 0x40

    or-int/2addr v12, v13

    goto :goto_5f

    .line 4920
    :cond_59
    and-int/2addr v13, v12

    if-nez v13, :cond_5f

    .line 4922
    and-int/lit8 v13, v5, 0x40

    or-int/2addr v12, v13

    .line 4929
    :cond_5f
    :goto_5f
    and-int/lit8 v13, v12, 0x10

    if-eqz v13, :cond_65

    .line 4930
    const/4 v13, 0x1

    .local v13, "effectivelyGranted":Z
    goto :goto_a5

    .line 4931
    .end local v13    # "effectivelyGranted":Z
    :cond_65
    and-int/lit8 v13, v5, 0x4

    if-eqz v13, :cond_6b

    .line 4933
    move v13, v7

    .restart local v13    # "effectivelyGranted":Z
    goto :goto_a5

    .line 4934
    .end local v13    # "effectivelyGranted":Z
    :cond_6b
    and-int/lit8 v13, v8, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v13, :cond_7c

    .line 4935
    if-nez v7, :cond_75

    if-eqz v10, :cond_76

    :cond_75
    move v14, v15

    :cond_76
    move v13, v14

    .line 4938
    .restart local v13    # "effectivelyGranted":Z
    if-eq v7, v10, :cond_a5

    .line 4939
    and-int/lit8 v12, v12, -0x5

    goto :goto_a5

    .line 4941
    .end local v13    # "effectivelyGranted":Z
    :cond_7c
    const v13, 0x8020

    and-int v16, v5, v13

    if-eqz v16, :cond_85

    .line 4947
    move v13, v7

    .restart local v13    # "effectivelyGranted":Z
    goto :goto_a5

    .line 4948
    .end local v13    # "effectivelyGranted":Z
    :cond_85
    and-int/2addr v13, v8

    if-eqz v13, :cond_8f

    .line 4949
    if-nez v7, :cond_8c

    if-eqz v10, :cond_8d

    :cond_8c
    move v14, v15

    :cond_8d
    move v13, v14

    .restart local v13    # "effectivelyGranted":Z
    goto :goto_a5

    .line 4950
    .end local v13    # "effectivelyGranted":Z
    :cond_8f
    and-int/lit16 v13, v5, 0x80

    if-eqz v13, :cond_95

    .line 4953
    move v13, v7

    .restart local v13    # "effectivelyGranted":Z
    goto :goto_a5

    .line 4954
    .end local v13    # "effectivelyGranted":Z
    :cond_95
    and-int/lit16 v13, v8, 0x80

    if-eqz v13, :cond_a4

    .line 4955
    if-nez v7, :cond_9d

    if-eqz v10, :cond_9e

    :cond_9d
    move v14, v15

    :cond_9e
    move v13, v14

    .line 4958
    .restart local v13    # "effectivelyGranted":Z
    if-eqz v7, :cond_a5

    .line 4959
    and-int/lit16 v12, v12, -0x81

    goto :goto_a5

    .line 4963
    .end local v13    # "effectivelyGranted":Z
    :cond_a4
    move v13, v7

    .line 4968
    .restart local v13    # "effectivelyGranted":Z
    :cond_a5
    :goto_a5
    if-nez v13, :cond_ae

    .line 4970
    const/high16 v14, 0x20000

    and-int/2addr v14, v11

    or-int/2addr v12, v14

    .line 4973
    and-int/lit16 v12, v12, -0x81

    goto :goto_b0

    .line 4976
    :cond_ae
    and-int/lit8 v12, v12, -0x41

    .line 4979
    :goto_b0
    if-eq v13, v7, :cond_b6

    .line 4981
    const v14, -0x80004

    and-int/2addr v12, v14

    .line 4986
    :cond_b6
    if-nez v13, :cond_d0

    .line 4987
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4988
    move/from16 v16, v1

    move/from16 v1, p1

    .end local v1    # "userSettableMask":I
    .local v16, "userSettableMask":I
    invoke-virtual {v15, v1}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v15

    .line 4986
    invoke-direct {v0, v14, v15}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_d4

    .line 4991
    or-int/lit8 v12, v12, 0x8

    .line 4992
    const/4 v14, 0x1

    .local v14, "newGrantState":Z
    goto :goto_d5

    .line 4986
    .end local v14    # "newGrantState":Z
    .end local v16    # "userSettableMask":I
    .restart local v1    # "userSettableMask":I
    :cond_d0
    move/from16 v16, v1

    move/from16 v1, p1

    .line 4996
    .end local v1    # "userSettableMask":I
    .restart local v16    # "userSettableMask":I
    :cond_d4
    move v14, v13

    .line 4999
    .restart local v14    # "newGrantState":Z
    :goto_d5
    new-instance v15, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v15, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15
.end method

.method private notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2133
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;-><init>()V

    .line 2135
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2133
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2136
    return-void
.end method

.method private onPackageAddedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 15
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isInstantApp"    # Z
    .param p3, "oldPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4765
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_60

    .line 4768
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_60

    .line 4769
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4770
    .local v2, "origName":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 4771
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adopting permissions from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4772
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4771
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4774
    :try_start_4f
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    .line 4775
    monitor-exit v3

    goto :goto_5d

    :catchall_5a
    move-exception v1

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5a

    throw v1

    .line 4768
    .end local v2    # "origName":Ljava/lang/String;
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 4781
    .end local v0    # "i":I
    :cond_60
    if-eqz p2, :cond_85

    .line 4782
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission groups from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ignored: instant apps cannot define new permission groups."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 4785
    :cond_85
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllPermissionGroupsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4792
    :goto_88
    if-eqz p2, :cond_ae

    .line 4793
    const/4 v0, 0x0

    .line 4794
    .local v0, "permissionsWithChangedDefinition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permissions from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ignored: instant apps cannot define new permissions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 4797
    .end local v0    # "permissionsWithChangedDefinition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ae
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v0

    .line 4800
    .restart local v0    # "permissionsWithChangedDefinition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_b2
    if-eqz p3, :cond_b6

    move v2, v1

    goto :goto_b7

    :cond_b6
    const/4 v2, 0x0

    :goto_b7
    move v9, v2

    .line 4801
    .local v9, "hasOldPkg":Z
    nop

    .line 4802
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 4803
    .local v1, "hasPermissionDefinitionChanges":Z
    if-nez v9, :cond_c2

    if-eqz v1, :cond_d1

    .line 4807
    :cond_c2
    new-instance v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda13;

    move-object v2, v10

    move-object v3, p0

    move v4, v9

    move-object v5, p1

    move-object v6, p3

    move v7, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V

    invoke-static {v10}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 4819
    :cond_d1
    return-void
.end method

.method private onPackageInstalledInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "previousAppId"    # I
    .param p3, "params"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
    .param p4, "userIds"    # [I

    .line 5100
    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 5101
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->handleAppIdMigration(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 5103
    :cond_6
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5104
    array-length v0, p4

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_26

    aget v2, p4, v1

    .line 5105
    .local v2, "userId":I
    nop

    .line 5106
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    .line 5105
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V

    .line 5108
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getGrantedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRequestedRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V

    .line 5104
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 5110
    :cond_26
    return-void
.end method

.method private onPackageRemovedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5127
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5128
    return-void
.end method

.method private onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;[I)V"
        }
    .end annotation

    .line 5138
    .local p4, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_1d

    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5142
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 5146
    array-length v1, p5

    :goto_12
    if-ge v0, v1, :cond_1c

    aget v2, p5, v0

    .line 5147
    .local v2, "userId":I
    invoke-direct {p0, p3, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 5146
    .end local v2    # "userId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 5149
    :cond_1c
    return-void

    .line 5153
    :cond_1d
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceStub;->get()Lcom/android/server/pm/permission/PermissionManagerServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5154
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v3

    .line 5153
    invoke-virtual {v1, v2, p1, v3, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceStub;->isNeedUpdatePermissions(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;[I[I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 5155
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5158
    :cond_31
    array-length v1, p5

    :goto_32
    if-ge v0, v1, :cond_46

    aget v2, p5, v0

    .line 5159
    .restart local v2    # "userId":I
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 5160
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V

    goto :goto_43

    .line 5167
    :cond_40
    invoke-direct {p0, p3, p2, p4, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/util/List;I)V

    .line 5158
    .end local v2    # "userId":I
    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 5171
    :cond_46
    return-void
.end method

.method private readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V
    .registers 9
    .param p1, "uidState"    # Lcom/android/server/pm/permission/UidPermissionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .line 4635
    .local p2, "permissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 4636
    .local v1, "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4637
    .local v2, "permissionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    .line 4638
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v3, :cond_35

    .line 4639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    goto :goto_4

    .line 4642
    :cond_35
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v4

    .line 4643
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v5

    .line 4642
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    .line 4644
    .end local v1    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .end local v2    # "permissionName":Ljava/lang/String;
    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    goto :goto_4

    .line 4645
    :cond_41
    return-void
.end method

.method private removeAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2489
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2490
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 2491
    .local v1, "n":I
    const/4 v2, 0x0

    .line 2492
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_6d

    .line 2493
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 2494
    .local v4, "p":Lcom/android/server/pm/pkg/component/ParsedPermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 2495
    .local v5, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v5, :cond_30

    .line 2496
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    move-object v5, v6

    .line 2498
    :cond_30
    if-eqz v5, :cond_57

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/Permission;->isPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 2499
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/Permission;->setPermissionInfo(Landroid/content/pm/PermissionInfo;)V

    .line 2500
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_57

    .line 2501
    if-nez v2, :cond_4b

    .line 2502
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v6

    goto :goto_50

    .line 2504
    :cond_4b
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2506
    :goto_50
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2509
    :cond_57
    invoke-static {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->isAppOp(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 2511
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    .end local v4    # "p":Lcom/android/server/pm/pkg/component/ParsedPermission;
    .end local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2514
    .end local v3    # "i":I
    :cond_6d
    if-eqz v2, :cond_8b

    .line 2515
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_8b

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    :cond_8b
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 2519
    const/4 v2, 0x0

    .line 2520
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_96
    if-ge v3, v1, :cond_bc

    .line 2521
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2522
    .local v4, "permissionName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 2523
    .local v5, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v5, :cond_b9

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 2524
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2525
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2524
    invoke-virtual {v6, v4, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    .end local v4    # "permissionName":Ljava/lang/String;
    .end local v5    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_b9
    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    .line 2528
    .end local v3    # "i":I
    :cond_bc
    if-eqz v2, :cond_da

    .line 2529
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_da

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    .end local v1    # "n":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    :cond_da
    monitor-exit v0

    .line 2532
    return-void

    .line 2531
    :catchall_dc
    move-exception v1

    monitor-exit v0
    :try_end_de
    .catchall {:try_start_3 .. :try_end_de} :catchall_dc

    throw v1
.end method

.method private removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V
    .registers 7
    .param p1, "appId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4598
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4599
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v1

    .line 4600
    .local v1, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v1, :cond_d

    .line 4601
    monitor-exit v0

    return-void

    .line 4603
    :cond_d
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/UserPermissionState;->removeUidState(I)V

    .line 4604
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 4605
    .end local v1    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    monitor-exit v0

    .line 4606
    return-void

    .line 4605
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 1695
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Ljava/util/Collection;I)V

    .line 1696
    return-void
.end method

.method private resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/util/Set;Ljava/util/Set;)V
    .registers 32
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1722
    .local p3, "syncUpdatedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "asyncUpdatedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v10, p0

    move/from16 v11, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1725
    .local v12, "packageName":Ljava/lang/String;
    const v13, 0x9004b

    .line 1732
    .local v13, "userSettableMask":I
    const/16 v14, 0x14

    .line 1736
    .local v14, "policyOrSystemFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v15

    .line 1737
    .local v15, "permissionCount":I
    const/4 v0, 0x1

    new-array v8, v0, [Z

    .line 1738
    .local v8, "permissionRemoved":[Z
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v0

    .line 1744
    .local v7, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v7

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Ljava/util/Set;Ljava/util/Set;[Z)V

    .line 1806
    .local v9, "delayingPermCallback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_2e
    if-ge v6, v15, :cond_174

    .line 1807
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 1812
    .local v5, "permName":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1813
    :try_start_3e
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_167

    .line 1814
    .local v2, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v2, :cond_5a

    .line 1815
    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4f

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v26, v8

    goto/16 :goto_15f

    .line 1824
    .end local v2    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_4f
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v26, v8

    goto/16 :goto_170

    .line 1818
    .restart local v2    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_5a
    :try_start_5a
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v3
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_167

    if-eqz v3, :cond_69

    .line 1819
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_4f

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v26, v8

    goto/16 :goto_15f

    .line 1821
    :cond_69
    :try_start_69
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    move/from16 v16, v3

    .line 1823
    .local v16, "isRuntimePermission":Z
    const-string v3, "android"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v17, v3

    .line 1824
    .end local v2    # "permission":Lcom/android/server/pm/permission/Permission;
    .local v17, "isAndroidPermission":Z
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_69 .. :try_end_7c} :catchall_167

    .line 1827
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1828
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1827
    invoke-virtual {v1, v2, v11}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 1829
    .local v4, "pkgNames":[Ljava/lang/String;
    array-length v1, v4

    if-lez v1, :cond_c6

    .line 1830
    const/4 v1, 0x0

    .line 1831
    .local v1, "used":Z
    array-length v2, v4

    const/4 v3, 0x0

    :goto_8c
    if-ge v3, v2, :cond_ba

    aget-object v0, v4, v3

    .line 1832
    .local v0, "sharedPkgName":Ljava/lang/String;
    move/from16 v19, v1

    .end local v1    # "used":Z
    .local v19, "used":Z
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1833
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1834
    .local v1, "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v1, :cond_b3

    move-object/from16 v20, v0

    .end local v0    # "sharedPkgName":Ljava/lang/String;
    .local v20, "sharedPkgName":Ljava/lang/String;
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 1835
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1836
    const/4 v0, 0x1

    .line 1837
    .end local v19    # "used":Z
    .local v0, "used":Z
    move v1, v0

    goto :goto_bc

    .line 1834
    .end local v20    # "sharedPkgName":Ljava/lang/String;
    .local v0, "sharedPkgName":Ljava/lang/String;
    .restart local v19    # "used":Z
    :cond_b3
    move-object/from16 v20, v0

    .line 1831
    .end local v0    # "sharedPkgName":Ljava/lang/String;
    .end local v1    # "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_b5
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v19

    goto :goto_8c

    .end local v19    # "used":Z
    .local v1, "used":Z
    :cond_ba
    move/from16 v19, v1

    .line 1840
    :goto_bc
    if-eqz v1, :cond_c6

    .line 1841
    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v26, v8

    goto/16 :goto_15f

    .line 1845
    .end local v1    # "used":Z
    :cond_c6
    const/16 v0, 0x3e8

    .line 1846
    invoke-direct {v10, v12, v5, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 1851
    .local v0, "oldFlags":I
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v12, v2, v3, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 1852
    .local v3, "uid":I
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v2

    .line 1855
    .local v2, "targetSdk":I
    const/16 v1, 0x17

    if-ge v2, v1, :cond_e5

    if-eqz v16, :cond_e5

    if-eqz v17, :cond_e5

    .line 1858
    const/16 v1, 0x48

    goto :goto_e6

    .line 1859
    :cond_e5
    const/4 v1, 0x0

    :goto_e6
    move/from16 v18, v1

    .line 1861
    .local v18, "flags":I
    const v19, 0x9004b

    const/16 v20, 0x3e8

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move/from16 v22, v2

    .end local v2    # "targetSdk":I
    .local v22, "targetSdk":I
    move-object v2, v12

    move/from16 v23, v3

    .end local v3    # "uid":I
    .local v23, "uid":I
    move-object v3, v5

    move-object/from16 v24, v4

    .end local v4    # "pkgNames":[Ljava/lang/String;
    .local v24, "pkgNames":[Ljava/lang/String;
    move/from16 v4, v19

    move-object/from16 v25, v5

    .end local v5    # "permName":Ljava/lang/String;
    .local v25, "permName":Ljava/lang/String;
    move/from16 v5, v18

    move/from16 v19, v6

    .end local v6    # "i":I
    .local v19, "i":I
    move/from16 v6, v20

    move-object/from16 v20, v7

    .end local v7    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v20, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    move/from16 v7, p2

    move-object/from16 v26, v8

    .end local v8    # "permissionRemoved":[Z
    .local v26, "permissionRemoved":[Z
    move/from16 v8, v21

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1866
    if-nez v16, :cond_111

    .line 1867
    goto :goto_15f

    .line 1871
    :cond_111
    and-int/lit8 v1, v0, 0x14

    if-eqz v1, :cond_116

    .line 1872
    goto :goto_15f

    .line 1876
    :cond_116
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_14f

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_123

    move-object/from16 v21, v25

    goto :goto_151

    .line 1885
    :cond_123
    and-int/lit8 v1, v18, 0x40

    if-nez v1, :cond_14c

    .line 1886
    move/from16 v7, v22

    move-object/from16 v8, v25

    .end local v22    # "targetSdk":I
    .end local v25    # "permName":Ljava/lang/String;
    .local v7, "targetSdk":I
    .local v8, "permName":Ljava/lang/String;
    invoke-direct {v10, v8, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_147

    .line 1888
    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v8

    move/from16 v6, p2

    move/from16 v22, v7

    .end local v7    # "targetSdk":I
    .restart local v22    # "targetSdk":I
    move-object/from16 v7, v21

    move-object/from16 v21, v8

    .end local v8    # "permName":Ljava/lang/String;
    .local v21, "permName":Ljava/lang/String;
    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_15f

    .line 1886
    .end local v21    # "permName":Ljava/lang/String;
    .end local v22    # "targetSdk":I
    .restart local v7    # "targetSdk":I
    .restart local v8    # "permName":Ljava/lang/String;
    :cond_147
    move/from16 v22, v7

    move-object/from16 v21, v8

    .end local v7    # "targetSdk":I
    .end local v8    # "permName":Ljava/lang/String;
    .restart local v21    # "permName":Ljava/lang/String;
    .restart local v22    # "targetSdk":I
    goto :goto_15f

    .line 1885
    .end local v21    # "permName":Ljava/lang/String;
    .restart local v25    # "permName":Ljava/lang/String;
    :cond_14c
    move-object/from16 v21, v25

    .end local v25    # "permName":Ljava/lang/String;
    .restart local v21    # "permName":Ljava/lang/String;
    goto :goto_15f

    .line 1876
    .end local v21    # "permName":Ljava/lang/String;
    .restart local v25    # "permName":Ljava/lang/String;
    :cond_14f
    move-object/from16 v21, v25

    .line 1879
    .end local v25    # "permName":Ljava/lang/String;
    .restart local v21    # "permName":Ljava/lang/String;
    :goto_151
    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, v21

    move/from16 v6, p2

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1806
    .end local v0    # "oldFlags":I
    .end local v16    # "isRuntimePermission":Z
    .end local v17    # "isAndroidPermission":Z
    .end local v18    # "flags":I
    .end local v21    # "permName":Ljava/lang/String;
    .end local v22    # "targetSdk":I
    .end local v23    # "uid":I
    .end local v24    # "pkgNames":[Ljava/lang/String;
    :goto_15f
    add-int/lit8 v6, v19, 0x1

    move-object/from16 v7, v20

    move-object/from16 v8, v26

    .end local v19    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_2e

    .line 1824
    .end local v20    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v26    # "permissionRemoved":[Z
    .restart local v5    # "permName":Ljava/lang/String;
    .local v7, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v8, "permissionRemoved":[Z
    :catchall_167
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v26, v8

    .end local v5    # "permName":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v8    # "permissionRemoved":[Z
    .restart local v19    # "i":I
    .restart local v20    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v21    # "permName":Ljava/lang/String;
    .restart local v26    # "permissionRemoved":[Z
    :goto_170
    :try_start_170
    monitor-exit v1
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_172

    throw v0

    :catchall_172
    move-exception v0

    goto :goto_170

    .line 1806
    .end local v19    # "i":I
    .end local v20    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v21    # "permName":Ljava/lang/String;
    .end local v26    # "permissionRemoved":[Z
    .restart local v6    # "i":I
    .restart local v7    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v8    # "permissionRemoved":[Z
    :cond_174
    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v26, v8

    .line 1894
    .end local v6    # "i":I
    .end local v7    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v8    # "permissionRemoved":[Z
    .restart local v20    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v26    # "permissionRemoved":[Z
    const/4 v0, 0x0

    aget-boolean v0, v26, v0

    if-eqz v0, :cond_184

    .line 1895
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRemoved()V

    .line 1900
    :cond_184
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c4

    .line 1901
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1902
    .local v0, "numRevokedPermissions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18f
    if-ge v1, v0, :cond_1c1

    .line 1903
    move-object/from16 v2, v20

    .end local v20    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v2, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v3

    .line 1904
    .local v3, "revocationUID":I
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v4

    .line 1906
    .local v4, "revocationUserId":I
    iget-object v5, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1909
    iget-object v5, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v6, v3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1902
    .end local v3    # "revocationUID":I
    .end local v4    # "revocationUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_18f

    .end local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v20    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1c1
    move-object/from16 v2, v20

    .end local v20    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    goto :goto_1c6

    .line 1900
    .end local v0    # "numRevokedPermissions":I
    .end local v1    # "i":I
    .end local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v20    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1c4
    move-object/from16 v2, v20

    .line 1918
    .end local v20    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_1c6
    return-void
.end method

.method private resetRuntimePermissionsInternal(Ljava/util/Collection;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 1700
    .local p1, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1701
    .local v0, "syncUpdatedUsers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1703
    .local v1, "asyncUpdatedUsers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1704
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-direct {p0, v3, p2, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/util/Set;Ljava/util/Set;)V

    .line 1705
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_e

    .line 1707
    :cond_1e
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->toIntArray(Landroid/util/ArraySet;)[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1708
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->toIntArray(Landroid/util/ArraySet;)[I

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1709
    return-void
.end method

.method private restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V
    .registers 51
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "packageOfInterest"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .param p5, "filterUserId"    # I

    .line 2622
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2623
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 2624
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v14, :cond_19

    .line 2625
    return-void

    .line 2628
    :cond_19
    const/4 v0, -0x1

    const/4 v15, 0x0

    const/4 v7, 0x1

    if-ne v13, v0, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    goto :goto_27

    .line 2629
    :cond_23
    new-array v0, v7, [I

    aput v13, v0, v15

    :goto_27
    move-object v6, v0

    .line 2631
    .local v6, "userIds":[I
    const/4 v1, 0x0

    .line 2632
    .local v1, "runtimePermissionsRevoked":Z
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 2634
    .local v2, "updatedUserIds":[I
    const/4 v0, 0x0

    .line 2635
    .local v0, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2636
    .local v3, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2637
    .local v4, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2638
    .local v5, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    .line 2639
    .local v15, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    .line 2640
    .local v7, "requestedPermissionsSize":I
    const/16 v18, 0x0

    move-object v13, v4

    move-object v4, v0

    move/from16 v44, v18

    move/from16 v18, v1

    move/from16 v1, v44

    .end local v0    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "i":I
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v13, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v18, "runtimePermissionsRevoked":Z
    :goto_45
    if-ge v1, v7, :cond_b6

    .line 2641
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v2

    .end local v2    # "updatedUserIds":[I
    .local v19, "updatedUserIds":[I
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 2644
    .local v2, "permissionName":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2645
    :try_start_57
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 2646
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    monitor-exit v12
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_b3

    .line 2647
    if-nez v0, :cond_61

    .line 2648
    goto :goto_ac

    .line 2650
    :cond_61
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v12

    if-eqz v12, :cond_78

    .line 2651
    invoke-direct {v8, v9, v14, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;)Z

    move-result v12

    if-eqz v12, :cond_78

    .line 2652
    if-nez v4, :cond_75

    .line 2653
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v12

    .line 2655
    :cond_75
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2657
    :cond_78
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v12

    if-eqz v12, :cond_95

    invoke-direct {v8, v9, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result v12

    if-nez v12, :cond_8a

    .line 2658
    invoke-direct {v8, v9, v14, v0, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v12

    if-eqz v12, :cond_95

    .line 2660
    :cond_8a
    if-nez v3, :cond_92

    .line 2661
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v12

    .line 2663
    :cond_92
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2665
    :cond_95
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v12

    if-eqz v12, :cond_ac

    .line 2666
    invoke-direct {v8, v9, v14, v0, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v12

    if-eqz v12, :cond_ac

    .line 2668
    if-nez v13, :cond_a9

    .line 2669
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v12

    .line 2671
    :cond_a9
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2640
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v2    # "permissionName":Ljava/lang/String;
    :cond_ac
    :goto_ac
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, p4

    move-object/from16 v2, v19

    goto :goto_45

    .line 2646
    .restart local v2    # "permissionName":Ljava/lang/String;
    :catchall_b3
    move-exception v0

    :try_start_b4
    monitor-exit v12
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v0

    .line 2640
    .end local v19    # "updatedUserIds":[I
    .local v2, "updatedUserIds":[I
    :cond_b6
    move-object/from16 v19, v2

    .line 2675
    .end local v1    # "i":I
    .end local v2    # "updatedUserIds":[I
    .restart local v19    # "updatedUserIds":[I
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v12, v0

    .line 2676
    .local v12, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-eqz v0, :cond_db

    .line 2677
    array-length v0, v6

    const/4 v1, 0x0

    :goto_c4
    if-ge v1, v0, :cond_db

    aget v2, v6, v1

    .line 2678
    .local v2, "userId":I
    move/from16 v20, v0

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 2679
    const/4 v0, 0x1

    invoke-virtual {v12, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2677
    .end local v2    # "userId":I
    :cond_d6
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v20

    goto :goto_c4

    .line 2687
    :cond_db
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v0

    if-nez v0, :cond_f8

    .line 2688
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    .line 2689
    .local v0, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v1

    .line 2690
    .local v1, "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    move-object/from16 v22, v1

    move-object/from16 v20, v3

    move-object/from16 v23, v5

    move-object/from16 v21, v13

    move-object v13, v0

    move v5, v2

    .local v2, "uidTargetSdkVersion":I
    goto :goto_157

    .line 2692
    .end local v0    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v1    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v2    # "uidTargetSdkVersion":I
    :cond_f8
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2693
    .restart local v0    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2694
    .restart local v1    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v2, 0x2710

    .line 2695
    .restart local v2    # "uidTargetSdkVersion":I
    move/from16 v20, v2

    .end local v2    # "uidTargetSdkVersion":I
    .local v20, "uidTargetSdkVersion":I
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2696
    move-object/from16 v21, v13

    .end local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v21, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSharedUserAppId()I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 2697
    .local v2, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 2698
    .local v13, "packagesSize":I
    const/16 v22, 0x0

    move-object/from16 v23, v5

    move/from16 v5, v20

    move-object/from16 v20, v3

    move/from16 v3, v22

    .local v3, "i":I
    .local v5, "uidTargetSdkVersion":I
    .local v20, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_120
    if-ge v3, v13, :cond_152

    .line 2699
    nop

    .line 2700
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface/range {v22 .. v22}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;

    move-result-object v22

    .line 2701
    .local v22, "sharedUserPackage":Lcom/android/server/pm/pkg/AndroidPackageApi;
    if-nez v22, :cond_132

    .line 2702
    move-object/from16 v24, v2

    goto :goto_14d

    .line 2704
    :cond_132
    nop

    .line 2705
    move-object/from16 v24, v2

    .end local v2    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v24, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface/range {v22 .. v22}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    .line 2704
    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2706
    nop

    .line 2707
    invoke-interface/range {v22 .. v22}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getImplicitPermissions()Ljava/util/List;

    move-result-object v2

    .line 2706
    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2708
    nop

    .line 2709
    invoke-interface/range {v22 .. v22}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getTargetSdkVersion()I

    move-result v2

    .line 2708
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2698
    .end local v22    # "sharedUserPackage":Lcom/android/server/pm/pkg/AndroidPackageApi;
    :goto_14d
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v24

    goto :goto_120

    .end local v24    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v2    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_152
    move-object/from16 v24, v2

    .end local v2    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v24    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object v13, v0

    move-object/from16 v22, v1

    .line 2713
    .end local v0    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v1    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v24    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v13, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v22, "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_157
    iget-object v3, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2714
    :try_start_15a
    array-length v0, v6
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_c7f

    move-object/from16 v24, v3

    move/from16 v1, v18

    move-object/from16 v2, v19

    const/4 v3, 0x0

    .end local v18    # "runtimePermissionsRevoked":Z
    .end local v19    # "updatedUserIds":[I
    .local v1, "runtimePermissionsRevoked":Z
    .local v2, "updatedUserIds":[I
    :goto_162
    if-ge v3, v0, :cond_c38

    :try_start_164
    aget v18, v6, v3

    move/from16 v19, v18

    .line 2715
    .local v19, "userId":I
    move/from16 v25, v0

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;
    :try_end_16c
    .catchall {:try_start_164 .. :try_end_16c} :catchall_c19

    move-object/from16 v26, v6

    move/from16 v6, v19

    .end local v19    # "userId":I
    .local v6, "userId":I
    .local v26, "userIds":[I
    :try_start_170
    invoke-virtual {v0, v6}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v0

    .line 2716
    .local v0, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    move/from16 v18, v3

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    .line 2718
    .local v3, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v19
    :try_end_182
    .catchall {:try_start_170 .. :try_end_182} :catchall_bf9

    move/from16 v27, v1

    .end local v1    # "runtimePermissionsRevoked":Z
    .local v27, "runtimePermissionsRevoked":Z
    if-eqz v19, :cond_24a

    .line 2719
    :try_start_186
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_18a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_202

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v29, v28

    .line 2720
    .local v29, "permissionName":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;
    :try_end_19a
    .catchall {:try_start_186 .. :try_end_19a} :catchall_22d

    move-object/from16 v30, v4

    move-object/from16 v4, v29

    .end local v29    # "permissionName":Ljava/lang/String;
    .local v4, "permissionName":Ljava/lang/String;
    .local v30, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_19e
    invoke-virtual {v1, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    .line 2721
    .local v1, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v1, :cond_1a7

    .line 2722
    move-object/from16 v4, v30

    goto :goto_18a

    .line 2724
    :cond_1a7
    move-object/from16 v29, v4

    .end local v4    # "permissionName":Ljava/lang/String;
    .restart local v29    # "permissionName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_1ad
    .catchall {:try_start_19e .. :try_end_1ad} :catchall_1e5

    move-object/from16 v31, v12

    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v31, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :try_start_1af
    const-string v12, "android"

    invoke-static {v4, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 2725
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_1e0

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1e0

    .line 2726
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v4

    if-nez v4, :cond_1cf

    .line 2727
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v4

    if-eqz v4, :cond_1d4

    .line 2728
    :cond_1cf
    const/16 v4, 0x2000

    invoke-virtual {v3, v1, v4, v4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2732
    :cond_1d4
    const/16 v4, 0x17

    if-ge v5, v4, :cond_1e0

    .line 2733
    const/16 v4, 0x48

    invoke-virtual {v3, v1, v4, v4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2738
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 2741
    .end local v1    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v29    # "permissionName":Ljava/lang/String;
    :cond_1e0
    move-object/from16 v4, v30

    move-object/from16 v12, v31

    goto :goto_18a

    .line 3052
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v6    # "userId":I
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :catchall_1e5
    move-exception v0

    move-object/from16 v3, p4

    move/from16 v16, v5

    move/from16 v29, v7

    move-object v1, v8

    move-object/from16 v41, v12

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v26

    move-object/from16 v23, v30

    move v13, v10

    move-object/from16 v10, v24

    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto/16 :goto_c9c

    .line 2743
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "userId":I
    .restart local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :cond_202
    move-object/from16 v30, v4

    move-object/from16 v31, v12

    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    .line 2744
    invoke-static {v2, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1
    :try_end_20e
    .catchall {:try_start_1af .. :try_end_20e} :catchall_210

    move-object v2, v1

    .end local v2    # "updatedUserIds":[I
    .local v1, "updatedUserIds":[I
    goto :goto_24e

    .line 3052
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "updatedUserIds":[I
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v6    # "userId":I
    .restart local v2    # "updatedUserIds":[I
    :catchall_210
    move-exception v0

    move-object/from16 v3, p4

    move/from16 v16, v5

    move/from16 v29, v7

    move-object v1, v8

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v26

    move-object/from16 v23, v30

    move-object/from16 v41, v31

    move v13, v10

    move-object/from16 v10, v24

    goto/16 :goto_c9c

    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :catchall_22d
    move-exception v0

    move-object/from16 v3, p4

    move/from16 v16, v5

    move/from16 v29, v7

    move-object v1, v8

    move-object/from16 v41, v12

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v26

    move-object/from16 v23, v4

    move v13, v10

    move-object/from16 v10, v24

    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto/16 :goto_c9c

    .line 2718
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "userId":I
    .restart local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :cond_24a
    move-object/from16 v30, v4

    move-object/from16 v31, v12

    .line 2747
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :goto_24e
    move-object v1, v3

    .line 2749
    .local v1, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    const/4 v4, 0x0

    .line 2751
    .local v4, "changedInstallPermission":Z
    if-eqz v10, :cond_2b7

    .line 2752
    :try_start_252
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v12
    :try_end_256
    .catchall {:try_start_252 .. :try_end_256} :catchall_29a

    move/from16 v29, v5

    const/4 v5, 0x0

    .end local v5    # "uidTargetSdkVersion":I
    .local v29, "uidTargetSdkVersion":I
    :try_start_259
    invoke-virtual {v0, v12, v5}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 2753
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v12

    if-nez v12, :cond_26d

    .line 2754
    new-instance v12, Lcom/android/server/pm/permission/UidPermissionState;

    invoke-direct {v12, v3}, Lcom/android/server/pm/permission/UidPermissionState;-><init>(Lcom/android/server/pm/permission/UidPermissionState;)V

    move-object v1, v12

    .line 2755
    invoke-virtual {v3}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    move-object v12, v1

    goto :goto_2bb

    .line 2762
    :cond_26d
    invoke-direct {v8, v13, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeUnusedSharedUserPermissionsLocked(Ljava/util/Collection;Lcom/android/server/pm/permission/UidPermissionState;)Z

    move-result v12

    if-eqz v12, :cond_2ba

    .line 2764
    invoke-static {v2, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v12
    :try_end_277
    .catchall {:try_start_259 .. :try_end_277} :catchall_27d

    move-object v2, v12

    .line 2765
    const/4 v12, 0x1

    move/from16 v27, v12

    move-object v12, v1

    .end local v27    # "runtimePermissionsRevoked":Z
    .local v12, "runtimePermissionsRevoked":Z
    goto :goto_2bb

    .line 3052
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "changedInstallPermission":Z
    .end local v6    # "userId":I
    .end local v12    # "runtimePermissionsRevoked":Z
    .restart local v27    # "runtimePermissionsRevoked":Z
    :catchall_27d
    move-exception v0

    move-object/from16 v3, p4

    move-object v1, v8

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move-object/from16 v41, v31

    move/from16 v29, v7

    move v13, v10

    move-object/from16 v10, v24

    goto/16 :goto_c9c

    .end local v29    # "uidTargetSdkVersion":I
    .restart local v5    # "uidTargetSdkVersion":I
    :catchall_29a
    move-exception v0

    move-object/from16 v3, p4

    move/from16 v16, v5

    move/from16 v29, v7

    move-object v1, v8

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v26

    move-object/from16 v23, v30

    move-object/from16 v41, v31

    move v13, v10

    move-object/from16 v10, v24

    .end local v5    # "uidTargetSdkVersion":I
    .restart local v29    # "uidTargetSdkVersion":I
    goto/16 :goto_c9c

    .line 2751
    .end local v29    # "uidTargetSdkVersion":I
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "changedInstallPermission":Z
    .restart local v5    # "uidTargetSdkVersion":I
    .restart local v6    # "userId":I
    :cond_2b7
    move/from16 v29, v5

    const/4 v5, 0x0

    .line 2770
    .end local v5    # "uidTargetSdkVersion":I
    .restart local v29    # "uidTargetSdkVersion":I
    :cond_2ba
    move-object v12, v1

    .end local v1    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v12, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_2bb
    :try_start_2bb
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2771
    .local v1, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2c5
    .catchall {:try_start_2bb .. :try_end_2c5} :catchall_bd9

    move-object/from16 v19, v2

    .end local v2    # "updatedUserIds":[I
    .local v19, "updatedUserIds":[I
    :try_start_2c7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2e7
    .catchall {:try_start_2c7 .. :try_end_2e7} :catchall_bb9

    move-object v5, v2

    .line 2773
    .local v5, "friendlyName":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v44, v19

    move/from16 v19, v4

    move-object/from16 v4, v44

    .local v2, "i":I
    .local v4, "updatedUserIds":[I
    .local v19, "changedInstallPermission":Z
    :goto_2ef
    if-ge v2, v7, :cond_aca

    .line 2774
    :try_start_2f1
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;
    :try_end_2f7
    .catchall {:try_start_2f1 .. :try_end_2f7} :catchall_aa6

    move-object/from16 v33, v32

    .line 2776
    .local v33, "permName":Ljava/lang/String;
    move/from16 v32, v7

    .end local v7    # "requestedPermissionsSize":I
    .local v32, "requestedPermissionsSize":I
    :try_start_2fb
    iget-object v7, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;
    :try_end_2fd
    .catchall {:try_start_2fb .. :try_end_2fd} :catchall_a82

    move-object/from16 v34, v13

    move-object/from16 v13, v33

    .end local v33    # "permName":Ljava/lang/String;
    .local v13, "permName":Ljava/lang/String;
    .local v34, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :try_start_301
    invoke-virtual {v7, v13}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7
    :try_end_305
    .catchall {:try_start_301 .. :try_end_305} :catchall_a60

    .line 2777
    .local v7, "bp":Lcom/android/server/pm/permission/Permission;
    nop

    .line 2778
    move-object/from16 v33, v15

    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v33, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_308
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v15

    const/16 v10, 0x17

    if-lt v15, v10, :cond_312

    const/4 v15, 0x1

    goto :goto_313

    :cond_312
    const/4 v15, 0x0

    .line 2780
    .local v15, "appSupportsRuntimePermissions":Z
    :goto_313
    sget-boolean v28, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    :try_end_315
    .catchall {:try_start_308 .. :try_end_315} :catchall_a40

    if-eqz v28, :cond_368

    if-eqz v7, :cond_368

    .line 2781
    :try_start_319
    const-string v10, "PackageManager"

    move/from16 v35, v2

    .end local v2    # "i":I
    .local v35, "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_322
    .catchall {:try_start_319 .. :try_end_322} :catchall_34a

    move-object/from16 v36, v4

    .end local v4    # "updatedUserIds":[I
    .local v36, "updatedUserIds":[I
    :try_start_324
    const-string v4, "Package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " checking "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36c

    .line 3052
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v35    # "i":I
    .end local v36    # "updatedUserIds":[I
    .restart local v4    # "updatedUserIds":[I
    :catchall_34a
    move-exception v0

    move-object/from16 v36, v4

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v1, v8

    move-object/from16 v43, v14

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move-object/from16 v41, v31

    move/from16 v29, v32

    move-object/from16 v2, v36

    .end local v4    # "updatedUserIds":[I
    .restart local v36    # "updatedUserIds":[I
    goto/16 :goto_c9c

    .line 2780
    .end local v36    # "updatedUserIds":[I
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "updatedUserIds":[I
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    :cond_368
    move/from16 v35, v2

    move-object/from16 v36, v4

    .line 2788
    .end local v2    # "i":I
    .end local v4    # "updatedUserIds":[I
    .restart local v35    # "i":I
    .restart local v36    # "updatedUserIds":[I
    :goto_36c
    if-nez v7, :cond_3e1

    .line 2789
    if-eqz v11, :cond_387

    .line 2790
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2789
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37b

    goto :goto_387

    :cond_37b
    move-object/from16 v42, v0

    move-object/from16 v37, v1

    move-object/from16 v43, v14

    move-object/from16 v41, v31

    move-object/from16 v9, v36

    goto/16 :goto_751

    .line 2791
    :cond_387
    :goto_387
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v2, :cond_3b9

    .line 2792
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown permission "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " in package "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ad
    .catchall {:try_start_324 .. :try_end_3ad} :catchall_3c5

    move-object/from16 v42, v0

    move-object/from16 v37, v1

    move-object/from16 v43, v14

    move-object/from16 v41, v31

    move-object/from16 v9, v36

    goto/16 :goto_751

    .line 2791
    :cond_3b9
    move-object/from16 v42, v0

    move-object/from16 v37, v1

    move-object/from16 v43, v14

    move-object/from16 v41, v31

    move-object/from16 v9, v36

    goto/16 :goto_751

    .line 3052
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v35    # "i":I
    :catchall_3c5
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v1, v8

    move-object/from16 v43, v14

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move-object/from16 v41, v31

    move/from16 v29, v32

    move-object/from16 v2, v36

    goto/16 :goto_c9c

    .line 2801
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v35    # "i":I
    :cond_3e1
    :try_start_3e1
    invoke-virtual {v12, v13}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v2
    :try_end_3e5
    .catchall {:try_start_3e1 .. :try_end_3e5} :catchall_a1f

    if-nez v2, :cond_414

    .line 2802
    :try_start_3e7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_414

    .line 2804
    invoke-virtual {v1, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2805
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v2, :cond_414

    .line 2806
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " is newly added for "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_414
    .catchall {:try_start_3e7 .. :try_end_414} :catchall_3c5

    .line 2822
    :cond_414
    :try_start_414
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v2
    :try_end_418
    .catchall {:try_start_414 .. :try_end_418} :catchall_a1f

    if-eqz v2, :cond_45e

    if-nez v15, :cond_45e

    .line 2823
    :try_start_41c
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v2, :cond_452

    .line 2824
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Denying runtime-only permission "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " for package "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_446
    .catchall {:try_start_41c .. :try_end_446} :catchall_3c5

    move-object/from16 v42, v0

    move-object/from16 v37, v1

    move-object/from16 v43, v14

    move-object/from16 v41, v31

    move-object/from16 v9, v36

    goto/16 :goto_751

    .line 2823
    :cond_452
    move-object/from16 v42, v0

    move-object/from16 v37, v1

    move-object/from16 v43, v14

    move-object/from16 v41, v31

    move-object/from16 v9, v36

    goto/16 :goto_751

    .line 2830
    :cond_45e
    :try_start_45e
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2833
    .local v2, "perm":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v4
    :try_end_466
    .catchall {:try_start_45e .. :try_end_466} :catchall_a1f

    if-eqz v4, :cond_471

    .line 2834
    :try_start_468
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v2, v10}, Lcom/android/server/pm/permission/PermissionRegistry;->addAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_471
    .catchall {:try_start_468 .. :try_end_471} :catchall_3c5

    .line 2837
    :cond_471
    const/4 v4, 0x1

    .line 2838
    .local v4, "shouldGrantNormalPermission":Z
    :try_start_472
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v10
    :try_end_476
    .catchall {:try_start_472 .. :try_end_476} :catchall_a1f

    if-eqz v10, :cond_499

    :try_start_478
    invoke-virtual {v12, v2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_499

    .line 2842
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v10

    if-nez v10, :cond_499

    .line 2843
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2842
    invoke-virtual {v0, v10}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_499

    .line 2849
    iget-boolean v10, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    if-eqz v10, :cond_499

    invoke-static {v2, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isCompatPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v10
    :try_end_496
    .catchall {:try_start_478 .. :try_end_496} :catchall_3c5

    if-nez v10, :cond_499

    .line 2850
    const/4 v4, 0x0

    .line 2855
    :cond_499
    :try_start_499
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z
    :try_end_49b
    .catchall {:try_start_499 .. :try_end_49b} :catchall_a1f

    if-eqz v10, :cond_4c6

    .line 2856
    :try_start_49d
    const-string v10, "PackageManager"

    move-object/from16 v37, v1

    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v37, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Considering granting permission "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " to package "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2857
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2856
    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c5
    .catchall {:try_start_49d .. :try_end_4c5} :catchall_3c5

    goto :goto_4c8

    .line 2855
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4c6
    move-object/from16 v37, v1

    .line 2860
    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_4c8
    :try_start_4c8
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v1
    :try_end_4cc
    .catchall {:try_start_4c8 .. :try_end_4cc} :catchall_a1f

    if-nez v1, :cond_796

    :try_start_4ce
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v1

    if-nez v1, :cond_796

    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_4e4

    move-object/from16 v42, v0

    move-object/from16 v43, v14

    move-object/from16 v41, v31

    move-object/from16 v9, v36

    goto/16 :goto_79e

    .line 2909
    :cond_4e4
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_71f

    .line 2910
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v1

    .line 2911
    .local v1, "hardRestricted":Z
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v11
    :try_end_4f2
    .catchall {:try_start_4ce .. :try_end_4f2} :catchall_776

    .line 2916
    .local v11, "softRestricted":Z
    nop

    .line 2917
    move-object/from16 v10, v31

    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v10, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :try_start_4f5
    invoke-virtual {v10, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v31

    .line 2919
    .local v31, "permissionPolicyInitialized":Z
    invoke-virtual {v12, v2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v38
    :try_end_4fd
    .catchall {:try_start_4f5 .. :try_end_4fd} :catchall_6ff

    .line 2920
    .local v38, "origPermState":Lcom/android/server/pm/permission/PermissionState;
    if-eqz v38, :cond_520

    :try_start_4ff
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v39
    :try_end_503
    .catchall {:try_start_4ff .. :try_end_503} :catchall_504

    goto :goto_522

    .line 3052
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "hardRestricted":Z
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v11    # "softRestricted":Z
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v31    # "permissionPolicyInitialized":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    :catchall_504
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v1, v8

    move-object/from16 v41, v10

    move-object/from16 v43, v14

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v2, v36

    goto/16 :goto_c9c

    .line 2920
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "hardRestricted":Z
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v11    # "softRestricted":Z
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v31    # "permissionPolicyInitialized":Z
    .restart local v35    # "i":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    :cond_520
    const/16 v39, 0x0

    :goto_522
    move/from16 v40, v39

    .line 2922
    .local v40, "flags":I
    const/16 v39, 0x0

    .line 2924
    .local v39, "wasChanged":Z
    nop

    .line 2925
    move-object/from16 v41, v10

    .end local v10    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v41, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :try_start_529
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v10

    and-int/lit16 v10, v10, 0x3800

    if-eqz v10, :cond_537

    const/4 v10, 0x1

    goto :goto_538

    :cond_537
    const/4 v10, 0x0

    .line 2927
    .local v10, "restrictionExempt":Z
    :goto_538
    nop

    .line 2928
    move-object/from16 v42, v0

    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .local v42, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2927
    invoke-virtual {v12, v0}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v0
    :try_end_543
    .catchall {:try_start_529 .. :try_end_543} :catchall_6e1

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_549

    const/4 v0, 0x1

    goto :goto_54a

    :cond_549
    const/4 v0, 0x0

    .line 2930
    .local v0, "restrictionApplied":Z
    :goto_54a
    if-eqz v15, :cond_639

    .line 2932
    if-eqz v31, :cond_58e

    if-eqz v1, :cond_58e

    .line 2933
    if-nez v10, :cond_58b

    .line 2934
    if-eqz v38, :cond_57d

    :try_start_554
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v43

    if-eqz v43, :cond_57d

    .line 2935
    invoke-virtual {v3, v7}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v43
    :try_end_55e
    .catchall {:try_start_554 .. :try_end_55e} :catchall_563

    if-eqz v43, :cond_57d

    .line 2936
    const/16 v39, 0x1

    goto :goto_57d

    .line 3052
    .end local v0    # "restrictionApplied":Z
    .end local v1    # "hardRestricted":Z
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v10    # "restrictionExempt":Z
    .end local v11    # "softRestricted":Z
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v31    # "permissionPolicyInitialized":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v39    # "wasChanged":Z
    .end local v40    # "flags":I
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :catchall_563
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v1, v8

    move-object/from16 v43, v14

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v2, v36

    goto/16 :goto_c9c

    .line 2938
    .restart local v0    # "restrictionApplied":Z
    .restart local v1    # "hardRestricted":Z
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v10    # "restrictionExempt":Z
    .restart local v11    # "softRestricted":Z
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v31    # "permissionPolicyInitialized":Z
    .restart local v35    # "i":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .restart local v39    # "wasChanged":Z
    .restart local v40    # "flags":I
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_57d
    :goto_57d
    if-nez v0, :cond_588

    .line 2939
    move/from16 v9, v40

    .end local v40    # "flags":I
    .local v9, "flags":I
    or-int/lit16 v9, v9, 0x4000

    .line 2940
    const/16 v39, 0x1

    move/from16 v40, v9

    goto :goto_5a1

    .line 2938
    .end local v9    # "flags":I
    .restart local v40    # "flags":I
    :cond_588
    move/from16 v9, v40

    .end local v40    # "flags":I
    .restart local v9    # "flags":I
    goto :goto_5a1

    .line 2933
    .end local v9    # "flags":I
    .restart local v40    # "flags":I
    :cond_58b
    move/from16 v9, v40

    .end local v40    # "flags":I
    .restart local v9    # "flags":I
    goto :goto_59f

    .line 2932
    .end local v9    # "flags":I
    .restart local v40    # "flags":I
    :cond_58e
    move/from16 v9, v40

    .line 2944
    .end local v40    # "flags":I
    .restart local v9    # "flags":I
    if-eqz v31, :cond_59f

    if-eqz v11, :cond_59f

    .line 2947
    if-nez v10, :cond_59f

    if-nez v0, :cond_59f

    .line 2948
    or-int/lit16 v9, v9, 0x4000

    .line 2949
    const/16 v39, 0x1

    move/from16 v40, v9

    goto :goto_5a1

    .line 2954
    :cond_59f
    :goto_59f
    move/from16 v40, v9

    .end local v9    # "flags":I
    .restart local v40    # "flags":I
    :goto_5a1
    :try_start_5a1
    sget-object v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v43
    :try_end_5a7
    .catchall {:try_start_5a1 .. :try_end_5a7} :catchall_61d

    if-nez v43, :cond_5b1

    .line 2955
    and-int/lit8 v43, v40, 0x40

    if-eqz v43, :cond_5b1

    .line 2956
    and-int/lit8 v40, v40, -0x41

    .line 2957
    const/16 v39, 0x1

    .line 2961
    :cond_5b1
    and-int/lit8 v43, v40, 0x8

    if-eqz v43, :cond_5e0

    .line 2963
    move-object/from16 v43, v14

    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v43, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :try_start_5b7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v14

    .line 2962
    invoke-direct {v8, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_5e2

    .line 2964
    and-int/lit8 v40, v40, -0x9

    .line 2965
    const/16 v39, 0x1

    goto :goto_5f8

    .line 3052
    .end local v0    # "restrictionApplied":Z
    .end local v1    # "hardRestricted":Z
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v10    # "restrictionExempt":Z
    .end local v11    # "softRestricted":Z
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v31    # "permissionPolicyInitialized":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v39    # "wasChanged":Z
    .end local v40    # "flags":I
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :catchall_5c6
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v1, v8

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v2, v36

    goto/16 :goto_c9c

    .line 2961
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v0    # "restrictionApplied":Z
    .restart local v1    # "hardRestricted":Z
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v10    # "restrictionExempt":Z
    .restart local v11    # "softRestricted":Z
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v31    # "permissionPolicyInitialized":Z
    .restart local v35    # "i":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .restart local v39    # "wasChanged":Z
    .restart local v40    # "flags":I
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_5e0
    move-object/from16 v43, v14

    .line 2967
    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_5e2
    if-eqz v31, :cond_5e8

    if-eqz v1, :cond_5e8

    if-eqz v10, :cond_5f8

    .line 2969
    :cond_5e8
    if-eqz v38, :cond_5f8

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v14

    if-eqz v14, :cond_5f8

    .line 2970
    invoke-virtual {v3, v7}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v14

    if-nez v14, :cond_5f8

    .line 2971
    const/16 v39, 0x1

    .line 2975
    :cond_5f8
    :goto_5f8
    iget-boolean v14, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    if-eqz v14, :cond_619

    invoke-interface {v9, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_619

    .line 2976
    invoke-virtual {v3, v7}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 2977
    if-eqz v38, :cond_60d

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v9

    if-nez v9, :cond_619

    .line 2978
    :cond_60d
    invoke-virtual {v3, v7}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v9
    :try_end_611
    .catchall {:try_start_5b7 .. :try_end_611} :catchall_5c6

    if-eqz v9, :cond_619

    .line 2979
    const/16 v39, 0x1

    move/from16 v8, v40

    goto/16 :goto_696

    .line 3012
    :cond_619
    move/from16 v8, v40

    goto/16 :goto_696

    .line 3052
    .end local v0    # "restrictionApplied":Z
    .end local v1    # "hardRestricted":Z
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v10    # "restrictionExempt":Z
    .end local v11    # "softRestricted":Z
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v31    # "permissionPolicyInitialized":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v39    # "wasChanged":Z
    .end local v40    # "flags":I
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_61d
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v1, v8

    move-object/from16 v43, v14

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v2, v36

    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto/16 :goto_c9c

    .line 2984
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v0    # "restrictionApplied":Z
    .restart local v1    # "hardRestricted":Z
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v10    # "restrictionExempt":Z
    .restart local v11    # "softRestricted":Z
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v31    # "permissionPolicyInitialized":Z
    .restart local v35    # "i":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .restart local v39    # "wasChanged":Z
    .restart local v40    # "flags":I
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_639
    move-object/from16 v43, v14

    move/from16 v9, v40

    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v40    # "flags":I
    .restart local v9    # "flags":I
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v38, :cond_673

    .line 2986
    :try_start_63f
    const-string v14, "android"

    .line 2987
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2986
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_673

    .line 2988
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v8
    :try_end_64f
    .catchall {:try_start_63f .. :try_end_64f} :catchall_658

    if-nez v8, :cond_673

    .line 2989
    or-int/lit8 v40, v9, 0x48

    .line 2991
    .end local v9    # "flags":I
    .restart local v40    # "flags":I
    const/16 v39, 0x1

    move/from16 v9, v40

    goto :goto_673

    .line 3052
    .end local v0    # "restrictionApplied":Z
    .end local v1    # "hardRestricted":Z
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v10    # "restrictionExempt":Z
    .end local v11    # "softRestricted":Z
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v31    # "permissionPolicyInitialized":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v39    # "wasChanged":Z
    .end local v40    # "flags":I
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :catchall_658
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v2, v36

    goto/16 :goto_c9c

    .line 2996
    .restart local v0    # "restrictionApplied":Z
    .restart local v1    # "hardRestricted":Z
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v9    # "flags":I
    .restart local v10    # "restrictionExempt":Z
    .restart local v11    # "softRestricted":Z
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v31    # "permissionPolicyInitialized":Z
    .restart local v35    # "i":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .restart local v39    # "wasChanged":Z
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_673
    :goto_673
    :try_start_673
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v8
    :try_end_67b
    .catchall {:try_start_673 .. :try_end_67b} :catchall_6c5

    if-nez v8, :cond_686

    .line 2997
    :try_start_67d
    invoke-virtual {v3, v7}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v8
    :try_end_681
    .catchall {:try_start_67d .. :try_end_681} :catchall_658

    if-eqz v8, :cond_686

    .line 2998
    const/4 v8, 0x1

    move/from16 v39, v8

    .line 3003
    :cond_686
    if-eqz v31, :cond_695

    if-nez v1, :cond_68c

    if-eqz v11, :cond_695

    :cond_68c
    if-nez v10, :cond_695

    if-nez v0, :cond_695

    .line 3006
    or-int/lit16 v8, v9, 0x4000

    .line 3007
    .end local v9    # "flags":I
    .local v8, "flags":I
    const/16 v39, 0x1

    goto :goto_696

    .line 3012
    .end local v8    # "flags":I
    .restart local v9    # "flags":I
    :cond_695
    move v8, v9

    .end local v9    # "flags":I
    .restart local v8    # "flags":I
    :goto_696
    if-eqz v31, :cond_6a8

    .line 3013
    if-nez v1, :cond_69c

    if-eqz v11, :cond_69e

    :cond_69c
    if-eqz v10, :cond_6a8

    .line 3014
    :cond_69e
    if-eqz v0, :cond_6a8

    .line 3015
    and-int/lit16 v8, v8, -0x4001

    .line 3017
    if-nez v15, :cond_6a6

    .line 3018
    or-int/lit8 v8, v8, 0x40

    .line 3020
    :cond_6a6
    const/16 v39, 0x1

    .line 3025
    :cond_6a8
    if-eqz v39, :cond_6b2

    .line 3026
    move-object/from16 v9, v36

    .end local v36    # "updatedUserIds":[I
    .local v9, "updatedUserIds":[I
    :try_start_6ac
    invoke-static {v9, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v14

    move-object v9, v14

    goto :goto_6b4

    .line 3025
    .end local v9    # "updatedUserIds":[I
    .restart local v36    # "updatedUserIds":[I
    :cond_6b2
    move-object/from16 v9, v36

    .line 3029
    .end local v36    # "updatedUserIds":[I
    .restart local v9    # "updatedUserIds":[I
    :goto_6b4
    const v14, 0x3fbff

    invoke-virtual {v3, v7, v14, v8}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3031
    move-object v4, v9

    move-object/from16 v10, v20

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v43

    .end local v0    # "restrictionApplied":Z
    .end local v1    # "hardRestricted":Z
    .end local v8    # "flags":I
    .end local v10    # "restrictionExempt":Z
    .end local v11    # "softRestricted":Z
    .end local v31    # "permissionPolicyInitialized":Z
    .end local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v39    # "wasChanged":Z
    goto/16 :goto_99a

    .line 3052
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v9    # "updatedUserIds":[I
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v36    # "updatedUserIds":[I
    :catchall_6c5
    move-exception v0

    move-object/from16 v9, v36

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v2, v9

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v36    # "updatedUserIds":[I
    .restart local v9    # "updatedUserIds":[I
    goto/16 :goto_c9c

    .end local v9    # "updatedUserIds":[I
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v36    # "updatedUserIds":[I
    :catchall_6e1
    move-exception v0

    move-object/from16 v9, v36

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v2, v9

    move-object/from16 v43, v14

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v36    # "updatedUserIds":[I
    .restart local v9    # "updatedUserIds":[I
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto/16 :goto_c9c

    .end local v9    # "updatedUserIds":[I
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v10, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v36    # "updatedUserIds":[I
    :catchall_6ff
    move-exception v0

    move-object/from16 v41, v10

    move-object/from16 v9, v36

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v2, v9

    move-object/from16 v43, v14

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v10    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v36    # "updatedUserIds":[I
    .restart local v9    # "updatedUserIds":[I
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto/16 :goto_c9c

    .line 3032
    .end local v9    # "updatedUserIds":[I
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .local v31, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v35    # "i":I
    .restart local v36    # "updatedUserIds":[I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_71f
    move-object/from16 v42, v0

    move-object/from16 v43, v14

    move-object/from16 v41, v31

    move-object/from16 v9, v36

    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v36    # "updatedUserIds":[I
    .restart local v9    # "updatedUserIds":[I
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown permission protection "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getProtection()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " for permission "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3033
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3032
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_751
    .catchall {:try_start_6ac .. :try_end_751} :catchall_75c

    .line 2773
    .end local v2    # "perm":Ljava/lang/String;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v9    # "updatedUserIds":[I
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .local v1, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v36    # "updatedUserIds":[I
    :goto_751
    move-object v4, v9

    move-object/from16 v10, v20

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v43

    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v36    # "updatedUserIds":[I
    .restart local v9    # "updatedUserIds":[I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto/16 :goto_99a

    .line 3052
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v19    # "changedInstallPermission":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :catchall_75c
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v2, v9

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    goto/16 :goto_c9c

    .end local v9    # "updatedUserIds":[I
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v36    # "updatedUserIds":[I
    :catchall_776
    move-exception v0

    move-object/from16 v41, v31

    move-object/from16 v9, v36

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v2, v9

    move-object/from16 v43, v14

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v36    # "updatedUserIds":[I
    .restart local v9    # "updatedUserIds":[I
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto/16 :goto_c9c

    .line 2860
    .end local v9    # "updatedUserIds":[I
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v35    # "i":I
    .restart local v36    # "updatedUserIds":[I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_796
    move-object/from16 v42, v0

    move-object/from16 v43, v14

    move-object/from16 v41, v31

    move-object/from16 v9, v36

    .line 2861
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v36    # "updatedUserIds":[I
    .restart local v9    # "updatedUserIds":[I
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_79e
    :try_start_79e
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_7b1

    if-nez v4, :cond_7a7

    goto :goto_7b1

    :cond_7a7
    move-object/from16 v10, v20

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v30

    goto/16 :goto_8b1

    .line 2862
    :cond_7b1
    :goto_7b1
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v0
    :try_end_7b5
    .catchall {:try_start_79e .. :try_end_7b5} :catchall_a05

    if-eqz v0, :cond_854

    .line 2863
    :try_start_7b7
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v0
    :try_end_7bb
    .catchall {:try_start_7b7 .. :try_end_7bb} :catchall_83a

    if-eqz v0, :cond_7e6

    move-object/from16 v8, v30

    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v8, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_7bf
    invoke-static {v8, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0
    :try_end_7c3
    .catchall {:try_start_7bf .. :try_end_7c3} :catchall_7cc

    if-eqz v0, :cond_7c6

    goto :goto_7e8

    :cond_7c6
    move-object/from16 v10, v20

    move-object/from16 v11, v23

    goto/16 :goto_85a

    .line 3052
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :catchall_7cc
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v2, v9

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move/from16 v16, v29

    move/from16 v29, v32

    move-object/from16 v9, p1

    move-object/from16 v23, v8

    move-object/from16 v8, v26

    goto/16 :goto_c9c

    .line 2863
    .end local v8    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v35    # "i":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_7e6
    move-object/from16 v8, v30

    .line 2865
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_7e8
    move-object/from16 v10, v20

    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v10, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_7ea
    invoke-static {v10, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_818

    .line 2867
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v0
    :try_end_7f4
    .catchall {:try_start_7ea .. :try_end_7f4} :catchall_81e

    if-eqz v0, :cond_7ff

    move-object/from16 v11, v23

    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_7f8
    invoke-static {v11, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80d

    goto :goto_801

    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_7ff
    move-object/from16 v11, v23

    .line 2869
    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_801
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_80d

    .line 2870
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v0

    if-eqz v0, :cond_85a

    .line 2871
    :cond_80d
    invoke-virtual {v12, v13}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0
    :try_end_811
    .catchall {:try_start_7f8 .. :try_end_811} :catchall_871

    if-nez v0, :cond_814

    goto :goto_85a

    :cond_814
    move-object/from16 v14, v21

    goto/16 :goto_8b1

    .line 2865
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_818
    move-object/from16 v11, v23

    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v14, v21

    goto/16 :goto_8b1

    .line 3052
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_81e
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v2, v9

    move-object/from16 v20, v10

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move/from16 v16, v29

    move/from16 v29, v32

    move-object/from16 v9, p1

    move-object/from16 v23, v8

    move-object/from16 v8, v26

    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_c9c

    .end local v8    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_83a
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v2, v9

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_c9c

    .line 2862
    .end local v8    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v35    # "i":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_854
    move-object/from16 v10, v20

    move-object/from16 v11, v23

    move-object/from16 v8, v30

    .line 2873
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_85a
    :goto_85a
    :try_start_85a
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v0
    :try_end_85e
    .catchall {:try_start_85a .. :try_end_85e} :catchall_9eb

    if-eqz v0, :cond_8fb

    .line 2874
    :try_start_860
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v0
    :try_end_864
    .catchall {:try_start_860 .. :try_end_864} :catchall_8e1

    if-eqz v0, :cond_88b

    :try_start_866
    invoke-static {v8, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0
    :try_end_86a
    .catchall {:try_start_866 .. :try_end_86a} :catchall_871

    if-eqz v0, :cond_86d

    goto :goto_88b

    :cond_86d
    move-object/from16 v14, v21

    goto/16 :goto_8fd

    .line 3052
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :catchall_871
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v23, v8

    move-object v2, v9

    move-object/from16 v20, v10

    move-object/from16 v14, v21

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move/from16 v29, v32

    move-object/from16 v9, p1

    goto/16 :goto_c9c

    .line 2876
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v35    # "i":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_88b
    :goto_88b
    move-object/from16 v14, v21

    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_88d
    invoke-static {v14, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b1

    .line 2878
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_89f

    invoke-static {v11, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8ab

    .line 2880
    :cond_89f
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_8ab

    .line 2881
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v0

    if-eqz v0, :cond_8fd

    .line 2882
    :cond_8ab
    invoke-virtual {v12, v13}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8fd

    .line 2885
    :cond_8b1
    :goto_8b1
    invoke-virtual {v3, v7}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v0
    :try_end_8b5
    .catchall {:try_start_88d .. :try_end_8b5} :catchall_8c9

    if-eqz v0, :cond_8c1

    .line 2886
    const/16 v19, 0x1

    move/from16 v20, v4

    move-object/from16 v30, v8

    move-object/from16 v8, v43

    goto/16 :goto_987

    .line 2885
    :cond_8c1
    move/from16 v20, v4

    move-object/from16 v30, v8

    move-object/from16 v8, v43

    goto/16 :goto_987

    .line 3052
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v19    # "changedInstallPermission":Z
    .end local v35    # "i":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :catchall_8c9
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v23, v8

    move-object v2, v9

    move-object/from16 v20, v10

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move/from16 v29, v32

    move-object/from16 v9, p1

    goto/16 :goto_c9c

    .end local v14    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_8e1
    move-exception v0

    move-object/from16 v14, v21

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v23, v8

    move-object v2, v9

    move-object/from16 v20, v10

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_c9c

    .line 2873
    .end local v14    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "perm":Ljava/lang/String;
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "shouldGrantNormalPermission":Z
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "changedInstallPermission":Z
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v35    # "i":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_8fb
    move-object/from16 v14, v21

    .line 2889
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_8fd
    :goto_8fd
    :try_start_8fd
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_979

    .line 2890
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0
    :try_end_909
    .catchall {:try_start_8fd .. :try_end_909} :catchall_9d3

    .line 2891
    .local v0, "wasGranted":Z
    if-nez v0, :cond_919

    :try_start_90b
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v1
    :try_end_90f
    .catchall {:try_start_90b .. :try_end_90f} :catchall_8c9

    if-eqz v1, :cond_912

    goto :goto_919

    :cond_912
    move/from16 v20, v4

    move-object/from16 v30, v8

    move-object/from16 v8, v43

    goto :goto_97f

    .line 2892
    :cond_919
    :goto_919
    :try_start_919
    const-string v1, "PackageManager"

    move/from16 v20, v4

    .end local v4    # "shouldGrantNormalPermission":Z
    .local v20, "shouldGrantNormalPermission":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_922
    .catchall {:try_start_919 .. :try_end_922} :catchall_9d3

    if-eqz v0, :cond_927

    :try_start_924
    const-string v21, "Un-granting"
    :try_end_926
    .catchall {:try_start_924 .. :try_end_926} :catchall_8c9

    goto :goto_929

    :cond_927
    :try_start_927
    const-string v21, "Not granting"

    :goto_929
    move/from16 v23, v0

    move-object/from16 v0, v21

    .end local v0    # "wasGranted":Z
    .local v23, "wasGranted":Z
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " permission "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " from package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (protectionLevel="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2895
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " flags=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_959
    .catchall {:try_start_927 .. :try_end_959} :catchall_9d3

    .line 2897
    move-object/from16 v4, p1

    move-object/from16 v30, v8

    move-object/from16 v8, v43

    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_95f
    invoke-static {v4, v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2892
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97f

    .line 2889
    .end local v20    # "shouldGrantNormalPermission":Z
    .end local v23    # "wasGranted":Z
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "shouldGrantNormalPermission":Z
    .local v8, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_979
    move/from16 v20, v4

    move-object/from16 v30, v8

    move-object/from16 v8, v43

    .line 2902
    .end local v4    # "shouldGrantNormalPermission":Z
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v20    # "shouldGrantNormalPermission":Z
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_97f
    invoke-virtual {v3, v7}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v0

    if-eqz v0, :cond_987

    .line 2903
    const/16 v19, 0x1

    .line 2906
    :cond_987
    :goto_987
    invoke-virtual {v12, v2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v0

    .line 2907
    .local v0, "origPermState":Lcom/android/server/pm/permission/PermissionState;
    if-eqz v0, :cond_992

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v1

    goto :goto_993

    :cond_992
    const/4 v1, 0x0

    .line 2908
    .local v1, "flags":I
    :goto_993
    const v4, 0x3fbff

    invoke-virtual {v3, v7, v4, v1}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z
    :try_end_999
    .catchall {:try_start_95f .. :try_end_999} :catchall_9b9

    .line 2909
    move-object v4, v9

    .line 2773
    .end local v0    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v1    # "flags":I
    .end local v2    # "perm":Ljava/lang/String;
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v9    # "updatedUserIds":[I
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v20    # "shouldGrantNormalPermission":Z
    .local v4, "updatedUserIds":[I
    :goto_99a
    add-int/lit8 v2, v35, 0x1

    move-object/from16 v9, p1

    move-object/from16 v20, v10

    move-object/from16 v23, v11

    move-object/from16 v21, v14

    move/from16 v7, v32

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v1, v37

    move-object/from16 v31, v41

    move-object/from16 v0, v42

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object v14, v8

    move-object/from16 v8, p0

    .end local v35    # "i":I
    .local v2, "i":I
    goto/16 :goto_2ef

    .line 3052
    .end local v2    # "i":I
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "updatedUserIds":[I
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v19    # "changedInstallPermission":Z
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v9    # "updatedUserIds":[I
    :catchall_9b9
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v43, v8

    move-object v2, v9

    move-object/from16 v20, v10

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    goto/16 :goto_c9c

    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v8, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_9d3
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v23, v8

    move-object v2, v9

    move-object/from16 v20, v10

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_c9c

    .end local v14    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v8, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_9eb
    move-exception v0

    move-object/from16 v14, v21

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v23, v8

    move-object v2, v9

    move-object/from16 v20, v10

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v14    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_c9c

    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v20, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_a05
    move-exception v0

    move-object/from16 v14, v21

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object v2, v9

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_c9c

    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "updatedUserIds":[I
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v36    # "updatedUserIds":[I
    :catchall_a1f
    move-exception v0

    move-object v8, v14

    move-object/from16 v14, v21

    move-object/from16 v41, v31

    move-object/from16 v9, v36

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v43, v8

    move-object v2, v9

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v36    # "updatedUserIds":[I
    .restart local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v9    # "updatedUserIds":[I
    .restart local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto/16 :goto_c9c

    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "updatedUserIds":[I
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v4    # "updatedUserIds":[I
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :catchall_a40
    move-exception v0

    move-object v9, v4

    move-object v8, v14

    move-object/from16 v14, v21

    move-object/from16 v41, v31

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v43, v8

    move-object v2, v9

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v4    # "updatedUserIds":[I
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v9    # "updatedUserIds":[I
    .restart local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto/16 :goto_c9c

    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "updatedUserIds":[I
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v4    # "updatedUserIds":[I
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v15, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :catchall_a60
    move-exception v0

    move-object v9, v4

    move-object v8, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v41, v31

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v43, v8

    move-object v2, v9

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v4    # "updatedUserIds":[I
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v9    # "updatedUserIds":[I
    .restart local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto/16 :goto_c9c

    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "updatedUserIds":[I
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v4    # "updatedUserIds":[I
    .local v13, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :catchall_a82
    move-exception v0

    move-object v9, v4

    move-object/from16 v34, v13

    move-object v8, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v41, v31

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v43, v8

    move-object v2, v9

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    .end local v4    # "updatedUserIds":[I
    .end local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v9    # "updatedUserIds":[I
    .restart local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto/16 :goto_c9c

    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "updatedUserIds":[I
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v32    # "requestedPermissionsSize":I
    .end local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v4    # "updatedUserIds":[I
    .local v7, "requestedPermissionsSize":I
    .restart local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :catchall_aa6
    move-exception v0

    move-object v9, v4

    move-object/from16 v34, v13

    move-object v8, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v41, v31

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v3, p4

    move-object/from16 v43, v8

    move-object v2, v9

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move-object/from16 v9, p1

    move/from16 v29, v7

    .end local v4    # "updatedUserIds":[I
    .end local v7    # "requestedPermissionsSize":I
    .end local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v9    # "updatedUserIds":[I
    .restart local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v32    # "requestedPermissionsSize":I
    .restart local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto/16 :goto_c9c

    .line 2773
    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "updatedUserIds":[I
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v32    # "requestedPermissionsSize":I
    .end local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v0, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .local v1, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "updatedUserIds":[I
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "requestedPermissionsSize":I
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "changedInstallPermission":Z
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :cond_aca
    move-object/from16 v42, v0

    move-object/from16 v37, v1

    move/from16 v35, v2

    move-object v9, v4

    move/from16 v32, v7

    move-object/from16 v34, v13

    move-object v8, v14

    move-object/from16 v33, v15

    move-object/from16 v10, v20

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v41, v31

    .line 3037
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "updatedUserIds":[I
    .end local v7    # "requestedPermissionsSize":I
    .end local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v9    # "updatedUserIds":[I
    .restart local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v32    # "requestedPermissionsSize":I
    .restart local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v19, :cond_aea

    move/from16 v13, p2

    if-eqz v13, :cond_ae7

    goto :goto_aec

    :cond_ae7
    move-object/from16 v15, v42

    goto :goto_b17

    :cond_aea
    move/from16 v13, p2

    .line 3038
    :goto_aec
    :try_start_aec
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, v42

    .end local v42    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .local v15, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    invoke-virtual {v15, v0}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v0
    :try_end_af6
    .catchall {:try_start_aec .. :try_end_af6} :catchall_b9e

    if-nez v0, :cond_b17

    .line 3039
    :try_start_af8
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v0
    :try_end_afc
    .catchall {:try_start_af8 .. :try_end_afc} :catchall_aff

    if-eqz v0, :cond_b21

    goto :goto_b17

    .line 3052
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v15    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v19    # "changedInstallPermission":Z
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_aff
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v43, v8

    move-object v2, v9

    move-object/from16 v20, v10

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v9, p1

    goto/16 :goto_c9c

    .line 3039
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v5    # "friendlyName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v15    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v19    # "changedInstallPermission":Z
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_b17
    :goto_b17
    :try_start_b17
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0
    :try_end_b1f
    .catchall {:try_start_b17 .. :try_end_b1f} :catchall_b9e

    if-eqz v0, :cond_b2a

    .line 3043
    :cond_b21
    :try_start_b21
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v15, v0, v7}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V
    :try_end_b29
    .catchall {:try_start_b21 .. :try_end_b29} :catchall_aff

    goto :goto_b2b

    .line 3039
    :cond_b2a
    const/4 v7, 0x1

    .line 3046
    :goto_b2b
    nop

    .line 3047
    :try_start_b2c
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_b30
    .catchall {:try_start_b2c .. :try_end_b30} :catchall_b9e

    .line 3046
    move-object/from16 v17, v37

    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v21, v3

    move-object/from16 v20, v10

    move-object/from16 v10, v24

    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v21, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    move-object v3, v0

    move-object/from16 v24, v9

    move-object/from16 v23, v30

    move-object/from16 v9, p1

    .end local v9    # "updatedUserIds":[I
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v24, "updatedUserIds":[I
    move-object/from16 v4, v22

    move-object v0, v5

    move/from16 v16, v29

    const/16 v28, 0x0

    .end local v5    # "friendlyName":Ljava/lang/String;
    .end local v29    # "uidTargetSdkVersion":I
    .local v0, "friendlyName":Ljava/lang/String;
    .local v16, "uidTargetSdkVersion":I
    move/from16 v5, v16

    move-object/from16 v43, v8

    move-object/from16 v8, v26

    move/from16 v26, v6

    .end local v6    # "userId":I
    .local v8, "userIds":[I
    .local v26, "userId":I
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v30, v7

    move/from16 v29, v32

    .end local v32    # "requestedPermissionsSize":I
    .local v29, "requestedPermissionsSize":I
    move-object/from16 v7, v24

    :try_start_b57
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Ljava/util/Collection;II[I)[I

    move-result-object v7
    :try_end_b5b
    .catchall {:try_start_b57 .. :try_end_b5b} :catchall_b95

    .line 3049
    .end local v24    # "updatedUserIds":[I
    .local v7, "updatedUserIds":[I
    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, v21

    move-object/from16 v4, p1

    move-object/from16 v5, v17

    move/from16 v6, v26

    :try_start_b66
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I

    move-result-object v1
    :try_end_b6a
    .catchall {:try_start_b66 .. :try_end_b6a} :catchall_b8d

    move-object v2, v1

    .line 2714
    .end local v0    # "friendlyName":Ljava/lang/String;
    .end local v7    # "updatedUserIds":[I
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v15    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v17    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "changedInstallPermission":Z
    .end local v21    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v26    # "userId":I
    .local v2, "updatedUserIds":[I
    add-int/lit8 v3, v18, 0x1

    move-object v6, v8

    move-object/from16 v24, v10

    move v10, v13

    move-object/from16 v21, v14

    move/from16 v5, v16

    move-object/from16 v4, v23

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v7, v29

    move-object/from16 v15, v33

    move-object/from16 v13, v34

    move-object/from16 v12, v41

    move-object/from16 v14, v43

    move-object/from16 v8, p0

    move-object/from16 v23, v11

    move-object/from16 v11, p3

    goto/16 :goto_162

    .line 3052
    .end local v2    # "updatedUserIds":[I
    .restart local v7    # "updatedUserIds":[I
    :catchall_b8d
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object v2, v7

    goto/16 :goto_c9c

    .end local v7    # "updatedUserIds":[I
    .restart local v24    # "updatedUserIds":[I
    :catchall_b95
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v2, v24

    goto/16 :goto_c9c

    .end local v16    # "uidTargetSdkVersion":I
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24    # "updatedUserIds":[I
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v9    # "updatedUserIds":[I
    .restart local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v26, "userIds":[I
    .local v29, "uidTargetSdkVersion":I
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v32    # "requestedPermissionsSize":I
    :catchall_b9e
    move-exception v0

    move-object/from16 v43, v8

    move-object/from16 v20, v10

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move/from16 v29, v32

    move-object/from16 v24, v9

    move-object/from16 v9, p1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v2, v24

    .end local v9    # "updatedUserIds":[I
    .end local v10    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v26    # "userIds":[I
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v32    # "requestedPermissionsSize":I
    .local v8, "userIds":[I
    .restart local v16    # "uidTargetSdkVersion":I
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24    # "updatedUserIds":[I
    .local v29, "requestedPermissionsSize":I
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto/16 :goto_c9c

    .end local v8    # "userIds":[I
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "uidTargetSdkVersion":I
    .end local v24    # "updatedUserIds":[I
    .end local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v7, "requestedPermissionsSize":I
    .restart local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v15, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "updatedUserIds":[I
    .local v21, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "userIds":[I
    .local v29, "uidTargetSdkVersion":I
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :catchall_bb9
    move-exception v0

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move-object/from16 v41, v31

    move/from16 v29, v7

    move v13, v10

    move-object/from16 v10, v24

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v2, v19

    .end local v7    # "requestedPermissionsSize":I
    .end local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v26    # "userIds":[I
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v8    # "userIds":[I
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "uidTargetSdkVersion":I
    .local v23, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v29, "requestedPermissionsSize":I
    .restart local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto/16 :goto_c9c

    .end local v8    # "userIds":[I
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "uidTargetSdkVersion":I
    .end local v19    # "updatedUserIds":[I
    .end local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v2    # "updatedUserIds":[I
    .restart local v7    # "requestedPermissionsSize":I
    .restart local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "userIds":[I
    .local v29, "uidTargetSdkVersion":I
    .restart local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :catchall_bd9
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v26

    move/from16 v16, v29

    move-object/from16 v23, v30

    move-object/from16 v41, v31

    move/from16 v29, v7

    move v13, v10

    move-object/from16 v10, v24

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    .end local v2    # "updatedUserIds":[I
    .end local v7    # "requestedPermissionsSize":I
    .end local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v26    # "userIds":[I
    .end local v30    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v8    # "userIds":[I
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "uidTargetSdkVersion":I
    .restart local v19    # "updatedUserIds":[I
    .local v23, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v29, "requestedPermissionsSize":I
    .restart local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto/16 :goto_c9c

    .end local v8    # "userIds":[I
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "uidTargetSdkVersion":I
    .end local v19    # "updatedUserIds":[I
    .end local v27    # "runtimePermissionsRevoked":Z
    .end local v29    # "requestedPermissionsSize":I
    .end local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "runtimePermissionsRevoked":Z
    .restart local v2    # "updatedUserIds":[I
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "uidTargetSdkVersion":I
    .restart local v7    # "requestedPermissionsSize":I
    .local v12, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "userIds":[I
    :catchall_bf9
    move-exception v0

    move/from16 v27, v1

    move/from16 v16, v5

    move/from16 v29, v7

    move-object/from16 v41, v12

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v8, v26

    move-object/from16 v23, v4

    move v13, v10

    move-object/from16 v10, v24

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    .end local v1    # "runtimePermissionsRevoked":Z
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "uidTargetSdkVersion":I
    .end local v7    # "requestedPermissionsSize":I
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v26    # "userIds":[I
    .restart local v8    # "userIds":[I
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "uidTargetSdkVersion":I
    .local v23, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "runtimePermissionsRevoked":Z
    .restart local v29    # "requestedPermissionsSize":I
    .restart local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto/16 :goto_c9c

    .end local v8    # "userIds":[I
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "uidTargetSdkVersion":I
    .end local v27    # "runtimePermissionsRevoked":Z
    .end local v29    # "requestedPermissionsSize":I
    .end local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v1    # "runtimePermissionsRevoked":Z
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "uidTargetSdkVersion":I
    .local v6, "userIds":[I
    .restart local v7    # "requestedPermissionsSize":I
    .restart local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_c19
    move-exception v0

    move/from16 v27, v1

    move/from16 v16, v5

    move-object v8, v6

    move/from16 v29, v7

    move-object/from16 v41, v12

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v13, v10

    move-object/from16 v10, v24

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    .end local v1    # "runtimePermissionsRevoked":Z
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "uidTargetSdkVersion":I
    .end local v6    # "userIds":[I
    .end local v7    # "requestedPermissionsSize":I
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "userIds":[I
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "uidTargetSdkVersion":I
    .local v23, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "runtimePermissionsRevoked":Z
    .restart local v29    # "requestedPermissionsSize":I
    .restart local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto/16 :goto_c9c

    .end local v8    # "userIds":[I
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "uidTargetSdkVersion":I
    .end local v27    # "runtimePermissionsRevoked":Z
    .end local v29    # "requestedPermissionsSize":I
    .end local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v1    # "runtimePermissionsRevoked":Z
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "uidTargetSdkVersion":I
    .restart local v6    # "userIds":[I
    .restart local v7    # "requestedPermissionsSize":I
    .restart local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_c38
    move/from16 v27, v1

    move/from16 v16, v5

    move-object v8, v6

    move/from16 v29, v7

    move-object/from16 v41, v12

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    const/16 v28, 0x0

    move-object/from16 v23, v4

    move v13, v10

    move-object/from16 v10, v24

    .end local v1    # "runtimePermissionsRevoked":Z
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "uidTargetSdkVersion":I
    .end local v6    # "userIds":[I
    .end local v7    # "requestedPermissionsSize":I
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "userIds":[I
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "uidTargetSdkVersion":I
    .local v23, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "runtimePermissionsRevoked":Z
    .restart local v29    # "requestedPermissionsSize":I
    .restart local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :try_start_c52
    monitor-exit v10
    :try_end_c53
    .catchall {:try_start_c52 .. :try_end_c53} :catchall_c77

    .line 3054
    move-object/from16 v1, p0

    invoke-direct {v1, v9, v13, v8, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I[I)[I

    move-result-object v0

    .line 3062
    .end local v2    # "updatedUserIds":[I
    .local v0, "updatedUserIds":[I
    move-object/from16 v3, p4

    if-eqz v3, :cond_c63

    .line 3063
    move/from16 v4, v27

    .end local v27    # "runtimePermissionsRevoked":Z
    .local v4, "runtimePermissionsRevoked":Z
    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZ)V

    goto :goto_c65

    .line 3062
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v27    # "runtimePermissionsRevoked":Z
    :cond_c63
    move/from16 v4, v27

    .line 3066
    .end local v27    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    :goto_c65
    array-length v2, v0

    move/from16 v15, v28

    :goto_c68
    if-ge v15, v2, :cond_c76

    aget v5, v0, v15

    .line 3067
    .local v5, "userId":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 3066
    .end local v5    # "userId":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_c68

    .line 3069
    :cond_c76
    return-void

    .line 3052
    .end local v0    # "updatedUserIds":[I
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v2    # "updatedUserIds":[I
    .restart local v27    # "runtimePermissionsRevoked":Z
    :catchall_c77
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move/from16 v4, v27

    .end local v27    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    goto :goto_c9c

    .end local v2    # "updatedUserIds":[I
    .end local v8    # "userIds":[I
    .end local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "uidTargetSdkVersion":I
    .end local v29    # "requestedPermissionsSize":I
    .end local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "uidTargetSdkVersion":I
    .restart local v6    # "userIds":[I
    .restart local v7    # "requestedPermissionsSize":I
    .restart local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "runtimePermissionsRevoked":Z
    .restart local v19    # "updatedUserIds":[I
    .restart local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_c7f
    move-exception v0

    move/from16 v16, v5

    move/from16 v29, v7

    move-object v1, v8

    move-object/from16 v41, v12

    move-object/from16 v34, v13

    move-object/from16 v43, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move-object v8, v6

    move v13, v10

    move-object v10, v3

    move-object/from16 v3, p4

    move/from16 v27, v18

    move-object/from16 v2, v19

    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "uidTargetSdkVersion":I
    .end local v6    # "userIds":[I
    .end local v7    # "requestedPermissionsSize":I
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v13    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "runtimePermissionsRevoked":Z
    .end local v19    # "updatedUserIds":[I
    .end local v21    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "updatedUserIds":[I
    .restart local v8    # "userIds":[I
    .restart local v11    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "uidTargetSdkVersion":I
    .local v23, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "runtimePermissionsRevoked":Z
    .restart local v29    # "requestedPermissionsSize":I
    .restart local v33    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v41    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v43    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_c9c
    :try_start_c9c
    monitor-exit v10
    :try_end_c9d
    .catchall {:try_start_c9c .. :try_end_c9d} :catchall_c9e

    throw v0

    :catchall_c9e
    move-exception v0

    goto :goto_c9c
.end method

.method private revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 16
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 4267
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4268
    const-wide/16 v2, 0x0

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4270
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_15

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_15

    .line 4272
    return-void

    .line 4275
    :cond_15
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4b

    .line 4278
    const/16 v6, 0x3e8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v7, p4

    move-object v9, p5

    :try_start_24
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_27} :catch_28

    .line 4291
    goto :goto_4b

    .line 4284
    :catch_28
    move-exception v1

    .line 4285
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to revoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4293
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4b
    :goto_4b
    return-void
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Ljava/util/Collection;II[I)[I
    .registers 23
    .param p1, "ps"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "uidTargetSdkVersion"    # I
    .param p5, "userId"    # I
    .param p6, "updatedUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;II[I)[I"
        }
    .end annotation

    .line 3099
    .local p3, "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x17

    move/from16 v3, p4

    if-lt v3, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    move v2, v1

    .line 3101
    .local v2, "supportsRuntimePermissions":Z
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v5, p6

    .end local p6    # "updatedUserIds":[I
    .local v5, "updatedUserIds":[I
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3102
    .local v6, "permission":Ljava/lang/String;
    move-object/from16 v7, p3

    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b9

    .line 3103
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v9

    .line 3104
    .local v9, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v9, :cond_b4

    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v10

    if-eqz v10, :cond_b4

    .line 3105
    invoke-virtual {v0, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v10

    .line 3106
    .local v10, "flags":I
    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_af

    .line 3107
    const/16 v11, 0x80

    .line 3112
    .local v11, "flagsToRemove":I
    const/4 v12, 0x0

    .line 3113
    .local v12, "preserveGrant":Z
    sget-object v13, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    invoke-static {v13, v6}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5e

    .line 3114
    const-string v13, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5e

    .line 3116
    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v13

    and-int/lit16 v13, v13, 0x88

    if-nez v13, :cond_5e

    .line 3120
    const/4 v12, 0x1

    .line 3123
    :cond_5e
    and-int/lit8 v13, v10, 0x34

    if-nez v13, :cond_a3

    if-eqz v2, :cond_a3

    if-nez v12, :cond_a3

    .line 3126
    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v13

    if-eqz v13, :cond_9e

    .line 3127
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v13, :cond_9b

    .line 3128
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Revoking runtime permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v14, p2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " as it is now requested"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "PackageManager"

    invoke-static {v15, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 3127
    :cond_9b
    move-object/from16 v14, p2

    goto :goto_a0

    .line 3126
    :cond_9e
    move-object/from16 v14, p2

    .line 3134
    :goto_a0
    or-int/lit8 v11, v11, 0x3

    goto :goto_a5

    .line 3123
    :cond_a3
    move-object/from16 v14, p2

    .line 3137
    :goto_a5
    invoke-virtual {v0, v9, v11, v1}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3138
    move/from16 v13, p5

    invoke-static {v5, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    goto :goto_bf

    .line 3106
    .end local v11    # "flagsToRemove":I
    .end local v12    # "preserveGrant":Z
    :cond_af
    move-object/from16 v14, p2

    move/from16 v13, p5

    goto :goto_bf

    .line 3104
    .end local v10    # "flags":I
    :cond_b4
    move-object/from16 v14, p2

    move/from16 v13, p5

    goto :goto_bf

    .line 3102
    .end local v9    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_b9
    move-object/from16 v8, p0

    move-object/from16 v14, p2

    move/from16 v13, p5

    .line 3142
    .end local v6    # "permission":Ljava/lang/String;
    :goto_bf
    goto/16 :goto_16

    .line 3144
    :cond_c1
    move-object/from16 v8, p0

    move-object/from16 v14, p2

    move-object/from16 v7, p3

    move/from16 v13, p5

    return-object v5
.end method

.method private revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 1546
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1548
    return-void
.end method

.method private revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "overrideKill"    # Z
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 1560
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move/from16 v11, p6

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1561
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    return-void

    .line 1565
    :cond_2b
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "revokeRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1574
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v12

    .line 1575
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v12, :cond_64

    .line 1576
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return-void

    .line 1579
    :cond_64
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v12, v10, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_23e

    .line 1584
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1585
    :try_start_6f
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1586
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_222

    .line 1589
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v2

    move v13, v2

    .line 1590
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .local v13, "isRolePermission":Z
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_6f .. :try_end_7d} :catchall_23b

    .line 1591
    if-eqz v13, :cond_8d

    .line 1593
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v10, v0, :cond_8b

    invoke-direct {v7, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mayManageRolePermission(I)Z

    move-result v0

    if-eqz v0, :cond_8d

    :cond_8b
    const/4 v0, 0x1

    goto :goto_8e

    :cond_8d
    const/4 v0, 0x0

    :goto_8e
    move v14, v0

    .line 1596
    .local v14, "mayRevokeRolePermission":Z
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1597
    :try_start_92
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1598
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_206

    .line 1602
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v1

    move v15, v1

    .line 1603
    .local v15, "isRuntimePermission":Z
    if-nez v15, :cond_fd

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_a8

    goto :goto_fd

    .line 1605
    :cond_a8
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 1606
    if-eqz v14, :cond_b1

    goto :goto_fd

    .line 1607
    :cond_b1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is managed by role"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "isRolePermission":Z
    .end local v14    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v1

    .line 1610
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v13    # "isRolePermission":Z
    .restart local v14    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_d0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1611
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a changeable permission type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "isRolePermission":Z
    .end local v14    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v1

    .line 1614
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v13    # "isRolePermission":Z
    .restart local v14    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_fd
    :goto_fd
    invoke-direct {v7, v12, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    .line 1615
    .local v1, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v1, :cond_12b

    .line 1616
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing permissions state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    monitor-exit v2

    return-void

    .line 1621
    :cond_12b
    invoke-virtual {v1, v9}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_163

    .line 1622
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13c

    goto :goto_163

    .line 1623
    :cond_13c
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has not requested permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "isRolePermission":Z
    .end local v14    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v3

    .line 1631
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v13    # "isRolePermission":Z
    .restart local v14    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_163
    :goto_163
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x17

    if-ge v3, v4, :cond_173

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    if-eqz v3, :cond_173

    .line 1632
    monitor-exit v2

    return-void

    .line 1635
    :cond_173
    invoke-virtual {v1, v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v3

    .line 1637
    .local v3, "flags":I
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_1a7

    .line 1638
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_184

    goto :goto_1a7

    .line 1639
    :cond_184
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "isRolePermission":Z
    .end local v14    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v4

    .line 1642
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v13    # "isRolePermission":Z
    .restart local v14    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_1a7
    :goto_1a7
    if-nez p3, :cond_1d1

    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_1ae

    goto :goto_1d1

    .line 1643
    :cond_1ae
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot revoke policy fixed permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "isRolePermission":Z
    .end local v14    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v4

    .line 1651
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v13    # "isRolePermission":Z
    .restart local v14    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_1d1
    :goto_1d1
    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v4

    if-nez v4, :cond_1d9

    .line 1652
    monitor-exit v2

    return-void

    .line 1654
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "flags":I
    :cond_1d9
    monitor-exit v2
    :try_end_1da
    .catchall {:try_start_92 .. :try_end_1da} :catchall_21f

    .line 1656
    if-eqz v15, :cond_1e1

    .line 1657
    const/16 v0, 0x4dd

    invoke-direct {v7, v0, v9, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1661
    :cond_1e1
    if-eqz p8, :cond_200

    .line 1662
    if-eqz v15, :cond_1fb

    .line 1663
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    move-object/from16 v1, p8

    move/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p4

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_200

    .line 1666
    :cond_1fb
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1670
    :cond_200
    :goto_200
    if-eqz v15, :cond_205

    .line 1671
    invoke-direct {v7, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1673
    :cond_205
    return-void

    .line 1599
    .end local v15    # "isRuntimePermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_206
    :try_start_206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "isRolePermission":Z
    .end local v14    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v1

    .line 1654
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v13    # "isRolePermission":Z
    .restart local v14    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :catchall_21f
    move-exception v0

    monitor-exit v2
    :try_end_221
    .catchall {:try_start_206 .. :try_end_221} :catchall_21f

    throw v0

    .line 1587
    .end local v13    # "isRolePermission":Z
    .end local v14    # "mayRevokeRolePermission":Z
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    :cond_222
    :try_start_222
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v2

    .line 1590
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :catchall_23b
    move-exception v0

    monitor-exit v1
    :try_end_23d
    .catchall {:try_start_222 .. :try_end_23d} :catchall_23b

    throw v0

    .line 1580
    :cond_23e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 24
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2259
    move-object/from16 v8, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v9

    .line 2260
    .local v9, "numOldPackagePermissions":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v9}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v10, v0

    .line 2263
    .local v10, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v9, :cond_35

    .line 2264
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 2266
    .local v1, "permission":Lcom/android/server/pm/pkg/component/ParsedPermission;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2267
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2268
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2267
    invoke-virtual {v10, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    .end local v1    # "permission":Lcom/android/server/pm/pkg/component/ParsedPermission;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2272
    .end local v0    # "i":I
    :cond_35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2273
    .local v11, "callingUid":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v12

    .line 2274
    .local v12, "numNewPackagePermissions":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "newPermissionNum":I
    :goto_43
    if-ge v13, v12, :cond_bc

    .line 2276
    nop

    .line 2277
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 2278
    .local v14, "newPermission":Lcom/android/server/pm/pkg/component/ParsedPermission;
    invoke-static {v14}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v15

    .line 2280
    .local v15, "newProtection":I
    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_b3

    .line 2281
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2283
    .local v7, "permissionName":Ljava/lang/String;
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v0

    if-nez v0, :cond_65

    .line 2284
    const/4 v0, 0x0

    goto :goto_6d

    :cond_65
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_6d
    move-object v6, v0

    .line 2285
    .local v6, "newPermissionGroupName":Ljava/lang/String;
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 2288
    .local v5, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v6, :cond_aa

    .line 2289
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 2290
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v16

    .line 2291
    .local v16, "userIds":[I
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v8, v3

    move-object v3, v7

    move/from16 v17, v9

    move-object v9, v4

    .end local v9    # "numOldPackagePermissions":I
    .local v17, "numOldPackagePermissions":I
    move-object/from16 v4, p1

    move-object/from16 v18, v5

    .end local v5    # "oldPermissionGroupName":Ljava/lang/String;
    .local v18, "oldPermissionGroupName":Ljava/lang/String;
    move-object/from16 v19, v6

    .end local v6    # "newPermissionGroupName":Ljava/lang/String;
    .local v19, "newPermissionGroupName":Ljava/lang/String;
    move-object/from16 v20, v7

    .end local v7    # "permissionName":Ljava/lang/String;
    .local v20, "permissionName":Ljava/lang/String;
    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_b5

    .line 2289
    .end local v16    # "userIds":[I
    .end local v17    # "numOldPackagePermissions":I
    .end local v18    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v19    # "newPermissionGroupName":Ljava/lang/String;
    .end local v20    # "permissionName":Ljava/lang/String;
    .restart local v5    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "permissionName":Ljava/lang/String;
    .restart local v9    # "numOldPackagePermissions":I
    :cond_a1
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v17, v9

    .end local v5    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v6    # "newPermissionGroupName":Ljava/lang/String;
    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v9    # "numOldPackagePermissions":I
    .restart local v17    # "numOldPackagePermissions":I
    .restart local v18    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v19    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v20    # "permissionName":Ljava/lang/String;
    goto :goto_b5

    .line 2288
    .end local v17    # "numOldPackagePermissions":I
    .end local v18    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v19    # "newPermissionGroupName":Ljava/lang/String;
    .end local v20    # "permissionName":Ljava/lang/String;
    .restart local v5    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "permissionName":Ljava/lang/String;
    .restart local v9    # "numOldPackagePermissions":I
    :cond_aa
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v17, v9

    .end local v5    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v6    # "newPermissionGroupName":Ljava/lang/String;
    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v9    # "numOldPackagePermissions":I
    .restart local v17    # "numOldPackagePermissions":I
    .restart local v18    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v19    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v20    # "permissionName":Ljava/lang/String;
    goto :goto_b5

    .line 2280
    .end local v17    # "numOldPackagePermissions":I
    .end local v18    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v19    # "newPermissionGroupName":Ljava/lang/String;
    .end local v20    # "permissionName":Ljava/lang/String;
    .restart local v9    # "numOldPackagePermissions":I
    :cond_b3
    move/from16 v17, v9

    .line 2275
    .end local v9    # "numOldPackagePermissions":I
    .end local v14    # "newPermission":Lcom/android/server/pm/pkg/component/ParsedPermission;
    .end local v15    # "newProtection":I
    .restart local v17    # "numOldPackagePermissions":I
    :goto_b5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p0

    move/from16 v9, v17

    goto :goto_43

    .line 2318
    .end local v13    # "newPermissionNum":I
    .end local v17    # "numOldPackagePermissions":I
    .restart local v9    # "numOldPackagePermissions":I
    :cond_bc
    return-void
.end method

.method private revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2328
    .local p1, "permissionsToRevoke":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 2329
    .local v0, "userIds":[I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 2330
    .local v7, "numPermissions":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2332
    .local v8, "callingUid":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "permNum":I
    :goto_10
    if-ge v9, v7, :cond_4d

    .line 2333
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 2335
    .local v10, "permName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2336
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 2337
    .local v2, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_46

    .line 2340
    :cond_31
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v5

    .line 2341
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .local v5, "isInternalPermission":Z
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_4a

    .line 2342
    iget-object v11, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move-object v4, v10

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;ZI)V

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_47

    .line 2338
    .end local v5    # "isInternalPermission":Z
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_46
    :goto_46
    :try_start_46
    monitor-exit v1

    .line 2332
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v10    # "permName":Ljava/lang/String;
    :goto_47
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 2341
    .restart local v10    # "permName":Ljava/lang/String;
    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4a

    throw v2

    .line 2385
    .end local v9    # "permNum":I
    .end local v10    # "permName":Ljava/lang/String;
    :cond_4d
    return-void
.end method

.method private revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/util/List;I)V
    .registers 16
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "appId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 3903
    .local p3, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    if-nez p1, :cond_a

    .line 3904
    const-string v0, "PackageManager"

    const-string v1, "Trying to update info for null package. Just ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    return-void

    .line 3909
    :cond_a
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3910
    return-void

    .line 3913
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3914
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3913
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3915
    .local v0, "disabledPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_29

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 3917
    .local v1, "isShadowingSystemPkg":Z
    :goto_2a
    const/4 v2, 0x0

    .line 3919
    .local v2, "shouldKillUid":Z
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3921
    .local v4, "eachPerm":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3922
    .local v5, "used":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3923
    .local v7, "sharedUserpkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v7, :cond_6c

    .line 3924
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6c

    .line 3925
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 3926
    const/4 v5, 0x1

    .line 3927
    goto :goto_6d

    .line 3929
    .end local v7    # "sharedUserpkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_6c
    goto :goto_44

    .line 3930
    :cond_6d
    :goto_6d
    if-eqz v5, :cond_70

    .line 3931
    goto :goto_33

    .line 3936
    :cond_70
    if-eqz v1, :cond_81

    .line 3937
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 3938
    goto :goto_33

    .line 3941
    :cond_81
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3942
    :try_start_84
    invoke-direct {p0, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    .line 3943
    .local v7, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v7, :cond_b2

    .line 3944
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing permissions state for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    monitor-exit v6

    goto :goto_33

    .line 3949
    :cond_b2
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v8

    .line 3950
    .local v8, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v8, :cond_bd

    .line 3951
    monitor-exit v6

    goto/16 :goto_33

    .line 3956
    :cond_bd
    invoke-virtual {v8}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ce

    invoke-virtual {v8}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v9

    if-eqz v9, :cond_ce

    .line 3957
    const/4 v2, 0x1

    .line 3959
    .end local v7    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v8    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_ce
    monitor-exit v6

    .line 3960
    .end local v4    # "eachPerm":Ljava/lang/String;
    .end local v5    # "used":Z
    goto/16 :goto_33

    .line 3959
    .restart local v4    # "eachPerm":Ljava/lang/String;
    .restart local v5    # "used":Z
    :catchall_d1
    move-exception v3

    monitor-exit v6
    :try_end_d3
    .catchall {:try_start_84 .. :try_end_d3} :catchall_d1

    throw v3

    .line 3963
    .end local v4    # "eachPerm":Ljava/lang/String;
    .end local v5    # "used":Z
    :cond_d4
    if-eqz v2, :cond_e0

    .line 3964
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v4, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3971
    :cond_e0
    return-void
.end method

.method private revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 26
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2163
    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lt v0, v1, :cond_14

    .line 2164
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_14

    move v0, v10

    goto :goto_15

    :cond_14
    move v0, v11

    :goto_15
    move v12, v0

    .line 2165
    .local v12, "downgradedSdk":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_24

    .line 2166
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_24

    move v0, v10

    goto :goto_25

    :cond_24
    move v0, v11

    :goto_25
    move v13, v0

    .line 2167
    .local v13, "upgradedSdk":Z
    if-nez v13, :cond_36

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-nez v0, :cond_36

    .line 2168
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v10

    goto :goto_37

    :cond_36
    move v0, v11

    :goto_37
    move v14, v0

    .line 2170
    .local v14, "newlyRequestsLegacy":Z
    if-nez v14, :cond_3d

    if-nez v12, :cond_3d

    .line 2171
    return-void

    .line 2174
    :cond_3d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 2175
    .local v15, "callingUid":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v8

    array-length v7, v8

    move v6, v11

    :goto_47
    if-ge v6, v7, :cond_186

    aget v5, v8, v6

    .line 2176
    .local v5, "userId":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 2177
    .local v4, "numRequestedPermissions":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_55
    if-ge v3, v4, :cond_176

    .line 2178
    nop

    .line 2179
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2180
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2178
    invoke-virtual {v9, v0, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 2181
    .local v2, "permInfo":Landroid/content/pm/PermissionInfo;
    if-nez v2, :cond_78

    .line 2182
    move/from16 v20, v3

    move v10, v4

    move v11, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v17, v8

    goto/16 :goto_168

    .line 2184
    :cond_78
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    iget-object v1, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    iget-object v1, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2185
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    iget-object v1, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2186
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_99

    :cond_97
    move v0, v11

    goto :goto_9a

    :cond_99
    :goto_99
    move v0, v10

    :goto_9a
    move/from16 v16, v0

    .line 2187
    .local v16, "isStorageOrMedia":Z
    if-nez v16, :cond_aa

    .line 2188
    move/from16 v20, v3

    move v10, v4

    move v11, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v17, v8

    goto/16 :goto_168

    .line 2191
    :cond_aa
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v17, "171430330"

    aput-object v17, v1, v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v10

    const/16 v17, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Revoking permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2193
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as either the sdk downgraded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " or newly requested legacy full storage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v17

    .line 2191
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2198
    :try_start_fc
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v17, 0x0

    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_end_107
    .catch Ljava/lang/IllegalStateException; {:try_start_fc .. :try_end_107} :catch_126
    .catch Ljava/lang/SecurityException; {:try_start_fc .. :try_end_107} :catch_126

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .local v19, "permInfo":Landroid/content/pm/PermissionInfo;
    move-object v2, v0

    move/from16 v20, v3

    .end local v3    # "i":I
    .local v20, "i":I
    move-object v3, v10

    move v10, v4

    .end local v4    # "numRequestedPermissions":I
    .local v10, "numRequestedPermissions":I
    move v4, v11

    move v11, v5

    .end local v5    # "userId":I
    .local v11, "userId":I
    move v5, v15

    move/from16 v21, v6

    move v6, v11

    move/from16 v22, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v18

    :try_start_120
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_123
    .catch Ljava/lang/IllegalStateException; {:try_start_120 .. :try_end_123} :catch_124
    .catch Ljava/lang/SecurityException; {:try_start_120 .. :try_end_123} :catch_124

    .line 2203
    goto :goto_168

    .line 2200
    :catch_124
    move-exception v0

    goto :goto_133

    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .end local v19    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v20    # "i":I
    .restart local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v3    # "i":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :catch_126
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v20, v3

    move v10, v4

    move v11, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v17, v8

    .line 2201
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v10    # "numRequestedPermissions":I
    .restart local v11    # "userId":I
    .restart local v19    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v20    # "i":I
    :goto_133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v19

    .end local v19    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2202
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2201
    const-string v3, "PackageManager"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2177
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v16    # "isStorageOrMedia":Z
    :goto_168
    add-int/lit8 v3, v20, 0x1

    move v4, v10

    move v5, v11

    move-object/from16 v8, v17

    move/from16 v6, v21

    move/from16 v7, v22

    const/4 v10, 0x1

    const/4 v11, 0x0

    .end local v20    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_55

    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :cond_176
    move/from16 v20, v3

    move v10, v4

    move v11, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v17, v8

    .line 2175
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    add-int/lit8 v6, v21, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_47

    .line 2207
    :cond_186
    return-void
.end method

.method private revokeSystemAlertWindowIfUpgradedPast23(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 15
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2220
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_8d

    .line 2221
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_8d

    .line 2222
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2223
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_8d

    .line 2228
    :cond_1c
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2229
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v1, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    .line 2230
    .local v1, "saw":Lcom/android/server/pm/permission/Permission;
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_8a

    .line 2231
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2232
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2233
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 2234
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result v2

    if-eqz v2, :cond_44

    goto :goto_89

    .line 2237
    :cond_44
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_4a
    if-ge v4, v3, :cond_88

    aget v11, v2, v4

    .line 2239
    .local v11, "userId":I
    :try_start_4e
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.permission.SYSTEM_ALERT_WINDOW"

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v5, p0

    move v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_5c} :catch_5d
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_5c} :catch_5d

    .line 2245
    goto :goto_85

    .line 2242
    :catch_5d
    move-exception v5

    .line 2243
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to revoke SYSTEM_ALERT_WINDOW for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2244
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2243
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2237
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "userId":I
    :goto_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 2247
    :cond_88
    return-void

    .line 2235
    :cond_89
    :goto_89
    return-void

    .line 2230
    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v1    # "saw":Lcom/android/server/pm/permission/Permission;
    :catchall_8a
    move-exception v1

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v1

    .line 2224
    :cond_8d
    :goto_8d
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Ljava/util/Collection;Lcom/android/server/pm/permission/UidPermissionState;)Z
    .registers 10
    .param p2, "uidState"    # Lcom/android/server/pm/permission/UidPermissionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            ")Z"
        }
    .end annotation

    .line 3977
    .local p1, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3980
    .local v0, "runtimePermissionChanged":Z
    invoke-virtual {p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v1

    .line 3981
    .local v1, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3982
    .local v2, "permissionStatesSize":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_b
    if-ltz v3, :cond_3d

    .line 3983
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionState;

    .line 3984
    .local v4, "permissionState":Lcom/android/server/pm/permission/PermissionState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 3985
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 3986
    .local v5, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v5, :cond_3a

    .line 3987
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 3988
    const/4 v0, 0x1

    .line 3982
    .end local v4    # "permissionState":Lcom/android/server/pm/permission/PermissionState;
    .end local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_3a
    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    .line 3994
    .end local v3    # "i":I
    :cond_3d
    return v0
.end method

.method private setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 1237
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    const/4 v0, 0x7

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1242
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1243
    int-to-float v0, p4

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1245
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p4, :cond_3b

    .line 1246
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowlistedRestrictedPermissions for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :cond_3b
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1252
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_44

    .line 1253
    return v1

    .line 1256
    :cond_44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1257
    .local v3, "callingUid":I
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1258
    return v1

    .line 1261
    :cond_55
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_60

    move v1, v2

    .line 1264
    .local v1, "isCallerPrivileged":Z
    :cond_60
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1265
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v4

    .line 1267
    .local v4, "isCallerInstallerOnRecord":Z
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_75

    if-eqz v1, :cond_6d

    goto :goto_75

    .line 1268
    :cond_6d
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Modifying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1272
    :cond_75
    :goto_75
    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_d3

    .line 1273
    if-nez v1, :cond_86

    if-eqz v4, :cond_7e

    goto :goto_86

    .line 1274
    :cond_7e
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1278
    :cond_86
    :goto_86
    nop

    .line 1279
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    .line 1280
    .local v5, "allowlistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_b8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_98

    goto :goto_b8

    .line 1286
    :cond_98
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 1287
    .local v6, "permissionCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9d
    if-ge v7, v6, :cond_c1

    .line 1288
    if-eqz v5, :cond_ab

    .line 1289
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ad

    :cond_ab
    if-eqz v1, :cond_b0

    .line 1287
    :cond_ad
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    .line 1291
    :cond_b0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v8, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1281
    .end local v6    # "permissionCount":I
    .end local v7    # "i":I
    :cond_b8
    :goto_b8
    if-eqz v5, :cond_d2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c1

    goto :goto_d2

    .line 1297
    :cond_c1
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_d3

    .line 1298
    if-nez v1, :cond_d3

    if-eqz v4, :cond_ca

    goto :goto_d3

    .line 1299
    :cond_ca
    new-instance v2, Ljava/lang/SecurityException;

    const-string v6, "Modifying installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1282
    :cond_d2
    :goto_d2
    return v2

    .line 1306
    .end local v5    # "allowlistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d3
    :goto_d3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1308
    .local v5, "identity":J
    :try_start_d7
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_df

    .line 1310
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1311
    nop

    .line 1313
    return v2

    .line 1310
    :catchall_df
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1311
    throw v2
.end method

.method private setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    .registers 32
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "allowlistFlags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 3763
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    const/4 v0, 0x0

    .line 3764
    .local v0, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3765
    .local v1, "updatePermissions":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .line 3766
    .local v14, "permissionCount":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v15

    .line 3768
    .local v15, "myUid":I
    const/4 v2, 0x0

    move-object v7, v0

    move v8, v1

    move v9, v2

    .end local v0    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "updatePermissions":Z
    .local v7, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v8, "updatePermissions":Z
    .local v9, "j":I
    :goto_1a
    if-ge v9, v14, :cond_150

    .line 3769
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 3772
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3773
    :try_start_2a
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 3774
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_13e

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v2

    if-nez v2, :cond_3e

    move-object/from16 v24, v6

    move/from16 v26, v9

    goto/16 :goto_142

    .line 3778
    :cond_3e
    invoke-direct {v10, v11, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_147

    .line 3779
    .local v2, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v2, :cond_76

    .line 3780
    :try_start_44
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing permissions state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_44 .. :try_end_6b} :catchall_6f

    move/from16 v26, v9

    goto/16 :goto_143

    .line 3785
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_6f
    move-exception v0

    move-object/from16 v24, v6

    move/from16 v26, v9

    goto/16 :goto_14c

    .line 3784
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_76
    :try_start_76
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 3785
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v0, "isGranted":Z
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_147

    .line 3787
    if-eqz v0, :cond_8c

    .line 3788
    if-nez v7, :cond_86

    .line 3789
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v1

    .line 3791
    :cond_86
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v7

    goto :goto_8e

    .line 3787
    :cond_8c
    move-object/from16 v16, v7

    .line 3794
    .end local v7    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v16, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_8e
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1, v6, v15, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v7

    .line 3797
    .local v7, "oldFlags":I
    move v1, v7

    .line 3798
    .local v1, "newFlags":I
    const/4 v2, 0x0

    .line 3799
    .local v2, "mask":I
    move/from16 v3, p3

    move/from16 v17, v3

    .line 3800
    .local v17, "allowlistFlagsCopy":I
    :goto_9c
    const/4 v3, 0x1

    if-eqz v17, :cond_dc

    .line 3801
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int/2addr v3, v4

    .line 3802
    .local v3, "flag":I
    not-int v4, v3

    and-int v17, v17, v4

    .line 3803
    packed-switch v3, :pswitch_data_1c2

    :pswitch_aa
    goto :goto_db

    .line 3814
    :pswitch_ab
    or-int/lit16 v2, v2, 0x2000

    .line 3815
    if-eqz v12, :cond_b8

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 3816
    or-int/lit16 v1, v1, 0x2000

    goto :goto_db

    .line 3818
    :cond_b8
    and-int/lit16 v1, v1, -0x2001

    .line 3821
    goto :goto_db

    .line 3823
    :pswitch_bb
    or-int/lit16 v2, v2, 0x800

    .line 3824
    if-eqz v12, :cond_c8

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 3825
    or-int/lit16 v1, v1, 0x800

    goto :goto_db

    .line 3827
    :cond_c8
    and-int/lit16 v1, v1, -0x801

    goto :goto_db

    .line 3805
    :pswitch_cb
    or-int/lit16 v2, v2, 0x1000

    .line 3806
    if-eqz v12, :cond_d8

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 3807
    or-int/lit16 v1, v1, 0x1000

    goto :goto_db

    .line 3809
    :cond_d8
    and-int/lit16 v1, v1, -0x1001

    .line 3812
    nop

    .line 3832
    .end local v3    # "flag":I
    :goto_db
    goto :goto_9c

    .line 3834
    :cond_dc
    if-ne v7, v1, :cond_e4

    .line 3835
    move/from16 v26, v9

    move-object/from16 v7, v16

    goto/16 :goto_143

    .line 3838
    :cond_e4
    const/16 v18, 0x1

    .line 3840
    .end local v8    # "updatePermissions":Z
    .local v18, "updatePermissions":Z
    and-int/lit16 v4, v7, 0x3800

    const/4 v5, 0x0

    if-eqz v4, :cond_ed

    move v4, v3

    goto :goto_ee

    :cond_ed
    move v4, v5

    :goto_ee
    move/from16 v19, v4

    .line 3842
    .local v19, "wasAllowlisted":Z
    and-int/lit16 v4, v1, 0x3800

    if-eqz v4, :cond_f5

    goto :goto_f6

    :cond_f5
    move v3, v5

    :goto_f6
    move/from16 v20, v3

    .line 3849
    .local v20, "isAllowlisted":Z
    and-int/lit8 v3, v7, 0x4

    if-eqz v3, :cond_104

    .line 3850
    if-nez v20, :cond_104

    if-eqz v0, :cond_104

    .line 3851
    or-int/lit8 v2, v2, 0x4

    .line 3852
    and-int/lit8 v1, v1, -0x5

    .line 3858
    :cond_104
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x17

    if-ge v3, v4, :cond_119

    if-nez v19, :cond_119

    if-eqz v20, :cond_119

    .line 3860
    or-int/lit8 v2, v2, 0x40

    .line 3861
    or-int/lit8 v1, v1, 0x40

    move/from16 v21, v1

    move/from16 v22, v2

    goto :goto_11d

    .line 3864
    :cond_119
    move/from16 v21, v1

    move/from16 v22, v2

    .end local v1    # "newFlags":I
    .end local v2    # "mask":I
    .local v21, "newFlags":I
    .local v22, "mask":I
    :goto_11d
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object v3, v6

    move/from16 v4, v22

    move/from16 v5, v21

    move-object/from16 v24, v6

    .end local v6    # "permissionName":Ljava/lang/String;
    .local v24, "permissionName":Ljava/lang/String;
    move v6, v15

    move/from16 v25, v7

    .end local v7    # "oldFlags":I
    .local v25, "oldFlags":I
    move/from16 v7, p4

    move/from16 v26, v9

    .end local v9    # "j":I
    .local v26, "j":I
    move-object/from16 v9, v23

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    move-object/from16 v7, v16

    move/from16 v8, v18

    goto :goto_143

    .line 3774
    .end local v16    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "allowlistFlagsCopy":I
    .end local v18    # "updatePermissions":Z
    .end local v19    # "wasAllowlisted":Z
    .end local v20    # "isAllowlisted":Z
    .end local v21    # "newFlags":I
    .end local v22    # "mask":I
    .end local v24    # "permissionName":Ljava/lang/String;
    .end local v25    # "oldFlags":I
    .end local v26    # "j":I
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .local v7, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "updatePermissions":Z
    .restart local v9    # "j":I
    :cond_13e
    move-object/from16 v24, v6

    move/from16 v26, v9

    .line 3775
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v9    # "j":I
    .restart local v24    # "permissionName":Ljava/lang/String;
    .restart local v26    # "j":I
    :goto_142
    :try_start_142
    monitor-exit v1

    .line 3768
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v24    # "permissionName":Ljava/lang/String;
    :goto_143
    add-int/lit8 v9, v26, 0x1

    .end local v26    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_1a

    .line 3785
    .restart local v6    # "permissionName":Ljava/lang/String;
    :catchall_147
    move-exception v0

    move-object/from16 v24, v6

    move/from16 v26, v9

    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v9    # "j":I
    .restart local v24    # "permissionName":Ljava/lang/String;
    .restart local v26    # "j":I
    :goto_14c
    monitor-exit v1
    :try_end_14d
    .catchall {:try_start_142 .. :try_end_14d} :catchall_14e

    throw v0

    :catchall_14e
    move-exception v0

    goto :goto_14c

    .line 3768
    .end local v24    # "permissionName":Ljava/lang/String;
    .end local v26    # "j":I
    .restart local v9    # "j":I
    :cond_150
    move/from16 v26, v9

    .line 3868
    .end local v9    # "j":I
    if-eqz v8, :cond_1c0

    .line 3870
    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    .line 3874
    if-nez v7, :cond_167

    .line 3875
    return-void

    .line 3878
    :cond_167
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 3879
    .local v1, "oldGrantedCount":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "j":I
    :goto_16d
    if-ge v2, v1, :cond_1c0

    .line 3880
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 3883
    .local v3, "permissionName":Ljava/lang/String;
    iget-object v4, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3884
    :try_start_179
    invoke-direct {v10, v11, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    .line 3885
    .local v0, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v0, :cond_1a7

    .line 3886
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing permissions state for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " and user "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    monitor-exit v4

    goto :goto_1ba

    .line 3890
    :cond_1a7
    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v5

    move v0, v5

    .line 3891
    .local v0, "isGranted":Z
    monitor-exit v4
    :try_end_1ad
    .catchall {:try_start_179 .. :try_end_1ad} :catchall_1bd

    .line 3892
    if-nez v0, :cond_1ba

    .line 3893
    iget-object v4, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v13, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    .line 3894
    goto :goto_1c0

    .line 3879
    .end local v0    # "isGranted":Z
    .end local v3    # "permissionName":Ljava/lang/String;
    :cond_1ba
    :goto_1ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_16d

    .line 3891
    .restart local v3    # "permissionName":Ljava/lang/String;
    :catchall_1bd
    move-exception v0

    :try_start_1be
    monitor-exit v4
    :try_end_1bf
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_1bd

    throw v0

    .line 3898
    .end local v1    # "oldGrantedCount":I
    .end local v2    # "j":I
    .end local v3    # "permissionName":Ljava/lang/String;
    :cond_1c0
    :goto_1c0
    return-void

    nop

    :pswitch_data_1c2
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_bb
        :pswitch_aa
        :pswitch_ab
    .end packed-switch
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I
    .registers 28
    .param p1, "origPs"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p2, "ps"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "userId"    # I
    .param p6, "updatedUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I[I)[I"
        }
    .end annotation

    .line 3238
    .local p4, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3239
    .local v2, "pkgName":Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3241
    .local v3, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    nop

    .line 3242
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v4

    .line 3243
    .local v4, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 3244
    .local v5, "numSplitPerms":I
    const/4 v6, 0x0

    .local v6, "splitPermNum":I
    :goto_17
    if-ge v6, v5, :cond_4e

    .line 3245
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 3247
    .local v7, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v8

    .line 3248
    .local v8, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 3249
    .local v9, "numNewPerms":I
    const/4 v10, 0x0

    .local v10, "newPermNum":I
    :goto_28
    if-ge v10, v9, :cond_4b

    .line 3250
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3252
    .local v11, "newPerm":Ljava/lang/String;
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    .line 3253
    .local v12, "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v12, :cond_41

    .line 3254
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v13

    .line 3255
    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3258
    :cond_41
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3249
    .end local v11    # "newPerm":Ljava/lang/String;
    .end local v12    # "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    .line 3244
    .end local v7    # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .end local v8    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "numNewPerms":I
    .end local v10    # "newPermNum":I
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 3262
    .end local v6    # "splitPermNum":I
    :cond_4e
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 3263
    .local v6, "numNewImplicitPerms":I
    const/4 v7, 0x0

    move v8, v7

    move-object/from16 v7, p6

    .end local p6    # "updatedUserIds":[I
    .local v7, "updatedUserIds":[I
    .local v8, "newImplicitPermNum":I
    :goto_56
    if-ge v8, v6, :cond_184

    .line 3265
    move-object/from16 v9, p4

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3266
    .local v10, "newPerm":Ljava/lang/String;
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3268
    .local v11, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v11, :cond_16a

    .line 3269
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v12, v10}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v12

    .line 3270
    .local v12, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v12, :cond_14b

    .line 3274
    invoke-virtual {v12}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-eqz v13, :cond_13c

    .line 3276
    const-string v13, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_93

    sget-object v13, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 3277
    invoke-interface {v13, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_93

    sget-object v13, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 3278
    invoke-interface {v13, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_93

    .line 3279
    const/16 v13, 0x80

    invoke-virtual {v1, v12, v13, v13}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3283
    :cond_93
    move/from16 v13, p5

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    .line 3285
    move-object/from16 v14, p1

    invoke-virtual {v14, v11}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Landroid/util/ArraySet;)Z

    move-result v15

    if-nez v15, :cond_12e

    .line 3286
    const/4 v15, 0x0

    .line 3287
    .local v15, "inheritsFromInstallPerm":Z
    const/16 v16, 0x0

    move-object/from16 v17, v3

    move/from16 v3, v16

    .local v3, "sourcePermNum":I
    .local v17, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_a8
    move-object/from16 v16, v4

    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .local v16, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_f0

    .line 3289
    invoke-virtual {v11, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3290
    .local v4, "sourcePerm":Ljava/lang/String;
    move/from16 v18, v5

    .end local v5    # "numSplitPerms":I
    .local v18, "numSplitPerms":I
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 3291
    .local v5, "sourceBp":Lcom/android/server/pm/permission/Permission;
    if-eqz v5, :cond_d1

    .line 3295
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v19

    if-nez v19, :cond_ca

    .line 3296
    const/4 v15, 0x1

    .line 3297
    move/from16 v20, v6

    goto :goto_f6

    .line 3288
    .end local v4    # "sourcePerm":Ljava/lang/String;
    .end local v5    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    :cond_ca
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v18

    goto :goto_a8

    .line 3292
    .restart local v4    # "sourcePerm":Ljava/lang/String;
    .restart local v5    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    :cond_d1
    move/from16 v19, v3

    .end local v3    # "sourcePermNum":I
    .local v19, "sourcePermNum":I
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object/from16 p6, v5

    .end local v5    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    .local p6, "sourceBp":Lcom/android/server/pm/permission/Permission;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v6

    .end local v6    # "numNewImplicitPerms":I
    .local v20, "numNewImplicitPerms":I
    const-string v6, "Unknown source permission in split permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3287
    .end local v4    # "sourcePerm":Ljava/lang/String;
    .end local v18    # "numSplitPerms":I
    .end local v19    # "sourcePermNum":I
    .end local v20    # "numNewImplicitPerms":I
    .end local p6    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "sourcePermNum":I
    .local v5, "numSplitPerms":I
    .restart local v6    # "numNewImplicitPerms":I
    :cond_f0
    move/from16 v19, v3

    move/from16 v18, v5

    move/from16 v20, v6

    .line 3301
    .end local v3    # "sourcePermNum":I
    .end local v5    # "numSplitPerms":I
    .end local v6    # "numNewImplicitPerms":I
    .restart local v18    # "numSplitPerms":I
    .restart local v20    # "numNewImplicitPerms":I
    :goto_f6
    if-nez v15, :cond_136

    .line 3303
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_12b

    .line 3304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not inherit from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as split permission is also new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p3

    goto :goto_178

    .line 3303
    :cond_12b
    move-object/from16 v3, p3

    goto :goto_178

    .line 3285
    .end local v15    # "inheritsFromInstallPerm":Z
    .end local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v17    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "numSplitPerms":I
    .end local v20    # "numNewImplicitPerms":I
    .local v3, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v4, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    .restart local v6    # "numNewImplicitPerms":I
    :cond_12e
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v18, v5

    move/from16 v20, v6

    .line 3312
    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .end local v6    # "numNewImplicitPerms":I
    .restart local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v17    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v18    # "numSplitPerms":I
    .restart local v20    # "numNewImplicitPerms":I
    :cond_136
    move-object/from16 v3, p3

    invoke-direct {v0, v11, v10, v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    goto :goto_178

    .line 3274
    .end local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v17    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "numSplitPerms":I
    .end local v20    # "numNewImplicitPerms":I
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    .restart local v6    # "numNewImplicitPerms":I
    :cond_13c
    move-object/from16 v14, p1

    move/from16 v13, p5

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v18, v5

    move/from16 v20, v6

    move-object/from16 v3, p3

    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .end local v6    # "numNewImplicitPerms":I
    .restart local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v17    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v18    # "numSplitPerms":I
    .restart local v20    # "numNewImplicitPerms":I
    goto :goto_178

    .line 3271
    .end local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v17    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "numSplitPerms":I
    .end local v20    # "numNewImplicitPerms":I
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    .restart local v6    # "numNewImplicitPerms":I
    :cond_14b
    move-object/from16 v16, v4

    move/from16 v18, v5

    move/from16 v20, v6

    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .end local v6    # "numNewImplicitPerms":I
    .restart local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v18    # "numSplitPerms":I
    .restart local v20    # "numNewImplicitPerms":I
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown new permission in split permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3268
    .end local v12    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v18    # "numSplitPerms":I
    .end local v20    # "numNewImplicitPerms":I
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    .restart local v6    # "numNewImplicitPerms":I
    :cond_16a
    move-object/from16 v14, p1

    move/from16 v13, p5

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v18, v5

    move/from16 v20, v6

    move-object/from16 v3, p3

    .line 3264
    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .end local v6    # "numNewImplicitPerms":I
    .end local v10    # "newPerm":Ljava/lang/String;
    .end local v11    # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v17    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v18    # "numSplitPerms":I
    .restart local v20    # "numNewImplicitPerms":I
    :goto_178
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move/from16 v5, v18

    move/from16 v6, v20

    goto/16 :goto_56

    .line 3318
    .end local v8    # "newImplicitPermNum":I
    .end local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v17    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "numSplitPerms":I
    .end local v20    # "numNewImplicitPerms":I
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    .restart local v6    # "numNewImplicitPerms":I
    :cond_184
    return-object v7
.end method

.method private shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z
    .registers 14
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "bp"    # Lcom/android/server/pm/permission/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Lcom/android/server/pm/permission/Permission;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3506
    .local p4, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3507
    .local v0, "allowed":Z
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1

    .line 3508
    .local v1, "isPrivilegedPermission":Z
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isOem()Z

    move-result v2

    .line 3509
    .local v2, "isOemPermission":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_aa

    if-nez v1, :cond_11

    if-eqz v2, :cond_aa

    :cond_11
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 3510
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3513
    .local v5, "permissionName":Ljava/lang/String;
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 3514
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3515
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3516
    .local v6, "disabledPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v6, :cond_33

    const/4 v7, 0x0

    goto :goto_37

    :cond_33
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 3517
    .local v7, "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_37
    if-eqz v7, :cond_58

    if-eqz v1, :cond_41

    .line 3518
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v8

    if-nez v8, :cond_49

    :cond_41
    if-eqz v2, :cond_58

    .line 3519
    invoke-static {v7, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 3521
    :cond_49
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 3522
    const/4 v0, 0x1

    goto :goto_58

    .line 3527
    :cond_55
    invoke-virtual {p4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3530
    .end local v6    # "disabledPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_58
    :goto_58
    goto :goto_6d

    .line 3531
    :cond_59
    if-eqz v1, :cond_61

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_69

    :cond_61
    if-eqz v2, :cond_6b

    .line 3532
    invoke-static {p1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6b

    :cond_69
    move v6, v3

    goto :goto_6c

    :cond_6b
    move v6, v4

    :goto_6c
    move v0, v6

    .line 3537
    :goto_6d
    if-eqz v0, :cond_aa

    if-eqz v1, :cond_aa

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVendorPrivileged()Z

    move-result v6

    if-nez v6, :cond_aa

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 3538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be granted to privileged vendor apk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3539
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3538
    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    const/4 v0, 0x0

    .line 3544
    .end local v5    # "permissionName":Ljava/lang/String;
    :cond_aa
    if-nez v0, :cond_bb

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPre23()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x17

    if-ge v5, v6, :cond_bb

    .line 3548
    const/4 v0, 0x1

    .line 3553
    :cond_bb
    if-nez v0, :cond_e6

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isInstaller()Z

    move-result v5

    if-eqz v5, :cond_e6

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x2

    .line 3554
    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3556
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3554
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e5

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x7

    .line 3557
    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3559
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3556
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 3562
    :cond_e5
    const/4 v0, 0x1

    .line 3564
    :cond_e6
    if-nez v0, :cond_100

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVerifier()Z

    move-result v5

    if-eqz v5, :cond_100

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x4

    .line 3565
    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3567
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3565
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 3570
    const/4 v0, 0x1

    .line 3572
    :cond_100
    if-nez v0, :cond_10f

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPreInstalled()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 3573
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 3575
    const/4 v0, 0x1

    .line 3577
    :cond_10f
    if-nez v0, :cond_123

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isKnownSigner()Z

    move-result v5

    if-eqz v5, :cond_123

    .line 3580
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getKnownCerts()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result v0

    .line 3588
    :cond_123
    if-nez v0, :cond_13c

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSetup()Z

    move-result v5

    if-eqz v5, :cond_13c

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3589
    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3591
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3589
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 3594
    const/4 v0, 0x1

    .line 3596
    :cond_13c
    if-nez v0, :cond_156

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSystemTextClassifier()Z

    move-result v3

    if-eqz v3, :cond_156

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x6

    .line 3597
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3599
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3597
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_156

    .line 3601
    const/4 v0, 0x1

    .line 3603
    :cond_156
    if-nez v0, :cond_171

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isConfigurator()Z

    move-result v3

    if-eqz v3, :cond_171

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xa

    .line 3604
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3606
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3604
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_171

    .line 3608
    const/4 v0, 0x1

    .line 3610
    :cond_171
    if-nez v0, :cond_18c

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isIncidentReportApprover()Z

    move-result v3

    if-eqz v3, :cond_18c

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xb

    .line 3611
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3613
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3611
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 3616
    const/4 v0, 0x1

    .line 3618
    :cond_18c
    if-nez v0, :cond_1a7

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isAppPredictor()Z

    move-result v3

    if-eqz v3, :cond_1a7

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xc

    .line 3619
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3621
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3619
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    .line 3623
    const/4 v0, 0x1

    .line 3625
    :cond_1a7
    if-nez v0, :cond_1c2

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isCompanion()Z

    move-result v3

    if-eqz v3, :cond_1c2

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xf

    .line 3626
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3628
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3626
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 3630
    const/4 v0, 0x1

    .line 3632
    :cond_1c2
    if-nez v0, :cond_1e7

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRetailDemo()Z

    move-result v3

    if-eqz v3, :cond_1e7

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0x10

    .line 3633
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3635
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3633
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 3635
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 3637
    const/4 v0, 0x1

    .line 3639
    :cond_1e7
    if-nez v0, :cond_202

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRecents()Z

    move-result v3

    if-eqz v3, :cond_202

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0x11

    .line 3640
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3642
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3640
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_202

    .line 3644
    const/4 v0, 0x1

    .line 3646
    :cond_202
    return v0
.end method

.method private shouldGrantPermissionBySignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "bp"    # Lcom/android/server/pm/permission/Permission;

    .line 3479
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3481
    .local v0, "systemPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3482
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 3492
    .local v2, "systemPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 3493
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/SigningDetails;

    move-result-object v3

    .line 3494
    .local v3, "sourceSigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 3495
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 3494
    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v4

    if-nez v4, :cond_40

    .line 3497
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 3498
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 3499
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    .line 3498
    invoke-virtual {v4, v6, v5}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v4

    if-eqz v4, :cond_41

    :cond_40
    const/4 v1, 0x1

    .line 3494
    :cond_41
    return v1
.end method

.method private static toIntArray(Landroid/util/ArraySet;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1712
    .local p0, "users":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1713
    .local v0, "userId":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1714
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1713
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1716
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method private updateAllPermissions(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "fingerprintChanged"    # Z

    .line 4030
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 4032
    const/4 v0, 0x1

    .line 4033
    if-eqz p2, :cond_8

    .line 4034
    const/4 v1, 0x6

    goto :goto_9

    .line 4035
    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    .line 4036
    .local v0, "flags":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_c
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_19

    .line 4038
    .end local v0    # "flags":I
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4039
    nop

    .line 4040
    return-void

    .line 4038
    :catchall_19
    move-exception v0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4039
    throw v0
.end method

.method private updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "overridePolicy"    # Z
    .param p8, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 784
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p8

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 785
    return-void

    .line 788
    :cond_15
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v7, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 790
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "updatePermissionFlags"

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 795
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_39

    if-eqz p7, :cond_30

    goto :goto_39

    .line 796
    :cond_30
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_39
    :goto_39
    const/16 v0, 0x3e8

    if-eq v10, v0, :cond_63

    .line 802
    and-int/lit8 v0, p3, -0x11

    .line 803
    .end local p3    # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v1, p4, -0x11

    .line 804
    .end local p4    # "flagValues":I
    .local v1, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 805
    and-int/lit8 v1, v1, -0x21

    .line 806
    and-int/lit16 v1, v1, -0x1001

    .line 807
    and-int/lit16 v1, v1, -0x801

    .line 808
    and-int/lit16 v1, v1, -0x2001

    .line 809
    and-int/lit16 v1, v1, -0x4001

    .line 812
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    const/16 v2, 0x7d0

    if-eq v10, v2, :cond_60

    if-eqz v10, :cond_60

    .line 814
    and-int/lit8 v1, v1, -0x41

    move v2, v1

    move v1, v0

    goto :goto_67

    .line 818
    :cond_60
    move v2, v1

    move v1, v0

    goto :goto_67

    .line 801
    .end local v0    # "flagMask":I
    .end local v1    # "flagValues":I
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    :cond_63
    move/from16 v1, p3

    move/from16 v2, p4

    .line 818
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .local v1, "flagMask":I
    .local v2, "flagValues":I
    :goto_67
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 819
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v3, :cond_88

    .line 820
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void

    .line 823
    :cond_88
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_171

    .line 827
    const/4 v0, 0x0

    .line 829
    .local v0, "isRequested":Z
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 830
    const/4 v0, 0x1

    .line 832
    :cond_9c
    if-nez v0, :cond_c2

    .line 834
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 835
    invoke-virtual {v5, v8, v11}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 836
    .local v5, "sharedUserPackageNames":[Ljava/lang/String;
    array-length v6, v5

    const/4 v13, 0x0

    :goto_a6
    if-ge v13, v6, :cond_c2

    aget-object v14, v5, v13

    .line 837
    .local v14, "sharedUserPackageName":Ljava/lang/String;
    iget-object v15, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    .line 839
    .local v15, "sharedUserPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v15, :cond_bf

    .line 840
    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 841
    const/4 v0, 0x1

    .line 842
    move v4, v0

    goto :goto_c3

    .line 836
    .end local v14    # "sharedUserPackageName":Ljava/lang/String;
    .end local v15    # "sharedUserPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_bf
    add-int/lit8 v13, v13, 0x1

    goto :goto_a6

    .line 849
    .end local v5    # "sharedUserPackageNames":[Ljava/lang/String;
    :cond_c2
    move v4, v0

    .end local v0    # "isRequested":Z
    .local v4, "isRequested":Z
    :goto_c3
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 850
    :try_start_c6
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 851
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_155

    .line 855
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v6

    .line 857
    .local v6, "isRuntimePermission":Z
    invoke-direct {v7, v3, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v13

    .line 858
    .local v13, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v13, :cond_fc

    .line 859
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing permissions state for "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " and user "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    monitor-exit v5

    return-void

    .line 863
    :cond_fc
    invoke-virtual {v13, v9}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_128

    if-nez v4, :cond_128

    .line 864
    const-string v10, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " isn\'t requested by package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    monitor-exit v5

    return-void

    .line 868
    :cond_128
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    move-result v10

    move v0, v10

    .line 869
    .end local v13    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v0, "permissionUpdated":Z
    monitor-exit v5
    :try_end_12e
    .catchall {:try_start_c6 .. :try_end_12e} :catchall_16e

    .line 871
    if-eqz v0, :cond_135

    if-eqz v6, :cond_135

    .line 872
    invoke-direct {v7, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 874
    :cond_135
    if-eqz v0, :cond_154

    if-eqz v12, :cond_154

    .line 877
    if-nez v6, :cond_147

    .line 878
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v5

    invoke-static {v11, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 879
    .local v5, "userUid":I
    invoke-virtual {v12, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    .line 880
    .end local v5    # "userUid":I
    goto :goto_154

    .line 881
    :cond_147
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v10, 0x0

    aput v11, v5, v10

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v13

    invoke-virtual {v12, v5, v10, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdatedNotifyListener([IZI)V

    .line 884
    :cond_154
    :goto_154
    return-void

    .line 852
    .end local v6    # "isRuntimePermission":Z
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    :cond_155
    :try_start_155
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown permission: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "flagMask":I
    .end local v2    # "flagValues":I
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "isRequested":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "overridePolicy":Z
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v6

    .line 869
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v1    # "flagMask":I
    .restart local v2    # "flagValues":I
    .restart local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v4    # "isRequested":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "overridePolicy":Z
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :catchall_16e
    move-exception v0

    monitor-exit v5
    :try_end_170
    .catchall {:try_start_155 .. :try_end_170} :catchall_16e

    throw v0

    .line 824
    .end local v4    # "isRequested":Z
    :cond_171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 4161
    if-nez p1, :cond_4

    .line 4162
    const/4 v0, 0x1

    return v0

    .line 4165
    :cond_4
    const/4 v0, 0x0

    .line 4166
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 4167
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/Permission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4168
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 4169
    .local v4, "bp":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 4170
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/Permission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 4172
    :cond_2e
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 4176
    goto :goto_13

    .line 4180
    :cond_39
    const/4 v0, 0x1

    .line 4181
    if-nez v1, :cond_42

    .line 4182
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v5

    .line 4184
    :cond_42
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4185
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    goto :goto_13

    .line 4186
    :cond_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_12f

    .line 4187
    if-eqz v1, :cond_12e

    .line 4188
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 4189
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 4192
    .restart local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v2, :cond_c2

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    goto :goto_c2

    .line 4228
    :cond_6d
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4229
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 4230
    .local v5, "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4231
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 4232
    .local v6, "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4233
    if-eqz v5, :cond_8a

    if-eqz v6, :cond_8a

    .line 4234
    :try_start_88
    monitor-exit v7

    goto :goto_54

    .line 4236
    :cond_8a
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing dangling permission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4237
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4236
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4238
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4239
    monitor-exit v7

    .line 4240
    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v5    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_54

    .line 4239
    .restart local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v5    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v6    # "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_bf
    move-exception v3

    monitor-exit v7
    :try_end_c1
    .catchall {:try_start_88 .. :try_end_c1} :catchall_bf

    throw v3

    .line 4193
    .end local v5    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_c2
    :goto_c2
    invoke-direct {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionDeclaredByDisabledSystemPkg(Lcom/android/server/pm/permission/Permission;)Z

    move-result v5

    if-nez v5, :cond_11c

    .line 4194
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4195
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4194
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_112

    .line 4197
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 4198
    .local v5, "userIds":[I
    array-length v6, v5

    .line 4199
    .local v6, "numUserIds":I
    const/4 v7, 0x0

    .local v7, "userIdNum":I
    :goto_100
    if-ge v7, v6, :cond_111

    .line 4200
    aget v8, v5, v7

    .line 4201
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v10, p0, v4, v8, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4199
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_100

    .line 4205
    .end local v5    # "userIds":[I
    .end local v6    # "numUserIds":I
    .end local v7    # "userIdNum":I
    :cond_111
    goto :goto_11c

    .line 4206
    :cond_112
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4223
    :cond_11c
    :goto_11c
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4224
    :try_start_11f
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4225
    monitor-exit v5

    .line 4226
    goto/16 :goto_54

    .line 4225
    :catchall_12b
    move-exception v3

    monitor-exit v5
    :try_end_12d
    .catchall {:try_start_11f .. :try_end_12d} :catchall_12b

    throw v3

    .line 4242
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_12e
    return v0

    .line 4186
    :catchall_12f
    move-exception v3

    :try_start_130
    monitor-exit v2
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw v3
.end method

.method private updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4315
    if-nez p1, :cond_4

    .line 4316
    const/4 v0, 0x1

    return v0

    .line 4318
    :cond_4
    const/4 v0, 0x0

    .line 4320
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 4321
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/Permission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4322
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4323
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/Permission;>;"
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 4324
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 4325
    .local v4, "bp":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 4329
    goto :goto_13

    .line 4333
    :cond_2a
    const/4 v0, 0x1

    .line 4334
    if-eqz p2, :cond_37

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 4335
    :cond_37
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission tree "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4336
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4335
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4337
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 4339
    :cond_64
    if-nez v1, :cond_6c

    .line 4340
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v5

    .line 4342
    :cond_6c
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4343
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    goto :goto_13

    .line 4344
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/Permission;>;"
    :cond_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_9 .. :try_end_72} :catchall_da

    .line 4345
    if-eqz v1, :cond_d9

    .line 4346
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 4347
    .local v3, "bp":Lcom/android/server/pm/permission/Permission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4348
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 4349
    .local v4, "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4350
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 4351
    .local v5, "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4352
    if-eqz v4, :cond_a1

    if-eqz v5, :cond_a1

    .line 4353
    :try_start_9f
    monitor-exit v6

    goto :goto_78

    .line 4355
    :cond_a1
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission tree: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4356
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4355
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4358
    monitor-exit v6

    .line 4359
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_78

    .line 4358
    .restart local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_d6
    move-exception v2

    monitor-exit v6
    :try_end_d8
    .catchall {:try_start_9f .. :try_end_d8} :catchall_d6

    throw v2

    .line 4361
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_d9
    return v0

    .line 4344
    :catchall_da
    move-exception v3

    :try_start_db
    monitor-exit v2
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw v3
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4011
    if-nez p2, :cond_5

    const/4 v0, 0x3

    move v5, v0

    goto :goto_7

    .line 4012
    :cond_5
    const/4 v0, 0x2

    move v5, v0

    :goto_7
    nop

    .line 4013
    .local v5, "flags":I
    nop

    .line 4014
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 4013
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 4015
    return-void
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 23
    .param p1, "changingPkgName"    # Ljava/lang/String;
    .param p2, "changingPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 4101
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    .line 4105
    .local v8, "permissionTreesSourcePackageChanged":Z
    move-object/from16 v9, p1

    move-object/from16 v10, p5

    invoke-direct {v7, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)Z

    move-result v11

    .line 4108
    .local v11, "permissionSourcePackageChanged":Z
    or-int v0, v8, v11

    if-eqz v0, :cond_1d

    .line 4111
    const-string v0, "PackageManager"

    const-string v1, "Permission ownership changed. Updating all permissions."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    or-int/lit8 v0, p4, 0x1

    move v12, v0

    .end local p4    # "flags":I
    .local v0, "flags":I
    goto :goto_1f

    .line 4108
    .end local v0    # "flags":I
    .restart local p4    # "flags":I
    :cond_1d
    move/from16 v12, p4

    .line 4115
    .end local p4    # "flags":I
    .local v12, "flags":I
    :goto_1f
    const-wide/32 v13, 0x40000

    const-string/jumbo v0, "restorePermissionState"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4117
    and-int/lit8 v0, v12, 0x1

    const/16 v16, 0x1

    if-eqz v0, :cond_4d

    .line 4118
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_35

    move/from16 v3, v16

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    .line 4119
    .local v3, "replaceAll":Z
    :goto_36
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v15, v5

    move-object/from16 v5, p1

    move-object v13, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    invoke-virtual {v13, v15}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4131
    .end local v3    # "replaceAll":Z
    :cond_4d
    if-eqz p2, :cond_72

    .line 4133
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v6

    .line 4134
    .local v6, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v0, v12, 0x2

    if-eqz v0, :cond_62

    .line 4135
    move-object/from16 v13, p3

    invoke-static {v13, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    move/from16 v2, v16

    goto :goto_65

    .line 4134
    :cond_62
    move-object/from16 v13, p3

    .line 4135
    :cond_64
    const/4 v2, 0x0

    .line 4136
    .local v2, "replace":Z
    :goto_65
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    goto :goto_74

    .line 4131
    .end local v2    # "replace":Z
    .end local v6    # "volumeUuid":Ljava/lang/String;
    :cond_72
    move-object/from16 v13, p3

    .line 4139
    :goto_74
    const-wide/32 v0, 0x40000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4140
    return-void
.end method


# virtual methods
.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1163
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1166
    return v1

    .line 1169
    :cond_b
    nop

    .line 1170
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1171
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_19

    .line 1172
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1174
    :cond_19
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_27

    .line 1175
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1179
    :cond_27
    return v1
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1047
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->addListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1052
    return-void
.end method

.method public addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;

    .line 2118
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2119
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    monitor-exit v0

    .line 2121
    return-void

    .line 2120
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 13
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 637
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_86

    .line 640
    iget v1, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v1, :cond_1d

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_15

    goto :goto_1d

    .line 641
    :cond_15
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Label must be specified in permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_20
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 647
    .local v2, "tree":Lcom/android/server/pm/permission/Permission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    .line 648
    .local v3, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v3, :cond_34

    const/4 v4, 0x1

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    .line 649
    .local v4, "added":Z
    :goto_35
    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v5

    .line 650
    .local v5, "fixedLevel":I
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V

    .line 651
    if-eqz v4, :cond_4e

    .line 652
    new-instance v6, Lcom/android/server/pm/permission/Permission;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    goto :goto_54

    .line 653
    :cond_4e
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 657
    :goto_54
    invoke-virtual {v3, v5, p1, v2}, Lcom/android/server/pm/permission/Permission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    .line 658
    .local v6, "changed":Z
    if-eqz v4, :cond_5f

    .line 659
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 661
    .end local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v5    # "fixedLevel":I
    :cond_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_20 .. :try_end_60} :catchall_83

    .line 662
    if-eqz v6, :cond_67

    .line 663
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 665
    :cond_67
    return v4

    .line 654
    .end local v6    # "changed":Z
    .restart local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v5    # "fixedLevel":I
    :cond_68
    :try_start_68
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "info":Landroid/content/pm/PermissionInfo;
    .end local p2    # "async":Z
    throw v6

    .line 661
    .end local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "added":Z
    .end local v5    # "fixedLevel":I
    .restart local v0    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "info":Landroid/content/pm/PermissionInfo;
    .restart local p2    # "async":Z
    :catchall_83
    move-exception v2

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_68 .. :try_end_85} :catchall_83

    throw v2

    .line 638
    :cond_86
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant apps can\'t add permissions"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public backupRuntimePermissions(I)[B
    .registers 7
    .param p1, "userId"    # I

    .line 2051
    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2052
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2053
    .local v0, "backup":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2054
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2053
    invoke-virtual {v1, v2, v3, v4}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2057
    :try_start_23
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2d} :catch_2e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_2d} :catch_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_23 .. :try_end_2d} :catch_2e

    return-object v1

    .line 2058
    :catch_2e
    move-exception v1

    .line 2059
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create permission backup for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2060
    const/4 v2, 0x0

    return-object v2
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 934
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 935
    return v1

    .line 938
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 939
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_13

    .line 940
    return v1

    .line 942
    :cond_13
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public checkUidPermission(ILjava/lang/String;)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;

    .line 1000
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1001
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1002
    const/4 v1, -0x1

    return v1

    .line 1005
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1006
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "PackageManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 473
    return-void

    .line 476
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, p1, p3}, Landroid/permission/PermissionControllerManager;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public getAllAppOpPermissionPackages()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 5190
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5191
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 5192
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getAllAppOpPermissionPackages()Landroid/util/ArrayMap;

    move-result-object v1

    .line 5193
    .local v1, "appOpPermissionPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 5194
    .local v2, "deepClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 5195
    .local v3, "appOpPermissionPackagesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_2d

    .line 5196
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5197
    .local v5, "appOpPermission":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 5198
    .local v6, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5195
    nop

    .end local v5    # "appOpPermission":Ljava/lang/String;
    .end local v6    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 5200
    .end local v4    # "i":I
    :cond_2d
    monitor-exit v0

    return-object v2

    .line 5201
    .end local v1    # "appOpPermissionPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "deepClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3    # "appOpPermissionPackagesSize":I
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .registers 9
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 518
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 519
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 520
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 523
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 525
    :try_start_19
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroups()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    .line 526
    .local v4, "pg":Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    nop

    .end local v4    # "pg":Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    goto :goto_23

    .line 528
    :cond_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_47

    .line 530
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 531
    .local v2, "callingUserId":I
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 533
    return-object v1

    .line 528
    .end local v2    # "callingUserId":I
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v3
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/ArrayList;
    .registers 7
    .param p1, "protection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 5316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5318
    .local v0, "matchingPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5319
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 5320
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getProtection()I

    move-result v4

    if-ne v4, p1, :cond_2c

    .line 5321
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5323
    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_2c
    goto :goto_12

    .line 5324
    :cond_2d
    monitor-exit v1

    .line 5326
    return-object v0

    .line 5324
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/ArrayList;
    .registers 7
    .param p1, "protectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 5333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5335
    .local v0, "matchingPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5336
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 5337
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getProtectionFlags()I

    move-result v4

    and-int/2addr v4, p1

    if-ne v4, p1, :cond_2d

    .line 5338
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5340
    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_2d
    goto :goto_12

    .line 5341
    :cond_2e
    monitor-exit v1

    .line 5343
    return-object v0

    .line 5341
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .registers 11
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

    .line 1066
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1071
    int-to-float v0, p3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1073
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_2c

    .line 1074
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowlistedRestrictedPermissions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_2c
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1080
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_35

    .line 1081
    return-object v1

    .line 1084
    :cond_35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1085
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1086
    return-object v1

    .line 1088
    :cond_46
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_52

    const/4 v1, 0x1

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    .line 1091
    .local v1, "isCallerPrivileged":Z
    :goto_53
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1092
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v3

    .line 1094
    .local v3, "isCallerInstallerOnRecord":Z
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_68

    if-eqz v1, :cond_60

    goto :goto_68

    .line 1096
    :cond_60
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1100
    :cond_68
    :goto_68
    and-int/lit8 v4, p2, 0x6

    if-eqz v4, :cond_79

    .line 1102
    if-nez v1, :cond_79

    if-eqz v3, :cond_71

    goto :goto_79

    .line 1103
    :cond_71
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1109
    :cond_79
    :goto_79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1111
    .local v4, "identity":J
    :try_start_7d
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v6
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_85

    .line 1113
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    return-object v6

    .line 1113
    :catchall_85
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw v6
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 5279
    const-string/jumbo v0, "permissionName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5280
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGidsForUid(I)[I
    .registers 9
    .param p1, "uid"    # I

    .line 5237
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5238
    .local v0, "appId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5239
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5240
    :try_start_b
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    .line 5241
    .local v3, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v3, :cond_37

    .line 5242
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for app ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and user ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5244
    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    monitor-exit v2

    return-object v4

    .line 5246
    :cond_37
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/permission/UidPermissionState;->computeGids([II)[I

    move-result-object v4

    monitor-exit v2

    return-object v4

    .line 5247
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_3f
    move-exception v3

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_3f

    throw v3
.end method

.method public getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5263
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5264
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5265
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 19
    .param p1, "appId"    # I

    .line 5207
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    move-object v3, v0

    .line 5208
    .local v3, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5209
    :try_start_d
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v0

    .line 5210
    .local v0, "userIds":[I
    array-length v5, v0

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v5, :cond_84

    aget v7, v0, v6

    .line 5211
    .local v7, "userId":I
    invoke-direct {v1, v2, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v8

    .line 5212
    .local v8, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v8, :cond_44

    .line 5213
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing permissions state for app ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and user ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    move-object/from16 v16, v0

    goto :goto_7d

    .line 5218
    :cond_44
    invoke-virtual {v8}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v9

    .line 5219
    .local v9, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 5220
    .local v10, "permissionStatesSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4d
    if-ge v11, v10, :cond_7b

    .line 5221
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/permission/PermissionState;

    .line 5223
    .local v12, "permissionState":Lcom/android/server/pm/permission/PermissionState;
    new-instance v13, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5224
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v14

    .line 5225
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v15

    .line 5226
    move-object/from16 v16, v0

    .end local v0    # "userIds":[I
    .local v16, "userIds":[I
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v0

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v1

    invoke-direct {v13, v14, v15, v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    move-object v0, v13

    .line 5227
    .local v0, "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v3, v0, v7}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 5220
    .end local v0    # "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .end local v12    # "permissionState":Lcom/android/server/pm/permission/PermissionState;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_4d

    .end local v16    # "userIds":[I
    .local v0, "userIds":[I
    :cond_7b
    move-object/from16 v16, v0

    .line 5210
    .end local v0    # "userIds":[I
    .end local v7    # "userId":I
    .end local v8    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .end local v10    # "permissionStatesSize":I
    .end local v11    # "i":I
    .restart local v16    # "userIds":[I
    :goto_7d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_15

    .end local v16    # "userIds":[I
    .restart local v0    # "userIds":[I
    :cond_84
    move-object/from16 v16, v0

    .line 5230
    .end local v0    # "userIds":[I
    monitor-exit v4

    .line 5231
    return-object v3

    .line 5230
    :catchall_88
    move-exception v0

    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_d .. :try_end_8a} :catchall_88

    throw v0
.end method

.method public getLegacyPermissions()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    .line 5176
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5177
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5178
    .local v1, "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 5179
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    new-instance v4, Lcom/android/server/pm/permission/LegacyPermission;

    .line 5180
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v7

    .line 5181
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 5182
    .local v4, "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5183
    nop

    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    goto :goto_12

    .line 5184
    :cond_38
    monitor-exit v0

    return-object v1

    .line 5185
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 693
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 694
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .registers 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5271
    const-string/jumbo v0, "permissionName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5272
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5273
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionGidsInternal(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 11
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 541
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 542
    return-object v2

    .line 546
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_11
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v3

    .line 548
    .local v3, "permissionGroup":Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    if-nez v3, :cond_1b

    .line 549
    monitor-exit v1

    return-object v2

    .line 551
    :cond_1b
    int-to-long v4, p2

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    move-object v3, v4

    .line 553
    .local v3, "permissionGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_4a

    .line 555
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 556
    .local v1, "callingUserId":I
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 558
    const v4, 0x534e4554

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "186113473"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 559
    return-object v2

    .line 561
    :cond_49
    return-object v3

    .line 553
    .end local v1    # "callingUserId":I
    .end local v3    # "permissionGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 14
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 568
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 569
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 570
    return-object v2

    .line 573
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 574
    .local v1, "opPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I

    move-result v3

    .line 577
    .local v3, "targetSdkVersion":I
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 578
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 579
    .local v5, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v5, :cond_25

    .line 580
    monitor-exit v4

    return-object v2

    .line 582
    :cond_25
    invoke-virtual {v5, p3, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    move-object v5, v6

    .line 583
    .local v5, "permissionInfo":Landroid/content/pm/PermissionInfo;
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_53

    .line 585
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 586
    .local v4, "callingUserId":I
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 588
    const v6, 0x534e4554

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "183122164"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 589
    return-object v2

    .line 591
    :cond_52
    return-object v5

    .line 583
    .end local v4    # "callingUserId":I
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;

    .line 5307
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5308
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5309
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
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

    .line 3324
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1319
    .local v7, "callingUid":I
    nop

    .line 1320
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v7, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move v3, v0

    .line 1323
    .local v3, "overridePolicy":Z
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v7

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1325
    return-void
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2015
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_20

    .line 2016
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPermissionRevokedByPolicy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    :cond_20
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 2022
    return v1

    .line 2025
    :cond_28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2026
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2027
    return v1

    .line 2030
    :cond_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2032
    .local v2, "identity":J
    :try_start_39
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_46

    .line 2033
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_42

    const/4 v1, 0x1

    .line 2035
    :cond_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2033
    return v1

    .line 2035
    .end local v4    # "flags":I
    :catchall_46
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2036
    throw v1
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5253
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5256
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getAllPermissionGroups$0$com-android-server-pm-permission-PermissionManagerServiceImpl(IILandroid/content/pm/PermissionGroupInfo;)Z
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "it"    # Landroid/content/pm/PermissionGroupInfo;

    .line 531
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getGrantedPermissionsInternal$7$com-android-server-pm-permission-PermissionManagerServiceImpl(ILcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 2565
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 2566
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 2567
    return v1

    .line 2569
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_30

    .line 2570
    const v2, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "140256621"

    aput-object v5, v4, v3

    .line 2571
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    .line 2570
    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v3, 0x2

    aput-object p3, v4, v3

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2572
    return v1

    .line 2574
    :cond_30
    return v3
.end method

.method synthetic lambda$onPackageAddedInternal$15$com-android-server-pm-permission-PermissionManagerServiceImpl(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V
    .registers 6
    .param p1, "hasOldPkg"    # Z
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "oldPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "hasPermissionDefinitionChanges"    # Z
    .param p5, "permissionsWithChangedDefinition"    # Ljava/util/List;

    .line 4808
    if-eqz p1, :cond_b

    .line 4809
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4810
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4811
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSystemAlertWindowIfUpgradedPast23(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4813
    :cond_b
    if-eqz p4, :cond_10

    .line 4814
    invoke-direct {p0, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V

    .line 4817
    :cond_10
    return-void
.end method

.method synthetic lambda$onSystemReady$12$com-android-server-pm-permission-PermissionManagerServiceImpl(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4505
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$queryPermissionsByGroup$1$com-android-server-pm-permission-PermissionManagerServiceImpl(IILandroid/content/pm/PermissionInfo;)Z
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "it"    # Landroid/content/pm/PermissionInfo;

    .line 629
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$readLegacyPermissionStateTEMP$13$com-android-server-pm-permission-PermissionManagerServiceImpl(ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4612
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    .line 4614
    .local v0, "appId":I
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4615
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4616
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSharedUserAppId()I

    move-result v2

    .line 4615
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    .line 4616
    invoke-interface {v1}, Lcom/android/server/pm/pkg/SharedUserApi;->getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .local v1, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    goto :goto_1d

    .line 4618
    .end local v1    # "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    :cond_19
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .line 4620
    .restart local v1    # "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    :goto_1d
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4621
    :try_start_20
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v3

    .line 4622
    .local v3, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4623
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->isInstallPermissionsFixed()Z

    move-result v5

    .line 4622
    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 4624
    invoke-virtual {v3, v0}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v4

    .line 4625
    .local v4, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    .line 4626
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->isMissing(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    .line 4627
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V

    .line 4628
    .end local v3    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    monitor-exit v2

    .line 4629
    return-void

    .line 4628
    :catchall_48
    move-exception v3

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_20 .. :try_end_4a} :catchall_48

    throw v3
.end method

.method synthetic lambda$restoreDelayedRuntimePermissions$4$com-android-server-pm-permission-PermissionManagerServiceImpl(ILjava/lang/Boolean;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "hasMoreBackup"    # Ljava/lang/Boolean;

    .line 2106
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2107
    return-void

    .line 2109
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2110
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2111
    monitor-exit v0

    .line 2112
    return-void

    .line 2111
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1
.end method

.method synthetic lambda$revokeRuntimePermissionsIfGroupChangedInternal$5$com-android-server-pm-permission-PermissionManagerServiceImpl([ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 27
    .param p1, "userIds"    # [I
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "oldPermissionGroupName"    # Ljava/lang/String;
    .param p5, "newPermissionGroupName"    # Ljava/lang/String;
    .param p6, "callingUid"    # I
    .param p7, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2292
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-interface/range {p7 .. p7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2293
    .local v12, "packageName":Ljava/lang/String;
    array-length v13, v10

    const/4 v14, 0x0

    move v15, v14

    :goto_d
    if-ge v15, v13, :cond_ad

    aget v8, v10, v15

    .line 2294
    .local v8, "userId":I
    nop

    .line 2295
    invoke-virtual {v9, v12, v11, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 2296
    .local v16, "permissionState":I
    if-nez v16, :cond_a7

    .line 2297
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "72710897"

    aput-object v2, v1, v14

    .line 2298
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Revoking permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as the group changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v7, p4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v6, p5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2297
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2305
    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_6a
    iget-object v5, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_end_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_6c} :catch_81

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v17, v5

    move/from16 v5, p6

    move v6, v8

    move-object v7, v0

    move/from16 v18, v8

    .end local v8    # "userId":I
    .local v18, "userId":I
    move-object/from16 v8, v17

    :try_start_7b
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 2311
    goto :goto_a9

    .line 2308
    :catch_7f
    move-exception v0

    goto :goto_84

    .end local v18    # "userId":I
    .restart local v8    # "userId":I
    :catch_81
    move-exception v0

    move/from16 v18, v8

    .line 2309
    .end local v8    # "userId":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v18    # "userId":I
    :goto_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a9

    .line 2296
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v18    # "userId":I
    .restart local v8    # "userId":I
    :cond_a7
    move/from16 v18, v8

    .line 2293
    .end local v8    # "userId":I
    .end local v16    # "permissionState":I
    :goto_a9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_d

    .line 2314
    :cond_ad
    return-void
.end method

.method synthetic lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$6$com-android-server-pm-permission-PermissionManagerServiceImpl([ILjava/lang/String;ZILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 30
    .param p1, "userIds"    # [I
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "isInternalPermission"    # Z
    .param p4, "callingUid"    # I
    .param p5, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2343
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2344
    .local v12, "packageName":Ljava/lang/String;
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v13

    .line 2345
    .local v13, "appId":I
    const/16 v0, 0x2710

    if-ge v13, v0, :cond_13

    .line 2347
    return-void

    .line 2349
    :cond_13
    array-length v14, v10

    const/4 v15, 0x0

    move v8, v15

    :goto_16
    if-ge v8, v14, :cond_140

    aget v7, v10, v8

    .line 2350
    .local v7, "userId":I
    invoke-virtual {v9, v12, v11, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 2352
    .local v16, "permissionState":I
    invoke-virtual {v9, v12, v11, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    .line 2353
    .local v17, "flags":I
    const v18, 0x8034

    .line 2357
    .local v18, "flagMask":I
    if-nez v16, :cond_137

    const v0, 0x8034

    and-int v0, v17, v0

    if-nez v0, :cond_137

    .line 2359
    invoke-static {v7, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v19

    .line 2360
    .local v19, "uid":I
    const/4 v0, 0x2

    const/4 v1, 0x3

    const v2, 0x534e4554

    const-string v3, " due to definition change"

    const-string v4, " from package "

    const-string v5, "Revoking permission "

    const/4 v6, 0x1

    if-eqz p3, :cond_6f

    .line 2361
    new-array v1, v1, [Ljava/lang/Object;

    const-string v20, "195338390"

    aput-object v20, v1, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_d2

    .line 2365
    :cond_6f
    new-array v2, v1, [Ljava/lang/Object;

    const-string v21, "154505240"

    aput-object v21, v2, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v2, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    const v6, 0x534e4554

    invoke-static {v6, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2368
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "168319670"

    aput-object v2, v1, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v0, 0x534e4554

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2372
    :goto_d2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "PackageManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_f6
    iget-object v5, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_f8} :catch_110

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v20, v5

    move/from16 v5, p4

    move-object v15, v6

    move v6, v7

    move/from16 v22, v7

    .end local v7    # "userId":I
    .local v22, "userId":I
    move-object v7, v0

    move/from16 v23, v8

    move-object/from16 v8, v20

    :try_start_10a
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_10e

    .line 2380
    goto :goto_13b

    .line 2377
    :catch_10e
    move-exception v0

    goto :goto_116

    .end local v22    # "userId":I
    .restart local v7    # "userId":I
    :catch_110
    move-exception v0

    move-object v15, v6

    move/from16 v22, v7

    move/from16 v23, v8

    .line 2378
    .end local v7    # "userId":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "userId":I
    :goto_116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13b

    .line 2357
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v19    # "uid":I
    .end local v22    # "userId":I
    .restart local v7    # "userId":I
    :cond_137
    move/from16 v22, v7

    move/from16 v23, v8

    .line 2349
    .end local v7    # "userId":I
    .end local v16    # "permissionState":I
    .end local v17    # "flags":I
    .end local v18    # "flagMask":I
    :goto_13b
    add-int/lit8 v8, v23, 0x1

    const/4 v15, 0x0

    goto/16 :goto_16

    .line 2383
    :cond_140
    return-void
.end method

.method synthetic lambda$updatePermissionFlagsForAllApps$2$com-android-server-pm-permission-PermissionManagerServiceImpl(I[ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "changed"    # [Z
    .param p3, "effectiveFlagMask"    # I
    .param p4, "effectiveFlagValues"    # I
    .param p5, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 913
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_3
    invoke-direct {p0, p5, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    .line 915
    .local v1, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v1, :cond_31

    .line 916
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing permissions state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 917
    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 916
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    monitor-exit v0

    return-void

    .line 921
    :cond_31
    const/4 v2, 0x0

    aget-boolean v3, p2, v2

    invoke-virtual {v1, p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlagsForAllPermissions(II)Z

    move-result v4

    or-int/2addr v3, v4

    aput-boolean v3, p2, v2

    .line 923
    .end local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_46

    .line 924
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 925
    return-void

    .line 923
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method synthetic lambda$updatePermissionSourcePackage$10$com-android-server-pm-permission-PermissionManagerServiceImpl(Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 11
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .param p4, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4202
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4203
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4202
    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method synthetic lambda$updatePermissionSourcePackage$11$com-android-server-pm-permission-PermissionManagerServiceImpl(Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 12
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;
    .param p2, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4207
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 4208
    .local v0, "userIds":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4209
    :try_start_9
    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_46

    aget v4, v0, v3

    .line 4210
    .local v4, "userId":I
    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    .line 4212
    .local v5, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v5, :cond_3c

    .line 4213
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4214
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4213
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    goto :goto_43

    .line 4217
    :cond_3c
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    .line 4209
    .end local v4    # "userId":I
    .end local v5    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4219
    :cond_46
    monitor-exit v1

    .line 4220
    return-void

    .line 4219
    :catchall_48
    move-exception v2

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method synthetic lambda$updatePermissions$9$com-android-server-pm-permission-PermissionManagerServiceImpl(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 15
    .param p1, "changingPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replaceAll"    # Z
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "changingPkgName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .param p6, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4120
    if-ne p6, p1, :cond_3

    .line 4121
    return-void

    .line 4124
    :cond_3
    invoke-static {p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 4125
    .local v0, "volumeUuid":Ljava/lang/String;
    if-eqz p2, :cond_11

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    move v4, v1

    .line 4126
    .local v4, "replace":Z
    const/4 v7, -0x1

    move-object v2, p0

    move-object v3, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    .line 4128
    return-void
.end method

.method synthetic lambda$writeLegacyPermissionStateTEMP$14$com-android-server-pm-permission-PermissionManagerServiceImpl(ILcom/android/server/pm/PackageSetting;)V
    .registers 20
    .param p1, "userId"    # I
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 4660
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    .line 4662
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4663
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4664
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v4

    .line 4663
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManagerInternal;->getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v0

    .line 4664
    invoke-interface {v0}, Lcom/android/server/pm/pkg/SharedUserApi;->getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    move-object v4, v0

    .local v0, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    goto :goto_25

    .line 4666
    .end local v0    # "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    move-object v4, v0

    .line 4668
    .local v4, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    :goto_25
    invoke-virtual {v4, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->remove(I)V

    .line 4669
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    .line 4671
    .local v5, "appId":I
    iget-object v6, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4672
    :try_start_2f
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v0

    .line 4673
    .local v0, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 4674
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    .line 4677
    :cond_43
    invoke-virtual {v0, v5}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    .line 4678
    .local v7, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v7, :cond_71

    .line 4679
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing permission state for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    monitor-exit v6

    return-void

    .line 4684
    :cond_71
    invoke-virtual {v7}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v8

    invoke-virtual {v4, v8, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(ZI)V

    .line 4685
    invoke-virtual {v7}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v8

    .line 4686
    .local v8, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 4687
    .local v9, "permissionStatesSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_81
    if-ge v10, v9, :cond_ad

    .line 4688
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/permission/PermissionState;

    .line 4690
    .local v11, "permissionState":Lcom/android/server/pm/permission/PermissionState;
    new-instance v12, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 4691
    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v13

    .line 4692
    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v14

    .line 4693
    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v15

    move-object/from16 v16, v0

    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .local v16, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v0

    invoke-direct {v12, v13, v14, v15, v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    move-object v0, v12

    .line 4694
    .local v0, "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v4, v0, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 4687
    .end local v0    # "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .end local v11    # "permissionState":Lcom/android/server/pm/permission/PermissionState;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v16

    goto :goto_81

    .end local v16    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .local v0, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_ad
    move-object/from16 v16, v0

    .line 4696
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v7    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v8    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .end local v9    # "permissionStatesSize":I
    .end local v10    # "i":I
    monitor-exit v6

    .line 4697
    return-void

    .line 4696
    :catchall_b1
    move-exception v0

    monitor-exit v6
    :try_end_b3
    .catchall {:try_start_2f .. :try_end_b3} :catchall_b1

    throw v0
.end method

.method public onPackageAdded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isInstantApp"    # Z
    .param p3, "oldPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5356
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5357
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageAddedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5358
    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "previousAppId"    # I
    .param p3, "params"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
    .param p4, "userId"    # I

    .line 5364
    const-string/jumbo v0, "pkg"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5365
    const-string/jumbo v0, "params"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5366
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-gez p4, :cond_16

    if-ne p4, v1, :cond_14

    goto :goto_16

    :cond_14
    move v3, v0

    goto :goto_17

    :cond_16
    :goto_16
    move v3, v2

    :goto_17
    const-string/jumbo v4, "userId"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5368
    if-ne p4, v1, :cond_24

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    goto :goto_29

    .line 5369
    :cond_24
    new-array v1, v2, [I

    aput p4, v1, v0

    move-object v0, v1

    :goto_29
    nop

    .line 5370
    .local v0, "userIds":[I
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageInstalledInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V

    .line 5371
    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5375
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5376
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageRemovedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5377
    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 5383
    .local p4, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5384
    const-string/jumbo v0, "sharedUserPkgs"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5385
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-gez p5, :cond_16

    if-ne p5, v1, :cond_14

    goto :goto_16

    :cond_14
    move v3, v0

    goto :goto_17

    :cond_16
    :goto_16
    move v3, v2

    :goto_17
    const-string/jumbo v4, "userId"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5387
    if-ne p5, v1, :cond_25

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    move-object v7, v0

    goto :goto_2a

    .line 5388
    :cond_25
    new-array v1, v2, [I

    aput p5, v1, v0

    move-object v7, v1

    :goto_2a
    nop

    .line 5389
    .local v7, "userIds":[I
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[I)V

    .line 5390
    return-void
.end method

.method public onStorageVolumeMounted(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "fingerprintChanged"    # Z

    .line 5285
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 5286
    return-void
.end method

.method public onSystemReady()V
    .registers 6

    .line 4499
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 4501
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    .line 4503
    .local v0, "permissionPolicyInternal":Lcom/android/server/policy/PermissionPolicyInternal;
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PermissionPolicyInternal;->setOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V

    .line 4508
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4509
    const/4 v3, 0x1

    :try_start_1a
    iput-boolean v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    .line 4511
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-eqz v3, :cond_63

    .line 4513
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_48

    const-string/jumbo v3, "persist.sys.uncheck_privapp_permission"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 4515
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dont check privapp permissions for debuggable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 4518
    :cond_48
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature|privileged permissions not in privapp-permissions allowlist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "permissionPolicyInternal":Lcom/android/server/policy/PermissionPolicyInternal;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    throw v1

    .line 4523
    .restart local v0    # "permissionPolicyInternal":Lcom/android/server/policy/PermissionPolicyInternal;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    :cond_63
    :goto_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_1a .. :try_end_64} :catchall_7b

    .line 4525
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 4526
    const-class v1, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 4527
    return-void

    .line 4523
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public onUserCreated(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 5348
    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5350
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 5351
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 2536
    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2537
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2538
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DevicePermissionState;->removeUserState(I)V

    .line 2539
    monitor-exit v0

    .line 2540
    return-void

    .line 2539
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 612
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 613
    return-object v2

    .line 616
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 617
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 618
    if-eqz p1, :cond_24

    :try_start_1a
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    if-nez v4, :cond_24

    .line 619
    monitor-exit v3

    return-object v2

    .line 621
    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 622
    .local v4, "bp":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 623
    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_4b
    goto :goto_2e

    .line 626
    :cond_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_1a .. :try_end_4d} :catchall_5a

    .line 628
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 629
    .local v2, "callingUserId":I
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 631
    return-object v1

    .line 626
    .end local v2    # "callingUserId":I
    :catchall_5a
    move-exception v2

    :try_start_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method public readLegacyPermissionStateTEMP(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4611
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    .line 4630
    return-void
.end method

.method public readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .registers 12
    .param p1, "legacyPermissionSettings"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 4705
    const/4 v0, 0x0

    .local v0, "readPermissionOrPermissionTree":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_62

    .line 4707
    if-nez v0, :cond_b

    .line 4708
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v1

    goto :goto_f

    .line 4709
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object v1

    :goto_f
    nop

    .line 4710
    .local v1, "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4711
    :try_start_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 4712
    .local v3, "legacyPermissionsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v3, :cond_5b

    .line 4713
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/LegacyPermission;

    .line 4714
    .local v5, "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    new-instance v6, Lcom/android/server/pm/permission/Permission;

    .line 4715
    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermission;->getType()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    .line 4716
    .local v6, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v0, :cond_53

    .line 4722
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 4723
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4722
    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    .line 4724
    .local v7, "configPermission":Lcom/android/server/pm/permission/Permission;
    if-eqz v7, :cond_4d

    .line 4725
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4d

    .line 4726
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v8

    .line 4727
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->areGidsPerUser()Z

    move-result v9

    .line 4726
    invoke-virtual {v6, v8, v9}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    .line 4729
    :cond_4d
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 4730
    .end local v7    # "configPermission":Lcom/android/server/pm/permission/Permission;
    goto :goto_58

    .line 4731
    :cond_53
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    .line 4712
    .end local v5    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    .end local v6    # "permission":Lcom/android/server/pm/permission/Permission;
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 4734
    .end local v3    # "legacyPermissionsSize":I
    .end local v4    # "i":I
    :cond_5b
    monitor-exit v2

    .line 4706
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4734
    .restart local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :catchall_5f
    move-exception v3

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_13 .. :try_end_61} :catchall_5f

    throw v3

    .line 4736
    .end local v0    # "readPermissionOrPermissionTree":I
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :cond_62
    return-void
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1219
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1222
    return v1

    .line 1225
    :cond_b
    nop

    .line 1226
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1227
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1d

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1228
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1231
    :cond_1d
    return v1
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1056
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1059
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->removeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1060
    return-void

    .line 1057
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;

    .line 2126
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2128
    monitor-exit v0

    .line 2129
    return-void

    .line 2128
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 8
    .param p1, "permName"    # Ljava/lang/String;

    .line 670
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 671
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4e

    .line 674
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_f
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    .line 676
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 677
    .local v2, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v2, :cond_1e

    .line 678
    monitor-exit v1

    return-void

    .line 680
    :cond_1e
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 682
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    monitor-exit v1

    return-void

    .line 686
    :cond_3e
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 687
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_4b

    .line 688
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 689
    return-void

    .line 687
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2

    .line 672
    :cond_4e
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant applications don\'t have access to this method"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 5290
    const-string/jumbo v0, "pkg"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5291
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5292
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 5293
    return-void
.end method

.method public resetRuntimePermissions(Ljava/util/Collection;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 5299
    .local p1, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const-string/jumbo v0, "pkg"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5300
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5301
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Ljava/util/Collection;I)V

    .line 5302
    return-void
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2097
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2098
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2099
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2100
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2101
    monitor-exit v0

    return-void

    .line 2103
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_31

    .line 2104
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2105
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V

    .line 2104
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2113
    return-void

    .line 2103
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public restoreRuntimePermissions([BI)V
    .registers 5
    .param p1, "backup"    # [B
    .param p2, "userId"    # I

    .line 2075
    const-string v0, "backup"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2076
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2077
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2078
    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2079
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1f

    .line 2080
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2081
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2080
    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    .line 2082
    return-void

    .line 2079
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1532
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1533
    .local v9, "callingUid":I
    nop

    .line 1534
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v9, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move v3, v0

    .line 1536
    .local v3, "overridePolicy":Z
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_POST_NOTIFICATIONS_WITHOUT_KILL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const/4 v4, 0x1

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const-string/jumbo v7, "skip permission revoke app kill for notification test"

    move-object v0, p0

    move-object v1, p1

    move v5, v9

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1541
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1527
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 1495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1496
    .local v8, "callingUid":I
    nop

    .line 1497
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v8, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move v3, v0

    .line 1500
    .local v3, "overridePolicy":Z
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v8

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1502
    return-void
.end method

.method public revokeRuntimePermissionNotKill(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1507
    .local v8, "callingUid":I
    nop

    .line 1508
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v8, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move v3, v0

    .line 1511
    .local v3, "overridePolicy":Z
    new-instance v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;

    invoke-direct {v7, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v8

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1523
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1952
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1953
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v4, :cond_2c

    .line 1954
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canShowRequestPermissionRationale for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    :cond_2c
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v6, 0x10000000

    .line 1960
    invoke-virtual {v0, v2, v6, v7, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    .line 1961
    .local v6, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, 0x0

    if-eq v0, v7, :cond_41

    .line 1962
    return v8

    .line 1965
    :cond_41
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_48

    .line 1966
    return v8

    .line 1971
    :cond_48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1973
    .local v9, "identity":J
    :try_start_4c
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_c0

    move v7, v0

    .line 1975
    .local v7, "flags":I
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1976
    nop

    .line 1978
    const/16 v11, 0x16

    .line 1982
    .local v11, "fixedFlags":I
    and-int/lit8 v0, v7, 0x16

    if-eqz v0, :cond_5c

    .line 1983
    return v8

    .line 1986
    :cond_5c
    iget-object v12, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1987
    :try_start_5f
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_ba

    .line 1988
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v0, :cond_6c

    .line 1989
    :try_start_67
    monitor-exit v12
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_69

    return v8

    .line 1995
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_69
    move-exception v0

    move-wide v15, v9

    goto :goto_bc

    .line 1991
    .restart local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_6c
    :try_start_6c
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v13
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_ba

    if-eqz v13, :cond_78

    and-int/lit16 v13, v7, 0x3800

    if-nez v13, :cond_78

    .line 1993
    :try_start_76
    monitor-exit v12
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_69

    return v8

    .line 1995
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_78
    :try_start_78
    monitor-exit v12
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_ba

    .line 1997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1999
    .local v12, "token":J
    const/4 v14, 0x1

    :try_start_7e
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_88} :catch_a2
    .catchall {:try_start_7e .. :try_end_88} :catchall_9f

    move-wide v15, v9

    .end local v9    # "identity":J
    .local v15, "identity":J
    const-wide/32 v8, 0x8c7dff3

    .line 2000
    :try_start_8c
    invoke-interface {v0, v8, v9, v2, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v0
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_90} :catch_97
    .catchall {:try_start_8c .. :try_end_90} :catchall_b5

    if-eqz v0, :cond_9a

    .line 2002
    nop

    .line 2007
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2002
    return v14

    .line 2004
    :catch_97
    move-exception v0

    goto :goto_a4

    .line 1999
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :cond_99
    move-wide v15, v9

    .line 2007
    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    :cond_9a
    nop

    :goto_9b
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2008
    goto :goto_ad

    .line 2007
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_9f
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    goto :goto_b6

    .line 2004
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catch_a2
    move-exception v0

    move-wide v15, v9

    .line 2005
    .end local v9    # "identity":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15    # "identity":J
    :goto_a4
    :try_start_a4
    const-string v8, "PackageManager"

    const-string v9, "Unable to check if compatibility change is enabled."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_b5

    .line 2007
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_9b

    .line 2010
    :goto_ad
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_b3

    move v8, v14

    goto :goto_b4

    :cond_b3
    const/4 v8, 0x0

    :goto_b4
    return v8

    .line 2007
    :catchall_b5
    move-exception v0

    :goto_b6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2008
    throw v0

    .line 1995
    .end local v12    # "token":J
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_ba
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    :goto_bc
    :try_start_bc
    monitor-exit v12
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_be

    throw v0

    :catchall_be
    move-exception v0

    goto :goto_bc

    .line 1975
    .end local v7    # "flags":I
    .end local v11    # "fixedFlags":I
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_c0
    move-exception v0

    move-wide v15, v9

    move-object v7, v0

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1976
    throw v7
.end method

.method public updatePackageInstallerPermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "androidPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4143
    const-string v0, "com.miui.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 4144
    const-string v0, "com.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "com.miui.cleanmaster"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 4145
    const-string v0, "com.miui.thirdappassistant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4146
    :cond_28
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4148
    :cond_2b
    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "checkAdjustPolicyFlagPermission"    # Z
    .param p6, "userId"    # I

    .line 735
    move-object v10, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 736
    .local v11, "callingUid":I
    const/4 v1, 0x0

    .line 738
    .local v1, "overridePolicy":Z
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_3f

    if-eqz v11, :cond_3f

    .line 739
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 741
    .local v2, "callingIdentity":J
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_3a

    .line 742
    if-eqz p5, :cond_20

    .line 743
    :try_start_16
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v5, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 747
    :cond_20
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v4, 0x1d

    if-ge v0, v4, :cond_2d

    .line 755
    :goto_2a
    const/4 v0, 0x1

    move v1, v0

    .end local v1    # "overridePolicy":Z
    .local v0, "overridePolicy":Z
    goto :goto_3a

    .line 749
    .end local v0    # "overridePolicy":Z
    .restart local v1    # "overridePolicy":Z
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "overridePolicy":Z
    .end local v2    # "callingIdentity":J
    .end local v11    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .end local p5    # "checkAdjustPolicyFlagPermission":Z
    .end local p6    # "userId":I
    throw v0
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_35

    .line 758
    .restart local v1    # "overridePolicy":Z
    .restart local v2    # "callingIdentity":J
    .restart local v11    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    .restart local p5    # "checkAdjustPolicyFlagPermission":Z
    .restart local p6    # "userId":I
    :catchall_35
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 759
    throw v0

    .line 758
    :cond_3a
    :goto_3a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 759
    move v0, v1

    goto :goto_40

    .line 762
    .end local v2    # "callingIdentity":J
    :cond_3f
    move v0, v1

    .end local v1    # "overridePolicy":Z
    .restart local v0    # "overridePolicy":Z
    :goto_40
    iget-object v9, v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move v6, v11

    move/from16 v7, p6

    move v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 765
    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .registers 17
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I

    .line 893
    move-object v6, p0

    move/from16 v7, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 894
    .local v8, "callingUid":I
    iget-object v0, v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 895
    return-void

    .line 898
    :cond_10
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 900
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "updatePermissionFlagsForAllApps"

    move-object v0, p0

    move v1, v8

    move/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 906
    const/16 v0, 0x3e8

    if-eq v8, v0, :cond_28

    .line 907
    move v4, p1

    goto :goto_2b

    :cond_28
    and-int/lit8 v1, p1, -0x11

    move v4, v1

    .line 908
    .local v4, "effectiveFlagMask":I
    :goto_2b
    if-eq v8, v0, :cond_2f

    .line 909
    move v5, p2

    goto :goto_32

    :cond_2f
    and-int/lit8 v0, p2, -0x11

    move v5, v0

    .line 911
    .local v5, "effectiveFlagValues":I
    :goto_32
    const/4 v9, 0x1

    new-array v10, v9, [Z

    .line 912
    .local v10, "changed":[Z
    iget-object v11, v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p3

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I[ZII)V

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 927
    const/4 v0, 0x0

    aget-boolean v1, v10, v0

    if-eqz v1, :cond_52

    .line 928
    iget-object v1, v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-array v2, v9, [I

    aput v7, v2, v0

    invoke-virtual {v1, v2, v9}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 930
    :cond_52
    return-void
.end method

.method public writeLegacyPermissionStateTEMP(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 4650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4651
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4652
    :try_start_7
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v3

    .line 4653
    .local v3, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v3, :cond_29

    .line 4654
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing user state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    monitor-exit v2

    return-void

    .line 4657
    .end local v3    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_63

    .line 4659
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    .line 4698
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeLegacyPermissionState for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4699
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4698
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4700
    return-void

    .line 4657
    :catchall_63
    move-exception v3

    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v3
.end method

.method public writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .registers 13
    .param p1, "legacyPermissionSettings"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 4741
    const/4 v0, 0x0

    .local v0, "writePermissionOrPermissionTree":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_50

    .line 4743
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4744
    .local v1, "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4745
    if-nez v0, :cond_15

    .line 4746
    :try_start_e
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v3

    goto :goto_1b

    :cond_15
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v3

    .line 4747
    .local v3, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/Permission;>;"
    :goto_1b
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/Permission;

    .line 4749
    .local v5, "permission":Lcom/android/server/pm/permission/Permission;
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermission;

    .line 4750
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v8

    const/4 v9, 0x0

    sget-object v10, Llibcore/util/EmptyArray;->INT:[I

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 4752
    .local v6, "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4753
    nop

    .end local v5    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v6    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    goto :goto_1f

    .line 4754
    .end local v3    # "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/Permission;>;"
    :cond_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_4d

    .line 4755
    if-nez v0, :cond_47

    .line 4756
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    goto :goto_4a

    .line 4758
    :cond_47
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    .line 4742
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4754
    .restart local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :catchall_4d
    move-exception v3

    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v3

    .line 4761
    .end local v0    # "writePermissionOrPermissionTree":I
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :cond_50
    return-void
.end method
