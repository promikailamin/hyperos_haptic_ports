.class Lcom/android/server/am/AppRestrictionController$Injector;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

.field private mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

.field private mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

.field private mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

.field private mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

.field private mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

.field private mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field private mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private final mContext:Landroid/content/Context;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private mRoleManager:Landroid/app/role/RoleManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 3093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3094
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 3095
    return-void
.end method


# virtual methods
.method currentTimeMillis()J
    .registers 3

    .line 3248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 2

    .line 3118
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_e

    .line 3119
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 3121
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .registers 2

    .line 3209
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method getAppBatteryExemptionTracker()Lcom/android/server/am/AppBatteryExemptionTracker;
    .registers 2

    .line 3217
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    return-object v0
.end method

.method getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;
    .registers 2

    .line 3201
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    return-object v0
.end method

.method getAppHibernationInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;
    .registers 2

    .line 3143
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    if-nez v0, :cond_e

    .line 3144
    const-class v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 3147
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    return-object v0
.end method

.method getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;
    .registers 2

    .line 3205
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    return-object v0
.end method

.method getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 3129
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_12

    .line 3130
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3132
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method getAppPermissionTracker()Lcom/android/server/am/AppPermissionTracker;
    .registers 2

    .line 3221
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    return-object v0
.end method

.method getAppRestrictionController()Lcom/android/server/am/AppRestrictionController;
    .registers 2

    .line 3125
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    return-object v0
.end method

.method getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .registers 2

    .line 3136
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_e

    .line 3137
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 3139
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    return-object v0
.end method

.method getAppStateTracker()Lcom/android/server/AppStateTracker;
    .registers 2

    .line 3151
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-nez v0, :cond_e

    .line 3152
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 3154
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 3098
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDataSystemDeDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 3244
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getIActivityManager()Landroid/app/IActivityManager;
    .registers 2

    .line 3158
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    .line 3180
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_12

    .line 3181
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3183
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 3176
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 3169
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 3170
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 3172
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method getPackageName(I)Ljava/lang/String;
    .registers 7
    .param p1, "pid"    # I

    .line 3225
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 3227
    .local v0, "am":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 3228
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 3229
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_17

    .line 3230
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 3231
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_17

    .line 3232
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v1

    return-object v4

    .line 3235
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_17
    monitor-exit v1

    .line 3236
    const/4 v1, 0x0

    return-object v1

    .line 3235
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method getRoleManager()Landroid/app/role/RoleManager;
    .registers 3

    .line 3187
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    if-nez v0, :cond_12

    .line 3188
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    .line 3190
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 3194
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_12

    .line 3195
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 3197
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method getUidBatteryUsageProvider()Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;
    .registers 2

    .line 3213
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    return-object v0
.end method

.method getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    .line 3162
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    .line 3163
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3165
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object v0
.end method

.method initAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)V
    .registers 5
    .param p1, "controller"    # Lcom/android/server/am/AppRestrictionController;

    .line 3102
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 3103
    new-instance v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppBatteryTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    .line 3104
    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppBatteryExemptionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    .line 3105
    new-instance v0, Lcom/android/server/am/AppFGSTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppFGSTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 3106
    new-instance v0, Lcom/android/server/am/AppMediaSessionTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppMediaSessionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    .line 3107
    new-instance v0, Lcom/android/server/am/AppPermissionTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppPermissionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 3108
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3109
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3110
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3111
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3112
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3113
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppBroadcastEventsTracker;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/am/AppBroadcastEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3114
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppBindServiceEventsTracker;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/am/AppBindServiceEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3115
    return-void
.end method

.method isTest()Z
    .registers 2

    .line 3252
    const/4 v0, 0x0

    return v0
.end method

.method scheduleInitTrackers(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "initializers"    # Ljava/lang/Runnable;

    .line 3240
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3241
    return-void
.end method
