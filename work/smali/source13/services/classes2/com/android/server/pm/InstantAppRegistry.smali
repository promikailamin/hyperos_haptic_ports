.class public Lcom/android/server/pm/InstantAppRegistry;
.super Ljava/lang/Object;
.source "InstantAppRegistry.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;,
        Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    }
.end annotation


# static fields
.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_INSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:J = 0x39ef8b000L

.field static final DEFAULT_INSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:J = 0x240c8400L

.field private static final DEFAULT_UNINSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:J = 0x39ef8b000L

.field static final DEFAULT_UNINSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:J = 0x240c8400L

.field private static final INSTANT_APPS_FOLDER:Ljava/lang/String; = "instant"

.field private static final INSTANT_APP_ANDROID_ID_FILE:Ljava/lang/String; = "android_id"

.field private static final INSTANT_APP_COOKIE_FILE_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final INSTANT_APP_COOKIE_FILE_SIFFIX:Ljava/lang/String; = ".dat"

.field private static final INSTANT_APP_ICON_FILE:Ljava/lang/String; = "icon.png"

.field private static final INSTANT_APP_METADATA_FILE:Ljava/lang/String; = "metadata.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "InstantAppRegistry"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "permissions"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

.field private final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field private final mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/utils/WatchedSparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/utils/WatchedSparseBooleanArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/utils/Watcher;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/InstantAppRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserManager:Lcom/android/server/pm/UserManagerInternal;

.field private final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/InstantAppRegistry;)Lcom/android/server/utils/WatchableImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monChanged(Lcom/android/server/pm/InstantAppRegistry;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpersistInstantApplicationCookie(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppRegistry;->persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcomputeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smpeekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/pm/DeletePackageHelper;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissionManager"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p3, "userManager"    # Lcom/android/server/pm/UserManagerInternal;
    .param p4, "deletePackageHelper"    # Lcom/android/server/pm/DeletePackageHelper;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 187
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppRegistry$1;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mObserver:Lcom/android/server/utils/Watcher;

    .line 208
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 210
    iput-object p3, p0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 211
    iput-object p4, p0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 212
    new-instance v1, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;-><init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 214
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 215
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 216
    new-instance v3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 218
    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 219
    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 220
    invoke-virtual {v3, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 221
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 223
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 224
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/InstantAppRegistry;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/pm/InstantAppRegistry;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 187
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppRegistry$1;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mObserver:Lcom/android/server/utils/Watcher;

    .line 230
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 231
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 232
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 233
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 236
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object v2, p1, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 238
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object v2, p1, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 240
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object v2, p1, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 244
    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/pm/InstantAppRegistry-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    return-void
.end method

.method private addUninstalledInstantAppLPw(Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 8
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "userId"    # I

    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    .line 606
    .local v0, "uninstalledApp":Landroid/content/pm/InstantAppInfo;
    if-nez v0, :cond_8

    .line 607
    return-void

    .line 609
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 610
    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 611
    .local v1, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-nez v1, :cond_1d

    .line 612
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 613
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 615
    :cond_1d
    new-instance v2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V

    .line 617
    .local v2, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V

    .line 620
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeInstantApplicationIconLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 621
    return-void
.end method

.method private canPropagatePermission(Ljava/lang/String;)Z
    .registers 7
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 1045
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionManager;

    .line 1046
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 1047
    .local v0, "permissionManager":Landroid/permission/PermissionManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 1049
    .local v2, "permissionInfo":Landroid/content/pm/PermissionInfo;
    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    .line 1050
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v4

    if-eq v4, v3, :cond_20

    .line 1051
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2a

    .line 1053
    :cond_20
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_2a

    move v1, v3

    goto :goto_2b

    :cond_2a
    nop

    .line 1049
    :goto_2b
    return v1
.end method

.method private static computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "sha256Digest"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1161
    invoke-static {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1162
    .local v0, "appDir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "cookieFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;
    .registers 14
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "userId"    # I
    .param p3, "addApplicationInfo"    # Z

    .line 969
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 970
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_5f

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_5f

    .line 974
    :cond_11
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 975
    .local v1, "requestedPermissions":[Ljava/lang/String;
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 977
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 978
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 977
    invoke-interface {v2, v3, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v2

    .line 979
    .local v2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 980
    .local v3, "grantedPermissions":[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 984
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 985
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    .line 984
    move v8, p2

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 986
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p3, :cond_4d

    .line 987
    new-instance v5, Landroid/content/pm/InstantAppInfo;

    invoke-direct {v5, v4, v1, v3}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v5

    .line 990
    :cond_4d
    new-instance v5, Landroid/content/pm/InstantAppInfo;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 991
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v5, v6, v7, v1, v3}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 990
    return-object v5

    .line 971
    .end local v1    # "requestedPermissions":[Ljava/lang/String;
    .end local v2    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "grantedPermissions":[Ljava/lang/String;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5f
    :goto_5f
    const/4 v1, 0x0

    return-object v1
.end method

.method private static deleteDir(Ljava/io/File;)V
    .registers 5
    .param p0, "dir"    # Ljava/io/File;

    .line 1297
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1298
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_12

    .line 1299
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 1300
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 1299
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1303
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1304
    return-void
.end method

.method private getInstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;
    .registers 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 943
    const/4 v0, 0x0

    .line 945
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    nop

    .line 946
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    .line 947
    .local v1, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 948
    .local v2, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_36

    .line 949
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 950
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_33

    invoke-interface {v4, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v5

    if-nez v5, :cond_20

    .line 951
    goto :goto_33

    .line 953
    :cond_20
    const/4 v5, 0x1

    invoke-direct {p0, v4, p2, v5}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v5

    .line 954
    .local v5, "info":Landroid/content/pm/InstantAppInfo;
    if-nez v5, :cond_28

    .line 955
    goto :goto_33

    .line 957
    :cond_28
    if-nez v0, :cond_30

    .line 958
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 960
    :cond_30
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "info":Landroid/content/pm/InstantAppInfo;
    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 963
    .end local v3    # "i":I
    :cond_36
    return-object v0
.end method

.method private static getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1293
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getInstantApplicationsDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 1288
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "instant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUninstalledInstantAppStates(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;"
        }
    .end annotation

    .line 1090
    const/4 v0, 0x0

    .line 1091
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1092
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    if-eqz v2, :cond_13

    .line 1093
    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    .line 1094
    if-eqz v0, :cond_13

    .line 1095
    monitor-exit v1

    return-object v0

    .line 1098
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_5f

    .line 1100
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v2

    .line 1101
    .local v2, "instantAppsDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1102
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1103
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_51

    .line 1104
    array-length v3, v1

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_4f

    aget-object v5, v1, v4

    .line 1105
    .local v5, "instantDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_31

    .line 1106
    goto :goto_4c

    .line 1108
    :cond_31
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "metadata.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1110
    .local v6, "metadataFile":Ljava/io/File;
    nop

    .line 1111
    invoke-static {v6}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object v7

    .line 1112
    .local v7, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    if-nez v7, :cond_41

    .line 1113
    goto :goto_4c

    .line 1115
    :cond_41
    if-nez v0, :cond_49

    .line 1116
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    .line 1118
    :cond_49
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    .end local v5    # "instantDir":Ljava/io/File;
    .end local v6    # "metadataFile":Ljava/io/File;
    .end local v7    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_4f
    move-object v3, v0

    goto :goto_52

    .line 1123
    .end local v1    # "files":[Ljava/io/File;
    :cond_51
    move-object v3, v0

    .end local v0    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    .local v3, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    :goto_52
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1124
    :try_start_55
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1125
    monitor-exit v4

    .line 1127
    return-object v3

    .line 1125
    :catchall_5c
    move-exception v0

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5c

    throw v0

    .line 1098
    .end local v2    # "instantAppsDir":Ljava/io/File;
    .end local v3    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    .restart local v0    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    :catchall_5f
    move-exception v2

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v2
.end method

.method private getUninstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;
    .registers 9
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 999
    nop

    .line 1000
    invoke-direct {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantAppStates(I)Ljava/util/List;

    move-result-object v0

    .line 1001
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2d

    .line 1005
    :cond_e
    const/4 v1, 0x0

    .line 1006
    .local v1, "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1007
    .local v2, "stateCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_2c

    .line 1008
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 1009
    .local v4, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    if-nez v1, :cond_24

    .line 1010
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 1012
    :cond_24
    iget-object v5, v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    .end local v4    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1014
    .end local v3    # "i":I
    :cond_2c
    return-object v1

    .line 1002
    .end local v1    # "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    .end local v2    # "stateCount":I
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasInstantAppMetadata(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 726
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 727
    .local v0, "instantAppDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/io/File;

    const-string v2, "icon.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/io/File;

    const-string v2, "android_id"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 729
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    .line 730
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_33

    goto :goto_35

    :cond_33
    const/4 v1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v1, 0x1

    .line 727
    :goto_36
    return v1
.end method

.method private hasUninstalledInstantAppState(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 705
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 707
    monitor-exit v0

    return v2

    .line 709
    :cond_a
    nop

    .line 710
    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 711
    .local v1, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-nez v1, :cond_15

    .line 712
    monitor-exit v0

    return v2

    .line 714
    :cond_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 715
    .local v3, "appCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v3, :cond_34

    .line 716
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 717
    .local v5, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    iget-object v6, v5, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v6}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 718
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 715
    .end local v5    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 721
    .end local v4    # "i":I
    :cond_34
    monitor-exit v0

    return v2

    .line 722
    .end local v1    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    .end local v3    # "appCount":I
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method static synthetic lambda$deleteInstantApplicationMetadata$1(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "state"    # Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 664
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onPackageInstalled$0(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "state"    # Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 396
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$pruneInstantApps$2(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p0, "packageStates"    # Landroid/util/ArrayMap;
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .line 841
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 842
    .local v0, "lhsPkgState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 843
    .local v1, "rhsPkgState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v2, 0x0

    if-nez v0, :cond_11

    move-object v3, v2

    goto :goto_15

    :cond_11
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 844
    .local v3, "lhsPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_15
    if-nez v1, :cond_18

    goto :goto_1c

    :cond_18
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 845
    .local v2, "rhsPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1c
    const/4 v4, 0x0

    if-nez v3, :cond_22

    if-nez v2, :cond_22

    .line 846
    return v4

    .line 847
    :cond_22
    const/4 v5, -0x1

    if-nez v3, :cond_26

    .line 848
    return v5

    .line 849
    :cond_26
    const/4 v6, 0x1

    if-nez v2, :cond_2a

    .line 850
    return v6

    .line 852
    :cond_2a
    nop

    .line 853
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 854
    .local v7, "lhsPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v7, :cond_38

    .line 855
    return v4

    .line 858
    :cond_38
    nop

    .line 859
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 860
    .local v8, "rhsPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v8, :cond_46

    .line 861
    return v4

    .line 864
    :cond_46
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v9

    .line 865
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v11

    cmp-long v4, v9, v11

    if-lez v4, :cond_5b

    .line 866
    return v6

    .line 867
    :cond_5b
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v9

    .line 868
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v11

    cmp-long v4, v9, v11

    if-gez v4, :cond_70

    .line 869
    return v5

    .line 870
    :cond_70
    nop

    .line 871
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v9

    .line 873
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v4

    .line 872
    invoke-static {v4}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v11

    cmp-long v4, v9, v11

    if-lez v4, :cond_86

    .line 874
    return v6

    .line 876
    :cond_86
    return v5
.end method

.method static synthetic lambda$pruneInstantApps$3(JLcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 7
    .param p0, "maxUninstalledCacheDuration"    # J
    .param p2, "state"    # Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mTimestamp:J

    sub-long/2addr v0, v2

    .line 904
    .local v0, "elapsedCachingMillis":J
    cmp-long v2, v0, p0

    if-lez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    return v2
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/InstantAppRegistry;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/InstantAppRegistry$2;-><init>(Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method private onChanged()V
    .registers 1

    .line 183
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstantAppRegistry;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 184
    return-void
.end method

.method private static parseMetadata(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .registers 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1191
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1192
    .local v0, "outerDepth":I
    :cond_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1193
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1194
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->parsePackage(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object v1

    return-object v1

    .line 1197
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    .registers 10
    .param p0, "metadataFile"    # Ljava/io/File;

    .line 1132
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1133
    return-object v1

    .line 1137
    :cond_8
    :try_start_8
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_11} :catch_4f

    .line 1141
    .local v0, "in":Ljava/io/FileInputStream;
    nop

    .line 1143
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1144
    .local v1, "instantDir":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1145
    .local v2, "timestamp":J
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1148
    .local v4, "packageName":Ljava/lang/String;
    :try_start_1e
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    .line 1149
    .local v5, "parser":Landroid/util/TypedXmlPullParser;
    new-instance v6, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 1150
    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadata(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object v7

    invoke-direct {v6, v7, v2, v3}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_2b} :catch_31
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2b} :catch_31
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2f

    .line 1155
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1149
    return-object v6

    .line 1155
    .end local v5    # "parser":Landroid/util/TypedXmlPullParser;
    :catchall_2f
    move-exception v5

    goto :goto_4b

    .line 1151
    :catch_31
    move-exception v5

    .line 1152
    .local v5, "e":Ljava/lang/Exception;
    :try_start_32
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed parsing instant metadata file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "instantDir":Ljava/io/File;
    .end local v2    # "timestamp":J
    .end local v4    # "packageName":Ljava/lang/String;
    .end local p0    # "metadataFile":Ljava/io/File;
    throw v6
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_2f

    .line 1155
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "instantDir":Ljava/io/File;
    .restart local v2    # "timestamp":J
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local p0    # "metadataFile":Ljava/io/File;
    :goto_4b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1156
    throw v5

    .line 1138
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "instantDir":Ljava/io/File;
    .end local v2    # "timestamp":J
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_4f
    move-exception v0

    .line 1139
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v2, "InstantAppRegistry"

    const-string v3, "No instant metadata file"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-object v1
.end method

.method private static parsePackage(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .registers 9
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1203
    const/4 v0, 0x0

    const-string v1, "label"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "label":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    .local v1, "outRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1208
    .local v2, "outGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 1209
    .local v3, "outerDepth":I
    :cond_15
    :goto_15
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1210
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "permissions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1211
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/InstantAppRegistry;->parsePermissions(Landroid/util/TypedXmlPullParser;Ljava/util/List;Ljava/util/List;)V

    goto :goto_15

    .line 1215
    :cond_2c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 1216
    .local v4, "requestedPermissions":[Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1218
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 1219
    .local v5, "grantedPermissions":[Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1221
    new-instance v6, Landroid/content/pm/InstantAppInfo;

    invoke-direct {v6, p1, v0, v4, v5}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v6
.end method

.method private static parsePermissions(Landroid/util/TypedXmlPullParser;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1229
    .local p1, "outRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1230
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1231
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "permission"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1232
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1233
    .local v1, "permission":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1234
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "granted"

    invoke-interface {p0, v2, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1235
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    .end local v1    # "permission":Ljava/lang/String;
    :cond_2e
    goto :goto_4

    .line 1239
    :cond_2f
    return-void
.end method

.method private static peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1169
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1170
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1171
    return-object v2

    .line 1173
    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1174
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_13

    .line 1175
    return-object v2

    .line 1177
    :cond_13
    array-length v3, v1

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_3b

    aget-object v5, v1, v4

    .line 1178
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_38

    .line 1179
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cookie_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1180
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1181
    return-object v5

    .line 1177
    .end local v5    # "file":Ljava/io/File;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1184
    :cond_3b
    return-object v2
.end method

.method private peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1060
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    if-eqz v1, :cond_30

    .line 1062
    nop

    .line 1063
    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1064
    .local v1, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-eqz v1, :cond_30

    .line 1065
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1066
    .local v2, "appCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_30

    .line 1067
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 1069
    .local v4, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    iget-object v5, v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 1070
    invoke-virtual {v5}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1071
    iget-object v5, v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    monitor-exit v0

    return-object v5

    .line 1066
    .end local v4    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1076
    .end local v1    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    .end local v2    # "appCount":I
    .end local v3    # "i":I
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_48

    .line 1078
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1080
    .local v0, "metadataFile":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object v1

    .line 1081
    .local v1, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    if-nez v1, :cond_45

    .line 1082
    const/4 v2, 0x0

    return-object v2

    .line 1085
    :cond_45
    iget-object v2, v1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    return-object v2

    .line 1076
    .end local v0    # "metadataFile":Ljava/io/File;
    .end local v1    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V
    .registers 9
    .param p1, "cookie"    # [B
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cookieFile"    # Ljava/io/File;
    .param p4, "userId"    # I

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    invoke-static {p2, p4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 293
    .local v1, "appDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 294
    const-string v2, "InstantAppRegistry"

    const-string v3, "Cannot create instant app cookie directory"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    monitor-exit v0

    return-void

    .line 298
    :cond_1c
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 299
    const-string v2, "InstantAppRegistry"

    const-string v3, "Cannot delete instant app cookie file"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_2f
    if-eqz p1, :cond_68

    array-length v2, p1

    if-gtz v2, :cond_35

    goto :goto_68

    .line 306
    .end local v1    # "appDir":Ljava/io/File;
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_6a

    .line 307
    :try_start_36
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_4e

    .line 308
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_3c
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_44

    .line 309
    :try_start_40
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4e

    .line 311
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_67

    .line 307
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_44
    move-exception v1

    :try_start_45
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v2

    :try_start_4a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .end local p1    # "cookie":[B
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "cookieFile":Ljava/io/File;
    .end local p4    # "userId":I
    :goto_4d
    throw v1
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_4e

    .line 309
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .restart local p1    # "cookie":[B
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "cookieFile":Ljava/io/File;
    .restart local p4    # "userId":I
    :catch_4e
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InstantAppRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing instant app cookie file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    :goto_67
    return-void

    .line 304
    .restart local v1    # "appDir":Ljava/io/File;
    :cond_68
    :goto_68
    :try_start_68
    monitor-exit v0

    return-void

    .line 306
    .end local v1    # "appDir":Ljava/io/File;
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method private propagateInstantAppPermissionsIfNeeded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 14
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 1020
    nop

    .line 1021
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    .line 1022
    .local v0, "appInfo":Landroid/content/pm/InstantAppInfo;
    if-nez v0, :cond_c

    .line 1023
    return-void

    .line 1025
    :cond_c
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1026
    return-void

    .line 1028
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1030
    .local v1, "identity":J
    :try_start_1b
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v4, :cond_4d

    aget-object v6, v3, v5

    .line 1031
    .local v6, "grantedPermission":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/pm/InstantAppRegistry;->canPropagatePermission(Ljava/lang/String;)Z

    move-result v7

    .line 1032
    .local v7, "propagatePermission":Z
    if-eqz v7, :cond_4a

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 1034
    iget-object v8, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    const-class v9, Landroid/permission/PermissionManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionManager;

    .line 1035
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1036
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 1035
    invoke-virtual {v8, v9, v6, v10}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_4a
    .catchall {:try_start_1b .. :try_end_4a} :catchall_52

    .line 1030
    .end local v6    # "grantedPermission":Ljava/lang/String;
    .end local v7    # "propagatePermission":Z
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 1040
    :cond_4d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1041
    nop

    .line 1042
    return-void

    .line 1040
    :catchall_52
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1041
    throw v3
.end method

.method private pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z
    .registers 38
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "neededSpace"    # J
    .param p4, "maxInstalledCacheDuration"    # J
    .param p6, "maxUninstalledCacheDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    move-object/from16 v1, p0

    move-wide/from16 v2, p6

    iget-object v0, v1, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 790
    .local v4, "storage":Landroid/os/storage/StorageManager;
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 792
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    cmp-long v0, v6, p2

    const/4 v6, 0x1

    if-ltz v0, :cond_1f

    .line 793
    return v6

    .line 796
    :cond_1f
    const/4 v0, 0x0

    .line 799
    .local v0, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 802
    .local v7, "now":J
    iget-object v9, v1, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v9}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v9

    .line 804
    .local v9, "allUsers":[I
    nop

    .line 805
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v10

    .line 806
    .local v10, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 807
    .local v11, "packageStateCount":I
    const/4 v12, 0x0

    move/from16 v29, v12

    move-object v12, v0

    move/from16 v0, v29

    .local v0, "i":I
    .local v12, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_39
    if-ge v0, v11, :cond_9d

    .line 808
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 809
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v14, :cond_45

    const/4 v15, 0x0

    goto :goto_49

    :cond_45
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    .line 810
    .local v15, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_49
    if-nez v15, :cond_4e

    .line 811
    move-object/from16 v18, v4

    goto :goto_97

    .line 814
    :cond_4e
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v16

    sub-long v16, v7, v16

    cmp-long v16, v16, p4

    if-gez v16, :cond_5f

    .line 816
    move-object/from16 v18, v4

    goto :goto_97

    .line 819
    :cond_5f
    const/16 v16, 0x0

    .line 820
    .local v16, "installedOnlyAsInstantApp":Z
    array-length v13, v9

    const/4 v6, 0x0

    :goto_63
    if-ge v6, v13, :cond_84

    move-object/from16 v18, v4

    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .local v18, "storage":Landroid/os/storage/StorageManager;
    aget v4, v9, v6

    .line 821
    .local v4, "userId":I
    invoke-interface {v14, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v17

    .line 822
    .local v17, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v19

    if-eqz v19, :cond_7f

    .line 823
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v19

    if-eqz v19, :cond_7c

    .line 824
    const/16 v16, 0x1

    goto :goto_7f

    .line 826
    :cond_7c
    const/16 v16, 0x0

    .line 827
    goto :goto_86

    .line 820
    .end local v4    # "userId":I
    .end local v17    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_7f
    :goto_7f
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v18

    goto :goto_63

    .end local v18    # "storage":Landroid/os/storage/StorageManager;
    .local v4, "storage":Landroid/os/storage/StorageManager;
    :cond_84
    move-object/from16 v18, v4

    .line 831
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "storage":Landroid/os/storage/StorageManager;
    :goto_86
    if-eqz v16, :cond_97

    .line 832
    if-nez v12, :cond_90

    .line 833
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v4

    .line 835
    :cond_90
    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v15    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v16    # "installedOnlyAsInstantApp":Z
    :cond_97
    :goto_97
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v18

    const/4 v6, 0x1

    goto :goto_39

    .end local v18    # "storage":Landroid/os/storage/StorageManager;
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    :cond_9d
    move-object/from16 v18, v4

    .line 839
    .end local v0    # "i":I
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "storage":Landroid/os/storage/StorageManager;
    if-eqz v12, :cond_a9

    .line 840
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0, v10}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {v12, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 882
    :cond_a9
    iget-object v4, v1, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 883
    if-eqz v12, :cond_e2

    .line 884
    :try_start_ae
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    .line 885
    .local v0, "packageCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b3
    if-ge v6, v0, :cond_e2

    .line 886
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v20, v13

    check-cast v20, Ljava/lang/String;

    .line 887
    .local v20, "packageToDelete":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x1

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_da

    .line 891
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v15

    cmp-long v13, v15, p2

    if-ltz v13, :cond_da

    .line 892
    monitor-exit v4
    :try_end_d9
    .catchall {:try_start_ae .. :try_end_d9} :catchall_dd

    return v14

    .line 885
    .end local v20    # "packageToDelete":Ljava/lang/String;
    :cond_da
    add-int/lit8 v6, v6, 0x1

    goto :goto_b3

    .line 936
    .end local v0    # "packageCount":I
    .end local v6    # "i":I
    :catchall_dd
    move-exception v0

    move-wide/from16 v23, v7

    goto/16 :goto_18c

    .line 900
    :cond_e2
    :try_start_e2
    iget-object v0, v1, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v6, v0

    const/4 v13, 0x0

    :goto_ea
    if-ge v13, v6, :cond_184

    aget v14, v0, v13

    .line 902
    .local v14, "userId":I
    new-instance v15, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v15, v2, v3}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-direct {v1, v15, v14}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 908
    invoke-static {v14}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v15

    .line 909
    .local v15, "instantAppsDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_109

    .line 910
    move-object/from16 v16, v0

    move/from16 v19, v6

    move-wide/from16 v23, v7

    const/4 v1, 0x1

    goto/16 :goto_178

    .line 912
    :cond_109
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    move-object/from16 v19, v16

    .line 913
    .local v19, "files":[Ljava/io/File;
    move-object/from16 v16, v0

    move-object/from16 v0, v19

    .end local v19    # "files":[Ljava/io/File;
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_11b

    .line 914
    move/from16 v19, v6

    move-wide/from16 v23, v7

    const/4 v1, 0x1

    goto :goto_178

    .line 916
    :cond_11b
    array-length v1, v0

    move/from16 v19, v6

    const/4 v6, 0x0

    :goto_11f
    if-ge v6, v1, :cond_173

    aget-object v20, v0, v6

    move-object/from16 v21, v20

    .line 917
    .local v21, "instantDir":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_133

    .line 918
    move-object/from16 v20, v0

    move/from16 v22, v1

    move-wide/from16 v23, v7

    const/4 v1, 0x1

    goto :goto_16a

    .line 921
    :cond_133
    move-object/from16 v20, v0

    .end local v0    # "files":[Ljava/io/File;
    .local v20, "files":[Ljava/io/File;
    new-instance v0, Ljava/io/File;

    move/from16 v22, v1

    const-string/jumbo v1, "metadata.xml"
    :try_end_13c
    .catchall {:try_start_e2 .. :try_end_13c} :catchall_189

    move-wide/from16 v23, v7

    move-object/from16 v7, v21

    .end local v21    # "instantDir":Ljava/io/File;
    .local v7, "instantDir":Ljava/io/File;
    .local v23, "now":J
    :try_start_140
    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 922
    .local v0, "metadataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14b

    .line 923
    const/4 v1, 0x1

    goto :goto_16a

    .line 926
    :cond_14b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 927
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v27

    sub-long v25, v25, v27

    .line 928
    .local v25, "elapsedCachingMillis":J
    cmp-long v1, v25, v2

    if-lez v1, :cond_169

    .line 929
    invoke-static {v7}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 930
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v27

    cmp-long v1, v27, p2

    if-ltz v1, :cond_167

    .line 931
    monitor-exit v4

    const/4 v1, 0x1

    return v1

    .line 930
    :cond_167
    const/4 v1, 0x1

    goto :goto_16a

    .line 928
    :cond_169
    const/4 v1, 0x1

    .line 916
    .end local v0    # "metadataFile":Ljava/io/File;
    .end local v7    # "instantDir":Ljava/io/File;
    .end local v25    # "elapsedCachingMillis":J
    :goto_16a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-wide/from16 v7, v23

    goto :goto_11f

    .end local v20    # "files":[Ljava/io/File;
    .end local v23    # "now":J
    .local v0, "files":[Ljava/io/File;
    .local v7, "now":J
    :cond_173
    move-object/from16 v20, v0

    move-wide/from16 v23, v7

    const/4 v1, 0x1

    .line 900
    .end local v0    # "files":[Ljava/io/File;
    .end local v7    # "now":J
    .end local v14    # "userId":I
    .end local v15    # "instantAppsDir":Ljava/io/File;
    .restart local v23    # "now":J
    :goto_178
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move/from16 v6, v19

    move-wide/from16 v7, v23

    goto/16 :goto_ea

    .line 936
    .end local v23    # "now":J
    .restart local v7    # "now":J
    :cond_184
    move-wide/from16 v23, v7

    .end local v7    # "now":J
    .restart local v23    # "now":J
    monitor-exit v4

    .line 938
    const/4 v0, 0x0

    return v0

    .line 936
    .end local v23    # "now":J
    .restart local v7    # "now":J
    :catchall_189
    move-exception v0

    move-wide/from16 v23, v7

    .end local v7    # "now":J
    .restart local v23    # "now":J
    :goto_18c
    monitor-exit v4
    :try_end_18d
    .catchall {:try_start_140 .. :try_end_18d} :catchall_18e

    throw v0

    :catchall_18e
    move-exception v0

    goto :goto_18c
.end method

.method private removeAppLPw(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "targetAppId"    # I

    .line 589
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    if-nez v0, :cond_5

    .line 590
    return-void

    .line 592
    :cond_5
    nop

    .line 593
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    .line 594
    .local v0, "targetAppList":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<Lcom/android/server/utils/WatchedSparseBooleanArray;>;"
    if-nez v0, :cond_f

    .line 595
    return-void

    .line 597
    :cond_f
    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 598
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    .line 599
    return-void
.end method

.method private removeInstantAppLPw(II)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "instantAppId"    # I

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    if-nez v0, :cond_5

    .line 559
    return-void

    .line 561
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 562
    .local v0, "instantAppList":Lcom/android/server/utils/WatchedSparseBooleanArray;
    if-nez v0, :cond_e

    .line 563
    return-void

    .line 567
    :cond_e
    :try_start_e
    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseBooleanArray;->delete(I)V

    .line 570
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_3f

    if-nez v1, :cond_19

    .line 582
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    .line 571
    return-void

    .line 573
    :cond_19
    nop

    .line 574
    :try_start_1a
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseArray;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_3f

    .line 575
    .local v1, "targetAppList":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<Lcom/android/server/utils/WatchedSparseBooleanArray;>;"
    if-nez v1, :cond_26

    .line 582
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    .line 576
    return-void

    .line 578
    :cond_26
    :try_start_26
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_2c
    if-ltz v2, :cond_3a

    .line 579
    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {v3, p2}, Lcom/android/server/utils/WatchedSparseBooleanArray;->delete(I)V
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_3f

    .line 578
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 582
    .end local v1    # "targetAppList":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<Lcom/android/server/utils/WatchedSparseBooleanArray;>;"
    .end local v2    # "i":I
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    .line 583
    nop

    .line 584
    return-void

    .line 582
    :catchall_3f
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    .line 583
    throw v1
.end method

.method private removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;I)V"
        }
    .end annotation

    .line 681
    .local p1, "criteria":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    if-nez v0, :cond_5

    .line 682
    return-void

    .line 684
    :cond_5
    nop

    .line 685
    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 686
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-nez v0, :cond_f

    .line 687
    return-void

    .line 689
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 690
    .local v1, "appCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_39

    .line 691
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 692
    .local v3, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 693
    goto :goto_36

    .line 695
    :cond_24
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 696
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 697
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, p2}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 698
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    .line 699
    return-void

    .line 690
    .end local v3    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 702
    .end local v2    # "i":I
    :cond_39
    return-void
.end method

.method private writeInstantApplicationIconLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 625
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 626
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 627
    return-void

    .line 631
    :cond_f
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 632
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 635
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_29

    .line 636
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4b

    .line 638
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_29
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 639
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 638
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 640
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 641
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 642
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 645
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :goto_4b
    new-instance v3, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v5, "icon.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 648
    .local v3, "iconFile":Ljava/io/File;
    :try_start_5a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_74

    .line 649
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_5f
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_6a

    .line 650
    :try_start_66
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_74

    .line 652
    .end local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_7c

    .line 648
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_6a
    move-exception v5

    :try_start_6b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v6

    :try_start_70
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "appDir":Ljava/io/File;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "iconFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "userId":I
    :goto_73
    throw v5
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_74

    .line 650
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "appDir":Ljava/io/File;
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "iconFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "userId":I
    :catch_74
    move-exception v4

    .line 651
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "InstantAppRegistry"

    const-string v6, "Error writing instant app icon"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_7c
    return-void
.end method

.method private writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V
    .registers 22
    .param p1, "instantApp"    # Landroid/content/pm/InstantAppInfo;
    .param p2, "userId"    # I

    .line 1243
    const-string/jumbo v0, "permission"

    const-string/jumbo v1, "permissions"

    const-string/jumbo v2, "package"

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p2

    invoke-static {v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 1244
    .local v3, "appDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_20

    .line 1245
    return-void

    .line 1248
    :cond_20
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "metadata.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1250
    .local v5, "metadataFile":Ljava/io/File;
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1251
    .local v6, "destination":Landroid/util/AtomicFile;
    const/4 v7, 0x0

    .line 1253
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_2e
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    move-object v7, v8

    .line 1255
    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v8

    .line 1256
    .local v8, "serializer":Landroid/util/TypedXmlSerializer;
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1258
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v8, v11, v9}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1260
    invoke-interface {v8, v11, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    const-string v9, "label"
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_b0

    move-object/from16 v12, p0

    :try_start_4c
    iget-object v13, v12, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 1262
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_ae

    .line 1261
    move-object/from16 v14, p1

    :try_start_54
    invoke-virtual {v14, v13}, Landroid/content/pm/InstantAppInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1262
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1261
    invoke-interface {v8, v11, v9, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1264
    invoke-interface {v8, v11, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1265
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/InstantAppInfo;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v9

    array-length v13, v9

    const/4 v15, 0x0

    :goto_68
    if-ge v15, v13, :cond_9b

    aget-object v16, v9, v15

    move-object/from16 v17, v16

    .line 1266
    .local v17, "permission":Ljava/lang/String;
    invoke-interface {v8, v11, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1267
    const-string/jumbo v10, "name"
    :try_end_74
    .catchall {:try_start_54 .. :try_end_74} :catchall_ac

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    .end local v17    # "permission":Ljava/lang/String;
    .local v3, "permission":Ljava/lang/String;
    .local v18, "appDir":Ljava/io/File;
    :try_start_78
    invoke-interface {v8, v11, v10, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 1269
    const-string v10, "granted"

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .end local v3    # "permission":Ljava/lang/String;
    .restart local v17    # "permission":Ljava/lang/String;
    invoke-interface {v8, v11, v10, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_91

    .line 1268
    .end local v17    # "permission":Ljava/lang/String;
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_8e
    move-object/from16 v17, v3

    const/4 v3, 0x1

    .line 1271
    .end local v3    # "permission":Ljava/lang/String;
    .restart local v17    # "permission":Ljava/lang/String;
    :goto_91
    invoke-interface {v8, v11, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1265
    nop

    .end local v17    # "permission":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move v10, v3

    move-object/from16 v3, v18

    goto :goto_68

    .line 1273
    .end local v18    # "appDir":Ljava/io/File;
    .local v3, "appDir":Ljava/io/File;
    :cond_9b
    move-object/from16 v18, v3

    .end local v3    # "appDir":Ljava/io/File;
    .restart local v18    # "appDir":Ljava/io/File;
    invoke-interface {v8, v11, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1275
    invoke-interface {v8, v11, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1277
    invoke-interface {v8}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1278
    invoke-virtual {v6, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a9
    .catchall {:try_start_78 .. :try_end_a9} :catchall_aa

    .end local v8    # "serializer":Landroid/util/TypedXmlSerializer;
    goto :goto_c1

    .line 1279
    :catchall_aa
    move-exception v0

    goto :goto_b7

    .end local v18    # "appDir":Ljava/io/File;
    .restart local v3    # "appDir":Ljava/io/File;
    :catchall_ac
    move-exception v0

    goto :goto_b5

    :catchall_ae
    move-exception v0

    goto :goto_b3

    :catchall_b0
    move-exception v0

    move-object/from16 v12, p0

    :goto_b3
    move-object/from16 v14, p1

    :goto_b5
    move-object/from16 v18, v3

    .line 1280
    .end local v3    # "appDir":Ljava/io/File;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v18    # "appDir":Ljava/io/File;
    :goto_b7
    :try_start_b7
    const-string v1, "InstantAppRegistry"

    const-string v2, "Failed to write instant state, restoring backup"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    invoke-virtual {v6, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_c1
    .catchall {:try_start_b7 .. :try_end_c1} :catchall_c6

    .line 1283
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_c1
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1284
    nop

    .line 1285
    return-void

    .line 1283
    :catchall_c6
    move-exception v0

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1284
    throw v0
.end method


# virtual methods
.method public addInstantApp(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "instantAppId"    # I

    .line 544
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 546
    .local v1, "instantAppList":Lcom/android/server/utils/WatchedSparseBooleanArray;
    if-nez v1, :cond_18

    .line 547
    new-instance v2, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    move-object v1, v2

    .line 548
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 550
    :cond_18
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    .line 551
    .end local v1    # "instantAppList":Lcom/android/server/utils/WatchedSparseBooleanArray;
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    .line 552
    invoke-direct {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    .line 553
    return-void

    .line 551
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public deleteInstantApplicationMetadata(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 662
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_3
    new-instance v1, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 667
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 668
    .local v1, "instantAppDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "metadata.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 669
    new-instance v2, Ljava/io/File;

    const-string v3, "icon.png"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 670
    new-instance v2, Ljava/io/File;

    const-string v3, "android_id"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 671
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 672
    .local v2, "cookie":Ljava/io/File;
    if-eqz v2, :cond_37

    .line 673
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 675
    .end local v1    # "instantAppDir":Ljava/io/File;
    .end local v2    # "cookie":Ljava/io/File;
    :cond_37
    monitor-exit v0

    .line 676
    return-void

    .line 675
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 3
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 178
    return-void
.end method

.method public getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 328
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "android_id"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    .local v1, "idFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_a2

    if-eqz v2, :cond_37

    .line 333
    :try_start_14
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_1e
    .catchall {:try_start_14 .. :try_end_1c} :catchall_a2

    :try_start_1c
    monitor-exit v0

    return-object v2

    .line 334
    :catch_1e
    move-exception v2

    .line 335
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "InstantAppRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read instant app android id file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v2    # "e":Ljava/io/IOException;
    :cond_37
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 340
    .local v2, "randomBytes":[B
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 341
    const/4 v3, 0x0

    invoke-static {v2, v3}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "id":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 343
    .local v4, "appDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_61

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_61

    .line 344
    const-string v5, "InstantAppRegistry"

    const-string v6, "Cannot create instant app cookie directory"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    monitor-exit v0

    return-object v3

    .line 347
    :cond_61
    new-instance v5, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    const-string v7, "android_id"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_1c .. :try_end_6c} :catchall_a2

    move-object v1, v5

    .line 349
    :try_start_6d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_72} :catch_87
    .catchall {:try_start_6d .. :try_end_72} :catchall_a2

    .line 350
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_72
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_7d

    .line 351
    :try_start_79
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_87
    .catchall {:try_start_79 .. :try_end_7c} :catchall_a2

    .line 353
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_a0

    .line 349
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_7d
    move-exception v6

    :try_start_7e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    goto :goto_86

    :catchall_82
    move-exception v7

    :try_start_83
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "idFile":Ljava/io/File;
    .end local v2    # "randomBytes":[B
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "appDir":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    :goto_86
    throw v6
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_87} :catch_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_a2

    .line 351
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "idFile":Ljava/io/File;
    .restart local v2    # "randomBytes":[B
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "appDir":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/InstantAppRegistry;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catch_87
    move-exception v5

    .line 352
    .local v5, "e":Ljava/io/IOException;
    :try_start_88
    const-string v6, "InstantAppRegistry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error writing instant app android id file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v5    # "e":Ljava/io/IOException;
    :goto_a0
    monitor-exit v0

    return-object v3

    .line 355
    .end local v1    # "idFile":Ljava/io/File;
    .end local v2    # "randomBytes":[B
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "appDir":Ljava/io/File;
    :catchall_a2
    move-exception v1

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_88 .. :try_end_a4} :catchall_a2

    throw v1
.end method

.method public getInstantAppCookie(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)[B
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->getPendingPersistCookieLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)[B

    move-result-object v1

    .line 257
    .local v1, "pendingCookie":[B
    if-eqz v1, :cond_d

    .line 258
    monitor-exit v0

    return-object v1

    .line 260
    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 261
    .local v2, "cookieFile":Ljava/io/File;
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_43

    if-eqz v3, :cond_40

    .line 263
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_25} :catch_27
    .catchall {:try_start_1d .. :try_end_25} :catchall_43

    :try_start_25
    monitor-exit v0

    return-object v3

    .line 264
    :catch_27
    move-exception v3

    .line 265
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "InstantAppRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading cookie file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v3    # "e":Ljava/io/IOException;
    :cond_40
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 269
    .end local v1    # "pendingCookie":[B
    .end local v2    # "cookieFile":Ljava/io/File;
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 316
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "icon.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 319
    .local v1, "iconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 320
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 322
    :cond_1e
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 323
    .end local v1    # "iconFile":Ljava/io/File;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getInstantApps(Lcom/android/server/pm/Computer;I)Ljava/util/List;
    .registers 5
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 360
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;

    move-result-object v0

    .line 361
    .local v0, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;

    move-result-object v1

    .line 362
    .local v1, "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    if-eqz v0, :cond_10

    .line 363
    if-eqz v1, :cond_f

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    :cond_f
    return-object v0

    .line 368
    :cond_10
    return-object v1
.end method

.method public grantInstantAccess(ILandroid/content/Intent;II)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "recipientUid"    # I
    .param p4, "instantAppId"    # I

    .line 510
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 512
    monitor-exit v0

    return v2

    .line 514
    :cond_a
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 515
    .local v1, "instantAppList":Lcom/android/server/utils/WatchedSparseBooleanArray;
    if-eqz v1, :cond_6b

    invoke-virtual {v1, p4}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_6b

    .line 518
    :cond_19
    invoke-virtual {v1, p3}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 519
    monitor-exit v0

    return v2

    .line 521
    :cond_21
    if-eqz p2, :cond_3f

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 522
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 523
    .local v3, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_3f

    const-string v4, "android.intent.category.BROWSABLE"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 524
    monitor-exit v0

    return v2

    .line 527
    .end local v3    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3f
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/WatchedSparseArray;

    .line 529
    .local v2, "targetAppList":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<Lcom/android/server/utils/WatchedSparseBooleanArray;>;"
    if-nez v2, :cond_54

    .line 530
    new-instance v3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    move-object v2, v3

    .line 531
    iget-object v3, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 533
    :cond_54
    invoke-virtual {v2, p3}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 534
    .local v3, "instantGrantList":Lcom/android/server/utils/WatchedSparseBooleanArray;
    if-nez v3, :cond_65

    .line 535
    new-instance v4, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v4}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    move-object v3, v4

    .line 536
    invoke-virtual {v2, p3, v3}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 538
    :cond_65
    const/4 v4, 0x1

    invoke-virtual {v3, p4, v4}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    .line 539
    monitor-exit v0

    return v4

    .line 516
    .end local v2    # "targetAppList":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<Lcom/android/server/utils/WatchedSparseBooleanArray;>;"
    .end local v3    # "instantGrantList":Lcom/android/server/utils/WatchedSparseBooleanArray;
    :cond_6b
    :goto_6b
    monitor-exit v0

    return v2

    .line 540
    .end local v1    # "instantAppList":Lcom/android/server/utils/WatchedSparseBooleanArray;
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method hasInstantApplicationMetadata(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasUninstalledInstantAppState(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 657
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantAppMetadata(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 656
    :goto_10
    return v0
.end method

.method public isInstantAccessGranted(III)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "targetAppId"    # I
    .param p3, "instantAppId"    # I

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 485
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseArray;

    .line 486
    .local v1, "targetAppList":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<Lcom/android/server/utils/WatchedSparseBooleanArray;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 487
    monitor-exit v0

    return v2

    .line 489
    :cond_10
    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 490
    .local v3, "instantGrantList":Lcom/android/server/utils/WatchedSparseBooleanArray;
    if-nez v3, :cond_1a

    .line 491
    monitor-exit v0

    return v2

    .line 493
    :cond_1a
    invoke-virtual {v3, p3}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 494
    .end local v1    # "targetAppList":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<Lcom/android/server/utils/WatchedSparseBooleanArray;>;"
    .end local v3    # "instantGrantList":Lcom/android/server/utils/WatchedSparseBooleanArray;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 174
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method public onPackageInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)V
    .registers 22
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userIds"    # [I

    .line 373
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-interface/range {p1 .. p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 374
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v3, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    :goto_10
    move-object v4, v0

    .line 375
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v4, :cond_14

    .line 376
    return-void

    .line 379
    :cond_14
    iget-object v5, v1, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 380
    :try_start_17
    array-length v0, v2

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v0, :cond_e3

    aget v8, v2, v7

    .line 382
    .local v8, "userId":I
    invoke-interface {v3, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v9

    if-nez v9, :cond_29

    .line 383
    goto/16 :goto_df

    .line 387
    :cond_29
    invoke-direct {v1, v4, v8}, Lcom/android/server/pm/InstantAppRegistry;->propagateInstantAppPermissionsIfNeeded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 390
    invoke-interface {v3, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 391
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    .line 395
    :cond_3d
    new-instance v9, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda3;

    invoke-direct {v9, v4}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    invoke-direct {v1, v9, v8}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 400
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 401
    .local v9, "instantAppDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "metadata.xml"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 402
    new-instance v10, Ljava/io/File;

    const-string v11, "icon.png"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 405
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    .line 406
    .local v10, "currentCookieFile":Ljava/io/File;
    if-nez v10, :cond_6d

    .line 407
    goto :goto_df

    .line 410
    :cond_6d
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, "cookieName":Ljava/lang/String;
    const-string v12, "cookie_"

    .line 412
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    .line 413
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, ".dat"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    .line 412
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 420
    .local v12, "currentCookieSha256":Ljava/lang/String;
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v12, v14}, Landroid/content/pm/SigningDetails;->checkCapability(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_93

    .line 422
    monitor-exit v5

    return-void

    .line 427
    :cond_93
    nop

    .line 429
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v13

    .line 428
    invoke-static {v13}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v13

    .line 430
    .local v13, "signaturesSha256Digests":[Ljava/lang/String;
    array-length v14, v13

    const/4 v15, 0x0

    :goto_a2
    if-ge v15, v14, :cond_b5

    aget-object v16, v13, v15

    move-object/from16 v17, v16

    .line 431
    .local v17, "s":Ljava/lang/String;
    move-object/from16 v6, v17

    .end local v17    # "s":Ljava/lang/String;
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b2

    .line 432
    monitor-exit v5

    return-void

    .line 430
    .end local v6    # "s":Ljava/lang/String;
    :cond_b2
    add-int/lit8 v15, v15, 0x1

    goto :goto_a2

    .line 437
    :cond_b5
    const-string v6, "InstantAppRegistry"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " changed - dropping cookie"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v6, v1, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v6, v4, v8}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 441
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 380
    .end local v8    # "userId":I
    .end local v9    # "instantAppDir":Ljava/io/File;
    .end local v10    # "currentCookieFile":Ljava/io/File;
    .end local v11    # "cookieName":Ljava/lang/String;
    .end local v12    # "currentCookieSha256":Ljava/lang/String;
    .end local v13    # "signaturesSha256Digests":[Ljava/lang/String;
    :goto_df
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_19

    .line 443
    :cond_e3
    monitor-exit v5

    .line 444
    return-void

    .line 443
    :catchall_e5
    move-exception v0

    monitor-exit v5
    :try_end_e7
    .catchall {:try_start_17 .. :try_end_e7} :catchall_e5

    throw v0
.end method

.method public onPackageUninstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[IZ)V
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "userIds"    # [I
    .param p4, "packageInstalledForSomeUsers"    # Z

    .line 448
    if-nez p2, :cond_3

    .line 449
    return-void

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_6
    array-length v1, p3

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_40

    aget v3, p3, v2

    .line 454
    .local v3, "userId":I
    if-eqz p4, :cond_15

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 455
    goto :goto_3d

    .line 458
    :cond_15
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 460
    invoke-direct {p0, p2, v3}, Lcom/android/server/pm/InstantAppRegistry;->addUninstalledInstantAppLPw(Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 461
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeInstantAppLPw(II)V

    goto :goto_3d

    .line 464
    :cond_26
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 465
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 466
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeAppLPw(II)V

    .line 453
    .end local v3    # "userId":I
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 469
    :cond_40
    monitor-exit v0

    .line 470
    return-void

    .line 469
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 473
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 475
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 476
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 477
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 478
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method pruneInstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z
    .registers 14
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "neededSpace"    # J
    .param p4, "maxInstalledCacheDuration"    # J

    .line 755
    const-wide v6, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    :try_start_9
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z

    move-result v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    .line 757
    :catch_e
    move-exception v0

    .line 758
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InstantAppRegistry"

    const-string v2, "Error pruning installed instant apps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    const/4 v1, 0x0

    return v1
.end method

.method pruneInstantApps(Lcom/android/server/pm/Computer;)V
    .registers 14
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 734
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 735
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 734
    const-string v1, "installed_instant_app_max_cache_period"

    const-wide v2, 0x39ef8b000L

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 739
    .local v0, "maxInstalledCacheDuration":J
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 740
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 739
    const-string/jumbo v5, "uninstalled_instant_app_max_cache_period"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 745
    .local v2, "maxUninstalledCacheDuration":J
    const-wide v6, 0x7fffffffffffffffL

    move-object v4, p0

    move-object v5, p1

    move-wide v8, v0

    move-wide v10, v2

    :try_start_27
    invoke-direct/range {v4 .. v11}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 749
    goto :goto_33

    .line 747
    :catch_2b
    move-exception v4

    .line 748
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "InstantAppRegistry"

    const-string v6, "Error pruning installed and uninstalled instant apps"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    .end local v4    # "e":Ljava/io/IOException;
    :goto_33
    return-void
.end method

.method pruneUninstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z
    .registers 14
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "neededSpace"    # J
    .param p4, "maxUninstalledCacheDuration"    # J

    .line 766
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v6, p4

    :try_start_9
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z

    move-result v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    .line 768
    :catch_e
    move-exception v0

    .line 769
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InstantAppRegistry"

    const-string v2, "Error pruning uninstalled instant apps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    const/4 v1, 0x0

    return v1
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 168
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 169
    return-void
.end method

.method public setInstantAppCookie(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[BII)Z
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "cookie"    # [B
    .param p3, "instantAppCookieMaxBytes"    # I
    .param p4, "userId"    # I

    .line 274
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    if-eqz p2, :cond_3f

    :try_start_5
    array-length v1, p2

    if-lez v1, :cond_3f

    .line 276
    array-length v1, p2

    if-le v1, p3, :cond_3f

    .line 277
    const-string v1, "InstantAppRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instant app cookie for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes while max size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 284
    :cond_3f
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v1, p4, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->schedulePersistLPw(ILcom/android/server/pm/parsing/pkg/AndroidPackage;[B)V

    .line 285
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 286
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public snapshot()Lcom/android/server/pm/InstantAppRegistry;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstantAppRegistry;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->snapshot()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 172
    return-void
.end method
