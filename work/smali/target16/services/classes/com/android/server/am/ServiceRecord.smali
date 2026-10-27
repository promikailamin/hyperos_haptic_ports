.class public final Lcom/android/server/am/ServiceRecord;
.super Lcom/android/server/am/psc/ServiceRecordInternal;
.source "ServiceRecord.java"

# interfaces
.implements Landroid/content/ComponentName$WithComponentName;


# instance fields
.field public allowlistManager:Z

.field public final ams:Lcom/android/server/am/ActivityManagerService;

.field public app:Lcom/android/server/am/ProcessRecord;

.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field public final bindings:Landroid/util/ArrayMap;

.field public callStart:Z

.field public final connections:Landroid/util/ArrayMap;

.field public crashCount:I

.field public final createRealTime:J

.field public createdFromFg:Z

.field public final definingPackageName:Ljava/lang/String;

.field public final definingUid:I

.field public delayed:Z

.field public delayedStop:Z

.field public final deliveredStarts:Ljava/util/ArrayList;

.field public destroyTime:J

.field public destroying:Z

.field public executeFg:Z

.field public executeNesting:I

.field public executingStart:J

.field public final exported:Z

.field public fgDisplayTime:J

.field public fgRequired:Z

.field public fgWaiting:Z

.field public foregroundId:I

.field public foregroundNoti:Landroid/app/Notification;

.field public inSharedIsolatedProcess:Z

.field public final intent:Landroid/content/Intent$FilterComparison;

.field public isNotAppComponentUsage:Z

.field public final isSdkSandbox:Z

.field public isolationHostProc:Lcom/android/server/am/ProcessRecord;

.field public lastStartId:I

.field public mAdjSeq:I

.field public mAllowStartForegroundAtEntering:I

.field public mAllowStart_byBindings:I

.field public mAllowStart_inBindService:I

.field public mAllowStart_noBinding:I

.field public mAllowUiJobScheduling:Z

.field public mAllowWhileInUsePermissionInFgsAtEntering:Z

.field public mAllowWiu_byBindings:I

.field public mAllowWiu_inBindService:I

.field public mAllowWiu_noBinding:I

.field public mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

.field public mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

.field public mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

.field public mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

.field public mEarliestRestartTime:J

.field public mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

.field public mFgsEnterTime:J

.field public mFgsExitTime:J

.field public mFgsHasNotificationPermission:Z

.field public mFgsNotificationDeferred:Z

.field public mFgsNotificationShown:Z

.field public mFgsNotificationWasDeferred:Z

.field public mInfoAllowStartForeground:Ljava/lang/String;

.field public mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

.field public mIsAllowedBgActivityStartsByBinding:Z

.field public mIsFgsDelegate:Z

.field public mLoggedInfoAllowStartForeground:Z

.field public mProcessStateOnRequest:I

.field public mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field public mRecentCallingPackage:Ljava/lang/String;

.field public mRecentCallingUid:I

.field public mRestartSchedulingTime:J

.field public mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

.field public mStartForegroundCount:I

.field public final name:Landroid/content/ComponentName;

.field public nextRestartTime:J

.field public final packageName:Ljava/lang/String;

.field public pendingConnectionGroup:I

.field public pendingConnectionImportance:I

.field public final pendingStarts:Ljava/util/ArrayList;

.field public final permission:Ljava/lang/String;

.field public final processName:Ljava/lang/String;

.field public restartCount:I

.field public restartDelay:J

.field public restartTime:J

.field public restartTracker:Lcom/android/internal/app/procstats/ServiceState;

.field public final restarter:Ljava/lang/Runnable;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppUid:I

.field public final serviceInfo:Landroid/content/pm/ServiceInfo;

.field public final shortInstanceName:Ljava/lang/String;

.field public startCommandResult:I

.field public startingBgTimeout:J

.field public stopIfKilled:Z

.field public stringName:Ljava/lang/String;

.field public systemRequestedFgToBg:Z

.field public totalRestartCount:I

.field public tracker:Lcom/android/internal/app/procstats/ServiceState;

.field public final userId:I


# direct methods
.method public static synthetic $r8$lambda$KzqVHAivc5a2BQvDWrhUmMueE4I(Lcom/android/server/am/ServiceRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->lambda$allowBgActivityStartsOnServiceStart$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msignalForegroundServiceNotification(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;IIZ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ServiceRecord;->signalForegroundServiceNotification(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 17

    .line 1143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/am/psc/ServiceRecordInternal;-><init>(Landroid/content/ComponentName;J)V

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    .line 206
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    const/4 v0, -0x1

    .line 212
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    const-wide/16 v1, 0x0

    .line 228
    iput-wide v1, p0, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    .line 230
    iput-wide v1, p0, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    .line 242
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 245
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    .line 254
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 257
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 260
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 263
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 1145
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 1146
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 1147
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 1148
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    .line 1149
    iput p5, p0, Lcom/android/server/am/ServiceRecord;->definingUid:I

    .line 1150
    iput-object p6, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 1151
    iput-object p7, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1152
    iget-object p1, p7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1153
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    if-eq p11, v0, :cond_61

    const/4 p1, 0x1

    goto :goto_62

    :cond_61
    const/4 p1, 0x0

    .line 1154
    :goto_62
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    .line 1155
    iput p11, p0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppUid:I

    move-object p1, p12

    .line 1156
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    move/from16 p1, p13

    .line 1157
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->inSharedIsolatedProcess:Z

    .line 1158
    iput-object p10, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 1159
    iget-object p1, p7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 1160
    iget-boolean p1, p7, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 1161
    iput-object p9, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 1162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 1163
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1164
    iput-boolean p8, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateFgsHasNotificationPermission()V

    return-void
.end method

.method public static reasonOr(II)I
    .registers 3

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    return p0

    :cond_4
    return p1
.end method

.method public static reasonOr(III)I
    .registers 4

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    return p0

    .line 421
    :cond_4
    invoke-static {p1, p2}, Lcom/android/server/am/ServiceRecord;->reasonOr(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V
    .registers 7

    .line 1302
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 1304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    :cond_14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_31

    .line 1311
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget v0, p2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getFlags()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/am/ProcessServiceRecord;->addBoundClientUid(ILjava/lang/String;J)V

    .line 1312
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    :cond_31
    return-void
.end method

.method public allowBgActivityStartsOnServiceStart(Landroid/app/BackgroundStartPrivileges;)V
    .registers 5

    .line 1365
    invoke-virtual {p1}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1366
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 1368
    invoke-virtual {p1, v0}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p1

    .line 1367
    invoke-virtual {p0, p1}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByStart(Landroid/app/BackgroundStartPrivileges;)V

    .line 1369
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_1b

    .line 1370
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 1374
    :cond_1b
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    if-nez p1, :cond_26

    .line 1375
    new-instance p1, Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ServiceRecord;)V

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    .line 1424
    :cond_26
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, p1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public allowedChanged(II)Z
    .registers 5

    .line 0
    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    move p1, v0

    goto :goto_8

    :cond_7
    move p1, p0

    :goto_8
    if-ne p2, v1, :cond_c

    move p2, v0

    goto :goto_d

    :cond_c
    move p2, p0

    :goto_d
    if-eq p1, p2, :cond_10

    return v0

    :cond_10
    return p0
.end method

.method public canStopIfKilled(Z)Z
    .registers 4

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1333
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    if-nez v0, :cond_14

    if-eqz p1, :cond_1d

    :cond_14
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1d

    return v1

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public cancelNotification()V
    .registers 8

    .line 1726
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1727
    iget v5, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1728
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1729
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    :goto_10
    move v4, v0

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 1730
    :goto_14
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v0, Lcom/android/server/am/ServiceRecord$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearDeliveredStartsLocked()V
    .registers 3

    .line 1781
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1782
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1784
    :cond_18
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearFgsAllowStart()V
    .registers 2

    const/4 v0, -0x1

    .line 404
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 405
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 406
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    return-void
.end method

.method public clearFgsAllowWiu()V
    .registers 2

    const/4 v0, -0x1

    .line 398
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 399
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 400
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    return-void
.end method

.method public clearShortFgsInfo()V
    .registers 2

    const/4 v0, 0x0

    .line 1851
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    return-void
.end method

.method public createTimeLimitedFgsInfo()Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;
    .registers 1

    .line 1910
    new-instance p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    invoke-direct {p0}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;-><init>()V

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 16

    .line 925
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "intent={"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x7d

    .line 927
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 928
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "packageName="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "processName="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "targetSdkVersion="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 931
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v3, :cond_5a

    .line 932
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "permission="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    :cond_5a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 935
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 936
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_a0

    .line 937
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "baseDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v9, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 939
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "resDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    :cond_91
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "dataDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    :cond_a0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "app="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 944
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_bf

    .line 945
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "isolationHostProc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 947
    :cond_bf
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v3, :cond_d0

    .line 948
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "allowlistManager="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 950
    :cond_d0
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    if-eqz v3, :cond_e2

    .line 951
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mIsAllowedBgActivityStartsByBinding="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 952
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 954
    :cond_e2
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v3}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 955
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mIsAllowedBgActivityStartsByStart="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 956
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 959
    :cond_f8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "useNewWiuLogic_forCapabilities()="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewWiuLogic_forCapabilities()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 961
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "useNewWiuLogic_forStart()="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewWiuLogic_forStart()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 963
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "useNewBfslLogic()="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewBfslLogic()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 966
    const-string/jumbo v3, "mAllowWiu_noBinding"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 967
    const-string/jumbo v3, "mAllowWiu_inBindService"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 968
    const-string/jumbo v3, "mAllowWiu_byBindings"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 970
    const-string v3, "getFgsAllowWiu_legacy"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_legacy()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 971
    const-string v3, "getFgsAllowWiu_new"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_new()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 973
    const-string v3, "getFgsAllowWiu_forStart"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 974
    const-string v3, "getFgsAllowWiu_forCapabilities"

    .line 975
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forCapabilities()I

    move-result v9

    .line 974
    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 977
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "allowUiJobScheduling="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 978
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "recentCallingPackage="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "recentCallingUid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 983
    const-string/jumbo v3, "mAllowStart_noBinding"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 984
    const-string/jumbo v3, "mAllowStart_inBindService"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 985
    const-string/jumbo v3, "mAllowStart_byBindings"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 987
    const-string v3, "getFgsAllowStart_legacy"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_legacy()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 988
    const-string v3, "getFgsAllowStart_new"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_new()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 989
    const-string v3, "getFgsAllowStart"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 991
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "startForegroundCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 993
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "infoAllowStartForeground="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 994
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v3, :cond_1ec

    .line 997
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "delayed="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 999
    :cond_1ec
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v3

    if-nez v3, :cond_1f6

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v3, :cond_295

    .line 1000
    :cond_1f6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "isForeground="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1001
    const-string v3, " foregroundId="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v9, " types=0x%08X"

    invoke-virtual {p1, v9, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1003
    const-string v3, " foregroundNoti="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v3

    if-eqz v3, :cond_295

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz v3, :cond_295

    .line 1006
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "isShortFgs=true"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1007
    const-string v3, " startId="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1008
    const-string v3, " startForegroundCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartForegroundCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1010
    const-string v3, " startTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartTime()J

    move-result-wide v9

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1012
    const-string v3, " timeout="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1013
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v9

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1014
    const-string v3, " demoteTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v9

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1016
    const-string v3, " anrTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1017
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v9

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1018
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1021
    :cond_295
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    if-eqz v3, :cond_2a7

    .line 1022
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "isFgsDelegate="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1024
    :cond_2a7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "createTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    invoke-static {v9, v10, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1026
    const-string v3, " startingBgTimeout="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    iget-wide v7, p0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    invoke-static {v7, v8, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1028
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1029
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "lastActivity="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastActivity()J

    move-result-wide v7

    invoke-static {v7, v8, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1031
    const-string v3, " restartTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    iget-wide v7, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static {v7, v8, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1033
    const-string v3, " createdFromFg="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1034
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    if-eqz v3, :cond_300

    .line 1035
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " pendingConnectionGroup="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1037
    const-string v3, " Importance="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1039
    :cond_300
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v3

    if-nez v3, :cond_30e

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v3, :cond_30e

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v3, :cond_350

    .line 1040
    :cond_30e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "startRequested="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1041
    const-string v3, " delayedStop="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1042
    const-string v3, " stopIfKilled="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1043
    const-string v3, " callStart="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1044
    const-string v3, " lastStartId="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1045
    const-string v3, " startCommandResult="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1047
    :cond_350
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v3, :cond_378

    .line 1048
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "executeNesting="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1049
    const-string v3, " executeFg="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1050
    const-string v3, " executingStart="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    iget-wide v7, p0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-static {v7, v8, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1052
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1054
    :cond_378
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v7, 0x0

    if-nez v3, :cond_384

    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v3, v9, v7

    if-eqz v3, :cond_39e

    .line 1055
    :cond_384
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "destroying="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1056
    const-string v3, " destroyTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1058
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1060
    :cond_39e
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v3, :cond_3b4

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v3, :cond_3b4

    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v11, p0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v11, v9, v11

    cmp-long v3, v11, v7

    if-nez v3, :cond_3b4

    cmp-long v3, v9, v7

    if-eqz v3, :cond_3e3

    .line 1062
    :cond_3b4
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "restartCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1063
    const-string v3, " restartDelay="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v11, p0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1065
    const-string v3, " nextRestartTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1067
    const-string v3, " crashCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1069
    :cond_3e3
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3fb

    .line 1070
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Delivered Starts:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 1073
    :cond_3fb
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_415

    .line 1074
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Starts:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 1077
    :cond_415
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const-string v4, "  "

    if-lez v3, :cond_476

    .line 1078
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Bindings:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v6

    .line 1079
    :goto_428
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_476

    .line 1080
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/IntentBindRecord;

    .line 1081
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "* IntentBindRecord{"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v5}, Lcom/android/server/am/IntentBindRecord;->collectFlags()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    and-long/2addr v9, v11

    cmp-long v9, v9, v7

    if-eqz v9, :cond_45b

    .line 1084
    const-string v9, " CREATE"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1086
    :cond_45b
    const-string/jumbo v9, "}:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, p1, v9}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_428

    .line 1090
    :cond_476
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_4b1

    .line 1091
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "All Connections:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v6

    .line 1092
    :goto_487
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_4b1

    .line 1093
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move v7, v6

    .line 1094
    :goto_498
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4ae

    .line 1095
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_498

    :cond_4ae
    add-int/lit8 v3, v3, 0x1

    goto :goto_487

    :cond_4b1
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 782
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 783
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 784
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    const-wide v14, 0x10800000002L

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 785
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-wide v3, 0x10500000003L

    if-eqz v2, :cond_31

    .line 786
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 788
    :cond_31
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v2, :cond_4f

    .line 789
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v5, v3

    const-wide v3, 0x10b00000004L

    move-wide/from16 v16, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    move-wide/from16 v13, v16

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    move-object v1, v2

    goto :goto_50

    :cond_4f
    move-wide v13, v3

    :goto_50
    const-wide v2, 0x10900000005L

    .line 792
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000006L

    .line 793
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000007L

    .line 794
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 796
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 797
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 798
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const-wide v3, 0x10500000004L

    if-eqz v2, :cond_bd

    const-wide v13, 0x10b00000008L

    .line 799
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 800
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 801
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    .line 802
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-wide v11, 0x10900000002L

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 804
    :cond_a7
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-wide v11, 0x10900000003L

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 805
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 806
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 808
    :cond_bd
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_c9

    const-wide v11, 0x10b00000009L

    .line 809
    invoke-virtual {v2, v1, v11, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 811
    :cond_c9
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_d5

    const-wide v11, 0x10b0000000aL

    .line 812
    invoke-virtual {v2, v1, v11, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_d5
    const-wide v11, 0x1080000000bL

    .line 814
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v11, 0x1080000000cL

    .line 815
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 816
    invoke-virtual {v0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v2

    const-wide v11, 0x10500000001L

    if-nez v2, :cond_f8

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v2, :cond_11f

    :cond_f8
    const-wide v13, 0x10b0000000dL

    .line 817
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 818
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 819
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 821
    invoke-virtual {v0}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v2

    const-wide v3, 0x10500000003L

    .line 820
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 822
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_11f
    const-wide v2, 0x10b0000000eL

    .line 824
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    const-wide v13, 0x10500000004L

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b0000000fL

    .line 825
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    move-object/from16 v1, p1

    move-wide v6, v15

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000010L

    .line 827
    invoke-virtual {v0}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastActivity()J

    move-result-wide v4

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000011L

    .line 828
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10800000012L

    .line 829
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000001bL

    .line 833
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v4

    .line 832
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 835
    invoke-virtual {v0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v2

    if-nez v2, :cond_175

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v2, :cond_175

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v2, :cond_1b5

    :cond_175
    const-wide v2, 0x10b00000013L

    .line 836
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10800000001L

    .line 837
    invoke-virtual {v0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v8

    invoke-virtual {v1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 838
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    const-wide v13, 0x10800000002L

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000003L

    .line 839
    iget-boolean v8, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {v1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10500000005L

    .line 840
    iget v8, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {v1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10500000006L

    .line 841
    iget v8, v0, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    invoke-virtual {v1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 842
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 845
    :cond_1b5
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v2, :cond_1de

    const-wide v2, 0x10b00000014L

    .line 846
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 847
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 848
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10b00000003L

    .line 849
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 851
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 853
    :cond_1de
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v13, 0x0

    if-nez v2, :cond_1ea

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v2, v2, v13

    if-eqz v2, :cond_1f4

    :cond_1ea
    const-wide v2, 0x10b00000015L

    .line 854
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 856
    :cond_1f4
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v2, :cond_20a

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v2, :cond_20a

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v13

    if-nez v4, :cond_20a

    cmp-long v2, v2, v13

    if-eqz v2, :cond_23f

    :cond_20a
    const-wide v2, 0x10b00000016L

    .line 858
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 859
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 860
    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v4, v2, v4

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000003L

    .line 862
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 864
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    const-wide v3, 0x10500000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 865
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 868
    :cond_23f
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_26a

    .line 869
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_24e
    if-ge v11, v8, :cond_26a

    .line 871
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000017L

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-wide v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move-wide v6, v5

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto :goto_24e

    .line 875
    :cond_26a
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_293

    .line 876
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_279
    if-ge v11, v8, :cond_293

    .line 878
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000018L

    move-object/from16 v2, p1

    move-wide v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move-object v1, v2

    move-wide v6, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_279

    :cond_293
    move-object/from16 v1, p1

    .line 881
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_2b9

    .line 882
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2a4
    if-ge v3, v2, :cond_2b9

    .line 884
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/IntentBindRecord;

    const-wide v5, 0x20b00000019L

    .line 885
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/am/IntentBindRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a4

    .line 888
    :cond_2b9
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_2ed

    .line 889
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2c8
    if-ge v3, v2, :cond_2ed

    .line 891
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 892
    :goto_2d3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2ea

    .line 893
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    const-wide v7, 0x20b0000001aL

    invoke-virtual {v6, v1, v7, v8}, Lcom/android/server/am/ConnectionRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d3

    :cond_2ea
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c8

    .line 897
    :cond_2ed
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz v2, :cond_349

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_349

    const-wide v2, 0x10b0000001cL

    .line 898
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 899
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 900
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartTime()J

    move-result-wide v4

    const-wide v6, 0x10300000001L

    .line 899
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 901
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 902
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartId()I

    move-result v4

    const-wide v13, 0x10500000003L

    .line 901
    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 903
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 904
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v4

    const-wide v6, 0x10300000004L

    .line 903
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 905
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 906
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v4

    const-wide v6, 0x10300000005L

    .line 905
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 907
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 908
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v4

    const-wide v6, 0x10300000006L

    .line 907
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 909
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 914
    :cond_349
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 918
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    const-string p0, "="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 921
    invoke-static {p4}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .registers 10

    .line 752
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_89

    .line 754
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 755
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 756
    const-string v2, " id="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_32

    .line 758
    const-string v2, " dur="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-static {v2, v3, p4, p5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 761
    :cond_32
    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-eqz v2, :cond_40

    .line 762
    const-string v2, " dc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 764
    :cond_40
    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-eqz v2, :cond_4e

    .line 765
    const-string v2, " dxc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 767
    :cond_4e
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  intent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_67

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6d

    .line 770
    :cond_67
    const-string/jumbo v2, "null"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    :goto_6d
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v2, :cond_7e

    .line 772
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  neededGrants="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 775
    :cond_7e
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v1, :cond_85

    .line 776
    invoke-virtual {v1, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_89
    return-void
.end method

.method public findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .registers 8

    .line 1552
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_24

    .line 1554
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1555
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    if-ne v3, p1, :cond_21

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    if-ne v3, p2, :cond_21

    if-eqz p3, :cond_20

    .line 1556
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_20
    return-object v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public forceClearTracker()V
    .registers 3

    .line 1196
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 1197
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    const/4 v0, 0x0

    .line 1198
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    :cond_b
    return-void
.end method

.method public final getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;
    .registers 2

    .line 1480
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    if-eqz v0, :cond_7

    .line 1481
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 1483
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1484
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 1486
    :cond_12
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 1814
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getConnectionAt(I)Ljava/util/ArrayList;
    .registers 2

    .line 1298
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getConnections()Landroid/util/ArrayMap;
    .registers 1

    .line 1288
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getConnectionsSize()I
    .registers 1

    .line 1293
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public getFgsAllowStart()I
    .registers 2

    .line 383
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewBfslLogic()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 384
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_new()I

    move-result p0

    return p0

    .line 386
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_legacy()I

    move-result p0

    return p0
.end method

.method public final getFgsAllowStart_legacy()I
    .registers 3

    .line 362
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    invoke-static {v0, v1, p0}, Lcom/android/server/am/ServiceRecord;->reasonOr(III)I

    move-result p0

    return p0
.end method

.method public final getFgsAllowStart_new()I
    .registers 2

    .line 372
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    invoke-static {v0, p0}, Lcom/android/server/am/ServiceRecord;->reasonOr(II)I

    move-result p0

    return p0
.end method

.method public getFgsAllowWiu_forCapabilities()I
    .registers 2

    .line 332
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewWiuLogic_forCapabilities()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 333
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_new()I

    move-result p0

    return p0

    .line 337
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result p0

    return p0
.end method

.method public getFgsAllowWiu_forStart()I
    .registers 2

    .line 320
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewWiuLogic_forStart()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 321
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_new()I

    move-result p0

    return p0

    .line 323
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_legacy()I

    move-result p0

    return p0
.end method

.method public final getFgsAllowWiu_legacy()I
    .registers 2

    .line 300
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    invoke-static {v0, p0}, Lcom/android/server/am/ServiceRecord;->reasonOr(II)I

    move-result p0

    return p0
.end method

.method public final getFgsAllowWiu_new()I
    .registers 2

    .line 309
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    invoke-static {v0, p0}, Lcom/android/server/am/ServiceRecord;->reasonOr(II)I

    move-result p0

    return p0
.end method

.method public final getFgsInfoForWtf()Ljava/lang/String;
    .registers 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cmp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sdk: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHostProcess()Lcom/android/server/am/ProcessRecord;
    .registers 1

    .line 1789
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public bridge synthetic getHostProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 83
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getHostProcess()Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public getIsolationHostProcess()Lcom/android/server/am/ProcessRecord;
    .registers 1

    .line 1794
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public bridge synthetic getIsolationHostProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 83
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getIsolationHostProcess()Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public getLastStartId()I
    .registers 1

    .line 1565
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return p0
.end method

.method public getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;
    .registers 2

    .line 1832
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTracker()Lcom/android/internal/app/procstats/ServiceState;
    .registers 11

    .line 1180
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_5

    return-object v0

    .line 1183
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_28

    .line 1184
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_28

    .line 1189
    invoke-virtual {v0, p0}, Lcom/android/internal/app/procstats/ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    .line 1192
    :cond_28
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    return-object p0
.end method

.method public hasAutoCreateConnections()Z
    .registers 6

    .line 1519
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_2c

    .line 1520
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1521
    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_29

    .line 1522
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    invoke-virtual {v4, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_26

    return v1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2c
    return v2
.end method

.method public hasShortFgsInfo()Z
    .registers 1

    .line 1844
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final isAppAlive()Z
    .registers 3

    .line 1923
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1926
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public isFgsAllowedStart()Z
    .registers 2

    .line 394
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isFgsAllowedWiu_forCapabilities()Z
    .registers 2

    .line 353
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forCapabilities()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isFgsAllowedWiu_forStart()Z
    .registers 2

    .line 345
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isFgsTimeLimited()Z
    .registers 2

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 1918
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isShortFgs()Z
    .registers 2

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result p0

    const/16 v0, 0x800

    if-ne p0, v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$allowBgActivityStartsOnServiceStart$0()V
    .registers 5

    .line 1376
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1377
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1378
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1380
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    .line 1381
    invoke-static {v1}, Landroid/app/BackgroundStartPrivileges;->merge(Ljava/util/List;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 1385
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1390
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_62

    .line 1393
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    move-result-object v2

    .line 1392
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    goto :goto_62

    :catchall_2e
    move-exception p0

    goto :goto_67

    .line 1396
    :cond_30
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service callback to revoke bg activity starts by service start triggered but mBackgroundStartPrivilegesByStartMerged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". This should never happen."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 1405
    :cond_4e
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v2, :cond_5a

    .line 1409
    sget-object v1, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByStart(Landroid/app/BackgroundStartPrivileges;)V

    goto :goto_5f

    :cond_5a
    if-eqz v2, :cond_5f

    .line 1414
    invoke-virtual {v2, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    :cond_5f
    :goto_5f
    const/4 v1, 0x0

    .line 1416
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 1418
    :cond_62
    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_6 .. :try_end_63} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_67
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public makeNextStartId()I
    .registers 3

    .line 1569
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ge v0, v1, :cond_a

    .line 1571
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 1573
    :cond_a
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return p0
.end method

.method public makeRestarting(IJ)V
    .registers 14

    .line 1203
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_27

    .line 1204
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_22

    .line 1205
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 1211
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_27

    return-void

    .line 1215
    :cond_27
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    return-void
.end method

.method public maybeLogFgsLogicChange()V
    .registers 9

    .line 437
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_legacy()I

    move-result v0

    .line 438
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_new()I

    move-result v1

    .line 440
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_legacy()I

    move-result v2

    .line 441
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_new()I

    move-result v3

    .line 443
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ServiceRecord;->allowedChanged(II)Z

    move-result v4

    .line 444
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ServiceRecord;->allowedChanged(II)Z

    move-result v5

    if-nez v4, :cond_1d

    if-nez v5, :cond_1d

    return-void

    .line 449
    :cond_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FGS logic changed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v7, ""

    if-eqz v4, :cond_2e

    const-string v4, " [WIU changed]"

    goto :goto_2f

    :cond_2e
    move-object v4, v7

    :goto_2f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_36

    .line 451
    const-string v7, " [BFSL changed]"

    :cond_36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Orig WIU:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-static {v0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " New WIU:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Orig BFSL:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-static {v2}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " New BFSL:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-static {v3}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsInfoForWtf()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 461
    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public postNotification(Z)V
    .registers 13

    .line 1596
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2b

    .line 1597
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1598
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    .line 1601
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1602
    iget v8, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1603
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1609
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/ServiceRecord$2;

    move-object v10, p0

    move-object v3, p0

    move v9, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/app/Notification;IIZLcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2b
    return-void
.end method

.method public removeConnection(Landroid/os/IBinder;)V
    .registers 3

    .line 1317
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_15

    .line 1320
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 1321
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_15
    return-void
.end method

.method public resetRestartCounter()V
    .registers 3

    const/4 v0, 0x0

    .line 1544
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const-wide/16 v0, 0x0

    .line 1545
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1546
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 1547
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    .line 1548
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .registers 6

    .line 1501
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1502
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/IntentBindRecord;

    if-nez p1, :cond_19

    .line 1504
    new-instance p1, Lcom/android/server/am/IntentBindRecord;

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    .line 1505
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    :cond_19
    iget-object v0, p1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_24

    return-object v0

    .line 1511
    :cond_24
    new-instance v0, Lcom/android/server/am/AppBindRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 1512
    iget-object p0, p1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public setAllowedBgActivityStartsByBinding(Z)V
    .registers 2

    .line 1354
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    .line 1355
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsToken()V

    return-void
.end method

.method public final setAllowedBgActivityStartsByStart(Landroid/app/BackgroundStartPrivileges;)V
    .registers 3

    .line 1436
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    if-ne v0, p1, :cond_5

    return-void

    .line 1439
    :cond_5
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 1440
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsToken()V

    return-void
.end method

.method public setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V
    .registers 7

    if-eqz p1, :cond_32

    .line 1224
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_14

    if-eq p2, p1, :cond_14

    .line 1227
    invoke-virtual {p2, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 1228
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p3, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1233
    :cond_14
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result p2

    if-eqz p2, :cond_1e

    move-object p2, p1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    .line 1234
    :goto_1f
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 1236
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    move-result-object p2

    .line 1237
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result p3

    if-eqz p3, :cond_2f

    .line 1238
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    goto :goto_32

    .line 1241
    :cond_2f
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 1244
    :cond_32
    :goto_32
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_53

    if-eq p2, p1, :cond_53

    .line 1248
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsNothing()Z

    move-result p2

    if-eqz p2, :cond_45

    .line 1249
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 1251
    :cond_45
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 1252
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 1254
    :cond_53
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ProcessStateController;->setHostProcess(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateProcessStateOnRequest()V

    .line 1256
    iget p2, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    const/4 p3, 0x0

    if-lez p2, :cond_72

    if-eqz p1, :cond_72

    .line 1257
    iget-object p4, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1258
    invoke-virtual {p4, p2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setConnectionGroup(I)V

    .line 1259
    iget p2, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    invoke-virtual {p4, p2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setConnectionImportance(I)V

    .line 1260
    iput p3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput p3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 1263
    :cond_72
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_7a
    if-ltz p2, :cond_a0

    .line 1264
    iget-object p4, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    move v0, p3

    .line 1265
    :goto_85
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9d

    .line 1266
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    if-eqz p1, :cond_97

    .line 1268
    invoke-virtual {v1}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    goto :goto_9a

    .line 1270
    :cond_97
    invoke-virtual {v1}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    :goto_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_9d
    add-int/lit8 p2, p2, -0x1

    goto :goto_7a

    :cond_a0
    if-eqz p1, :cond_ac

    .line 1276
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 1277
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_ac
    return-void
.end method

.method public setShortFgsInfo(J)V
    .registers 4

    .line 1839
    new-instance v0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;-><init>(Lcom/android/server/am/ServiceRecord;J)V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    return-void
.end method

.method public shouldDemoteShortFgsProcState(J)Z
    .registers 5

    .line 1879
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v0

    .line 1878
    :goto_b
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    move-result p0

    return p0
.end method

.method public shouldTriggerShortFgsAnr(J)Z
    .registers 5

    .line 1889
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v0

    .line 1888
    :goto_b
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    move-result p0

    return p0
.end method

.method public final shouldTriggerShortFgsTimedEvent(JJ)Z
    .registers 7

    .line 1855
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isAppAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1858
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz p0, :cond_25

    .line 1859
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->isCurrent()Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_25

    :cond_1f
    cmp-long p0, p1, p3

    if-gtz p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    :goto_25
    return v1
.end method

.method public shouldTriggerShortFgsTimeout(J)Z
    .registers 5

    .line 1870
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v0

    .line 1869
    :goto_b
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    move-result p0

    return p0
.end method

.method public final signalForegroundServiceNotification(Ljava/lang/String;IIZ)V
    .registers 8

    .line 1751
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p2

    .line 1752
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_28

    .line 1753
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, p1, v2, p3, p4}, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;->onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :catchall_26
    move-exception p0

    goto :goto_2d

    .line 1756
    :cond_28
    monitor-exit p2
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2d
    :try_start_2d
    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public stripForegroundServiceFlagFromNotification()V
    .registers 6

    .line 1760
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1761
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1762
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1766
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ServiceRecord$4;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/server/am/ServiceRecord$4;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1798
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1801
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1802
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    .line 1804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 1805
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 1807
    const-string v1, " c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    const/16 v1, 0x7d

    .line 1809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1810
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public updateAllowUiJobScheduling(Z)V
    .registers 3

    .line 1429
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1432
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    return-void
.end method

.method public updateAllowlistManager()V
    .registers 8

    const/4 v0, 0x0

    .line 1531
    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    .line 1532
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_33

    .line 1533
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move v4, v0

    .line 1534
    :goto_16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_30

    .line 1535
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    const/high16 v6, 0x1000000

    invoke-virtual {v5, v6}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1536
    iput-boolean v2, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    return-void

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_33
    return-void
.end method

.method public final updateFgsHasNotificationPermission()V
    .registers 5

    .line 1578
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1579
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1581
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ServiceRecord$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateIsAllowedBgActivityStartsByBinding()V
    .registers 9

    .line 1338
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ltz v0, :cond_34

    .line 1339
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move v5, v2

    .line 1340
    :goto_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2e

    .line 1341
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    const/high16 v7, 0x100000

    invoke-virtual {v6, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    move v3, v1

    goto :goto_2e

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_2e
    :goto_2e
    if-eqz v3, :cond_31

    goto :goto_34

    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1350
    :cond_34
    :goto_34
    invoke-virtual {p0, v3}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByBinding(Z)V

    return-void
.end method

.method public updateKeepWarmLocked()V
    .registers 6

    .line 1492
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1493
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v0, v1, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1494
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    .line 1495
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v4, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3a
    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iput-boolean v0, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mKeepWarming:Z

    return-void
.end method

.method public updateOomAdjSeq()V
    .registers 2

    .line 1940
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a

    .line 1941
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSeq()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAdjSeq:I

    :cond_a
    return-void
.end method

.method public final updateParentProcessBgActivityStartsToken()V
    .registers 3

    .line 1455
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_5

    return-void

    .line 1459
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    .line 1460
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1463
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    return-void

    .line 1466
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    return-void
.end method

.method public updateProcessStateOnRequest()V
    .registers 2

    .line 1282
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1283
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    goto :goto_1b

    :cond_19
    const/16 v0, 0x14

    :goto_1b
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mProcessStateOnRequest:I

    return-void
.end method

.method public final useNewBfslLogic()Z
    .registers 3

    .line 293
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v0, 0x128cab2d

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public final useNewWiuLogic_forCapabilities()Z
    .registers 3

    .line 286
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v0, 0x12b256f1

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public final useNewWiuLogic_forStart()Z
    .registers 3

    .line 279
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v0, 0x128caab5

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public wasOomAdjUpdated()Z
    .registers 2

    .line 1936
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSeq()I

    move-result v0

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAdjSeq:I

    if-le v0, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
