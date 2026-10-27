.class Lcom/android/server/am/UserController$Injector;
.super Ljava/lang/Object;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/UserController$Injector;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 3220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3221
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3222
    return-void
.end method

.method static synthetic lambda$startUserWidgets$0(Landroid/appwidget/AppWidgetManagerInternal;I)V
    .registers 2
    .param p0, "awm"    # Landroid/appwidget/AppWidgetManagerInternal;
    .param p1, "userId"    # I

    .line 3359
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManagerInternal;->unlockUser(I)V

    .line 3360
    return-void
.end method


# virtual methods
.method activityManagerForceStopPackage(ILjava/lang/String;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 3332
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3333
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, p1

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 3335
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3336
    return-void

    .line 3335
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method activityManagerOnUserStopped(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3269
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 3270
    return-void
.end method

.method batteryStatsServiceNoteEvent(ILjava/lang/String;I)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 3300
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 3301
    return-void
.end method

.method protected broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    .registers 43
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Ljava/lang/String;
    .param p6, "resultExtras"    # Landroid/os/Bundle;
    .param p7, "requiredPermissions"    # [Ljava/lang/String;
    .param p8, "appOp"    # I
    .param p9, "bOptions"    # Landroid/os/Bundle;
    .param p10, "ordered"    # Z
    .param p11, "sticky"    # Z
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "realCallingUid"    # I
    .param p15, "realCallingPid"    # I
    .param p16, "userId"    # I

    .line 3246
    move-object/from16 v1, p0

    const-string v0, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    move-object/from16 v13, p1

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3247
    .local v0, "logUserId":I
    if-ne v0, v2, :cond_12

    .line 3248
    move/from16 v0, p16

    move v2, v0

    goto :goto_13

    .line 3247
    :cond_12
    move v2, v0

    .line 3250
    .end local v0    # "logUserId":I
    .local v2, "logUserId":I
    :goto_13
    const/16 v0, 0x7581

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3253
    iget-object v12, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3254
    iget-object v3, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_61

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v25, v12

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, p10

    move/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p13

    move/from16 v22, p14

    move/from16 v23, p15

    move/from16 v24, p16

    :try_start_58
    invoke-virtual/range {v3 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    move-result v0

    monitor-exit v25
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 3258
    :catchall_61
    move-exception v0

    move-object/from16 v25, v12

    :goto_64
    :try_start_64
    monitor-exit v25
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_69
    move-exception v0

    goto :goto_64
.end method

.method checkCallingPermission(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 3262
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "owningUid"    # I
    .param p5, "exported"    # Z

    .line 3340
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method checkPermissionForPreflight(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "pkg"    # Ljava/lang/String;

    .line 3344
    nop

    .line 3346
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3345
    invoke-static {v0, p1, p2, p3, p4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 3344
    :goto_e
    return v0
.end method

.method protected clearAllLockedTasks(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3423
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearLockedTasks(Ljava/lang/String;)V

    .line 3424
    return-void
.end method

.method clearBroadcastQueueForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3369
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3370
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    .line 3371
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3372
    return-void

    .line 3371
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method protected dismissKeyguard(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3442
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$Injector$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserController$Injector$2;-><init>(Lcom/android/server/am/UserController$Injector;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 3458
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 3233
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 4
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 3225
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 3296
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method protected getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 3

    .line 3237
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getService()Lcom/android/server/am/ActivityManagerService;
    .registers 2

    .line 3433
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method protected getStorageManager()Landroid/os/storage/IStorageManager;
    .registers 2

    .line 3438
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method getSystemServiceManager()Lcom/android/server/SystemServiceManager;
    .registers 2

    .line 3308
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method protected getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 4
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 3229
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method protected getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 3

    .line 3281
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_13

    .line 3282
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3283
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3285
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    .line 3289
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    .line 3290
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3292
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object v0
.end method

.method getWindowManager()Lcom/android/server/wm/WindowManagerService;
    .registers 2

    .line 3266
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method installEncryptionUnawareProviders(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3383
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ContentProviderHelper;->installEncryptionUnawareProviders(I)V

    .line 3384
    return-void
.end method

.method isCallerRecents(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 3427
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    return v0
.end method

.method isFirstBootOrUpgrade()Z
    .registers 4

    .line 3312
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3314
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :try_start_4
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_15

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1

    .line 3315
    :catch_15
    move-exception v1

    .line 3316
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method isRuntimeRestarted()Z
    .registers 2

    .line 3304
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v0

    return v0
.end method

.method loadUserRecents(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3375
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->loadRecentTasksForUser(I)V

    .line 3376
    return-void
.end method

.method reportCurWakefulnessUsageEvent()V
    .registers 2

    .line 3407
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->reportCurWakefulnessUsageEvent()V

    .line 3408
    return-void
.end method

.method reportGlobalUsageEvent(I)V
    .registers 3
    .param p1, "event"    # I

    .line 3403
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 3404
    return-void
.end method

.method sendPreBootBroadcast(IZLjava/lang/Runnable;)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "quiet"    # Z
    .param p3, "onFinish"    # Ljava/lang/Runnable;

    .line 3321
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3322
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PRE_BOOT_COMPLETED"

    aput-object v2, v0, v1

    .line 3321
    const/16 v1, 0x7581

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3323
    new-instance v0, Lcom/android/server/am/UserController$Injector$1;

    iget-object v4, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/UserController$Injector$1;-><init>(Lcom/android/server/am/UserController$Injector;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLjava/lang/Runnable;)V

    .line 3328
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector$1;->sendNext()V

    .line 3329
    return-void
.end method

.method showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "fromUser"    # Landroid/content/pm/UserInfo;
    .param p2, "toUser"    # Landroid/content/pm/UserInfo;
    .param p3, "switchingFromSystemUserMessage"    # Ljava/lang/String;
    .param p4, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 3388
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3389
    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3393
    const-string v0, "ActivityManager"

    const-string v1, "Showing user switch dialog on UserController, it could cause a race condition if it\'s shown by CarSystemUI as well"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    :cond_17
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog;

    iget-object v3, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move-object v2, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 3399
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3400
    return-void
.end method

.method protected startHomeActivity(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 3350
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    .line 3351
    return-void
.end method

.method startPersistentApps(I)V
    .registers 3
    .param p1, "matchFlags"    # I

    .line 3379
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->startPersistentApps(I)V

    .line 3380
    return-void
.end method

.method startUserWidgets(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3354
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManagerInternal;

    .line 3355
    .local v0, "awm":Landroid/appwidget/AppWidgetManagerInternal;
    if-eqz v0, :cond_16

    .line 3358
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManagerInternal;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3362
    :cond_16
    return-void
.end method

.method systemServiceManagerOnUserCompletedEvent(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "eventTypes"    # I

    .line 3277
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SystemServiceManager;->onUserCompletedEvent(II)V

    .line 3278
    return-void
.end method

.method systemServiceManagerOnUserStopped(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3273
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/SystemServiceManager;->onUserStopped(I)V

    .line 3274
    return-void
.end method

.method taskSupervisorRemoveUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3411
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeUser(I)V

    .line 3412
    return-void
.end method

.method protected taskSupervisorResumeFocusedStackTopActivity()V
    .registers 3

    .line 3419
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 3420
    return-void
.end method

.method protected taskSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 3415
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->switchUser(ILcom/android/server/am/UserState;)Z

    move-result v0

    return v0
.end method

.method updateUserConfiguration()V
    .registers 2

    .line 3365
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->updateUserConfiguration()V

    .line 3366
    return-void
.end method
