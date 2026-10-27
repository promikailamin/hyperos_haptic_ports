.class Lcom/android/server/am/BaseAppStateTracker$Injector;
.super Ljava/lang/Object;
.source "BaseAppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseAppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/am/BaseAppStatePolicy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

.field mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mPermissionManager:Landroid/permission/PermissionManager;

.field mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field mRoleManager:Landroid/app/role/RoleManager;

.field mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 278
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method currentTimeMillis()J
    .registers 3

    .line 351
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 2

    .line 324
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 2

    .line 371
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .registers 2

    .line 328
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;
    .registers 2

    .line 332
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    return-object v0
.end method

.method getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;
    .registers 2

    .line 340
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    return-object v0
.end method

.method getIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 2

    .line 391
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .registers 2

    .line 375
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method getNotificationManagerInternal()Lcom/android/server/notification/NotificationManagerInternal;
    .registers 2

    .line 387
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    return-object v0
.end method

.method getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 355
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 359
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method getPermissionManager()Landroid/permission/PermissionManager;
    .registers 2

    .line 363
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManager:Landroid/permission/PermissionManager;

    return-object v0
.end method

.method getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 2

    .line 367
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v0
.end method

.method getPolicy()Lcom/android/server/am/BaseAppStatePolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    return-object v0
.end method

.method getRoleManager()Landroid/app/role/RoleManager;
    .registers 2

    .line 383
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    return-object v0
.end method

.method getServiceStartForegroundTimeout()J
    .registers 3

    .line 379
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getServiceStartForegroundTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    .line 344
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object v0
.end method

.method onSystemReady()V
    .registers 3

    .line 301
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 302
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 303
    const-class v0, Landroid/os/BatteryStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 304
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    .line 305
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 306
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 307
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 309
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 310
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 311
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 312
    const-class v1, Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 313
    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 314
    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    .line 315
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 317
    nop

    .line 318
    const-string v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 317
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 320
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStatePolicy;->onSystemReady()V

    .line 321
    return-void
.end method

.method setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 297
    .local p0, "this":Lcom/android/server/am/BaseAppStateTracker$Injector;, "Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;"
    .local p1, "policy":Lcom/android/server/am/BaseAppStatePolicy;, "TT;"
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 298
    return-void
.end method
