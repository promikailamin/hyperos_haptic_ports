.class Lcom/android/server/wm/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "ActivityStartInterceptor.java"


# instance fields
.field mAInfo:Landroid/content/pm/ActivityInfo;

.field mActivityOptions:Landroid/app/ActivityOptions;

.field private mCallingFeatureId:Ljava/lang/String;

.field private mCallingPackage:Ljava/lang/String;

.field mCallingPid:I

.field mCallingUid:I

.field mInTask:Lcom/android/server/wm/Task;

.field mIntent:Landroid/content/Intent;

.field mRInfo:Landroid/content/pm/ResolveInfo;

.field private mRealCallingPid:I

.field private mRealCallingUid:I

.field mResolvedType:Ljava/lang/String;

.field private final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mServiceContext:Landroid/content/Context;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 111
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/RootWindowContainer;Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/RootWindowContainer;Landroid/content/Context;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p3, "root"    # Lcom/android/server/wm/RootWindowContainer;
    .param p4, "context"    # Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 118
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 119
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 120
    iput-object p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method private createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;
    .registers 18
    .param p1, "callingUid"    # I
    .param p2, "flags"    # I

    .line 138
    move-object v0, p0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;

    move-result-object v14

    .line 139
    .local v14, "activityOptions":Landroid/os/Bundle;
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v2, 0x1

    new-array v10, v2, [Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v5, v10, v7

    new-array v11, v2, [Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    aput-object v2, v11, v7

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v5, p1

    move/from16 v12, p2

    move-object v13, v14

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 144
    .local v1, "target":Landroid/content/IIntentSender;
    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v2
.end method

.method private deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;
    .registers 3

    .line 223
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCrossProfileAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 224
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 225
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 227
    :cond_12
    return-object v1
.end method

.method private getInterceptorInfo(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
    .registers 18
    .param p1, "clearOptionsAnimation"    # Ljava/lang/Runnable;

    .line 422
    move-object/from16 v0, p0

    new-instance v15, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v12, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object v1, v15

    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IILandroid/app/ActivityOptions;Ljava/lang/Runnable;)V

    return-object v15
.end method

.method private hasCrossProfileAnimation()Z
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_e

    .line 213
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 212
    :goto_f
    return v0
.end method

.method private interceptHarmfulAppIfNeeded()Z
    .registers 11

    .line 381
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 382
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_11} :catch_4d

    .line 385
    .local v1, "harmfulAppWarning":Ljava/lang/CharSequence;
    nop

    .line 387
    if-nez v1, :cond_15

    .line 388
    return v0

    .line 391
    :cond_15
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 394
    .local v0, "target":Landroid/content/IntentSender;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 397
    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 398
    iget v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 399
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 401
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 402
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 403
    const/4 v2, 0x1

    return v2

    .line 383
    .end local v0    # "target":Landroid/content/IntentSender;
    .end local v1    # "harmfulAppWarning":Ljava/lang/CharSequence;
    :catch_4d
    move-exception v1

    .line 384
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method private interceptLockTaskModeViolationPackageIfNeeded()Z
    .registers 12

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_a

    goto :goto_59

    .line 311
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    .line 312
    .local v0, "controller":Lcom/android/server/wm/LockTaskController;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 313
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-static {v3, v4}, Lcom/android/server/wm/ActivityRecord;->getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I

    move-result v3

    .line 314
    .local v3, "lockTaskLaunchMode":I
    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/wm/LockTaskController;->isActivityAllowed(ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 315
    return v1

    .line 317
    :cond_27
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/internal/app/BlockedAppActivity;->createIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 318
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 319
    iget v10, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v10, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 320
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 321
    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 322
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 323
    const/4 v1, 0x1

    return v1

    .line 309
    .end local v0    # "controller":Lcom/android/server/wm/LockTaskController;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "lockTaskLaunchMode":I
    :cond_59
    :goto_59
    return v1
.end method

.method private interceptLockedManagedProfileIfNeeded()Z
    .registers 10

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;

    move-result-object v0

    .line 328
    .local v0, "interceptingIntent":Landroid/content/Intent;
    if-nez v0, :cond_c

    .line 329
    const/4 v1, 0x0

    return v1

    .line 331
    :cond_c
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 332
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 333
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 338
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_26

    .line 339
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v3, "android.intent.extra.TASK_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 342
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_30

    .line 343
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 346
    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 347
    .local v2, "parent":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 348
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v3, v6, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 349
    const/4 v1, 0x1

    return v1
.end method

.method private interceptQuietProfileIfNeeded()Z
    .registers 10

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 233
    const/4 v0, 0x0

    return v0

    .line 236
    :cond_10
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v1, 0x50000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 239
    .local v0, "target":Landroid/content/IntentSender;
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 240
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 241
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 242
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 245
    .local v2, "parent":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 246
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v3, v6, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 247
    const/4 v1, 0x1

    return v1
.end method

.method private interceptSuspendedByAdminPackage()Z
    .registers 12

    .line 251
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 252
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 253
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v0, :cond_c

    .line 254
    const/4 v1, 0x0

    return v1

    .line 256
    :cond_c
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 257
    const-string v3, "android.app.extra.RESTRICTION"

    const-string/jumbo v4, "policy_suspend_packages"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 260
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 263
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 264
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_44

    .line 265
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_55

    .line 268
    :cond_44
    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 271
    :goto_55
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 272
    return v2
.end method

.method private interceptSuspendedPackageIfNeeded()Z
    .registers 20

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_90

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_90

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-nez v1, :cond_18

    goto/16 :goto_90

    .line 281
    :cond_18
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 282
    .local v1, "pmi":Landroid/content/pm/PackageManagerInternal;
    if-nez v1, :cond_21

    .line 283
    return v2

    .line 285
    :cond_21
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 286
    .local v2, "suspendedPackage":Ljava/lang/String;
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 287
    .local v9, "suspendingPackage":Ljava/lang/String;
    const-string v3, "android"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptSuspendedByAdminPackage()Z

    move-result v3

    return v3

    .line 290
    :cond_3a
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v10

    .line 292
    .local v10, "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCrossProfileAnimation()Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_51

    .line 293
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v6, v3

    goto :goto_52

    .line 294
    :cond_51
    move-object v6, v11

    :goto_52
    nop

    .line 295
    .local v6, "crossProfileOptions":Landroid/os/Bundle;
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v4, 0x4000000

    invoke-direct {v0, v3, v4}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v12

    .line 297
    .local v12, "target":Landroid/content/IntentSender;
    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    move-object v3, v2

    move-object v4, v9

    move-object v5, v10

    move-object v7, v12

    invoke-static/range {v3 .. v8}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 299
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 300
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 301
    const/4 v15, 0x0

    iput-object v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 302
    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/16 v17, 0x0

    move/from16 v16, v4

    move/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 303
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v3, v7, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 304
    const/4 v3, 0x1

    return v3

    .line 279
    .end local v1    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v2    # "suspendedPackage":Ljava/lang/String;
    .end local v6    # "crossProfileOptions":Landroid/os/Bundle;
    .end local v9    # "suspendingPackage":Ljava/lang/String;
    .end local v10    # "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v12    # "target":Landroid/content/IntentSender;
    :cond_90
    :goto_90
    return v2
.end method

.method private interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .registers 8
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .line 358
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 359
    invoke-virtual {v0, p2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_40

    .line 362
    :cond_13
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 364
    .local v0, "target":Landroid/content/IntentSender;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 365
    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 366
    .local v2, "km":Landroid/app/KeyguardManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v1, p2, v3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/content/Intent;

    move-result-object v3

    .line 368
    .local v3, "newIntent":Landroid/content/Intent;
    if-nez v3, :cond_2d

    .line 369
    return-object v1

    .line 371
    :cond_2d
    const v1, 0x10804000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 373
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 375
    return-object v3

    .line 360
    .end local v0    # "target":Landroid/content/IntentSender;
    .end local v2    # "km":Landroid/app/KeyguardManager;
    .end local v3    # "newIntent":Landroid/content/Intent;
    :cond_40
    :goto_40
    return-object v1
.end method


# virtual methods
.method intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)Z
    .registers 31
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "inTask"    # Lcom/android/server/wm/Task;
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I
    .param p8, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 157
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 158
    move/from16 v2, p6

    iput v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 159
    move/from16 v3, p7

    iput v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 160
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 161
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 162
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 163
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 164
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_32

    .line 169
    return v10

    .line 171
    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptSuspendedPackageIfNeeded()Z

    move-result v9

    if-eqz v9, :cond_39

    .line 174
    return v10

    .line 176
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptLockTaskModeViolationPackageIfNeeded()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 177
    return v10

    .line 179
    :cond_40
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptHarmfulAppIfNeeded()Z

    move-result v9

    if-eqz v9, :cond_47

    .line 182
    return v10

    .line 184
    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptLockedManagedProfileIfNeeded()Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 185
    return v10

    .line 188
    :cond_4e
    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 189
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityInterceptorCallbacks()Landroid/util/SparseArray;

    move-result-object v9

    .line 190
    .local v9, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/ActivityInterceptorCallback;>;"
    nop

    .line 191
    const/4 v11, 0x0

    invoke-direct {v0, v11}, Lcom/android/server/wm/ActivityStartInterceptor;->getInterceptorInfo(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    move-result-object v12

    .line 193
    .local v12, "interceptorInfo":Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5b
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_a8

    .line 194
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 195
    .local v14, "callback":Lcom/android/server/wm/ActivityInterceptorCallback;
    invoke-virtual {v14, v12}, Lcom/android/server/wm/ActivityInterceptorCallback;->intercept(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;

    move-result-object v15

    .line 196
    .local v15, "interceptResult":Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    if-nez v15, :cond_71

    .line 197
    nop

    .line 193
    .end local v14    # "callback":Lcom/android/server/wm/ActivityInterceptorCallback;
    .end local v15    # "interceptResult":Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    add-int/lit8 v13, v13, 0x1

    goto :goto_5b

    .line 199
    .restart local v14    # "callback":Lcom/android/server/wm/ActivityInterceptorCallback;
    .restart local v15    # "interceptResult":Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    :cond_71
    iget-object v10, v15, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->intent:Landroid/content/Intent;

    iput-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 200
    iget-object v10, v15, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->activityOptions:Landroid/app/ActivityOptions;

    iput-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 201
    iget v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 202
    iget v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 203
    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/16 v18, 0x0

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/16 v20, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v1

    move/from16 v19, v2

    move/from16 v21, v10

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 204
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v1, v11, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 206
    const/4 v1, 0x1

    return v1

    .line 208
    .end local v13    # "i":I
    .end local v14    # "callback":Lcom/android/server/wm/ActivityInterceptorCallback;
    .end local v15    # "interceptResult":Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    :cond_a8
    const/4 v1, 0x0

    return v1
.end method

.method onActivityLaunched(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "taskInfo"    # Landroid/app/TaskInfo;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 411
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityInterceptorCallbacks()Landroid/util/SparseArray;

    move-result-object v0

    .line 412
    .local v0, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/ActivityInterceptorCallback;>;"
    nop

    .line 413
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 412
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->getInterceptorInfo(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    move-result-object v1

    .line 414
    .local v1, "info":Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 415
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 416
    .local v3, "callback":Lcom/android/server/wm/ActivityInterceptorCallback;
    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/wm/ActivityInterceptorCallback;->onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    .line 414
    .end local v3    # "callback":Lcom/android/server/wm/ActivityInterceptorCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 418
    .end local v2    # "i":I
    :cond_28
    return-void
.end method

.method setStates(IIIILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "startFlags"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;

    .line 129
    iput p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    .line 130
    iput p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    .line 131
    iput p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 132
    iput p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    .line 133
    iput-object p5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 134
    iput-object p6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    .line 135
    return-void
.end method
