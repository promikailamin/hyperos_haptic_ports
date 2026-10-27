.class public Lcom/android/server/wm/WindowProcessController;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "WindowProcessController.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;
.implements Lcom/android/server/am/psc/ProcessRecordInternal$Observer;


# static fields
.field public static final MAX_NUM_PERCEPTIBLE_FREEFORM:I


# instance fields
.field public final mActivities:Ljava/util/ArrayList;

.field public volatile mActivityStateFlags:I

.field public mAnimatingReasons:I

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

.field public mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public volatile mCrashing:Z

.field public volatile mCurAdj:I

.field public volatile mCurProcState:I

.field public volatile mCurSchedGroup:I

.field public volatile mDebugging:Z

.field public mDisplayArea:Lcom/android/server/wm/DisplayArea;

.field public volatile mFgInteractionTime:J

.field public volatile mHasActivities:Z

.field public volatile mHasCachedConfiguration:Z

.field public volatile mHasClientActivities:Z

.field public mHasEverAttached:Z

.field public volatile mHasForegroundServices:Z

.field public volatile mHasImeService:Z

.field public volatile mHasOverlayUi:Z

.field public mHasPendingConfigurationChange:Z

.field public volatile mHasRecentTasks:Z

.field public volatile mHasTopUi:Z

.field public mInactiveActivities:Ljava/util/ArrayList;

.field public volatile mInfo:Landroid/content/pm/ApplicationInfo;

.field public volatile mInstrumentationSourceUid:I

.field public volatile mInstrumenting:Z

.field public volatile mInstrumentingWithBackgroundActivityStartPrivileges:Z

.field public volatile mInteractionEventTime:J

.field public volatile mIsActivityConfigOverrideAllowed:Z

.field public volatile mLastActivityFinishTime:J

.field public volatile mLastActivityLaunchTime:J

.field public final mLastReportedConfiguration:Landroid/content/res/Configuration;

.field public mLastTopActivityDeviceId:I

.field public final mListener:Lcom/android/server/wm/WindowProcessListener;

.field public mListeners:Ljava/util/List;

.field public final mName:Ljava/lang/String;

.field public volatile mNotResponding:Z

.field public volatile mOptimizationInfo:Landroid/content/pm/dex/PackageOptimizationInfo;

.field public final mOwner:Ljava/lang/Object;

.field public mPauseConfigurationDispatchCount:I

.field public volatile mPendingUiClean:Z

.field public volatile mPerceptible:Z

.field public volatile mPerceptibleTaskStoppedTimeMillis:J

.field public volatile mPersistent:Z

.field public volatile mPid:I

.field public final mPkgList:Ljava/util/ArrayList;

.field public mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mRapidActivityLaunchCount:I

.field public final mRecentTasks:Ljava/util/ArrayList;

.field public mRemoteActivities:Landroid/util/ArrayMap;

.field public volatile mRepProcState:I

.field public volatile mRequiredAbi:Ljava/lang/String;

.field public volatile mStoppedState:I

.field public mThread:Landroid/app/IApplicationThread;

.field public final mUid:I

.field public final mUseFifoUiScheduling:Z

.field public final mUserId:I

.field public volatile mUsingWrapper:Z

.field public mVrThreadTid:I

.field public volatile mWasStoppedLogged:Z

.field public volatile mWhenUnimportant:J

.field public mWindowSession:Lcom/android/server/wm/Session;


# direct methods
.method public static synthetic $r8$lambda$5iTmt6a3B6nx6bydJqO8TlUE190(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;Landroid/content/pm/ActivityInfo;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessController;->lambda$onStartActivity$3(ILjava/lang/String;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F0Yc8f_QKZqEu2LPODjK6PGu3oo(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 961
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$R7hqJnDVmwROr4-bSCi7WKUWyzo(Lcom/android/server/wm/WindowProcessController;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->lambda$setAnimating$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YiYJOZGNKWfGaS5LfLt6m3-o_YU(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->lambda$updateRapidActivityLaunch$0(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_2ZhsQyNwHac-4rqMByc7tKYjtQ(Lcom/android/server/wm/WindowProcessController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->lambda$onServiceStarted$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$aK9k3pn1FRwqav7l6H22LgILF4M(Lcom/android/server/wm/WindowProcessController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->lambda$onTopProcChanged$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$jgTspCQwuxGDdfg2RlIu2Wij3LU(Lcom/android/server/wm/WindowProcessController;ZZZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessController;->lambda$updateProcessInfo$2(ZZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 131
    const-string v0, "persist.wm.max_num_perceptible_freeform"

    const/4 v1, 0x1

    .line 132
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/WindowProcessController;->MAX_NUM_PERCEPTIBLE_FREEFORM:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V
    .registers 13

    .line 369
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    const/16 v0, 0x14

    .line 173
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 175
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    const/16 v0, -0x2710

    .line 177
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    const/4 v0, -0x1

    .line 213
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 259
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    .line 268
    iput v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    .line 277
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 281
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListeners:Ljava/util/List;

    const v1, 0xffff

    .line 357
    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 363
    iput-wide v3, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptibleTaskStoppedTimeMillis:J

    .line 365
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mOptimizationInfo:Landroid/content/pm/dex/PackageOptimizationInfo;

    .line 370
    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 371
    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 372
    iput p4, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 373
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 374
    iput-object p6, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 375
    iput-object p7, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 376
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 377
    new-instance p3, Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 378
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;

    invoke-direct {p5, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    new-instance p6, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;

    invoke-direct {p6, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 379
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getBackgroundActivityStartCallback()Lcom/android/server/wm/BackgroundActivityStartCallback;

    move-result-object p7

    invoke-direct {p3, p5, p6, p7}, Lcom/android/server/wm/BackgroundLaunchProcessController;-><init>(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;Lcom/android/server/wm/BackgroundActivityStartCallback;)V

    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 381
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 381
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    .line 383
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_82

    .line 386
    :cond_80
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 389
    :cond_82
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    return-void
.end method

.method public static applyConfigGenderOverride(Landroid/content/res/Configuration;ILcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    .line 2353
    invoke-virtual {p2, p3}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;->canGetSystemGrammaticalGender(I)Z

    move-result p3

    if-eqz p3, :cond_c

    move p3, v0

    goto :goto_d

    :cond_c
    move p3, v1

    :goto_d
    if-eqz p1, :cond_10

    goto :goto_1c

    :cond_10
    if-eqz p3, :cond_14

    const/4 p1, -0x1

    goto :goto_1c

    :cond_14
    if-eqz p2, :cond_1b

    .line 2364
    invoke-virtual {p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;->getGrammaticalGenderFromDeveloperSettings()I

    move-result p1

    goto :goto_1c

    :cond_1b
    move p1, v1

    .line 2366
    :goto_1c
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getGrammaticalGenderRaw()I

    move-result p2

    if-ne p2, p1, :cond_23

    return v1

    .line 2369
    :cond_23
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setGrammaticalGender(I)V

    return v0
.end method

.method private getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1771
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 1774
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_2c

    .line 1775
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_29

    .line 1776
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_2c
    return-object v1
.end method


# virtual methods
.method public addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 811
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(Lcom/android/server/wm/ActivityRecord;)V

    .line 812
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 815
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->setHasActivityAsync(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 819
    :cond_1d
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    .line 821
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 823
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    return-void
.end method

.method public addAnimatingReason(I)V
    .registers 3

    .line 2212
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    or-int/2addr p1, v0

    .line 2213
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    if-nez v0, :cond_b

    const/4 p1, 0x1

    .line 2215
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setAnimating(Z)V

    :cond_b
    return-void
.end method

.method public addBoundClientUid(ILjava/lang/String;J)V
    .registers 5

    .line 734
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/BackgroundLaunchProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    return-void
.end method

.method public addEmbeddedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1202
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 1203
    aget v0, p0, p1

    or-int/lit8 v0, v0, 0x2

    aput v0, p0, p1

    return-void
.end method

.method public addHostActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1191
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 1192
    aget v0, p0, p1

    or-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public addListener(Lcom/android/server/wm/WindowProcessController$Listener;)V
    .registers 3

    .line 2389
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListeners:Ljava/util/List;

    .line 2392
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .registers 5

    .line 681
    const-string v0, "entity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 682
    const-string v0, "backgroundStartPrivileges"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 683
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const-string v1, "backgroundStartPrivileges does not allow anything"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 685
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundLaunchProcessController;->addOrUpdateAllowBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .registers 4

    .line 783
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 784
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 785
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 787
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public addRecentTask(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 1959
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1960
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    .line 1961
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->setHasRecentTasksAsync(Lcom/android/server/wm/WindowProcessController;Z)V

    return-void
.end method

.method public addToPendingTop()V
    .registers 4

    .line 1504
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    return-void
.end method

.method public appDied(Ljava/lang/String;)V
    .registers 4

    .line 1585
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda13;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1587
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 8

    .line 1989
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1990
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-nez v1, :cond_15

    .line 1991
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_3f

    :cond_15
    const/4 v2, 0x0

    .line 1996
    :try_start_16
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v1, v3, v4, p1}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_27

    .line 1997
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_24} :catch_2a
    .catchall {:try_start_16 .. :try_end_24} :catchall_13

    if-eq p1, p0, :cond_27

    goto :goto_28

    :cond_27
    move-object p2, v2

    :goto_28
    move-object v2, p2

    goto :goto_35

    .line 2001
    :catch_2a
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2002
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2004
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_3e

    .line 2006
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_3e
    return-void

    .line 2004
    :goto_3f
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .registers 10

    .line 2013
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2014
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 2015
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_14
    move-exception p0

    goto :goto_49

    :cond_16
    const/4 v3, 0x0

    .line 2020
    :try_start_17
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v1, v4, v5, p1}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2c

    if-gez p1, :cond_2a

    .line 2022
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_27} :catch_39
    .catchall {:try_start_17 .. :try_end_27} :catchall_14

    if-eq p1, p0, :cond_2a

    goto :goto_2d

    :cond_2a
    move-object p2, p3

    goto :goto_2d

    :cond_2c
    move-object p2, v3

    .line 2033
    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p2, :cond_38

    .line 2036
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_38
    return v2

    .line 2029
    :catch_39
    :try_start_39
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2030
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2031
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2033
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 18

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 709
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v7

    iget-boolean v8, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 711
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    iget-wide v13, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    move/from16 v4, p1

    move-object/from16 v5, p2

    .line 707
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/wm/BackgroundLaunchProcessController;->areBackgroundActivityStartsAllowed(IILjava/lang/String;ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;ZZZJJJ)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public areBackgroundFgsStartsAllowed()Z
    .registers 3

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 701
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getBalAppSwitchesState()I

    move-result v0

    sget-object v1, Lcom/android/server/wm/BackgroundLaunchProcessController;->CHECK_FOR_FGS_START:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    .line 700
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    .line 702
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result p0

    return p0
.end method

.method public canCloseSystemDialogsByToken()Z
    .registers 2

    .line 720
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->canCloseSystemDialogsByToken(I)Z

    move-result p0

    return p0
.end method

.method public clearActivities()V
    .registers 3

    const/4 v0, 0x0

    .line 856
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 857
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 858
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 859
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->setHasActivityAsync(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 860
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    return-void
.end method

.method public clearBoundClientUids()V
    .registers 1

    .line 727
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->clearBalOptInBoundClientUids()V

    return-void
.end method

.method public clearPackageList()V
    .registers 2

    .line 792
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 793
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 794
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public clearPackagePreferredForHomeActivities()V
    .registers 7

    .line 1061
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1062
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_47

    .line 1063
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1064
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1065
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing package preferred activities from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_42

    .line 1067
    :try_start_38
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1068
    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_44
    .catchall {:try_start_38 .. :try_end_41} :catchall_42

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_4c

    :catch_44
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1074
    :cond_47
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_4c
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearProfilerIfNeeded()V
    .registers 3

    .line 1462
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda7;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public clearRecentTasks()V
    .registers 3

    .line 1979
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1980
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->clearRootProcess()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1982
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1983
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    .line 1984
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->setHasRecentTasksAsync(Lcom/android/server/wm/WindowProcessController;Z)V

    return-void
.end method

.method public computeProcessActivityState()V
    .registers 22

    move-object/from16 v0, p0

    .line 1257
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    .line 1265
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    move-result v2

    .line 1266
    iget v3, v0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-eqz v3, :cond_12

    move v3, v5

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 1267
    :goto_13
    iget-object v7, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    const v8, 0x7fffffff

    const-wide/high16 v9, -0x8000000000000000L

    move v15, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_24
    if-ltz v7, :cond_f9

    move/from16 v16, v4

    .line 1268
    iget-object v4, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1269
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_3a

    const/high16 v17, 0x100000

    or-int v11, v11, v17

    :cond_3a
    const/16 v17, 0x0

    .line 1272
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_68

    .line 1274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v5

    const-string v5, "Unexpected detached "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v2

    :cond_64
    move/from16 v20, v3

    goto/16 :goto_ed

    :cond_68
    move/from16 v18, v5

    .line 1277
    iget v5, v6, Lcom/android/server/wm/Task;->mLayerRank:I

    move/from16 v19, v2

    const/4 v2, -0x1

    if-eq v5, v2, :cond_74

    const/high16 v2, 0x400000

    or-int/2addr v11, v2

    .line 1280
    :cond_74
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v2

    .line 1281
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1282
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v5, :cond_a4

    const/high16 v2, 0x200000

    or-int/2addr v2, v11

    .line 1284
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_96

    .line 1286
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->hasAdjacentTask()Z

    move-result v5

    if-eqz v5, :cond_96

    const/high16 v2, 0xa00000

    or-int/2addr v11, v2

    goto :goto_a4

    :cond_96
    const/4 v5, 0x5

    if-ne v4, v5, :cond_a3

    .line 1290
    iget v4, v6, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    .line 1291
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v11, v2

    move/from16 v12, v18

    goto :goto_a4

    :cond_a3
    move v11, v2

    :cond_a4
    :goto_a4
    if-lez v8, :cond_ad

    .line 1295
    iget v2, v6, Lcom/android/server/wm/Task;->mLayerRank:I

    if-ltz v2, :cond_ad

    if-le v8, v2, :cond_ad

    move v8, v2

    :cond_ad
    move/from16 v20, v3

    move/from16 v14, v18

    goto :goto_ed

    :cond_b2
    if-nez v14, :cond_64

    .line 1304
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v1, v5, :cond_64

    move/from16 v20, v3

    if-eq v2, v5, :cond_e3

    .line 1307
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v3, :cond_c1

    goto :goto_e3

    .line 1314
    :cond_c1
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v3, :cond_c7

    :goto_c5
    move-object v1, v3

    goto :goto_ed

    .line 1316
    :cond_c7
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v3, :cond_cf

    .line 1319
    iget-boolean v1, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    and-int/2addr v15, v1

    goto :goto_c5

    .line 1320
    :cond_cf
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v3, :cond_ed

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v3, :cond_ed

    .line 1321
    iget-boolean v2, v6, Lcom/android/server/wm/Task;->mIsPerceptible:Z

    if-eqz v2, :cond_ed

    .line 1322
    iget-wide v2, v4, Lcom/android/server/wm/ActivityRecord;->mStoppedTime:J

    .line 1323
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v2

    move-wide v9, v2

    goto :goto_ed

    .line 1311
    :cond_e3
    :goto_e3
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_ec

    or-int v1, v11, v16

    move v11, v1

    :cond_ec
    move-object v1, v5

    :cond_ed
    :goto_ed
    add-int/lit8 v7, v7, -0x1

    move/from16 v4, v16

    move/from16 v5, v18

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_24

    :cond_f9
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v16, v4

    move/from16 v18, v5

    const/16 v17, 0x0

    .line 1328
    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-eqz v2, :cond_131

    .line 1331
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10d
    if-ltz v2, :cond_131

    .line 1332
    iget-object v3, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v17

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_12e

    iget-object v3, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 1333
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_12e

    or-int v3, v11, v16

    move v11, v3

    :cond_12e
    add-int/lit8 v2, v2, -0x1

    goto :goto_10d

    :cond_131
    if-eqz v12, :cond_14e

    move/from16 v2, v18

    if-le v8, v2, :cond_14e

    if-nez v13, :cond_13d

    const/high16 v3, 0x4000000

    or-int/2addr v11, v3

    goto :goto_14e

    .line 1344
    :cond_13d
    sget v3, Lcom/android/server/wm/WindowProcessController;->MAX_NUM_PERCEPTIBLE_FREEFORM:I

    add-int/2addr v3, v2

    if-le v8, v3, :cond_14b

    const/16 v2, 0x5a

    if-lt v13, v2, :cond_147

    goto :goto_14b

    :cond_147
    const/high16 v2, 0x2000000

    :goto_149
    or-int/2addr v11, v2

    goto :goto_14e

    :cond_14b
    :goto_14b
    const/high16 v2, 0x1000000

    goto :goto_149

    :cond_14e
    :goto_14e
    const v2, 0xffff

    and-int/2addr v2, v8

    or-int/2addr v2, v11

    if-eqz v14, :cond_158

    or-int v2, v2, v16

    goto :goto_173

    .line 1354
    :cond_158
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v1, v3, :cond_170

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v3, :cond_161

    goto :goto_170

    .line 1356
    :cond_161
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v3, :cond_173

    const/high16 v1, 0x40000

    or-int/2addr v1, v2

    if-eqz v15, :cond_16e

    const/high16 v1, 0xc0000

    :goto_16c
    or-int/2addr v2, v1

    goto :goto_173

    :cond_16e
    move v2, v1

    goto :goto_173

    :cond_170
    :goto_170
    const/high16 v1, 0x20000

    goto :goto_16c

    .line 1362
    :cond_173
    :goto_173
    iput v2, v0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    .line 1363
    iput-wide v9, v0, Lcom/android/server/wm/WindowProcessController;->mPerceptibleTaskStoppedTimeMillis:J

    .line 1364
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {v1, v0, v2, v9, v10}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->setActivityStateAsync(Lcom/android/server/wm/WindowProcessController;IJ)V

    and-int v1, v2, v16

    if-eqz v1, :cond_184

    const/4 v2, 0x1

    goto :goto_186

    :cond_184
    move/from16 v2, v17

    :goto_186
    if-nez v20, :cond_19c

    if-eqz v2, :cond_19c

    .line 1369
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->onAnyActivityVisible(Lcom/android/server/wm/WindowProcessController;)V

    .line 1370
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->onProcessActivityVisibilityChanged(IZ)V

    return-void

    :cond_19c
    if-eqz v20, :cond_1b3

    if-nez v2, :cond_1b3

    .line 1372
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->onAllActivitiesInvisible(Lcom/android/server/wm/WindowProcessController;)V

    .line 1373
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move/from16 v2, v17

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->onProcessActivityVisibilityChanged(IZ)V

    return-void

    :cond_1b3
    if-eqz v20, :cond_1c4

    if-nez v19, :cond_1c4

    .line 1374
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 1375
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->onActivityResumedWhileVisible(Lcom/android/server/wm/WindowProcessController;)V

    :cond_1c4
    return-void
.end method

.method public computeRelaunchReason()I
    .registers 2

    .line 1386
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1387
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReasonInner()I

    move-result p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_11
    move-exception p0

    .line 1388
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final computeRelaunchReasonInner()I
    .registers 3

    .line 1392
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1394
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1395
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-eqz v1, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public containsPackage(Ljava/lang/String;)Z
    .registers 3

    .line 798
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 799
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 800
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;
    .registers 3

    .line 1531
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v0, :cond_25

    .line 1532
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 1533
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_25

    .line 1536
    :cond_11
    iget-object p0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_1f

    .line 1538
    :try_start_15
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    iput-object p0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_1f

    .line 1540
    :catch_1c
    invoke-virtual {v0}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 1543
    :cond_1f
    :goto_1f
    new-instance p0, Landroid/app/ProfilerInfo;

    invoke-direct {p0, v0}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    return-object p0

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public destroy()V
    .registers 1

    .line 1701
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterConfigurationListeners()V

    return-void
.end method

.method public dispatchConfiguration(Landroid/content/res/Configuration;)V
    .registers 5

    const/4 v0, 0x0

    .line 1823
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 1824
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_2d

    .line 1826
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_45

    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz p1, :cond_45

    .line 1828
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to send config for IME proc "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": no app thread"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1834
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->seq:I

    .line 1835
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    .line 1840
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_46

    const/4 v1, 0x1

    .line 1841
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    .line 1845
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    if-lt v1, v2, :cond_46

    :cond_45
    return-void

    .line 1850
    :cond_46
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V

    .line 1851
    new-instance v1, Landroid/app/servertransaction/ConfigurationChangeItem;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    invoke-direct {v1, p1, v2}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>(Landroid/content/res/Configuration;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 2248
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2249
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_39

    .line 2250
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v2

    .line 2251
    :goto_1a
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_39

    .line 2252
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  - "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :catchall_36
    move-exception p0

    goto/16 :goto_229

    .line 2255
    :cond_39
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 2256
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Remote Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2257
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_53
    if-ltz v1, :cond_8d

    .line 2258
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  - "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2259
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, " flags="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v2

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_7e

    .line 2262
    const-string v4, "host "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7e
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_87

    .line 2265
    const-string v3, "embedded"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2267
    :cond_87
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_53

    .line 2270
    :cond_8d
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d1

    .line 2271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Recent Tasks:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2272
    :goto_a9
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_d1

    .line 2273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    .line 2277
    :cond_d1
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-eqz v1, :cond_e2

    .line 2278
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mVrThreadTid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2281
    :cond_e2
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BackgroundLaunchProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2282
    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_8 .. :try_end_e8} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OverrideConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLastReportedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    if-eqz v1, :cond_146

    .line 2286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(cached) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_148

    :cond_146
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    :goto_148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2285
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    if-eqz v0, :cond_17f

    .line 2290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAnimatingReasons="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_173

    .line 2292
    const-string v1, "remote-animation|"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_173
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_17c

    .line 2295
    const-string v0, "wakefulness|"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2297
    :cond_17c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2299
    :cond_17f
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_197

    .line 2300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mUseFifoUiScheduling=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2303
    :cond_197
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const v0, 0xffff

    if-eq p0, v0, :cond_228

    .line 2305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mActivityStateFlags="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x100000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1bc

    .line 2307
    const-string p2, "W|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1bc
    const/high16 p2, 0x10000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1e5

    .line 2310
    const-string p2, "V|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x200000

    and-int/2addr p2, p0

    if-eqz p2, :cond_204

    .line 2312
    const-string p2, "R|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x800000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1da

    .line 2314
    const-string p2, "RS|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1da
    const/high16 p2, 0x1000000

    and-int/2addr p2, p0

    if-eqz p2, :cond_204

    .line 2317
    const-string p2, "PF|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_204

    :cond_1e5
    const/high16 p2, 0x20000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1f0

    .line 2321
    const-string p2, "P|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_204

    :cond_1f0
    const/high16 p2, 0x40000

    and-int/2addr p2, p0

    if-eqz p2, :cond_204

    .line 2323
    const-string p2, "S|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x80000

    and-int/2addr p2, p0

    if-eqz p2, :cond_204

    .line 2325
    const-string p2, "F|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_204
    :goto_204
    const/high16 p2, 0x400000

    and-int/2addr p2, p0

    if-eqz p2, :cond_20e

    .line 2329
    const-string p2, "VT|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_20e
    and-int/2addr p0, v0

    if-eq p0, v0, :cond_225

    .line 2333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "taskLayer="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2335
    :cond_225
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_228
    return-void

    .line 2282
    :goto_229
    :try_start_229
    monitor-exit v0
    :try_end_22a
    .catchall {:try_start_229 .. :try_end_22a} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    .line 2340
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessListener;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public finishActivities()V
    .registers 5

    .line 988
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 989
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_27

    .line 990
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 991
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_24

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 992
    const-string v2, "finish-heavy"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_24
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_27
    return-void
.end method

.method public getActivityStateFlags()I
    .registers 1

    .line 1239
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    return p0
.end method

.method public getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildCount()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCpuTime()J
    .registers 3

    .line 1955
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0}, Lcom/android/server/wm/WindowProcessListener;->getCpuTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCrashTag()Ljava/lang/String;
    .registers 9

    .line 1408
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1409
    invoke-static {v0}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v0

    .line 1411
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1412
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReasonInner()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_4e

    .line 1415
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    move v5, v3

    :goto_20
    if-ltz v0, :cond_4f

    .line 1416
    iget-object v6, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 1417
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_32

    add-int/lit8 v3, v3, 0x1

    :cond_32
    if-nez v5, :cond_4b

    .line 1420
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    if-eqz v7, :cond_4b

    .line 1421
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4b

    move v5, v4

    goto :goto_4b

    :catchall_49
    move-exception p0

    goto :goto_9a

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_4e
    move v5, v3

    .line 1427
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_10 .. :try_end_50} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1428
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_62

    .line 1430
    const-string v0, "Freeform-Tasks="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_62
    if-eqz v5, :cond_74

    .line 1433
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1434
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    :cond_6f
    const-string v0, "On-External-Display=Yes"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    if-eqz v2, :cond_8d

    .line 1439
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_81

    .line 1440
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    :cond_81
    const-string v0, "Relaunch-Reason="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->relaunchReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    :cond_8d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_95

    const/4 p0, 0x0

    return-object p0

    :cond_95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1427
    :goto_9a
    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getCurrentAdj()I
    .registers 1

    .line 438
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    return p0
.end method

.method public getCurrentProcState()I
    .registers 1

    .line 434
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return p0
.end method

.method public getCurrentSchedulingGroup()I
    .registers 1

    .line 426
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    return p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    .line 601
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    return-object p0
.end method

.method public getDisplayContextsWithErrorDialogs(Ljava/util/List;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1173
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1174
    :try_start_b
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1175
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContextsWithNonToastVisibleWindows(ILjava/util/List;)V

    .line 1177
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1e
    if-ltz v2, :cond_47

    .line 1178
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1179
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    .line 1180
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayUiContext(I)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1182
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 1183
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_4c

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1186
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_4c
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getFgInteractionTime()J
    .registers 3

    .line 579
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getInputDispatchingTimeoutMillis()J
    .registers 4

    .line 1453
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1454
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isUsingWrapper()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_1b

    .line 1456
    :cond_15
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v1, p0

    goto :goto_1e

    :catchall_19
    move-exception p0

    goto :goto_23

    :cond_1b
    :goto_1b
    const-wide/32 v1, 0xea60

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_19

    .line 1454
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-wide v1

    .line 1457
    :goto_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getInstrumentationSourceUid()I
    .registers 1

    .line 756
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    return p0
.end method

.method public getInteractionEventTime()J
    .registers 3

    .line 575
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    return-wide v0
.end method

.method public getOptimizationInfo()Landroid/content/pm/dex/PackageOptimizationInfo;
    .registers 1

    .line 2385
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOptimizationInfo:Landroid/content/pm/dex/PackageOptimizationInfo;

    return-object p0
.end method

.method public getPackageList()Ljava/util/List;
    .registers 3

    .line 804
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 805
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 806
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 1

    .line 778
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 397
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    return p0
.end method

.method public final getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I
    .registers 3

    .line 1212
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 1213
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 1215
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1d

    .line 1217
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-object v0
.end method

.method public getReportedProcState()I
    .registers 1

    .line 468
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    return p0
.end method

.method public getRequiredAbi()Ljava/lang/String;
    .registers 1

    .line 591
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getThread()Landroid/app/IApplicationThread;
    .registers 1

    .line 418
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public final getTopActivityDeviceId()I
    .registers 2

    .line 1760
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1762
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_15

    .line 1763
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getDeviceIdForDisplayId(I)I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 7

    .line 899
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 903
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 904
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 905
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    add-int/lit8 v0, v0, -0x2

    :goto_20
    if-ltz v0, :cond_3b

    .line 908
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 909
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 910
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-lez v5, :cond_38

    if-eqz v4, :cond_38

    move-object v1, v3

    move-object v2, v4

    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_3b
    return-object v2
.end method

.method public getWasStoppedLogged()Z
    .registers 1

    .line 2186
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mWasStoppedLogged:Z

    return p0
.end method

.method public getWhenUnimportant()J
    .registers 3

    .line 583
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    return-wide v0
.end method

.method public handleAppCrash()Z
    .registers 10

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 478
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v2, "appCrash"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    .line 479
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_18
    if-ltz v2, :cond_60

    .line 480
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 481
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Force finishing activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 482
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 481
    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 484
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 486
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 487
    invoke-virtual {v1}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v6

    if-nez v6, :cond_57

    .line 488
    iget-object v6, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v7, 0x2

    const/16 v8, 0x10

    invoke-virtual {v6, v7, v8, v4, v1}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActionChain;)V

    :cond_57
    move v4, v3

    .line 492
    :cond_58
    const-string v6, "handleAppCrashed"

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 494
    :cond_60
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    return v4
.end method

.method public handleAppDied()Z
    .registers 7

    .line 1596
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Lcom/android/server/wm/WindowProcessController;)V

    .line 1599
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 1600
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 1602
    :goto_16
    iget-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v3, :cond_20

    if-eqz v0, :cond_1d

    goto :goto_20

    :cond_1d
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    goto :goto_25

    :cond_20
    :goto_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    :goto_25
    iget-boolean v4, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v4, :cond_2e

    .line 1604
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2e
    if-eqz v0, :cond_35

    .line 1608
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1610
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1614
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_40
    if-ltz v0, :cond_4e

    .line 1615
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 1618
    :cond_4e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_53
    if-ltz v0, :cond_79

    .line 1619
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1620
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_67

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_68

    :cond_67
    move v2, v1

    .line 1627
    :cond_68
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_73

    .line 1632
    invoke-virtual {v5, p0}, Lcom/android/server/wm/TaskFragment;->handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1634
    :cond_73
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->handleAppDied()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_53

    .line 1636
    :cond_79
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->clearRecentTasks()V

    .line 1637
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->clearActivities()V

    .line 1638
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->notifyHandleAppDied()V

    return v2
.end method

.method public hasActivities()Z
    .registers 1

    .line 865
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    return p0
.end method

.method public hasActivitiesOrRecentTasks()Z
    .registers 2

    .line 879
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public hasActivityInVisibleTask()Z
    .registers 2

    .line 874
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasClientActivities()Z
    .registers 1

    .line 537
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    return p0
.end method

.method public final hasEmbeddedWindow()Z
    .registers 5

    .line 1018
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1019
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_c
    if-ltz v0, :cond_2e

    .line 1020
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v1

    and-int/2addr v3, v2

    if-nez v3, :cond_1c

    goto :goto_2b

    .line 1023
    :cond_1c
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1024
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_2b

    return v2

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_2e
    return v1
.end method

.method public hasEverLaunchedActivity()Z
    .registers 5

    .line 621
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public hasForegroundActivities()Z
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p0, :cond_10

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x70000

    and-int/2addr p0, v0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public hasForegroundServices()Z
    .registers 1

    .line 523
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    return p0
.end method

.method public hasOverlayUi()Z
    .registers 1

    .line 545
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    return p0
.end method

.method public hasPendingUiClean()Z
    .registers 1

    .line 553
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    return p0
.end method

.method public hasRecentTasks()Z
    .registers 1

    .line 1975
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    return p0
.end method

.method public hasResumedActivity()Z
    .registers 2

    .line 1091
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasRunningActivity(Ljava/lang/String;)Z
    .registers 6

    .line 1032
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1033
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_2c

    .line 1034
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1035
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1036
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_27
    move-exception p0

    goto :goto_32

    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1039
    :cond_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :goto_32
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 1078
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    .line 1079
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v2, :cond_15

    goto :goto_1a

    .line 1083
    :cond_15
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-nez v2, :cond_1a

    return v1

    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public hasThread()Z
    .registers 1

    .line 422
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasTopUi()Z
    .registers 1

    .line 541
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    return p0
.end method

.method public hasVisibleActivities()Z
    .registers 2

    .line 870
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasVisibleNotPinnedActivity()Z
    .registers 6

    .line 886
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 887
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_10
    if-ltz v0, :cond_30

    .line 888
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 889
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 890
    :cond_26
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_2d

    return v2

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_30
    return v1
.end method

.method public isFactoryTestProcess()Z
    .registers 6

    .line 2166
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    .line 2171
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1c

    .line 2172
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v3

    :cond_1c
    const/4 v0, 0x2

    if-ne v1, v0, :cond_28

    .line 2176
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_28

    return v3

    :cond_28
    return v2
.end method

.method public isHeavyWeightProcess()Z
    .registers 2

    .line 2161
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isHomeProcess()Z
    .registers 2

    .line 2146
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isInstrumenting()Z
    .registers 1

    .line 751
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    return p0
.end method

.method public isInterestingToUser()Z
    .registers 7

    .line 998
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 999
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2b

    .line 1001
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1002
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1003
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :catchall_26
    move-exception p0

    goto :goto_3b

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1006
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasEmbeddedWindow()Z

    move-result p0

    if-eqz p0, :cond_36

    .line 1007
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1009
    :cond_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isPerceptible()Z
    .registers 1

    .line 760
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return p0
.end method

.method public isPersistent()Z
    .registers 1

    .line 515
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    return p0
.end method

.method public isRemoved()Z
    .registers 1

    .line 1522
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0}, Lcom/android/server/wm/WindowProcessListener;->isRemoved()Z

    move-result p0

    return p0
.end method

.method public isRunningRemoteTransition()Z
    .registers 2

    .line 2234
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isUsingWrapper()Z
    .registers 1

    .line 617
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    return p0
.end method

.method public final synthetic lambda$onServiceStarted$4()V
    .registers 2

    .line 2068
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2069
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 2070
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$onStartActivity$3(ILjava/lang/String;Landroid/content/pm/ActivityInfo;)V
    .registers 10

    .line 1572
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result v2

    iget-object p0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    move v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/WindowProcessListener;->onStartActivity(IZLjava/lang/String;J)V

    return-void
.end method

.method public final synthetic lambda$onTopProcChanged$5()V
    .registers 3

    .line 2137
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2138
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/VrController;->onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V

    .line 2139
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$setAnimating$6(Z)V
    .registers 2

    .line 2230
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0, p1}, Lcom/android/server/wm/WindowProcessListener;->setRunningRemoteAnimation(Z)V

    return-void
.end method

.method public final synthetic lambda$updateProcessInfo$2(ZZZ)V
    .registers 4

    .line 1484
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessListener;->updateProcessInfo(ZZZ)V

    return-void
.end method

.method public final synthetic lambda$updateRapidActivityLaunch$0(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 660
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 661
    :try_start_8
    const-string v1, "rapid-activity-launch"

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 662
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 663
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v1, "rapidActivityLaunch"

    invoke-virtual {p1, v0, p0, v1}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catchall_1f
    move-exception p0

    .line 662
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyHandleAppDied()V
    .registers 3

    .line 2404
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 2408
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_1b

    .line 2409
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowProcessController$Listener;

    invoke-interface {v1}, Lcom/android/server/wm/WindowProcessController$Listener;->onHandleAppDied()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1b
    const/4 v0, 0x0

    .line 2411
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListeners:Ljava/util/List;

    return-void
.end method

.method public final onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V
    .registers 8

    .line 1856
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x403e6aeb7d63ce3bL    # -0.13736206414649935

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1858
    :cond_1f
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v0, :cond_47

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending to IME proc "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new config "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_47
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1730
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1734
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDeviceId()I

    move-result p1

    .line 1735
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_10

    .line 1737
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    move p1, v1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 1740
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1741
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    xor-int/2addr p1, v1

    and-int/2addr p1, v2

    if-eqz p1, :cond_48

    .line 1743
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_47

    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz p1, :cond_47

    .line 1745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current config: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " unchanged for IME proc "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void

    .line 1751
    :cond_48
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    if-lez p1, :cond_4f

    .line 1752
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    return-void

    .line 1756
    :cond_4f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCurAdjChanged(I)V
    .registers 2

    .line 2085
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    return-void
.end method

.method public onCurProcStateChanged(I)V
    .registers 2

    .line 2095
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return-void
.end method

.method public onCurRawAdjChanged(I)V
    .registers 3

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 2080
    :goto_7
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return-void
.end method

.method public onCurrentSchedulingGroupChanged(I)V
    .registers 2

    .line 2090
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    return-void
.end method

.method public onFgInteractionTimeChanged(J)V
    .registers 3

    .line 2120
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    return-void
.end method

.method public onHasOverlayUiChanged(Z)V
    .registers 2

    .line 2110
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    return-void
.end method

.method public onHasTopUiChanged(Z)V
    .registers 2

    .line 2105
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    return-void
.end method

.method public onInteractionEventTimeChanged(J)V
    .registers 3

    .line 2115
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    return-void
.end method

.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1784
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onReportedProcStateChanged(I)V
    .registers 2

    .line 2100
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    return-void
.end method

.method public onServiceStarted(Landroid/content/pm/ServiceInfo;)V
    .registers 6

    .line 2048
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_36

    .line 2054
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_48

    goto :goto_33

    :sswitch_13
    const-string v0, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_33

    :cond_1c
    const/4 v3, 0x2

    goto :goto_33

    :sswitch_1e
    const-string v0, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_33

    :cond_27
    move v3, v1

    goto :goto_33

    :sswitch_29
    const-string v0, "android.permission.BIND_VOICE_INTERACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    move v3, v2

    :goto_33
    packed-switch v3, :pswitch_data_56

    :goto_36
    return-void

    .line 2056
    :pswitch_37
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    .line 2065
    :pswitch_39
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 2067
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :sswitch_data_48
    .sparse-switch
        -0x2de34dfd -> :sswitch_29
        0x542fc942 -> :sswitch_1e
        0x56545c98 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_39
        :pswitch_39
        :pswitch_37
    .end packed-switch
.end method

.method public onStartActivity(ILandroid/content/pm/ActivityInfo;)V
    .registers 8

    .line 1548
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    const-string v0, "android"

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1549
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_15

    .line 1553
    :cond_13
    :goto_13
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_15
    const/4 v1, 0x2

    if-ne p1, v1, :cond_25

    .line 1559
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v3, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    .line 1564
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->startBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v1

    .line 1565
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->prepareOomAdjustment()V

    .line 1570
    invoke-virtual {v1}, Lcom/android/server/am/psc/AsyncBatchSession;->postToHead()V

    .line 1571
    new-instance v2, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/AsyncBatchSession;->enqueue(Ljava/lang/Runnable;)V
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_41

    if-eqz v1, :cond_40

    .line 1580
    invoke-virtual {v1}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_40
    return-void

    :catchall_41
    move-exception p0

    if-eqz v1, :cond_4c

    .line 1564
    :try_start_44
    invoke-virtual {v1}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    throw p0
.end method

.method public onTopProcChanged()V
    .registers 3

    .line 2135
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->isInterestingToSchedGroup()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2136
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public onWhenUnimportantChanged(J)V
    .registers 3

    .line 2125
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    return-void
.end method

.method public pauseConfigurationDispatch()V
    .registers 2

    .line 1896
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    return-void
.end method

.method public postPendingUiCleanMsg(Z)V
    .registers 4

    .line 569
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda11;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 570
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 569
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 571
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public prepareConfigurationForLaunchingActivity()Landroid/content/res/Configuration;
    .registers 4

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1942
    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 1943
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 1946
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->seq:I

    .line 1949
    :cond_13
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    return-object v0
.end method

.method public final prepareOomAdjustment()V
    .registers 2

    .line 1381
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 1382
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()Z

    return-void
.end method

.method public registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    if-eqz p1, :cond_1c

    .line 1663
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_d

    goto :goto_1c

    .line 1668
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterConfigurationListeners()V

    .line 1669
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1670
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1673
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    .line 1674
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public registeredForActivityConfigChanges()Z
    .registers 1

    .line 564
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public registeredForDisplayAreaConfigChanges()Z
    .registers 1

    .line 558
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public releaseSomeActivities(Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 1125
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 1126
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1130
    iget-boolean v3, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_7d

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_7d

    .line 1136
    :cond_23
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_5a

    iget-boolean v3, v4, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v3, :cond_5a

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->hasSavedState()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v3

    if-eqz v3, :cond_5a

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 1137
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_5a

    .line 1142
    :cond_4a
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_5a

    if-nez v0, :cond_57

    .line 1144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    :cond_57
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5d
    if-eqz v0, :cond_7d

    .line 1152
    new-instance p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1154
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1156
    :cond_70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1159
    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    add-int/lit8 p0, p0, -0x1

    if-gtz p0, :cond_70

    :cond_7d
    :goto_7d
    return-void
.end method

.method public removeActivity(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 3

    if-eqz p2, :cond_1d

    .line 838
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-nez p2, :cond_11

    .line 839
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 840
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 841
    :cond_11
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    .line 842
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 844
    :cond_1d
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-eqz p2, :cond_24

    .line 845
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 847
    :cond_24
    :goto_24
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 848
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 849
    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez p1, :cond_3f

    .line 850
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->setHasActivityAsync(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 852
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    return-void
.end method

.method public removeAnimatingReason(I)V
    .registers 3

    .line 2220
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    not-int p1, p1

    and-int/2addr p1, v0

    .line 2221
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 2223
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setAnimating(Z)V

    :cond_e
    return-void
.end method

.method public removeBackgroundStartPrivileges(Landroid/os/Binder;)V
    .registers 3

    .line 691
    const-string v0, "entity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 692
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundLaunchProcessController;->removeAllowBackgroundStartPrivileges(Landroid/os/Binder;)V

    return-void
.end method

.method public removeEmbeddedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x2

    .line 1208
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowProcessController;->removeRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public removeHostActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x1

    .line 1197
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowProcessController;->removeRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public removeListener(Lcom/android/server/wm/WindowProcessController$Listener;)V
    .registers 2

    .line 2396
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListeners:Ljava/util/List;

    if-nez p0, :cond_5

    return-void

    .line 2400
    :cond_5
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRecentTask(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 1965
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1966
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 1967
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    if-eqz p1, :cond_19

    .line 1969
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->setHasRecentTasksAsync(Lcom/android/server/wm/WindowProcessController;Z)V

    :cond_19
    return-void
.end method

.method public final removeRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 6

    .line 1223
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-nez v0, :cond_5

    goto :goto_22

    .line 1224
    :cond_5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_c

    goto :goto_22

    .line 1226
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    .line 1227
    aget v2, v0, v1

    not-int p2, p2

    and-int/2addr p2, v2

    aput p2, v0, v1

    if-nez p2, :cond_22

    .line 1229
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_22
    :goto_22
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 14

    .line 1789
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1790
    iget v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-le v3, v1, :cond_f

    .line 1792
    iput v2, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1794
    :cond_f
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 1795
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1797
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v2}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 1802
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, v7, Landroid/content/res/Configuration;->seq:I

    .line 1804
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_24

    return-void

    .line 1808
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_30

    .line 1809
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :goto_2e
    move-object v4, v0

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_2e

    .line 1811
    :goto_32
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v11}, Lcom/android/server/wm/ConfigurationContainer;->applySizeOverrideIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZZZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public resumeConfigurationDispatch()Z
    .registers 2

    .line 1901
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 1904
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 1905
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    return p0
.end method

.method public final scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    .registers 4

    .line 1880
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mWindowSession:Lcom/android/server/wm/Session;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->hasWindow()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1881
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    return-void

    .line 1884
    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItemNow(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    return-void
.end method

.method public scheduleClientTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V
    .registers 3

    .line 1867
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_26

    .line 1869
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_25

    .line 1870
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to send transaction to client proc "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": no app thread"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void

    .line 1875
    :cond_26
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    return-void
.end method

.method public scheduleUpdateOomAdj()V
    .registers 5

    .line 1497
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1498
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1499
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1497
    invoke-static {v1, p0, v2, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setAnimating(Z)V
    .registers 4

    .line 2230
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowProcessController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCrashing(Z)V
    .registers 2

    .line 472
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    return-void
.end method

.method public setDebugging(Z)V
    .registers 2

    .line 605
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    return-void
.end method

.method public setHasClientActivities(Z)V
    .registers 2

    .line 533
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    return-void
.end method

.method public setHasForegroundServices(Z)V
    .registers 2

    .line 519
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    return-void
.end method

.method public setInstrumenting(ZIZ)V
    .registers 5

    if-nez p1, :cond_8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    .line 744
    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 745
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 746
    iput p2, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    .line 747
    iput-boolean p3, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    return-void
.end method

.method public setLastActivityFinishTimeIfNeeded(J)V
    .registers 5

    .line 669
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    .line 672
    :cond_d
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    :cond_f
    :goto_f
    return-void
.end method

.method public setLastActivityLaunchTime(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    .line 625
    iget-wide v2, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 626
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_34

    .line 627
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_33

    .line 628
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tried to set launchTime ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") < mLastActivityLaunchTime ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void

    .line 634
    :cond_34
    iget-wide v4, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowProcessController;->updateRapidActivityLaunch(Lcom/android/server/wm/ActivityRecord;JJ)V

    .line 635
    iput-wide v2, v0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    return-void
.end method

.method public setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1890
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    monitor-enter v0

    .line 1891
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1892
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setNotResponding(Z)V
    .registers 2

    .line 503
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    return-void
.end method

.method public setOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2376
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->updatableFilterAndReason()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2377
    new-instance v0, Landroid/content/pm/dex/PackageOptimizationInfo;

    .line 2378
    invoke-static {p1}, Lcom/android/server/art/ReasonMapping;->getCompilerFilterValueForFrameworkStatsReporting(Ljava/lang/String;)I

    move-result p1

    .line 2379
    invoke-static {p2}, Lcom/android/server/art/ReasonMapping;->getCompilationReasonValueForFrameworkStatsReporting(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v0, p1, p2}, Landroid/content/pm/dex/PackageOptimizationInfo;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mOptimizationInfo:Landroid/content/pm/dex/PackageOptimizationInfo;

    :cond_15
    return-void
.end method

.method public setOverrideGender(Landroid/content/res/Configuration;I)Z
    .registers 4

    .line 2345
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGrammaticalManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/wm/WindowProcessController;->applyConfigGenderOverride(Landroid/content/res/Configuration;ILcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;I)Z

    move-result p0

    return p0
.end method

.method public setPendingUiClean(Z)V
    .registers 2

    .line 549
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    return-void
.end method

.method public setPendingUiCleanAndForceProcessStateUpTo(I)V
    .registers 4

    .line 1515
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1515
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1518
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPersistent(Z)V
    .registers 2

    .line 511
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    return-void
.end method

.method public setPid(I)V
    .registers 2

    .line 393
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    return-void
.end method

.method public setReportedProcState(I)V
    .registers 6

    .line 447
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 448
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    const/16 v2, 0x10

    if-lt v0, v2, :cond_31

    if-ge p1, v2, :cond_31

    if-eqz v1, :cond_31

    .line 452
    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    if-eqz p1, :cond_31

    .line 455
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    monitor-enter p1

    .line 456
    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V

    .line 457
    new-instance v0, Landroid/app/servertransaction/ConfigurationChangeItem;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    iget v3, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    invoke-direct {v0, v2, v3}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>(Landroid/content/res/Configuration;I)V

    .line 459
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_2e

    .line 463
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItemNow(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    return-void

    :catchall_2e
    move-exception p0

    .line 459
    :try_start_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0

    :cond_31
    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .registers 2

    .line 587
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    return-void
.end method

.method public setRunningAnimationUnsafe()V
    .registers 2

    .line 2239
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/server/wm/WindowProcessListener;->setRunningRemoteAnimation(Z)V

    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 2205
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->addAnimatingReason(I)V

    return-void

    .line 2207
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    return-void
.end method

.method public setStoppedState(I)V
    .registers 2

    .line 2182
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    return-void
.end method

.method public setThread(Landroid/app/IApplicationThread;)V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_5
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz p1, :cond_13

    .line 409
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_1a

    :catchall_11
    move-exception p0

    goto :goto_1c

    .line 412
    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->removeProcess(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    .line 414
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_11

    throw p0
.end method

.method public setUsingWrapper(Z)V
    .registers 2

    .line 613
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    return-void
.end method

.method public setWasStoppedLogged(Z)V
    .registers 2

    .line 2190
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mWasStoppedLogged:Z

    return-void
.end method

.method public shouldKillProcessForRemovedTask(Lcom/android/server/wm/Task;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 1104
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 1105
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1106
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-nez v3, :cond_17

    return v0

    .line 1110
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1111
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v3, v4, :cond_26

    iget-boolean v2, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v2, :cond_26

    return v0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldSetProfileProc()Z
    .registers 3

    .line 1526
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_16

    if-ne v0, p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public stopFreezingActivities()V
    .registers 1

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 2244
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final unregisterActivityConfigurationListener()V
    .registers 2

    .line 1679
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 1682
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    const/4 v0, 0x0

    .line 1683
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1684
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final unregisterConfigurationListeners()V
    .registers 1

    .line 1693
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 1694
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayAreaConfigurationListener()V

    return-void
.end method

.method public unregisterDisplayAreaConfigurationListener()V
    .registers 2

    .line 1654
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    if-nez v0, :cond_5

    return-void

    .line 1657
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    const/4 v0, 0x0

    .line 1658
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    .line 1659
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final updateActivityConfigurationListener()V
    .registers 4

    .line 1711
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_5

    return-void

    .line 1715
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_22

    .line 1716
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1717
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1f

    .line 1719
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1725
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    return-void
.end method

.method public updateAppSpecificSettingsForAllActivitiesInPackage(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/LocaleList;I)V
    .registers 8

    .line 1048
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_30

    .line 1049
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1052
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1053
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1054
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1055
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_30
    return-void
.end method

.method public updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    .line 1932
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public updateAssetConfiguration(I)V
    .registers 6

    .line 1911
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_9

    goto :goto_3b

    .line 1919
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_3a

    .line 1920
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1921
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1922
    iput p1, v2, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1923
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1924
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 1925
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1926
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_3a
    return-void

    .line 1912
    :cond_3b
    :goto_3b
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1913
    iput p1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1914
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V
    .registers 4

    .line 1095
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1098
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    .line 1099
    const-string v0, "cur_app"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v0, "cur_task"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public updateProcessInfo(ZZZZ)V
    .registers 6

    if-eqz p4, :cond_5

    .line 1469
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 1474
    :cond_5
    iget-object p4, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {p4}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->startBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object p4

    if-eqz p3, :cond_15

    .line 1476
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->prepareOomAdjustment()V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_23

    .line 1483
    :cond_15
    :goto_15
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/WindowProcessController;ZZZ)V

    invoke-virtual {p4, v0}, Lcom/android/server/am/psc/AsyncBatchSession;->enqueue(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_13

    if-eqz p4, :cond_22

    .line 1492
    invoke-virtual {p4}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_22
    return-void

    :goto_23
    if-eqz p4, :cond_2d

    .line 1474
    :try_start_25
    invoke-virtual {p4}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    throw p0
.end method

.method public updateRapidActivityLaunch(Lcom/android/server/wm/ActivityRecord;JJ)V
    .registers 8

    .line 639
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    if-nez v0, :cond_6c

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_f

    goto :goto_6c

    .line 643
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 644
    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    if-eqz v0, :cond_20

    goto :goto_6c

    :cond_20
    sub-long/2addr p2, p4

    const-wide/16 p4, 0x1f4

    cmp-long p4, p2, p4

    const/4 p5, 0x0

    if-gez p4, :cond_2f

    .line 650
    iget p2, p0, Lcom/android/server/wm/WindowProcessController;->mRapidActivityLaunchCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/wm/WindowProcessController;->mRapidActivityLaunchCount:I

    goto :goto_37

    :cond_2f
    const-wide/16 v0, 0x5dc

    cmp-long p2, p2, v0

    if-ltz p2, :cond_37

    .line 652
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mRapidActivityLaunchCount:I

    .line 655
    :cond_37
    :goto_37
    iget p2, p0, Lcom/android/server/wm/WindowProcessController;->mRapidActivityLaunchCount:I

    const/16 p3, 0xc8

    if-le p2, p3, :cond_6c

    .line 656
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mRapidActivityLaunchCount:I

    .line 657
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 658
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Removing task "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " because of rapid activity launch"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance p3, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda14;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6c
    :goto_6c
    return-void
.end method

.method public updateServiceConnectionActivities()V
    .registers 3

    .line 1509
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda12;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-ge v0, v1, :cond_7f

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_f

    goto/16 :goto_7f

    .line 932
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    .line 939
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 940
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    goto :goto_28

    :cond_27
    move-object v0, v3

    :goto_28
    if-eqz v0, :cond_3d

    .line 946
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 947
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 948
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_3d

    :cond_3b
    move v4, v1

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v4, v2

    .line 952
    :goto_3e
    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v4, :cond_49

    .line 954
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayArea;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-gez v5, :cond_49

    move v4, v2

    :cond_49
    if-nez v4, :cond_5d

    .line 961
    new-instance v5, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;

    invoke-direct {v5, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v6, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v5, v2, v6}, Lcom/android/server/wm/DisplayArea;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 963
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v5, :cond_5d

    goto :goto_5e

    :cond_5d
    move v2, v4

    :goto_5e
    if-eqz v2, :cond_7f

    .line 970
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7d

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 971
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 973
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    .line 974
    const-string v4, "top-resumed-changed"

    invoke-virtual {v0, v3, v1, p1, v4}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 978
    :cond_7d
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_7f
    :goto_7f
    return v2
.end method

.method public useFifoUiScheduling()Z
    .registers 1

    .line 2130
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    return p0
.end method

.method public wasFirstLaunch()Z
    .registers 2

    .line 2200
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public wasForceStopped()Z
    .registers 2

    .line 2195
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
