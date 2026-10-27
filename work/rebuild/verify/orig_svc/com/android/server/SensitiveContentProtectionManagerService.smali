.class public final Lcom/android/server/SensitiveContentProtectionManagerService;
.super Lcom/android/server/SystemService;
.source "SensitiveContentProtectionManagerService.java"


# instance fields
.field public mExemptedPackages:Landroid/util/ArraySet;

.field public mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

.field mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

.field public final mOnWindowRemovedListener:Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

.field public mProjectionActive:Z

.field public final mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field public mProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public final mSensitiveContentProtectionLock:Ljava/lang/Object;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$4YLG2ce-94hTLyHe6tb2T8hdSPg(Landroid/os/IBinder;Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;)Z
    .registers 2

    .line 220
    invoke-virtual {p1}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$QjFN8_LtyPXP93F9fuhOTSfZons(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->lambda$new$1(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaProjectionSession(Lcom/android/server/SensitiveContentProtectionManagerService;)Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/SensitiveContentProtectionManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProjectionActive(Lcom/android/server/SensitiveContentProtectionManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/SensitiveContentProtectionManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monProjectionEnd(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->onProjectionEnd()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monProjectionStart(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/media/projection/MediaProjectionInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->onProjectionStart(Landroid/media/projection/MediaProjectionInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAppsThatShouldBlockScreenCapture(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAppsThatShouldBlockScreenCapture(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetSensitivePackageFromNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->getSensitivePackageFromNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnotificationHasSensitiveContent(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->notificationHasSensitiveContent(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mExemptedPackages:Landroid/util/ArraySet;

    .line 94
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    .line 96
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    .line 191
    new-instance p1, Lcom/android/server/SensitiveContentProtectionManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$1;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    .line 218
    new-instance p1, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mOnWindowRemovedListener:Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;

    .line 227
    new-instance p1, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-direct {p1, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    return-void
.end method

.method public static getSensitivePackageFromNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;
    .registers 3

    .line 443
    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->notificationHasSensitiveContent(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 444
    new-instance p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSensitivePackagesFromNotifications([Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/util/ArraySet;
    .registers 7

    .line 426
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 427
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    if-nez v3, :cond_15

    .line 429
    const-string v3, "SensitiveContentProtect"

    const-string v4, "Unable to parse null notification"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 433
    :cond_15
    invoke-static {v3, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->getSensitivePackageFromNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 435
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_21
    return-object v0
.end method

.method public static notificationHasSensitiveContent(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .registers 2

    .line 451
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 452
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->hasSensitiveContent()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final canRecordSensitiveContent(Ljava/lang/String;)Z
    .registers 3

    .line 309
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.permission.RECORD_SENSITIVE_CONTENT"

    .line 310
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final getExemptedPackages()Landroid/util/ArraySet;
    .registers 1

    .line 316
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getBugreportWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final holdsAppStreamingRole(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4

    .line 362
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    const-string v0, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    invoke-virtual {p0, v0, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 363
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public init(Landroid/media/projection/MediaProjectionManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/content/pm/PackageManagerInternal;Landroid/app/role/RoleManager;Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/projection/MediaProjectionManager;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Landroid/content/pm/PackageManagerInternal;",
            "Landroid/app/role/RoleManager;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 260
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 264
    iput-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 265
    iput-object p3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 266
    iput-object p4, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 267
    iput-object p5, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mExemptedPackages:Landroid/util/ArraySet;

    .line 271
    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 275
    :try_start_1d
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    .line 276
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/content/ComponentName;

    .line 277
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p4

    const-class p5, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-direct {p3, p4, p5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p4, -0x1

    .line 275
    invoke-virtual {p1, p2, p3, p4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_32

    .line 285
    :catch_32
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mOnWindowRemovedListener:Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->registerOnWindowRemovedListener(Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;)V

    return-void
.end method

.method public final isAutofillServiceRecorderPackage(ILjava/lang/String;)Z
    .registers 4

    .line 592
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "autofill_service"

    .line 591
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_12

    return p1

    .line 600
    :cond_12
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_19

    return p1

    .line 604
    :cond_19
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 607
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    return p1
.end method

.method public final synthetic lambda$new$1(Landroid/os/IBinder;)V
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_3
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 221
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 8

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_5

    return-void

    .line 242
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 243
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 244
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/role/RoleManager;

    .line 246
    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->getExemptedPackages()Landroid/util/ArraySet;

    move-result-object v5

    move-object v0, p0

    .line 242
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SensitiveContentProtectionManagerService;->init(Landroid/media/projection/MediaProjectionManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/content/pm/PackageManagerInternal;Landroid/app/role/RoleManager;Landroid/util/ArraySet;)V

    .line 249
    new-instance p0, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;Lcom/android/server/SensitiveContentProtectionManagerService-IA;)V

    const-string/jumbo p1, "sensitive_content_protection_service"

    invoke-virtual {v0, p1, p0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    if-eqz v0, :cond_9

    .line 293
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjectionManager;->removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V

    .line 297
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_e

    .line 303
    :catch_e
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_15

    .line 304
    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->onProjectionEnd()V

    :cond_15
    return-void
.end method

.method public final onProjectionEnd()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 368
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    .line 369
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-eqz v1, :cond_18

    .line 370
    invoke-virtual {v1}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->logProjectionSessionStop()V

    .line 372
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    invoke-virtual {v1}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->logAppNotificationsProtected()V

    const/4 v1, 0x0

    .line 374
    iput-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1f

    .line 379
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->clearBlockedApps()V

    .line 380
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_16

    throw p0
.end method

.method public final onProjectionStart(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 11

    .line 320
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mExemptedPackages:Landroid/util/ArraySet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 321
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 322
    :cond_10
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensitiveContentProtectionManagerService;->canRecordSensitiveContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 323
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 323
    invoke-virtual {p0, v0, v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->holdsAppStreamingRole(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 325
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 326
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {p0, v0, v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->isAutofillServiceRecorderPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_3d

    :cond_3b
    move v0, v2

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v0, v1

    .line 328
    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "disable_screen_share_protections_for_apps_and_notifications"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_50

    move v3, v1

    goto :goto_51

    :cond_50
    move v3, v2

    .line 330
    :goto_51
    iget-object v4, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide/16 v7, 0x0

    .line 330
    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 332
    iget-object v5, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v5

    .line 333
    :try_start_68
    new-instance v6, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-nez v0, :cond_6e

    if-eqz v3, :cond_6f

    :cond_6e
    move v2, v1

    :cond_6f
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 334
    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    invoke-direct {v6, v4, v2, v7, v8}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;-><init>(IZJ)V

    iput-object v6, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    .line 335
    invoke-virtual {v6}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->logProjectionSessionStart()V

    if-nez v0, :cond_a9

    if-eqz v3, :cond_85

    goto :goto_a9

    .line 344
    :cond_85
    iput-boolean v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    .line 347
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    invoke-static {v0}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->-$$Nest$fgetmSessionId(Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setBlockScreenCaptureForAppsSessionId(J)V

    .line 352
    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture()V

    .line 355
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_a7

    .line 356
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    goto :goto_a7

    :catchall_a5
    move-exception p0

    goto :goto_ce

    .line 358
    :cond_a7
    :goto_a7
    monitor-exit v5

    return-void

    .line 338
    :cond_a9
    :goto_a9
    const-string p0, "SensitiveContentProtect"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "projection session is exempted, package ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isFeatureDisabled="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    monitor-exit v5

    return-void

    .line 358
    :goto_ce
    monitor-exit v5
    :try_end_cf
    .catchall {:try_start_68 .. :try_end_cf} :catchall_a5

    throw p0
.end method

.method public onStart()V
    .registers 1

    .line 0
    return-void
.end method

.method public setSensitiveContentProtection(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .registers 8

    .line 550
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_3
    new-instance v1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;-><init>(Ljava/lang/String;ILandroid/os/IBinder;)V

    if-eqz p4, :cond_38

    .line 555
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_3d

    .line 557
    const-string p1, "SensitiveContentProtect"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpectedly large number of sensitive windows, count: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    .line 558
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 557
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :catchall_36
    move-exception p0

    goto :goto_68

    .line 561
    :cond_38
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 563
    :cond_3d
    :goto_3d
    iget-boolean p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    if-nez p1, :cond_43

    .line 564
    monitor-exit v0

    return-void

    .line 573
    :cond_43
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 574
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_5a

    .line 576
    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    .line 577
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-eqz p0, :cond_66

    .line 578
    invoke-virtual {p0, p3}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->logAppBlocked(I)V

    goto :goto_66

    .line 581
    :cond_5a
    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    .line 582
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-eqz p0, :cond_66

    .line 583
    invoke-virtual {p0, p3}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->logAppUnblocked(I)V

    .line 586
    :cond_66
    :goto_66
    monitor-exit v0

    return-void

    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_36

    throw p0
.end method

.method public final updateAppsThatShouldBlockScreenCapture()V
    .registers 4

    .line 387
    const-string v0, "SensitiveContentProtect"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_10

    :catch_9
    move-exception v1

    .line 389
    const-string v2, "SensitiveContentProtectionManagerService doesn\'t have access."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_10
    if-nez v1, :cond_18

    .line 394
    const-string p0, "Ranking map not initialized."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 398
    :cond_18
    invoke-virtual {p0, v1}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public final updateAppsThatShouldBlockScreenCapture(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 5

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_12

    :catch_7
    move-exception v0

    .line 407
    const-string v1, "SensitiveContentProtect"

    const-string v2, "SensitiveContentProtectionManagerService doesn\'t have access."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 408
    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    .line 411
    :goto_12
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-eqz v1, :cond_19

    .line 412
    invoke-virtual {v1, v0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->addSeenNotifications([Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 417
    :cond_19
    invoke-static {v0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->getSensitivePackagesFromNotifications([Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/util/ArraySet;

    move-result-object p1

    .line 419
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 420
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    :cond_28
    return-void
.end method
